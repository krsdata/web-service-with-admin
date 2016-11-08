<?php

namespace App\Helpers;

use App\Http\Requests;
use Illuminate\Http\Request;
use Mail;
use Auth;
use Config;
use View;
use Input;
use session;
use Crypt;
use Hash;
use Menu;
use Html;
use Illuminate\Support\Str;
use App\User;
use Phoenix\EloquentMeta\MetaTrait; 
use Illuminate\Support\Facades\Lang;
use App\CorporateProfile;
use Validator; 
use App\Position;
use App\InterviewRating;
use App\Interview;
use App\Criteria;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\RatingFeedback;
 

class Helper {

    /**
     * function used to check stock in kit
     *
     * @param = null
     */
    
    public function generateRandomString($length) {
        $key = '';
        $keys = array_merge(range(0, 9), range('a', 'z'));

        for ($i = 0; $i < $length; $i++) {
            $key .= $keys[array_rand($keys)];
        }

         return $key;
    } 
/* @method : createCompanyGroup
    * @param : email,user_id
    * Response :  string
    * Return : company name
    */
    public function createCompanyGroup($email=null,$user_id=null)
    {
        $request = new Request;
        $fps =  strripos($email,"@");
        $lps =  strpos(substr($email,$fps),".");
        $company_url = substr($email,$fps+1);
        $company_name = substr($email,$fps+1,$lps-1);
        
        //Server side valiation
        $validator = Validator::make(array('company_name'=>$company_name), [
            'company_name' => 'unique:t_corporate_profile',
            
        ]);
        
        // Return Error Message
        if ($validator->fails()) {  
            $cp_record  = CorporateProfile::where('company_name',$company_name)
                            ->where('companyID',0)->first();
              
            $company_id      =  isset($cp_record->id)?$cp_record->id:0;
            $company_profile = new CorporateProfile;
            $company_profile->company_name =  $company_name;
            $company_profile->userID = $user_id;
            $company_profile->companyID =$company_id ;
            $company_profile->company_url = $company_url;
            $company_profile->user_email  = $email; 
            $company_profile->save(); 
            return $company_name;

        }else{
 
            $company_profile = new CorporateProfile;
            $company_profile->company_name =  $company_name;
            $company_profile->userID = $user_id;
            $company_profile->companyID =0;
            $company_profile->company_url = $company_url;
            $company_profile->user_email  = $email;
            $company_profile->save();
            return $company_name;
        } 
    }
/* @method : getCorporateGroupName
    * @param : email
    * Response :  string
    * Return : company name
    */
    public function getCorporateGroupName($email=null)
    {
        $fps =  strripos($email,"@");
        $lps =  strpos(substr($email,$fps),".");
        $company_name = substr($email,$fps+1,$lps-1);
        return  $company_name;       
    } 
/* @method : getCompanyUrl
    * @param : email
    * Response :  string
    * Return : company URL
    */
    public function getCompanyUrl($email=null)
    {   
        $fps =  strripos($email,"@");
        $lps =  strpos(substr($email,$fps),".");
        $company_url = substr($email,$fps+1);
        return  $company_url;       
    }

/* @method : getUserGroupedID
    * @param : user id
    * Response :  all user id associate with same compnay
    * Return : user id as array(1,2,3)
    */
    
    static public function getUserGroupedID($user_id=null)
    {
        $corp_profile       = CorporateProfile::where('userID',$user_id)->get();
        $corp_profile_id  = $corp_profile->lists('company_url','userID');
        $user_from_same_company = CorporateProfile::where('company_url',$corp_profile_id[$user_id])->get();
        
        return $user_from_same_company->lists('userID');
    }
/* @method : isUserExist
    * @param : user_id
    * Response : number
    * Return : count
    */
    static public function isUserExist($user_id=null)
    {
        $user = User::where('userID',$user_id)->count(); 
        return $user;
    }
/* @method : getUserDetailsByID
    * @param : user_id
    * Response : number
    * Return : count
    */
    static public function getCompanyUrlByEmail($email=null)
    {
        $fps =  strripos($email,"@");
        $lps =  strpos(substr($email,$fps),".");
        $company_url = substr($email,$fps+1);
        return  $company_url;  
    }
/* @method : getpassword
    * @param : email
    * Response :  
    * Return : true or false
    */
    
