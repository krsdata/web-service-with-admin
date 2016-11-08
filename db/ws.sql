-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 08, 2016 at 05:24 PM
-- Server version: 5.6.30-0ubuntu0.14.04.1
-- PHP Version: 5.6.22-1+donate.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `udex_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `corporate_profiles`
--

CREATE TABLE IF NOT EXISTS `corporate_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userID` int(11) NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `companyID` int(11) NOT NULL,
  `company_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `default_criteria`
--

CREATE TABLE IF NOT EXISTS `default_criteria` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `criteria_name` text COLLATE utf8_unicode_ci NOT NULL,
  `criteria_rating_value_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `criteria_rating_value_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `criteria_rating_value_3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `criteria_rating_value_4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `criteria_rating_value_5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `criteria_rating` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `interviews`
--

CREATE TABLE IF NOT EXISTS `interviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `condidate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `interviewerID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `criteriaID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `interview_create_by` int(11) NOT NULL,
  `interview_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `interview_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `rating_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `interview_criterias`
--

CREATE TABLE IF NOT EXISTS `interview_criterias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `interview_criteria` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `interview_ratings`
--

CREATE TABLE IF NOT EXISTS `interview_ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `condidateID` int(10) unsigned NOT NULL,
  `interviewerID` int(10) unsigned NOT NULL,
  `interview_criteriaID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` decimal(10,1) NOT NULL,
  `rating_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `invite_users`
--

CREATE TABLE IF NOT EXISTS `invite_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userID` int(11) NOT NULL,
  `deviceToken` text COLLATE utf8_unicode_ci NOT NULL,
  `company_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_100000_create_password_resets_table', 1),
('2016_07_26_152422_create_admin_table', 1),
('2016_07_26_155259_add_name_to_admin_table', 1),
('2016_07_28_163220_create_invite_users_table', 1),
('2016_07_29_161552_create_default_criteria_table', 1),
('2016_08_05_111035_create_push_notifications_table', 1),
('2016_08_13_061601_create_users_table', 1),
('2016_08_13_102520_create_positions_table', 1),
('2016_08_13_102936_create_interviews_table', 1),
('2016_08_13_103901_create_interview_ratings_table', 1),
('2016_08_13_115714_create_interview_criterias_table', 1),
('2016_08_13_125740_create_corporate_profiles_table', 1),
('2016_08_13_131608_create_interview_corporate_rating_feedbacks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE IF NOT EXISTS `positions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `corporate_group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `push_notifications`
--

CREATE TABLE IF NOT EXISTS `push_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notification_text` text COLLATE utf8_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rating_feedbacks`
--

CREATE TABLE IF NOT EXISTS `rating_feedbacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rating_value` int(11) NOT NULL,
  `feedback` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `temp_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deviceID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_token` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `positionID` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