    public static function getPassword(){
        $password = "";
        $user = Auth::user();
        if(isset($user)){
            $password = Auth::user()->Password;
        }
        return $password;
    }
/* @method : check mobile number
    * @param : mobile_number
    * Response :  
    * Return : true or false
    */     
   
    
    public static function FormatPhoneNumber($number){
        return preg_replace('~.*(\d{3})[^\d]{0,7}(\d{3})[^\d]{0,7}(\d{4}).*~', '($1) $2-$3', $number). "\n";
    }
 /* @method : getPositionNameById
    * @param : position_id
    * Response :  string
    * Return : string
    */   
    public static function getPositionNameById($position_id=null)
    {
        $position = Position::find($position_id);
        return $position->position_name;
    }
 /* @method : getRatingByCondidateID
    * @param : condidate_id
    * Response :  string
    * Return : string
    */
    public static function getRatingByCondidateID($condidate_id=null)
    {
        $rating = InterviewRating::selectRaw('sum(rating) as total_rating')
                                    ->selectRaw('count(*) as total_user')
                                    ->where('condidateID',$condidate_id)->first();  
        
        if($rating->total_rating!=null)
        {
            $t_r = $rating->total_rating;
            $t_u = $rating->total_user;
            $rate = $t_r/$t_u;
           return  isset($rate)?$rate:'0.0';
        }else{
           return "0.0"; 
        }
        
    }
/* @method : getCondidateNameByID
    * @param : condidate_id
    * Response :  string
    * Return : string
    */
    public static function getCondidateNameByID($condidate_id=null)
    {    
        $rating = Interview::find($condidate_id);
        if($rating==null)
        {
            return  null;
        }
        $total_evalution_required = count(str_getcsv($rating->interviewerID));
        $total_evaluated = InterviewRating::where('condidateID',$condidate_id)->count();
        $avg_rating = Helper::getRatingByCondidateID($condidate_id);
        $ratingStatus = "Pending";
        if($total_evalution_required==$total_evaluated)
        {
            $ratingStatus = "Evaluated";
        }
        if($rating!=null)
        {
             return $rating = [
                                'condidateID'=>$rating->id,
                                'condidateName'=>$rating->condidate_name,
                                'shortDescription'=>$rating->short_description,
                                'rating' => $avg_rating,
                                'ratingStatus'=>$ratingStatus
                                ];
        } 
        return  null;   
        
    }
/* @method : getRatingDataByCondidateID
    * @param : condidate_id
    * Response :  string
    * Return : string
    */
    public static function getRatingDataByCondidateID($condidate_id=null)
    {
        $rating = InterviewRating::find($condidate_id);
        return $rating->rating;
    }

    public static function getIndividualCompanyUser($id=null)
    {
        $company = CorporateProfile::where('userID',$id)->first();
        $company_user=   CorporateProfile::selectRaw('userID')->where('company_url',$company->company_url)->get();    
        return $company_user->lists('userID')->toArray();
    }
    public static function getRatingData($criteria_id = null,$rating_value=null)    
    {    
        $total_criteria = count($criteria_id);
        $criteria =  Criteria::whereIn('id',$criteria_id)->get();
        $rating_value_record  = number_format(floatval((array_sum($rating_value)/$total_criteria)),1);
        $feedback_data = RatingFeedback::lists('feedback','rating_value');
        if($criteria->count()>0)
        {   
            foreach ($criteria as $key => $value) {
                $rating_val =  isset($rating_value[$key])?$rating_value[$key]:0;
                $date   =  date('m/d/Y',strtotime($value->updated_at)); 
                //$rating_value = isset($rating_value[$key])?$rating_value[$key]:"";
                
                $data[] =  [ 
                            'criteriaID'    => $value->id,
                            'criteria'      => $value->interview_criteria,
                            'ratingValue'   => $rating_val
                         ];
                   
            }
           
            return    $data;
                     
        }
        return null;  

    }

    public static function getInterviewerFromInterviewDirectory($Interview_id=null,$cid=null)
    {

       $user = User::whereIn('userID',str_getcsv($Interview_id))->get();        
       
       $user_data = $user->lists('name','userID');
       $data=[];
       foreach ($user as $key => $value) { 
         $uid = Helper::getIndividualCompanyUser($value->userID);
           if(in_array($value->userID, $uid))
           { 
                $interviewe_record =    [
                            'userID'    => $value->userID,
                            'firstName' => $value->first_name,
                            'lastName'  => $value->last_name,
                            'position'  => $value->position->position_name 
                        ];
                $rd = InterviewRating::where('condidateID',$cid)
                                        ->where('interviewerID',$value->userID)->first();

                $rating_by_interviewer = isset($rd->rating)?$rd->rating:"0.0";
                $rating_date = "";
                if($rd!=null){  
                    $rating_d = isset($rd->created_at)?$rd->created_at:"";
                    $rating_date = \Carbon\Carbon::parse($rating_d)->format('m/d/Y');
                }                         
                if($cid!=null){
                    if($rd!=null){
                        $criteria_id = str_getcsv($rd->interview_criteriaID);
                        $rating_value = str_getcsv($rd->rating_value);
                        $rating_data =   Helper::getRatingData($criteria_id,$rating_value);   
                    }else{
                        $rd = Interview::find($cid);
                        $criteria_id = str_getcsv($rd->criteriaID);
                        $rating_value = [];
                        $rating_data=   Helper::getRatingData($criteria_id,$rating_value);   
                    }
                    $data[] = ['interviewer'=>$interviewe_record,'ratingDetail'=>$rating_data] ;                                  
                  
                }else{
                   $data[] = $interviewe_record;

                }
               
           }             
       }
       return $data; 
    }
    /* @method : getInterviewerFromInterviewForCandidate
    * @param : Interview_id
    * Response :  string
    * Return : string
    */
    public static function getInterviewerFromInterviewForCandidate($Interview_id=null,$cid=null)
    {

       $user = User::whereIn('userID',str_getcsv($Interview_id))->get();        
       
       $user_data = $user->lists('name','userID');
       $data=[];
       $a = [];
       foreach ($user as $key => $value) { 
            $uid = Helper::getIndividualCompanyUser($value->userID);

            if(in_array($value->userID, $uid))
            { 
                $interviewe_record =    [
                            'userID'    => $value->userID,
                            'firstName' => $value->first_name,
                            'lastName'  => $value->last_name,
                            'position'  => $value->position->position_name 
                        ];
                $interviewe_record_avg =    [
                            'userID'    => "",
                            'firstName' => "",
                            'lastName'  => "",
                            'position'  => "" 
                        ];
                                
                $rd = InterviewRating::where('condidateID',$cid)
                                        ->where('interviewerID',$value->userID)->first();

                $rating_by_interviewer = isset($rd->rating)?$rd->rating:"0.0";
                $rating_date = "";
                if($rd!=null){  
                    $rating_d = isset($rd->created_at)?$rd->created_at:"";
                    $rating_date = \Carbon\Carbon::parse($rating_d)->format('m/d/Y');
                }                         
                if($cid!=null){
                    if($rd!=null){
                        $criteria_id = str_getcsv($rd->interview_criteriaID);
                        $rating_value = str_getcsv($rd->rating_value);
                        $rating_data =   Helper::getRatingData($criteria_id,$rating_value);   
                    }else{
                        $rd = Interview::find($cid);
                        $criteria_id = str_getcsv($rd->criteriaID);
                        foreach ($criteria_id as $key => $criteria_id_val_arr) {
                            $criteria_id_val_ar[] =0; 
                        } 
                        $rating_value = $criteria_id_val_ar;

                        $rating_data=   Helper::getRatingData($criteria_id,$rating_value);   
                    }
                    $data[] = ['interviewerDetail'=>$interviewe_record,'ratingDetail'=>$rating_data] ;                                  
                  
                   //$data[] = ['date'=>$rating_date,'rating'=>$rating_by_interviewer,'interviewerDetail'=>$interviewe_record,'ratingDetail'=>$rating_data] ;                                  
                }else{
                   $data[] = ['interviewerDetail'=>$interviewe_record]; 
                }  
           }               
       }
       
        $data = array_merge($data1,$data);
         
       return $data; 
    }
/* @method : getInterviewerFromInterview
    * @param : Interview_id
    * Response :  string
    * Return : string
    */
    public static function getInterviewerFromInterview($Interview_id=null,$cid=null)
    {

       $user = User::whereIn('userID',str_getcsv($Interview_id))->get();        
       
       $user_data = $user->lists('name','userID');
       $data=[];
       $a = [];
       foreach ($user as $key => $value) { 
            $uid = Helper::getIndividualCompanyUser($value->userID);

            if(in_array($value->userID, $uid))
            { 
                $interviewe_record =    [
                            'userID'    => $value->userID,
                            'firstName' => $value->first_name,
                            'lastName'  => $value->last_name,
                            'position'  => $value->position->position_name 
                        ];
                $interviewe_record_avg =    [
                            'userID'    => "",
                            'firstName' => "",
                            'lastName'  => "",
                            'position'  => "" 
                        ];
                                
                $rd = InterviewRating::where('condidateID',$cid)
                                        ->where('interviewerID',$value->userID)->first();

                $rating_by_interviewer = isset($rd->rating)?$rd->rating:"0.0";
                $rating_date = "";
                if($rd!=null){  
                    $rating_d = isset($rd->created_at)?$rd->created_at:"";
                    $rating_date = \Carbon\Carbon::parse($rating_d)->format('m/d/Y');
                }                         
                if($cid!=null){
                    if($rd!=null){
                        $criteria_id = str_getcsv($rd->interview_criteriaID);
                        $rating_value = str_getcsv($rd->rating_value);
                        $a[] = array_combine($criteria_id,$rating_value);
                        $rating_data =   Helper::getRatingData($criteria_id,$rating_value);   
                    }else{
                        $rd = Interview::find($cid);
                        $criteria_id = str_getcsv($rd->criteriaID);
                        foreach ($criteria_id as $key => $criteria_id_val_arr) {
                            $criteria_id_val_ar[] =0; 
                        } 
                        $rating_value = $criteria_id_val_ar;
                        $a[] = array_combine($criteria_id,$rating_value); 

                        $rating_data=   Helper::getRatingData($criteria_id,$rating_value);   
                    }
                    $data[] = ['interviewerDetail'=>$interviewe_record,'ratingDetail'=>$rating_data] ;                                  
                  
                   //$data[] = ['date'=>$rating_date,'rating'=>$rating_by_interviewer,'interviewerDetail'=>$interviewe_record,'ratingDetail'=>$rating_data] ;                                  
                }else{
                   $data[] = ['interviewerDetail'=>$interviewe_record];

                }
                 
               
           }  
                           
       }
       //$data[] = ['interviewerDetail'=>$interviewe_record_avg,'ratingDetail'=>$rating_data] ;                                  
        
       if(count($a)>0){
           foreach ($a as $k => $subArray) {
                foreach ($subArray as $id=>$value) {
                    $sumArray[$id][] = $value; 
                  }
            }
            foreach ($sumArray as $k => $val) { 

                $sum_criteria_rating = array_sum($val)/count($val);
                $avg_criteria_rating = number_format(floatval($sum_criteria_rating),1);
                $arr[$k] =$avg_criteria_rating;
                $c_id[] =  $k;
                $c_val[] =  $avg_criteria_rating;
            }
            $rating_data_avg =   Helper::getRatingData($c_id,$c_val); 
            /*$collection = collect($rating_data);
            $avg_rating_sum = $collection->sum('ratingValue');
            $final_avg_rating = $avg_rating_sum/count($rating_data);
            dd($final_avg_rating);*/

            $data1[] = ['interviewerDetail'=>$interviewe_record_avg,'ratingDetail'=>$rating_data_avg] ;                                  
        }
         
        $data = array_merge($data1,$data);
         
       return $data; 
    }

   /* @method : GetCriteria
    * @param : criteria_id,rating_value
    * Response : json
    * Return : User details 
   */
    public static function getCriteriaById($criteria_id = null,$rating_value=null,$interviewerName=null,$interviewComment=null)    
    {
        $criteria =  Criteria::whereIn('id',$criteria_id)->get();

        if($criteria->count()>0)
        {
            
            foreach ($criteria as $key => $value) {
                $date   =  date('m/d/Y',strtotime($value->updated_at)); 
                $data[] =  [ 
                            'criteriaID'    => $value->id,
                            'criteria'      => $value->interview_criteria,
                            'ratingValue'   => isset($rating_value[$key])?$rating_value[$key]:"",
                          
                         ];
            }
            return  [   
                        'interviewerDetail' =>  $interviewerName, 
                        'rating'            =>  number_format(floatval((array_sum($rating_value)/5)),1),
                        'date'              =>  $date,
                        'ratingDetail'        =>  $data,
                    ];
        }
        return null;  

    }
     /* @method : getAllCondidateDetails
    * @param : criteria_id,rating_value,interviewerName
    * Response : json
    * Return : User details 
   */
    public static function getAllCondidateDetails($criteria_id = null,$rating_value=null,$interviewerName=null,$interviewComment=null)    
    {    
        $total_criteria = count($criteria_id);
       
        $criteria =  Criteria::whereIn('id',$criteria_id)->get();

        $rating_value_record  = number_format(floatval((array_sum($rating_value)/$total_criteria)),1);
        $feedback_data = RatingFeedback::lists('feedback','rating_value');
        if($criteria->count()>0)
        {    
            
            foreach ($criteria as $key => $value) {
                $rating_val =  isset($rating_value[$key])?$rating_value[$key]:'';
                $date   =  date('m/d/Y',strtotime($value->updated_at)); 
                //$rating_value = isset($rating_value[$key])?$rating_value[$key]:"";
            
                $data[] =  [ 
                            'criteriaID'    => $value->id,
                            'criteria'      => $value->interview_criteria,
                            'ratingValue'   => $rating_val
                         ];
                   
            }
           
            return  [   
                        
                        'interviewerDetail'     =>  $interviewerName,  
                        'ratingDetail'          =>  $data,
                    ];
        }
        return null;  

    }


   /* @method : get user details
    * @param : userid
    * Response : json
    * Return : User details 
   */
   
    public static function getUserDetails($user_id=null)
    {
        $user = User::find($user_id);
        $data['userID'] = $user->userID;
        $data['firstName'] = $user->first_name;
        $data['lastName'] = $user->last_name;
        //$data['email'] = $user->email;
        //$data['positionID'] =  $user->positionID;
        $data['positionName'] =  Helper::getPositionNameById($user->positionID);
        return  $data;
    }
/* @method : send Mail
    * @param : email
    * Response :  
    * Return : true or false
    */
    public  function sendMailFrontEnd($email_content, $template, $template_content)
    {        
        $template_content['verification_token'] =  Hash::make($email_content['receipent_email']);
        $template_content['email'] = isset($email_content['receipent_email'])?$email_content['receipent_email']:'';
        
        return  Mail::send('emails.'.$template, array('content' => $template_content), function($message) use($email_content)
          {
            $name = "Udex";
            $message->from('udex@indianic.com',$name);  
            $message->to($email_content['receipent_email'])->subject($email_content['subject']);
            
          });
    } 
  /* @method : send Mail
    * @param : email
    * Response :  
    * Return : true or false
    */
    public  function sendMail($email_content, $template)
    {        
         
        return  Mail::send('emails.'.$template, array('content' => $email_content), function($message) use($email_content)
          {
            $name = "Udex";
            $message->from('no-reply@indianic.com',$name);  
            $message->to($email_content['receipent_email'])->subject($email_content['subject']);
            
          });
    }
    /* @method : send Mail
    * @param : email
    * Response :  
    * Return : true or false
    */
    public  function sendNotificationMail($email_content, $template)
    {        
        
        return  Mail::send('emails.'.$template, array('content' => $email_content), function($message) use($email_content)
          {
            $name = "Udex";
            $message->from('no-reply@indianic.com',$name);  
            $message->to($email_content['receipent_email'])->subject($email_content['subject']);
            
          });
    }

    function send_ios_notification($deviceToken,$message)
    {
        // var_dump($notification_id, $owner_id, $member_id); exit;
        
        // $deviceToken = '9e88aba24a3981635b2620f7a9762fb97a10cbb694f37e93b212035138872bd6';
        
        // Put your private key's passphrase here:
        $passphrase = 'pushchat';
        
        // Put your alert message here:
        // $message = 'Myredfolder notification!';
        
        ////////////////////////////////////////////////////////////////////////////////
        
        $ctx = stream_context_create();
        stream_context_set_option($ctx, 'ssl', 'local_cert', app_path().'/Push.pem');
        stream_context_set_option($ctx, 'ssl', 'passphrase', $passphrase);
        
        // Open a connection to the APNS server
        $fp = stream_socket_client(
                                   'ssl://gateway.sandbox.push.apple.com:2195', $err,
                                   $errstr, 60, STREAM_CLIENT_CONNECT|STREAM_CLIENT_PERSISTENT, $ctx);
        
        if (!$fp)
        exit("Failed to connect: $err $errstr" . PHP_EOL);
        
        //echo 'Connected to APNS' . PHP_EOL;
        
        // Create the payload body
        $body['aps'] = array(
                             'alert' => trim($message),
                             'sound' => 'default',
                             );
        
        // Encode the payload as JSON
        $payload = json_encode($body);
        
        // Build the binary notification
        $msg = chr(0) . pack('n', 32) . pack('H*', trim($deviceToken)) . pack('n', strlen($payload)) . $payload;
        
        // Send it to the server
        $result = fwrite($fp, $msg, strlen($msg));
        
        if (!$result){
        //echo 'Message not delivered' . PHP_EOL;
        }
        else
        {
        //echo 'Message successfully delivered' . PHP_EOL;
        }
        
        // Close the connection to the server
        fclose($fp);
    }

    public static function getRatingFeedback($rating_value=null)
    {
        
        $feedback_data = RatingFeedback::lists('feedback','rating_value');

        $rating_value = isset($rating_value)?$rating_value:"";
                switch ($rating_value) {
                    case 1:
                        $feedback = isset($feedback_data[1])?$feedback_data[1]:'Poor';
                        return $feedback;
                        break;
                    case 2:
                        $feedback = isset($feedback_data[2])?$feedback_data[2]:'Average';
                        return $feedback;
                        break;
                    case 3:
                        $feedback = isset($feedback_data[3])?$feedback_data[3]:'Good';
                        return $feedback;
                        break;
                    case 4:
                        $feedback = isset($feedback_data[4])?$feedback_data[4]:'Very good';
                        return $feedback;
                        break;
                    case 5:
                        $feedback = isset($feedback_data[5])?$feedback_data[5]:'Excellent';
                        return $feedback;
                        break;                
                    
                    default:
                        $feedback = "Not rated";
                        return $feedback;
                        break;
                }
    }

    public static function getCondidateCountByUserID($user_id=null){
        
        $query  = CorporateProfile::query();
        $corp_profile       = $query->where('userID',$user_id)->first();
        $query  = CorporateProfile::query();
        $total_cuser = $query->where('company_url',$corp_profile->company_url)->get();
        $user_arr = $total_cuser->lists('userID'); 
        $c = [];
        foreach ($user_arr as $key => $userid) {
          # code...
       
            $interviewD = Interview::where(function($query) use($userid){
                $query->whereRaw('FIND_IN_SET('.$userid.',interviewerID)');
                }
            )
            ->get(); 
           foreach ($interviewD as $key => $value) {
              $c[$value->id] = $value->condidate_name; 
           } 
         }

        return count($c); 
    }

     
}
