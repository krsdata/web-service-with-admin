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
-- Database: `marketplace2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `personal_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `professional_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(10) unsigned NOT NULL,
  `photo_relative_path` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `type_of_hire` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `service_location` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `wages` decimal(5,2) NOT NULL,
  `date_of_hire` date NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `employee_code`, `first_name`, `last_name`, `gender`, `designation`, `personal_email`, `professional_email`, `contact_number`, `dob`, `password`, `department_id`, `photo_relative_path`, `role_id`, `type_of_hire`, `service_location`, `wages`, `date_of_hire`, `status`, `remember_token`, `confirmed`, `confirmation_code`, `is_deleted`, `updated_at`, `created_at`) VALUES
(1, '', 'Super', 'Admin', 'Male', '', 'sa@gmail.com', 'sa@devanche.com', '', '1985-01-01', '$2y$10$VAgXtUIUjqE31EMsNkRVXuK68DvPX2ut8qgaonZA7Dqxe8TEKdOPa', 1, '', 1, '', '', 0.00, '0000-00-00', 'Active', 'ko8y34dNJh5fLqFiOTSrjdrbLsuHEwEKiwKAFHqBpL4Zi7iahfONxkaOqADS', 1, NULL, 0, '2016-07-22 13:19:26', '2016-05-24 10:10:38'),
(6, '1465989771', 'Vikram', 'Parihar', 'Male', 'salesexecutive', 'vikram.parihar@indianic.com', 'vikram.parihar@indianic.com', '564564564', '0000-00-00', '$2y$10$swABlc25MwpGmjt6J0EbHurKtf.Qa2EpKbYqcsEKKVgVt7rTF0fEK', 0, '', 28, '0', '0', 0.00, '0000-00-00', '', NULL, 1, NULL, 0, '2016-07-22 13:19:24', '2016-06-15 05:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_details`
--

CREATE TABLE IF NOT EXISTS `admin_user_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(10) unsigned NOT NULL,
  `address_line1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `state_id` int(10) unsigned NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `zipcode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `working_hours_from` time NOT NULL,
  `working_hours_to` time NOT NULL,
  `days_of_week` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deductibles` decimal(5,2) NOT NULL,
  `contract_start_date` date NOT NULL,
  `contract_end_date` date NOT NULL,
  `secret_question_id` int(10) unsigned NOT NULL,
  `secret_answer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_user_details`
--

INSERT INTO `admin_user_details` (`id`, `admin_user_id`, `address_line1`, `address_line2`, `city_id`, `state_id`, `country_id`, `zipcode`, `working_hours_from`, `working_hours_to`, `days_of_week`, `deductibles`, `contract_start_date`, `contract_end_date`, `secret_question_id`, `secret_answer`, `updated_at`, `created_at`) VALUES
(1, 5, 'test address', 'test address', 0, 0, 1, '24536456', '16:25:00', '16:25:00', NULL, 0.00, '0000-00-00', '0000-00-00', 1, '', '2016-06-15 05:44:30', '2016-06-15 05:44:30'),
(2, 6, 'test', 'test', 0, 0, 1, '', '16:55:00', '16:55:00', NULL, 0.00, '0000-00-00', '0000-00-00', 1, '', '2016-06-15 05:53:50', '2016-06-15 05:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_documents`
--

CREATE TABLE IF NOT EXISTS `admin_user_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(10) unsigned NOT NULL,
  `document_relativepath` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_modules`
--

CREATE TABLE IF NOT EXISTS `admin_user_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `read_access` tinyint(4) NOT NULL,
  `create_access` tinyint(4) NOT NULL,
  `update_access` tinyint(4) NOT NULL,
  `delete_access` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `admin_user_modules_admin_user_id_index` (`admin_user_id`),
  KEY `admin_user_modules_module_id_index` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_password_resets`
--

CREATE TABLE IF NOT EXISTS `admin_user_password_resets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(10) unsigned NOT NULL,
  `personal_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `attachment_employee_msgs`
--

CREATE TABLE IF NOT EXISTS `attachment_employee_msgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_employee_msgs_id` int(10) unsigned NOT NULL,
  `relativepath_attachment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `attachment_member_msgs`
--

CREATE TABLE IF NOT EXISTS `attachment_member_msgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_member_msgs_id` int(10) unsigned NOT NULL,
  `relativepath_attachment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `attachment_otherUser_msgs`
--

CREATE TABLE IF NOT EXISTS `attachment_otherUser_msgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_otherUser_msgs_id` int(10) unsigned NOT NULL,
  `relativepath_attachment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE IF NOT EXISTS `attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_set_id` int(11) DEFAULT NULL,
  `view_in_filter` tinyint(4) NOT NULL,
  `comparable` tinyint(4) NOT NULL,
  `catelog_input_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `is_visible` tinyint(4) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `attributes_attribute_set_id_index` (`attribute_set_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attribute_name`, `attribute_description`, `attribute_set_id`, `view_in_filter`, `comparable`, `catelog_input_type`, `is_visible`, `is_deleted`, `updated_at`, `created_at`) VALUES
(3, 'sdf', 'shsfgs', 1, 1, 0, 'dropdown', 0, 0, '2016-06-06 01:11:19', '2016-06-06 01:11:19'),
(4, 'dfdsfsdf', 'sdfsdfsdf', 0, 0, 0, 'dropdown', 0, 0, '2016-06-06 01:11:42', '2016-06-06 01:11:42'),
(5, 'tesdfsdf', 'hhh', 1, 0, 0, 'dropdown', 0, 0, '2016-06-06 01:12:28', '2016-06-06 01:12:28'),
(6, 'tesdfsdf', 'hhh', 1, 0, 0, 'dropdown', 0, 0, '2016-06-06 01:12:28', '2016-06-06 01:12:28'),
(7, 'tesdfsdf', 'hhh', 1, 0, 0, 'dropdown', 0, 0, '2016-06-06 01:12:28', '2016-06-06 01:12:28');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_sets`
--

CREATE TABLE IF NOT EXISTS `attribute_sets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_set_description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `is_visible` tinyint(4) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `attribute_sets`
--

INSERT INTO `attribute_sets` (`id`, `attribute_set_name`, `attribute_set_description`, `is_visible`, `is_deleted`, `updated_at`, `created_at`) VALUES
(1, 'adsf', 'sdf', 0, 0, '2016-06-06 01:04:16', '2016-06-06 01:04:16'),
(2, 'test', 'test', 0, 0, '2016-07-22 03:26:07', '2016-07-22 03:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_set_categories`
--

CREATE TABLE IF NOT EXISTS `attribute_set_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int(11) DEFAULT NULL,
  `attribute_set_categoryid` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `attribute_set_categories_attribute_set_id_index` (`attribute_set_id`),
  KEY `attribute_set_categories_attribute_set_categoryid_index` (`attribute_set_categoryid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `attribute_set_categories`
--

INSERT INTO `attribute_set_categories` (`id`, `attribute_set_id`, `attribute_set_categoryid`, `is_deleted`, `updated_at`, `created_at`) VALUES
(1, 2, 13, 0, '2016-07-22 08:56:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE IF NOT EXISTS `attribute_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `attribute_values` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `attribute_values_attribute_id_index` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `attribute_values`, `updated_at`, `created_at`) VALUES
(1, 1, '', '2016-06-06 06:36:23', '0000-00-00 00:00:00'),
(2, 2, 'test', '2016-06-06 06:38:33', '0000-00-00 00:00:00'),
(3, 2, 'test1', '2016-06-06 06:38:33', '0000-00-00 00:00:00'),
(4, 3, 'test', '2016-06-06 06:41:19', '0000-00-00 00:00:00'),
(5, 4, 'sdf', '2016-06-06 06:41:42', '0000-00-00 00:00:00'),
(6, 5, 'sd', '2016-06-06 06:42:28', '0000-00-00 00:00:00'),
(7, 5, 'sd', '2016-06-06 06:42:28', '0000-00-00 00:00:00'),
(8, 5, '', '2016-06-06 06:42:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bkpfiles`
--

CREATE TABLE IF NOT EXISTS `bkpfiles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `imageable_id` int(10) NOT NULL,
  `imageable_type` varchar(255) NOT NULL,
  `file_type` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bkpoccasions`
--

CREATE TABLE IF NOT EXISTS `bkpoccasions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` enum('Active','Inactive','','') NOT NULL,
  `start_date` date DEFAULT '0000-00-00',
  `end_date` date DEFAULT '0000-00-00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bkpproduct_conditions`
--

CREATE TABLE IF NOT EXISTS `bkpproduct_conditions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bkppromotions`
--

CREATE TABLE IF NOT EXISTS `bkppromotions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `promo_code` text,
  `discount` int(10) DEFAULT NULL,
  `discount_type` enum('percentage','fix','','') DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `selected_users` text,
  `users_id` int(10) DEFAULT NULL,
  `user_type` enum('Admin','Seller','','') DEFAULT NULL,
  `status` enum('Active','Inactive','','') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `bkppromotions`
--

INSERT INTO `bkppromotions` (`id`, `promo_code`, `discount`, `discount_type`, `start_date`, `end_date`, `selected_users`, `users_id`, `user_type`, `status`, `created_at`, `updated_at`) VALUES
(33, 'eyJpdiI6IkpNTGdQZWhcL2diZEN0UUprbTUyU1hnPT0iLCJ2YWx1ZSI6ImpHUFwvY1Q3RURwRlN4NGt5aTNnekl3PT0iLCJtYWMiOiJkNjUwNmIyNWYwNjkyMjZjNGRhNWZmZGUxZDExYmU1MTFlNDQ5ZmQzYjJjYWMxYjk1OWI0Y2M1NGI3Yzk4YzY1In0=', 12, 'percentage', '2016-07-06', '2016-07-25', 'all', 1, 'Admin', 'Active', '2016-07-11 01:28:49', '2016-07-11 04:12:08'),
(37, 'eyJpdiI6InFVZ0tWcEYwN1dMeWN6K3VpS1ZuMnc9PSIsInZhbHVlIjoiT1NTdDdZTXFORWRydlY0WUZ5Rmcxdz09IiwibWFjIjoiMDhmZTkxY2Q3NWM3ZDk2ZTVjYjBkOGUzMjdjZDY5YzU0OTg1MGZhY2ExNmJjMzg0ZmM0Y2VlOGQ1MzJiMzQ0ZCJ9', 434, 'percentage', '2016-07-11', '2016-07-11', '1,2', 1, 'Admin', 'Active', '2016-07-12 00:16:30', '2016-07-12 00:16:30'),
(38, 'eyJpdiI6IkJkazhNTXMwN2JRdTMzRjIxRUg3V0E9PSIsInZhbHVlIjoiYlpSTkdvR1wvZTFtZnBsME13M1RqWGc9PSIsIm1hYyI6IjQ0YzVkNDIxZjJkZGVlYzIxZmQ3MGIwMjQ5ZTliNDk5MDMwNGY1YTNlMjViYTViYjljYzFkMzZjNzk3ZjZjMjgifQ==', 34, 'percentage', '2016-07-13', '2016-07-26', '1', 1, 'Admin', 'Active', '2016-07-12 00:55:31', '2016-07-12 00:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_lft_index` (`lft`),
  KEY `categories_rgt_index` (`rgt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `category_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci DEFAULT 'Active',
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `depth` int(10) unsigned DEFAULT NULL,
  `scope` enum('Products','Services') COLLATE utf8_unicode_ci DEFAULT 'Products',
  `type` enum('General','Special') COLLATE utf8_unicode_ci DEFAULT 'General',
  `product_conditions_id` int(10) unsigned DEFAULT NULL,
  `commission` decimal(10,2) unsigned DEFAULT NULL,
  `buy_it_now_fees` decimal(10,2) unsigned DEFAULT NULL,
  `make_an_offer_fees` decimal(10,2) unsigned DEFAULT NULL,
  `auction_fees` decimal(10,2) unsigned DEFAULT NULL,
  `set_preview_fees` decimal(10,2) unsigned DEFAULT NULL,
  `seller_preview_charges` decimal(10,2) unsigned DEFAULT NULL,
  `buyer_preview_charges` decimal(10,2) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_parent_id_index` (`parent_id`),
  KEY `category_lft_index` (`lft`),
  KEY `category_rgt_index` (`rgt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `text`, `description`, `category_slug`, `parent_id`, `status`, `lft`, `rgt`, `depth`, `scope`, `type`, `product_conditions_id`, `commission`, `buy_it_now_fees`, `make_an_offer_fees`, `auction_fees`, `set_preview_fees`, `seller_preview_charges`, `buyer_preview_charges`, `created_at`, `updated_at`) VALUES
(0, 'Root Category', NULL, NULL, NULL, 'Active', 1, 102, 0, 'Products', 'General', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-07-18 06:21:49', '2016-07-22 07:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `state_id` int(10) unsigned NOT NULL,
  `city_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `content_pages`
--

CREATE TABLE IF NOT EXISTS `content_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Published','Draft') COLLATE utf8_unicode_ci NOT NULL,
  `header_front_menu_id` int(10) unsigned NOT NULL,
  `header_front_page_id` int(10) unsigned NOT NULL,
  `footer_front_menu_id` int(10) unsigned NOT NULL,
  `footer_front_page_id` int(10) unsigned NOT NULL,
  `admin_user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `content_pages_status_index` (`status`),
  KEY `content_pages_header_front_menu_id_index` (`header_front_menu_id`),
  KEY `content_pages_header_front_page_id_index` (`header_front_page_id`),
  KEY `content_pages_footer_front_menu_id_index` (`footer_front_menu_id`),
  KEY `content_pages_footer_front_page_id_index` (`footer_front_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `country_code`, `is_deleted`, `updated_at`, `created_at`) VALUES
(1, 'India', 'ind', 0, '2016-06-15 00:41:53', '2016-06-15 00:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `donation_vendors`
--

CREATE TABLE IF NOT EXISTS `donation_vendors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vendor_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_fees` decimal(5,2) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_departments`
--

CREATE TABLE IF NOT EXISTS `employee_departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `department_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `topics` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_departments_topics_index` (`topics`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_levels`
--

CREATE TABLE IF NOT EXISTS `employee_levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- Dumping data for table `employee_levels`
--

INSERT INTO `employee_levels` (`id`, `level_name`, `status`, `updated_at`, `created_at`) VALUES
(26, 'new level', 0, '2016-06-13 07:35:52', '2016-06-13 07:35:52'),
(27, 'employee level', 0, '2016-06-14 03:56:08', '2016-06-14 03:56:08'),
(28, 'new emp role', 0, '2016-06-14 07:59:23', '2016-06-14 07:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faq_topic_id` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faqs_faq_topic_id_index` (`faq_topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `faq_topics`
--

CREATE TABLE IF NOT EXISTS `faq_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(10) unsigned NOT NULL,
  `topic_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageable_id` int(10) unsigned DEFAULT NULL,
  `imageable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=85 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `path`, `imageable_id`, `imageable_type`, `file_type`, `created_at`, `updated_at`) VALUES
(1, NULL, 92, 'App\\model\\GiftCards', NULL, '2016-07-18 01:11:27', '2016-07-18 01:11:27'),
(2, NULL, 93, 'App\\model\\GiftCards', NULL, '2016-07-18 01:12:14', '2016-07-18 01:12:14'),
(3, NULL, 94, 'App\\model\\GiftCards', NULL, '2016-07-18 01:12:37', '2016-07-18 01:12:37'),
(4, NULL, 95, 'App\\model\\GiftCards', NULL, '2016-07-18 01:15:04', '2016-07-18 01:15:04'),
(5, NULL, 96, 'App\\model\\GiftCards', NULL, '2016-07-18 01:15:34', '2016-07-18 01:15:34'),
(6, NULL, 97, 'App\\model\\GiftCards', NULL, '2016-07-18 01:15:58', '2016-07-18 01:15:58'),
(7, NULL, 98, 'App\\model\\GiftCards', NULL, '2016-07-18 01:16:50', '2016-07-18 01:16:50'),
(8, NULL, 99, 'App\\model\\GiftCards', NULL, '2016-07-18 01:18:01', '2016-07-18 01:18:01'),
(9, NULL, 100, 'App\\model\\GiftCards', NULL, '2016-07-18 01:19:49', '2016-07-18 01:19:49'),
(10, NULL, 101, 'App\\model\\GiftCards', NULL, '2016-07-18 01:19:58', '2016-07-18 01:19:58'),
(11, NULL, 102, 'App\\model\\GiftCards', NULL, '2016-07-18 01:20:07', '2016-07-18 01:20:07'),
(12, NULL, 103, 'App\\model\\GiftCards', NULL, '2016-07-18 01:20:16', '2016-07-18 01:20:16'),
(13, NULL, 104, 'App\\model\\GiftCards', NULL, '2016-07-18 01:23:16', '2016-07-18 01:23:16'),
(14, NULL, 105, 'App\\model\\GiftCards', NULL, '2016-07-18 01:26:20', '2016-07-18 01:26:20'),
(15, NULL, 106, 'App\\model\\GiftCards', NULL, '2016-07-18 01:27:07', '2016-07-18 01:27:07'),
(16, NULL, 107, 'App\\model\\GiftCards', NULL, '2016-07-18 01:27:21', '2016-07-18 01:27:21'),
(17, NULL, 108, 'App\\model\\GiftCards', NULL, '2016-07-18 01:27:47', '2016-07-18 01:27:47'),
(18, NULL, 109, 'App\\model\\GiftCards', NULL, '2016-07-18 01:28:01', '2016-07-18 01:28:01'),
(19, NULL, 110, 'App\\model\\GiftCards', NULL, '2016-07-18 01:28:22', '2016-07-18 01:28:22'),
(20, NULL, 111, 'App\\model\\GiftCards', NULL, '2016-07-18 01:28:33', '2016-07-18 01:28:33'),
(21, NULL, 112, 'App\\model\\GiftCards', NULL, '2016-07-18 01:28:46', '2016-07-18 01:28:46'),
(22, NULL, 113, 'App\\model\\GiftCards', NULL, '2016-07-18 01:28:51', '2016-07-18 01:28:51'),
(23, NULL, 114, 'App\\model\\GiftCards', NULL, '2016-07-18 01:29:48', '2016-07-18 01:29:48'),
(24, NULL, 115, 'App\\model\\GiftCards', NULL, '2016-07-18 01:30:02', '2016-07-18 01:30:02'),
(25, NULL, 116, 'App\\model\\GiftCards', NULL, '2016-07-18 01:30:38', '2016-07-18 01:30:38'),
(26, NULL, 117, 'App\\model\\GiftCards', NULL, '2016-07-18 01:30:47', '2016-07-18 01:30:47'),
(27, NULL, 118, 'App\\model\\GiftCards', NULL, '2016-07-18 01:31:08', '2016-07-18 01:31:08'),
(28, NULL, 119, 'App\\model\\GiftCards', NULL, '2016-07-18 01:31:34', '2016-07-18 01:31:34'),
(29, NULL, 120, 'App\\model\\GiftCards', NULL, '2016-07-18 01:31:41', '2016-07-18 01:31:41'),
(30, NULL, 121, 'App\\model\\GiftCards', NULL, '2016-07-18 01:32:00', '2016-07-18 01:32:00'),
(31, NULL, 122, 'App\\model\\GiftCards', NULL, '2016-07-18 01:32:54', '2016-07-18 01:32:54'),
(32, NULL, 123, 'App\\model\\GiftCards', NULL, '2016-07-18 01:35:23', '2016-07-18 01:35:23'),
(33, NULL, 124, 'App\\model\\GiftCards', NULL, '2016-07-18 01:36:27', '2016-07-18 01:36:27'),
(34, NULL, 125, 'App\\model\\GiftCards', NULL, '2016-07-18 01:36:41', '2016-07-18 01:36:41'),
(35, NULL, 126, 'App\\model\\GiftCards', NULL, '2016-07-18 01:36:56', '2016-07-18 01:36:56'),
(36, NULL, 127, 'App\\model\\GiftCards', NULL, '2016-07-18 01:37:10', '2016-07-18 01:37:10'),
(37, NULL, 128, 'App\\model\\GiftCards', NULL, '2016-07-18 01:37:20', '2016-07-18 01:37:20'),
(38, NULL, 129, 'App\\model\\GiftCards', NULL, '2016-07-18 01:37:51', '2016-07-18 01:37:51'),
(39, NULL, 130, 'App\\model\\GiftCards', NULL, '2016-07-18 01:41:26', '2016-07-18 01:41:26'),
(40, NULL, 131, 'App\\model\\GiftCards', NULL, '2016-07-18 01:42:16', '2016-07-18 01:42:16'),
(41, NULL, 132, 'App\\model\\GiftCards', NULL, '2016-07-18 01:42:31', '2016-07-18 01:42:31'),
(42, NULL, 133, 'App\\model\\GiftCards', NULL, '2016-07-18 01:43:22', '2016-07-18 01:43:22'),
(43, NULL, 134, 'App\\model\\GiftCards', NULL, '2016-07-18 01:43:54', '2016-07-18 01:43:54'),
(44, NULL, 135, 'App\\model\\GiftCards', NULL, '2016-07-18 01:45:45', '2016-07-18 01:45:45'),
(45, NULL, 136, 'App\\model\\GiftCards', NULL, '2016-07-18 01:46:09', '2016-07-18 01:46:09'),
(46, NULL, 137, 'App\\model\\GiftCards', NULL, '2016-07-18 01:47:27', '2016-07-18 01:47:27'),
(47, NULL, 138, 'App\\model\\GiftCards', NULL, '2016-07-18 01:49:57', '2016-07-18 01:49:57'),
(48, NULL, 139, 'App\\model\\GiftCards', NULL, '2016-07-18 02:37:30', '2016-07-18 02:37:30'),
(49, NULL, 140, 'App\\model\\GiftCards', NULL, '2016-07-18 02:38:39', '2016-07-18 02:38:39'),
(50, NULL, 141, 'App\\model\\GiftCards', NULL, '2016-07-18 02:39:01', '2016-07-18 02:39:01'),
(51, NULL, 142, 'App\\model\\GiftCards', NULL, '2016-07-18 02:39:23', '2016-07-18 02:39:23'),
(52, NULL, 143, 'App\\model\\GiftCards', NULL, '2016-07-18 02:39:53', '2016-07-18 02:39:53'),
(53, NULL, 1, 'App\\model\\GiftCards', NULL, '2016-07-18 02:41:09', '2016-07-18 02:41:09'),
(54, NULL, 2, 'App\\model\\GiftCards', NULL, '2016-07-18 02:43:23', '2016-07-18 02:43:23'),
(55, NULL, 3, 'App\\model\\GiftCards', NULL, '2016-07-18 02:44:10', '2016-07-18 02:44:10'),
(56, NULL, 4, 'App\\model\\GiftCards', NULL, '2016-07-18 02:45:35', '2016-07-18 02:45:35'),
(57, NULL, 5, 'App\\model\\GiftCards', NULL, '2016-07-18 02:45:58', '2016-07-18 02:45:58'),
(58, NULL, 6, 'App\\model\\GiftCards', NULL, '2016-07-18 02:46:20', '2016-07-18 02:46:20'),
(59, NULL, 7, 'App\\model\\GiftCards', NULL, '2016-07-18 04:41:50', '2016-07-18 04:41:50'),
(60, NULL, 8, 'App\\model\\GiftCards', NULL, '2016-07-18 23:14:48', '2016-07-18 23:14:48'),
(61, NULL, 9, 'App\\model\\GiftCards', NULL, '2016-07-18 23:15:47', '2016-07-18 23:15:47'),
(64, '2016-07-20-10-04-47-Screenshot-from-2016-05-03-17-50-46.png', 8, 'App\\model\\Category', 'image', '2016-07-20 10:04:48', '2016-07-20 04:34:48'),
(65, '2016-07-21-04-57-59-Screenshot-from-2016-06-02-15-24-28.png', 10, 'App\\model\\GiftCards', 'image', '2016-07-20 23:27:59', '2016-07-20 23:27:59'),
(66, '2016-07-21-09-23-09-Screenshot-from-2016-06-02-15-24-28.png', 11, 'App\\model\\GiftCards', 'image', '2016-07-21 09:23:10', '2016-07-21 03:53:10'),
(67, NULL, 12, 'App\\model\\GiftCards', NULL, '2016-07-21 04:45:32', '2016-07-21 04:45:32'),
(68, '2016-07-21-10-15-37-Screenshot-from-2016-06-02-15-24-28.png', 13, 'App\\model\\GiftCards', 'image', '2016-07-21 04:45:37', '2016-07-21 04:45:37'),
(69, '2016-07-21-10-15-48-Screenshot-from-2016-06-02-15-24-28.png', 14, 'App\\model\\GiftCards', 'image', '2016-07-21 04:45:49', '2016-07-21 04:45:49'),
(70, '2016-07-21-10-41-11-Screenshot-from-2016-06-02-15-24-28.png', 15, 'App\\model\\GiftCards', 'image', '2016-07-21 05:11:12', '2016-07-21 05:11:12'),
(71, '2016-07-21-10-42-13-Screenshot-from-2016-06-02-15-24-28.png', 16, 'App\\model\\GiftCards', 'image', '2016-07-21 05:12:13', '2016-07-21 05:12:13'),
(72, '2016-07-21-11-34-34-Screenshot-from-2016-06-02-15-24-28.png', 17, 'App\\model\\GiftCards', 'image', '2016-07-21 06:04:35', '2016-07-21 06:04:35'),
(73, '2016-07-21-11-39-28-Screenshot-from-2016-06-02-15-24-28.png', 18, 'App\\model\\GiftCards', 'image', '2016-07-21 06:09:28', '2016-07-21 06:09:28'),
(74, NULL, 19, 'App\\model\\GiftCards', NULL, '2016-07-21 06:14:52', '2016-07-21 06:14:52'),
(75, NULL, 20, 'App\\model\\GiftCards', NULL, '2016-07-21 06:22:21', '2016-07-21 06:22:21'),
(76, NULL, 21, 'App\\model\\GiftCards', NULL, '2016-07-21 06:23:34', '2016-07-21 06:23:34'),
(77, NULL, 22, 'App\\model\\GiftCards', NULL, '2016-07-21 06:23:57', '2016-07-21 06:23:57'),
(78, NULL, 23, 'App\\model\\GiftCards', NULL, '2016-07-21 06:25:28', '2016-07-21 06:25:28'),
(79, NULL, 24, 'App\\model\\GiftCards', NULL, '2016-07-21 06:26:22', '2016-07-21 06:26:22'),
(80, NULL, 25, 'App\\model\\GiftCards', NULL, '2016-07-21 06:26:38', '2016-07-21 06:26:38'),
(81, NULL, 26, 'App\\model\\GiftCards', NULL, '2016-07-21 06:27:06', '2016-07-21 06:27:06'),
(82, NULL, 27, 'App\\model\\GiftCards', NULL, '2016-07-21 06:27:37', '2016-07-21 06:27:37'),
(83, NULL, 28, 'App\\model\\GiftCards', NULL, '2016-07-21 06:28:13', '2016-07-21 06:28:13'),
(84, NULL, 29, 'App\\model\\GiftCards', NULL, '2016-07-21 06:28:28', '2016-07-21 06:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `file_labels`
--

CREATE TABLE IF NOT EXISTS `file_labels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `label_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `file_uploads`
--

CREATE TABLE IF NOT EXISTS `file_uploads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `file_labels_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `file_uploads_file_labels_id_index` (`file_labels_id`),
  KEY `file_uploads_category_id_index` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE IF NOT EXISTS `forums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `topic_department_id` int(11) DEFAULT NULL,
  `admin_users_id` int(11) DEFAULT '0',
  `total_likes` int(11) DEFAULT '0',
  `total_dislikes` int(11) DEFAULT '0',
  `total_comments` int(11) DEFAULT '0',
  `total_views` int(11) DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `forums_topic_department_id_index` (`topic_department_id`),
  KEY `forums_admin_users_id_index` (`admin_users_id`),
  KEY `forums_total_likes_index` (`total_likes`),
  KEY `forums_total_dislikes_index` (`total_dislikes`),
  KEY `forums_total_comments_index` (`total_comments`),
  KEY `forums_total_views_index` (`total_views`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `front_menus`
--

CREATE TABLE IF NOT EXISTS `front_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `menu_description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `priority_order` tinyint(4) NOT NULL,
  `is_visible` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL,
  `position` enum('Header','Footer','Both') COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `front_menus_is_visible_index` (`is_visible`),
  KEY `front_menus_position_index` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `front_pages`
--

CREATE TABLE IF NOT EXISTS `front_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `page_relative_path` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `front_menu_id` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `priority_order` tinyint(4) NOT NULL,
  `position` enum('Header','Footer') COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `front_pages_front_menu_id_index` (`front_menu_id`),
  KEY `front_pages_position_index` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE IF NOT EXISTS `gift_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` enum('Active','draft') COLLATE utf8_unicode_ci DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `gift_cards`
--

INSERT INTO `gift_cards` (`id`, `title`, `code`, `description`, `quantity`, `price`, `status`, `created_at`, `updated_at`) VALUES
(2, 'sdf', 'eyJpdiI6ImRxQ0FORnFwWFFUUER5SnVTQkw1WWc9PSIsInZhbHVlIjoieG5DVEs5Y0o4VWNDWnhzdGo5eHo2UT09IiwibWFjIjoiMjc4YTVkMWMwYWM3ZTg3MTc3YWYzMTZjOGU5MzY3Njg2MzgzOTg1ZDA1ZDg2NWZlNDZmMGQ2NDY0MWM2MmE3MSJ9', 'sdf', 34, 34, 'Active', '2016-07-18 02:43:23', '2016-07-18 02:43:23'),
(3, 'sdf', 'eyJpdiI6ImZTUk1cL1FuNmFqUW51RCtlTE1Wekh3PT0iLCJ2YWx1ZSI6InhXbm5pSnNRSnRvbkhRT09ZeU9zR3c9PSIsIm1hYyI6IjE0NDJhMzgyYTcwNWRhNjkwNTNkMDdlNGQ4YWI4ZGQ0MWE2NzkyYmU5ODE0N2VkMWQ0Y2MzZWU5MWE2YWM0ZDIifQ==', 'sdf', 34, 34, 'Active', '2016-07-18 02:44:10', '2016-07-18 02:44:10'),
(4, 'ssdf', 'eyJpdiI6Im4wVFVONHVQSXNWamU1ZTF3eWU0NGc9PSIsInZhbHVlIjoidjhxYXlmN2FvdnlYY0tYUWFXMDliQT09IiwibWFjIjoiOWNjYTgyOGViNzFhM2NlMmZmOWZkM2YzNGUyMDhhM2JmMTBmOWUyNTE4MGY3YWEzYzgzODIzMzk0YmZiY2Q3MCJ9', 'dsf', 23, 234, 'draft', '2016-07-18 02:45:35', '2016-07-18 02:45:35'),
(5, 'sfdf', 'eyJpdiI6Ilk3T2ExYWFLd3cySkh0amk0Z3NnR3c9PSIsInZhbHVlIjoidUEzcVRWWXBpYjZ2T044RGpKY2k1UT09IiwibWFjIjoiYzk4OTYwMDQyZmRiNTIwYTJlODJhYmUwZWY3MDZiNTUyMTEwMjUyZTJiZmNhMDQzYTk1ZjUwZGFiYWRiOGE3MyJ9', 'sdf', 34, 34, 'Active', '2016-07-18 02:45:58', '2016-07-18 02:45:58'),
(6, 'sfdf', 'eyJpdiI6IkxpN0JqODhNazhIb1A2YytKcmV3ZWc9PSIsInZhbHVlIjoiWmJXeXpXKzhhTWJSMWM0ZmJpYllQdz09IiwibWFjIjoiMThhN2MwMGZmZWEwNThhYmUxN2VhOGMzMThjYjM4YTU1NjYzOTJiZTMxYzM0NTY2ZTMxZDUyOWQzYTZlN2I5YiJ9', 'sdf', 34, 34, 'Active', '2016-07-18 02:46:20', '2016-07-18 02:46:20'),
(7, 'sdf', 'eyJpdiI6IlVrTHdmWmp6Rk9xeHo5U2Q4a3AzMEE9PSIsInZhbHVlIjoicUlSUTBYZFBGeVJ4RGFDWWZaKytHZz09IiwibWFjIjoiODg0YjBhYjE2YWRkM2M2NWFmYzgyYzdmNjI4NDE1NWEzNzg2Y2Y3NDY2NzUzMTdlYTRjYzczMTNkMTgxODBkZSJ9', 'sdf', 12, 34, 'Active', '2016-07-18 04:41:49', '2016-07-18 04:41:49'),
(8, 'sdf', 'eyJpdiI6InBSayt2bmhVY3BLMEh2RkdITmRET2c9PSIsInZhbHVlIjoibERlU1NiWld3MVR6NkE5UmdPTThCQT09IiwibWFjIjoiZjg4ZjVjNjA2ZTQzYTZkN2Y5NTNiZDZmMmFmZGY1MThkMzk0NDdjNmRiYzdjY2QyZmEwZGQ5NDMxN2E5ZTA4NSJ9', 'asfd', 43, 34, 'draft', '2016-07-18 23:14:48', '2016-07-18 23:14:48'),
(9, 'sdf', 'eyJpdiI6InhZVDRwbEM5UmlOSWtrT1ZESkN5NHc9PSIsInZhbHVlIjoiaWNXazBGeEFIMDZrRzJNQ1doS2s4dz09IiwibWFjIjoiNjNkY2VjOTJiNDI0NDRjMDBkMzJmOTQzYTc0ZjdiYzYxY2E2ODA5MTQ0NzljMWJlMTY0ZDgwNmJmMTgzYzNmMSJ9', 'asfd', 43, 34, 'Active', '2016-07-18 23:15:47', '2016-07-21 03:37:34'),
(10, 'test', 'eyJpdiI6ImpvQllPS0kxaXUwU1BjTEdpbTRCVFE9PSIsInZhbHVlIjoiRHNkTXc2USthQmZzS0pMZHh2dlpudz09IiwibWFjIjoiZWE3MTM0NzNjYWVlNWU5N2RkMjhjODU5ODY3M2FjOTEyYzNkYjUyOGJhZDMwZTIwZTMxNWJkNDA0YzgwM2MyNyJ9', 'sdfsdf', 234, 34, 'Active', '2016-07-20 23:27:59', '2016-07-20 23:27:59'),
(11, 'sdf', 'eyJpdiI6ImF0aVpnWnlvS2NYNWhmdWpNdjFweVE9PSIsInZhbHVlIjoiWGwxdVRBQUpXZDJabjNDV2I1ZEpOQT09IiwibWFjIjoiZTRlMTk1NGMwZDk1NjNkYTRmM2NhMjc3YmM2ZDY5NjEyZGJjNDJkYTEzYmE0ZTQwZDM0NDRiOTg3Zjc4Y2NlYyJ9', 'sdfsfd', 12, 34, 'Active', '2016-07-20 23:32:11', '2016-07-20 23:32:11'),
(12, 'sfd', 'eyJpdiI6Imtmdlp1S1N3MlwvWlY0U0ZMYjA3RWVRPT0iLCJ2YWx1ZSI6InZ4bTNySmdxK3ZGUGZZK0p3MVwvTTJRPT0iLCJtYWMiOiI3MTA0ZWVhNjAzOWM5NTg3MTkzYTc5N2U4OGU1NTAyMDg4NGRlODlkZDFmNmVmNzc3Mjk3YzdhZTY5M2QwNTQwIn0=', 'sdf', 45, 34, 'draft', '2016-07-21 04:45:32', '2016-07-21 04:45:32'),
(13, 'sfd', 'eyJpdiI6IkpjMEVZSDF2T1VnQmVxU21qRnN3emc9PSIsInZhbHVlIjoiYmRlMnhqQlVGQUE4b21uVWJ5WHE2Zz09IiwibWFjIjoiY2RjOGI2NDE4ODJiMmIxMDY0YzkyZTYxODRhMTdhNDQxZjY2ZTk4Y2ZiMDBjMmRlMjQ2ZDYyNTExZDYyNzdiNiJ9', 'sdf', 45, 34, 'draft', '2016-07-21 04:45:37', '2016-07-21 04:45:37'),
(14, 'sfd', 'eyJpdiI6Ingrb2tOTXh1QXNTRm1nRzUyWmw5TWc9PSIsInZhbHVlIjoiQzM1WTJ6bGpUR0tMa1ltQ3pYWU4rUT09IiwibWFjIjoiYWYwNmI2M2RiZTE4YzkyMTk4NzA0NmE0ZmU0MmY0N2ExOTZiYjNiNmJiZGZkY2ZmZGFmZDRhMWNhMmFjOWM4ZSJ9', 'sdf', 45, 34, 'draft', '2016-07-21 04:45:49', '2016-07-21 04:45:49'),
(15, 'test', 'eyJpdiI6Imw1RU14VXZiSUNJQUVNV2ZiYzk5cVE9PSIsInZhbHVlIjoiaUQzWW0rMDJLUjdRWXVxejNaN2NLUT09IiwibWFjIjoiY2YwMGUyOThjMzM4NjRiMzY4MWU1MTgzZGEwN2QwMTBiNGUxNWRlMDRhODQ0ZjgwZjdiNDVmM2U5OWExNTc3MCJ9', 'sdf', 43, 123, 'Active', '2016-07-21 05:11:12', '2016-07-21 05:11:12'),
(16, 'sdf', 'eyJpdiI6Im0xVUpyaXF6cGJiYnp4aHllTVRhS3c9PSIsInZhbHVlIjoiRUtnckl0em1JVFdcL0U4NDFPM0xlQVE9PSIsIm1hYyI6IjE5MTM3ODdhZGJhNjVkMzllZGU5NDE2M2ZmZjI1MzQ2NmQ4ZjJjMmY1NTBmNmQwZWY4ODEwN2IxZjc5NGRmZjMifQ==', 'dsf', 34, 34, 'draft', '2016-07-21 05:12:13', '2016-07-21 05:12:13'),
(17, 'test', 'eyJpdiI6IjBESFc2UkFYWFZ6TkxiaEZOYUJSMlE9PSIsInZhbHVlIjoicFcxZVZcL1lpTERlSGt3Qlg2djFZT3c9PSIsIm1hYyI6ImVhODkwMWQ3MTI1ZDhiMjQ1NWYxMDQ0NzNiOGQ5NDgxODNlMTQ0YTI5ODI5OWU3NWY1NWFhMTM5ODM1ZDFjNzYifQ==', 'test', 23, 34, 'Active', '2016-07-21 06:04:34', '2016-07-21 06:04:34'),
(18, 'test', 'eyJpdiI6InRTZXBHeU43cW1cL083eFJjcnB2ZkxBPT0iLCJ2YWx1ZSI6IitYa2pmQ2lxK09XU3N3ajhOZGNDa0E9PSIsIm1hYyI6ImNjNGJlZGRlYWRjNzU5ZTY5NmJkM2NmOTY2NDg2ZGE3MjE0ODUyOWMzZjFlMDc0YTVmMjYxMGE2NTQ3Mzk1M2IifQ==', 'test', 23, 34, 'Active', '2016-07-21 06:09:28', '2016-07-21 06:09:28'),
(19, 'sdf', 'eyJpdiI6ImNUbHMxRkdFQVBhU3kzYWVrR1dOQ2c9PSIsInZhbHVlIjoieUdnNHNXUHVZbUNKTkdoV3V5U0dFZz09IiwibWFjIjoiYTUzZGM1OWE4NGNmMmQ5N2E3ODBmYjk5YjVjOTk0YThhMWQ5NDI3OGUwMzFmZGEwMWMwNmM2ZGExMGM4YzU0MiJ9', 'sdf', 34, 34, 'Active', '2016-07-21 06:14:52', '2016-07-21 06:14:52'),
(20, 'sdf', 'eyJpdiI6IkJoZk5yZldDRWNSUWRkclNHUnN6UUE9PSIsInZhbHVlIjoiTWEwRlVUQnVSaldxVHd4VVRIcUJkdz09IiwibWFjIjoiNTk5MmZiOWU4YTNmMjBkYjg5ZjBjODlkNGU3ZDJlZWUzNDE2YjEyYWE0OTQ5NjBmMjA4YzA2Y2M2ZDg5ODMyYSJ9', 'sdf', 34, 34, 'Active', '2016-07-21 06:22:21', '2016-07-21 06:22:21'),
(21, 'sdf', 'eyJpdiI6ImV6cEpkRlY3OGdIUzhVeTZyVTF3Ync9PSIsInZhbHVlIjoiazJoOU4ydGRcL0V1UnhXbFdiendKd3c9PSIsIm1hYyI6IjhiZGI0NTczMTYwMTZjZDAxYWY2MmQ2OGZjY2ZkMmI0ODRlOGI5Mzk3NGY1MjE4NTI5YzBmMWY2MDQ0Yjk3MDQifQ==', 'sdf', 34, 34, 'Active', '2016-07-21 06:23:34', '2016-07-21 06:23:34'),
(22, 'sdf', 'eyJpdiI6IlNSZlkwcmNYVVBXdVMyTENnOXFycmc9PSIsInZhbHVlIjoidHU3eHlwVTIxaW5cL29lMks5aTlwSXc9PSIsIm1hYyI6ImI0MWJlMWE1YzU1OTg2YmFkYTNhNDhkMzJhNjg2OGUxNTRiMTdlMjEzMmJjYmU1NjkwODVlYzQwNjM2ZDQ3MTMifQ==', 'sdf', 34, 34, 'Active', '2016-07-21 06:23:57', '2016-07-21 06:23:57'),
(23, 'sdf', 'eyJpdiI6Im42aUVTR3pYME1zOWg2MXpCMFwvUjZRPT0iLCJ2YWx1ZSI6ImlyZWVNZGs2d2h2VjlLN2ZoRGhqVlE9PSIsIm1hYyI6IjRiZTM4ZjJhMWM4Zjg0N2ZmY2MwNTM2Y2ExMDk2MDgzODVkODI0MzZiYjIxOGVkZjJjNWY0OTlkM2JjY2VkYTMifQ==', 'sdf', 34, 34, 'Active', '2016-07-21 06:25:28', '2016-07-21 06:25:28'),
(24, 'sdf', 'eyJpdiI6IlJOdTI1bjhXQ3hKK0czOXlXUHZPWHc9PSIsInZhbHVlIjoiNEVLWnloQk5GQ3BrTlFJT1lmTTRkUT09IiwibWFjIjoiZWY5ZTk2OGVjYTQ0M2UxYzJjOGNiZGY0YjlkNDc5OTQ0ODRlZTAzYjI2OGQ0ZDc1ZGYyZTlkNWZlZTNmYTQ2YyJ9', 'sdf', 34, 34, 'Active', '2016-07-21 06:26:21', '2016-07-21 06:26:21'),
(25, 'sdf', 'eyJpdiI6IjJ3K3BzSzlrc3NWc0ptdnpXNWlma3c9PSIsInZhbHVlIjoiXC9oMEpMZlArMXowcFBha0c2MWJPb2c9PSIsIm1hYyI6ImFlZTE1NDZlOWJiZTBmYTNiODFmOWY5OGY2Mzk3MTA2YzY1MmZjNGQxYmEyMjBmMjkzYjcxYzkyZjYwZTA2NmMifQ==', 'sdf', 34, 34, 'Active', '2016-07-21 06:26:38', '2016-07-21 06:26:38'),
(26, 'sdf', 'eyJpdiI6Im42SHBKUWp3UkNwd0cwaUtKQmtLYnc9PSIsInZhbHVlIjoiQ1FXaVRDV0cweXdvaVVLSkNpQmtMQT09IiwibWFjIjoiMThhZTk1MmQwNzQ5YWIyZDM5ZTk5ZjhjN2JjZGRjYTlhYjExZTMzYjM3M2IzM2U2N2FiNWQ3NDY0NDk2N2EwZSJ9', 'sdf', 34, 34, 'Active', '2016-07-21 06:27:06', '2016-07-21 06:27:06'),
(27, 'sdf', 'eyJpdiI6InJCOCtJTHlPUVwvTTliNWY5K2VJTVRnPT0iLCJ2YWx1ZSI6ImlKa0xwMWFrZnh6NXJKWHpFKzFqZUE9PSIsIm1hYyI6IjZkOGNjYWE0NzgwYmFiODg1MDhhNjQ3ZGM5NDkxYTRlYWMxYjBlMzMwMDA2MzM1NGU3NTdmZjBmNmU2ZDVkNzAifQ==', 'sdf', 34, 34, 'Active', '2016-07-21 06:27:37', '2016-07-21 06:27:37'),
(28, 'sdf', 'eyJpdiI6InVIZEdZTm9uNHdrRlM5QXY5V3o4elE9PSIsInZhbHVlIjoiSjF0dnVHXC85MThSWHhIc3o4YXVuTHc9PSIsIm1hYyI6Ijc2Y2FjOGJlMTFlMTViY2M0OTNhZTkwYmJhZjUzZDI0MjA5YzRkZmYwM2IzNWU5OGExYzUxMDYwNTg2YjJkMDcifQ==', 'sdf', 34, 34, 'Active', '2016-07-21 06:28:13', '2016-07-21 06:28:13'),
(29, 'sdf', 'eyJpdiI6Ikk0M3A5cGhVN09FV2w4KzlYaVN3clE9PSIsInZhbHVlIjoiNDJzYUZockE0cWFiM2s0RFV6NFwvcXc9PSIsIm1hYyI6ImQyNmJkY2U3MzZhOWY4ODExNmE0NGUxNDU5Y2I0ZjA0MjViYmM2Y2IzOWU0MDBlYWM0ZDkyYWMwYTkzZTJlOWQifQ==', 'sdf', 34, 34, 'Active', '2016-07-21 06:28:28', '2016-07-21 06:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards1`
--

CREATE TABLE IF NOT EXISTS `gift_cards1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` text,
  `quantity` int(10) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `image` text,
  `status` enum('active','draft','','') DEFAULT 'draft',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `gift_cards1`
--

INSERT INTO `gift_cards1` (`id`, `title`, `code`, `description`, `quantity`, `price`, `image`, `status`, `updated_at`, `created_at`) VALUES
(67, 'abcdefghijklmnopqrstuvwxyz-abcdefghijklmnopqrstuvwxyz-abcdefghijklmnopqrstuvwxyz-abcdefghijklmnopqrstuvwxyz-abcdefghijklmnopqrstuvwxyz-abcdefghijklmnopqrstuvwxyz-abcdefghijklmnopqrstuvwxyz-abcdefghijklmnopqrstuvwxyz-', NULL, 'sdfdsf', 34, 34, '2016-06-08-05-01-42.png', 'active', '2016-06-10 03:50:04', '2016-06-07 23:31:42'),
(68, 'sfsdfs', NULL, 'klsdflkjsdflj', 97, 65, '2016-06-08-05-04-03.png', 'active', '2016-06-07 23:34:03', '2016-06-07 23:34:03'),
(69, 'wuryoiewru', 'ABCD1', 'sdfsdf', 34, 79, '2016-06-08-05-04-19.png', 'active', '2016-06-10 05:46:51', '2016-06-07 23:34:19'),
(70, 'slkjdfljk', NULL, 'sdfsdf', 67, 98, '2016-06-08-05-04-37.png', 'active', '2016-06-07 23:34:37', '2016-06-07 23:34:37'),
(71, 'sdfjsdhfk', NULL, 'sdfsdf', 55, 97, '2016-06-08-05-04-59.png', 'draft', '2016-06-07 23:34:59', '2016-06-07 23:34:59'),
(72, 'sdff', NULL, 'sdf', 65, 0, '2016-06-08-05-05-14.png', 'active', '2016-06-07 23:35:14', '2016-06-07 23:35:14'),
(73, 'sf', NULL, 'sdf', 23, 23, NULL, 'draft', '2016-06-08 01:04:28', '2016-06-08 01:04:28'),
(74, 'testdsfsdf', NULL, 'sfdsdf', 34, 45, '', 'active', '2016-06-08 07:25:19', '2016-06-08 07:25:19'),
(75, 'lksdfjlkj', NULL, 'sdfdsf', 34, 0, '2016-06-08-05-01-42.png', 'active', '2016-06-07 23:31:42', '2016-06-07 23:31:42'),
(76, 'testdsfsdf', NULL, 'sfdsdf', 34, 45, '', 'active', '2016-06-08 07:25:19', '2016-06-08 07:25:19'),
(77, 'slkjdfljk', NULL, 'sdfsdf', 67, 98, '2016-06-08-05-04-37.png', 'active', '2016-06-07 23:34:37', '2016-06-07 23:34:37'),
(78, 'lksdfjlkj', NULL, 'sdfdsf', 34, 0, '2016-06-08-05-01-42.png', 'active', '2016-06-07 23:31:42', '2016-06-07 23:31:42'),
(79, 'ABCD', NULL, 'test desc', 12, 14, '2016-06-10-09-52-42.png', 'draft', '2016-06-10 04:22:42', '2016-06-10 04:22:42'),
(80, 'ABCD', 'ABCD', 'ABCD', 34, 254, '2016-06-10-10-01-44.png', 'active', '2016-06-10 04:31:44', '2016-06-10 04:31:44'),
(83, 'test', 'eyJpdiI6ImkrV0JwU1NyMkNhdFR2TkRcLzR0S2dRPT0iLCJ2YWx1ZSI6IlNyckhjZ1E5WVpRRWMyUUV0QWFpeUE9PSIsIm1hYyI6IjI3NTZmZWU4NjEyMGRmN2JjZWRlMjlhNzM5ZmMyN2M1N2U3NmE1YjNlNjliNjQzMGQwMWY3MjFmNGI5M2FkYzUifQ==', 'test', 34, 345, '', 'active', '2016-06-10 06:05:02', '2016-06-10 06:05:02'),
(84, 'sdfjhls', 'eyJpdiI6ImRYWkZ3elNFZHFFd3FqbUJodmt4dFE9PSIsInZhbHVlIjoidTBcL1gxXC9PYnF2bkR5VXlJTFpNVURnPT0iLCJtYWMiOiJiZmNjODE4ZWI5YTI1M2ViYmU2NTJmZDg2ZjE1Y2ZkM2UwYjhkODM1Mzg1MTc3OTU0Mjk1MGZiYjI1OTIxYTlhIn0=', 'sadfsdf', 34, 177, '', 'active', '2016-06-10 06:07:11', '2016-06-10 06:07:11'),
(85, 'test', 'eyJpdiI6InlUd1UxNTJIa0wzMkJ0WGJCcjdJV2c9PSIsInZhbHVlIjoiTVRIdDU0ZHlcL0tGd3p4SmUyRG80MFE9PSIsIm1hYyI6Ijg3ZWZlODFmNjNhYThmMTg2ZjYwNDI3MDUyMmQ4MmM4Zjk2ZGI0NzA3ODY5NDRiMjg3MDU3Njc2NWNmMDdmZDMifQ==', 'sfsf', 34, 77, '', 'active', '2016-06-10 06:21:18', '2016-06-10 06:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `industry_types`
--

CREATE TABLE IF NOT EXISTS `industry_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_reserved_at_index` (`queue`,`reserved`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `job_location`
--

CREATE TABLE IF NOT EXISTS `job_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_location_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `level_modules`
--

CREATE TABLE IF NOT EXISTS `level_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_level_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `read_access` tinyint(4) NOT NULL,
  `create_access` tinyint(4) NOT NULL,
  `update_access` tinyint(4) NOT NULL,
  `delete_access` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `level_modules_employee_level_id_index` (`employee_level_id`),
  KEY `level_modules_module_id_index` (`module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `level_modules`
--

INSERT INTO `level_modules` (`id`, `employee_level_id`, `module_id`, `read_access`, `create_access`, `update_access`, `delete_access`, `status`, `updated_at`, `created_at`) VALUES
(1, 27, 11, 1, 1, 1, 0, 0, '2016-06-14 09:26:08', '0000-00-00 00:00:00'),
(2, 27, 12, 1, 1, 1, 0, 0, '2016-06-14 09:26:08', '0000-00-00 00:00:00'),
(5, 28, 11, 1, 1, 1, 1, 0, '2016-06-14 13:29:23', '0000-00-00 00:00:00'),
(6, 28, 12, 1, 1, 1, 0, 0, '2016-06-21 00:48:59', '0000-00-00 00:00:00'),
(7, 28, 13, 1, 1, 1, 1, 0, '2016-06-14 13:29:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE IF NOT EXISTS `login_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `professional_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(4) NOT NULL,
  `status` enum('success','fail') COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `login_history_user_id_index` (`user_id`),
  KEY `login_history_professional_email_index` (`professional_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=210 ;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `user_id`, `professional_email`, `user_type`, `attempts`, `status`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-01 08:11:53'),
(2, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-01 08:14:50'),
(3, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-01 08:18:17'),
(4, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-01 23:45:03'),
(5, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:06:07'),
(6, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:06:30'),
(7, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:07:05'),
(8, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:07:30'),
(9, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:07:48'),
(10, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:08:13'),
(11, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:08:32'),
(12, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:13:46'),
(13, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:14:01'),
(14, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:14:55'),
(15, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:15:27'),
(16, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:15:49'),
(17, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:21:23'),
(18, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:21:49'),
(19, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:22:17'),
(20, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:27:50'),
(21, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:31:21'),
(22, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:34:38'),
(23, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:34:53'),
(24, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:35:14'),
(25, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:36:11'),
(26, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:36:22'),
(27, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:36:37'),
(28, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:37:13'),
(29, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:37:29'),
(30, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:40:46'),
(31, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:40:57'),
(32, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:41:31'),
(33, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:41:53'),
(34, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:42:13'),
(35, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:42:56'),
(36, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:43:06'),
(37, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:43:30'),
(38, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:43:45'),
(39, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:44:06'),
(40, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:44:47'),
(41, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:44:59'),
(42, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:45:12'),
(43, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:45:25'),
(44, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:45:55'),
(45, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:47:08'),
(46, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:47:27'),
(47, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:48:11'),
(48, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:48:21'),
(49, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:50:08'),
(50, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:50:20'),
(51, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:50:30'),
(52, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:50:55'),
(53, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:51:06'),
(54, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:51:18'),
(55, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:51:46'),
(56, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:52:05'),
(57, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:52:57'),
(58, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:53:37'),
(59, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:54:15'),
(60, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:54:50'),
(61, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:57:44'),
(62, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 00:58:31'),
(63, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:01:41'),
(64, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:02:24'),
(65, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:02:37'),
(66, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:05:50'),
(67, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:07:18'),
(68, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:12:19'),
(69, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:13:39'),
(70, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:21:41'),
(71, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:24:52'),
(72, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:25:05'),
(73, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:25:18'),
(74, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:25:29'),
(75, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:25:53'),
(76, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:26:21'),
(77, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:26:35'),
(78, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:26:51'),
(79, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:26:56'),
(80, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:27:14'),
(81, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:27:32'),
(82, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:28:00'),
(83, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:28:45'),
(84, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:29:00'),
(85, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:30:59'),
(86, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:31:09'),
(87, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:31:24'),
(88, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:31:46'),
(89, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 01:32:57'),
(90, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 02:46:31'),
(91, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 02:46:51'),
(92, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 05:55:39'),
(93, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-02 23:24:02'),
(94, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-02 23:24:30'),
(95, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-05 23:19:48'),
(96, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-06 07:24:57'),
(97, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-06 23:01:45'),
(98, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-06 23:12:00'),
(99, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-07 04:40:32'),
(100, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-07 23:10:13'),
(101, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-08 23:14:07'),
(102, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-09 00:01:34'),
(103, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-09 05:27:11'),
(104, 1, 'sa@devanche.com', 'admin', 1, 'success', '10.2.2.59', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-09 08:17:02'),
(105, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-09 23:06:14'),
(106, 1, 'sa@devanche.com', 'admin', 1, 'success', '10.2.7.2', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0', '2016-06-10 00:20:00'),
(107, 1, 'sa@devanche.com', 'admin', 1, 'success', '10.2.6.77', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '2016-06-10 03:26:31'),
(108, 1, 'sa@devanche.com', 'admin', 1, 'success', '10.2.3.104', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:46.0) Gecko/20100101 Firefox/46.0', '2016-06-10 03:40:07'),
(109, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-10 05:49:59'),
(110, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-10 23:12:12'),
(111, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-11 01:28:32'),
(112, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-11 02:45:14'),
(113, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-11 02:50:58'),
(114, 0, 'sa@devanche.com', 'admin', 1, 'fail', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-11 06:09:55'),
(115, 0, 'sa@devanche.com', 'admin', 2, 'fail', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-11 06:10:04'),
(116, 0, 'sa@devanche.com', 'admin', 3, 'fail', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-11 06:10:08'),
(117, 0, 'sa@devanche.com', 'admin', 4, 'fail', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-11 06:10:12'),
(118, 0, 'sa@devanche.com', 'admin', 5, 'fail', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-11 06:10:16'),
(119, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-11 07:56:16'),
(120, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-11 07:56:32'),
(121, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-12 23:20:39'),
(122, 1, 'sa@devanche.com', 'admin', 1, 'success', '10.2.3.104', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-12 23:53:17'),
(123, 1, 'sa@devanche.com', 'admin', 1, 'success', '10.2.2.59', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-12 23:53:39'),
(124, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-13 00:58:19'),
(125, 1, 'sa@devanche.com', 'admin', 1, 'success', '10.2.3.104', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0', '2016-06-13 03:54:06'),
(126, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-13 23:22:05'),
(127, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-14 04:48:52'),
(128, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-14 23:34:16'),
(129, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-14 23:58:22'),
(130, 0, 'sa@devanche.com', 'admin', 1, 'fail', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-15 01:19:01'),
(131, 0, 'sa@devanche.com', 'admin', 1, 'fail', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-15 01:24:30'),
(132, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-15 01:31:58'),
(133, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-15 01:34:15'),
(134, 0, 'sa@devanche.com', 'admin', 1, 'fail', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-15 05:05:04'),
(135, 0, 'sa@devanche.com', 'admin', 1, 'fail', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-15 05:10:41'),
(136, 0, 'sa@devanche.com', 'admin', 2, 'fail', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-15 05:10:47'),
(137, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-15 05:15:19'),
(138, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-15 05:23:28'),
(139, 6, 'vikram.parihar@indianic.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-15 05:58:58'),
(140, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-15 23:15:28'),
(141, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-15 23:33:42'),
(142, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-16 07:04:41'),
(143, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-16 07:25:07'),
(144, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-16 23:09:41'),
(145, 6, 'vikram.parihar@indianic.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-16 23:52:16'),
(146, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-17 03:24:49'),
(147, 6, 'vikram.parihar@indianic.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-17 05:10:59'),
(148, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-19 23:23:42'),
(149, 6, 'vikram.parihar@indianic.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-20 01:17:15'),
(150, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-20 23:20:27'),
(151, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-20 23:21:01'),
(152, 6, 'vikram.parihar@indianic.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-20 23:21:25'),
(153, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-21 22:42:13'),
(154, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-21 22:48:41'),
(155, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-22 01:18:12'),
(156, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-22 03:55:30'),
(157, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-22 23:24:31'),
(158, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-23 22:48:13'),
(159, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-24 01:30:16'),
(160, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-24 05:06:54'),
(161, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-24 05:07:31'),
(162, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-24 05:08:37'),
(163, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-24 05:21:03'),
(164, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-24 23:21:19'),
(165, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-24 23:21:46'),
(166, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-25 06:38:57'),
(167, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-26 23:20:44'),
(168, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-27 23:31:38'),
(169, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-28 23:25:19'),
(170, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-29 23:25:03'),
(171, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-30 05:13:59'),
(172, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-06-30 07:22:36'),
(173, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-06-30 23:27:47'),
(174, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-07-01 05:42:25'),
(175, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-03 23:36:02'),
(176, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-07-04 03:08:55'),
(177, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-04 06:57:14'),
(178, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-04 06:57:31'),
(179, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-04 23:44:28'),
(180, 1, 'sa@devanche.com', 'admin', 1, 'success', '10.2.2.59', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-05 00:38:45'),
(181, 1, 'sa@devanche.com', 'admin', 1, 'success', '10.2.2.60', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-07-05 01:10:28'),
(182, 1, 'sa@devanche.com', 'admin', 1, 'success', '10.2.7.32', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.63 Safari/537.36', '2016-07-05 01:12:56'),
(183, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-05 23:40:07'),
(184, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-07-06 03:27:00'),
(185, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', '2016-07-06 05:40:14'),
(186, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-07 00:54:42'),
(187, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-07 23:21:20'),
(188, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-08 23:29:57'),
(189, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-09 03:32:11'),
(190, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-10 23:46:02'),
(191, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-11 23:35:28'),
(192, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-12 04:03:56'),
(193, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-12 23:20:23'),
(194, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-13 06:24:28'),
(195, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-13 23:13:28'),
(196, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-14 03:21:13'),
(197, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-14 23:19:29'),
(198, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-15 05:22:54'),
(199, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-17 23:02:44'),
(200, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-18 23:14:00'),
(201, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-19 23:05:00'),
(202, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-20 02:32:32'),
(203, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-20 23:20:03'),
(204, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-21 23:14:08'),
(205, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-22 03:25:40'),
(206, 1, 'sa@devanche.com', 'admin', 1, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', '2016-07-22 03:25:55'),
(207, 0, 'vikram.parihar@indianic.com', 'admin', 1, 'fail', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-09-08 01:28:32'),
(208, 0, 'sa@devanche.com', 'admin', 1, 'fail', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-09-08 02:53:21'),
(209, 1, 'sa@devanche.com', 'admin', 2, 'success', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', '2016-09-08 02:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `login_history_users`
--

CREATE TABLE IF NOT EXISTS `login_history_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(4) NOT NULL,
  `status` enum('success','fail') COLLATE utf8_unicode_ci NOT NULL,
  `login_from` enum('Web','Facebook','Google','Twitter','Linkedin','Api') COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `login_history_users_user_id_index` (`user_id`),
  KEY `login_history_users_email_index` (`email`),
  KEY `login_history_users_login_from_index` (`login_from`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `make_an_offer_settings`
--

CREATE TABLE IF NOT EXISTS `make_an_offer_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_to_retract_offer` tinyint(4) NOT NULL,
  `admin_user_id` int(10) unsigned NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_subject` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg_content` text COLLATE utf8_unicode_ci,
  `msg_status` enum('new','draft','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `message_folders`
--

CREATE TABLE IF NOT EXISTS `message_folders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `folder_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_employee_msgs_id` int(10) unsigned DEFAULT NULL,
  `receiver_member_msgs_id` int(10) unsigned DEFAULT NULL,
  `receiver_otheruser_msgs_id` int(10) unsigned DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
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
('2016_05_18_125238_create_products_table', 1),
('2016_05_19_050841_create_productsku_table', 1),
('2016_05_23_060605_create_attributes_table', 1),
('2016_05_23_061348_create_attribute_sets_table', 1),
('2016_05_23_062643_create_admin_user_details_table', 1),
('2016_05_23_063240_create_categories_table', 1),
('2016_05_24_123412_attribute_set_category', 1),
('2016_05_24_133147_countries', 1),
('2016_05_25_052940_attribute_values', 1),
('2016_05_28_064311_admin_user_documents', 1),
('2016_05_31_130137_create_login_history', 3),
('2016_05_03_103244_create_States_table', 4),
('2016_05_25_115708_create_employee_levels_table', 4),
('2016_05_25_121409_create_admin_user_modules_table', 4),
('2016_05_30_051048_create_level_modules_table', 4),
('2016_05_31_060759_cities', 4),
('2016_05_31_085812_employee_departments', 4),
('2016_06_11_061111_create_giftcards_table', 5),
('2016_05_25_101431_create_modules_table', 6),
('2016_05_23_061612_create_admin_users_table', 7),
('2016_06_09_054214_add_description_to_employee_departments_table', 7),
('2016_06_13_065905_create_joblocation_table', 7),
('2016_05_31_085812_topic_departments', 8),
('2016_07_01_132417_create_occasions_table', 9),
('2016_07_01_132454_create_files_table', 9),
('2016_07_01_132547_create_product_conditions_table', 9),
('2016_05_31_085812_file_labels', 10),
('2016_06_01_133016_create_faq_topics_table', 10),
('2016_06_01_133432_create_faqs_table', 10),
('2016_06_16_094423_create_term_and_conditions_table', 10),
('2016_06_17_125859_create_content_pages_table', 10),
('2016_06_20_070906_create_front_menus_table', 10),
('2016_06_20_071009_create_front_pages_table', 10),
('2016_06_21_090045_create_forums_table', 10),
('2016_06_24_054537_create_make_an_offer_settings_table', 10),
('2016_06_24_054920_create_reward_point_settings_table', 10),
('2016_06_24_054941_create_shipping_carrier_settings_table', 10),
('2016_06_25_071652_create_vendors_table', 10),
('2016_06_27_123959_create_secret_questions_table', 10),
('2016_07_05_084455_create_users_table', 10),
('2016_06_21_090046_create_file_uploads_table', 11),
('2016_06_29_093403_create_newsletters_table', 11),
('2016_07_04_062414_create_donation_venders_table', 11),
('2016_07_04_121507_create_jobs_table', 11),
('2016_07_05_054338_create_failed_jobs_table', 11),
('2016_07_07_092126_create_admin_user_password_resets_table', 11),
('2016_07_12_085519_create_promotions_table', 11),
('2016_05_03_103244_create_attachment_employee_msgs_table', 12),
('2016_05_03_103244_create_attachment_member_msgs_table', 12),
('2016_05_03_103244_create_attachment_otherUser_msgs_table', 12),
('2016_05_03_103244_create_message_folder_table', 12),
('2016_05_03_103244_create_messages_table', 12),
('2016_05_03_103244_create_msgs_receiver_table', 12),
('2016_05_03_103244_create_msgs_sender_table', 12),
('2016_05_03_103244_create_other_users_table', 12),
('2016_05_03_103244_create_receiver_employee_msgs_table', 12),
('2016_05_03_103244_create_receiver_member_msgs_table', 12),
('2016_05_03_103244_create_receiver_otherUser_msgs_table', 12),
('2016_05_03_103244_create_sender_employee_msgs_table', 12),
('2016_05_03_103244_create_sender_member_msgs_table', 12),
('2016_05_03_103244_create_sender_otherUser_msgs_table', 12),
('2016_05_28_121021_create_category_table', 12),
('2016_07_21_111653_create_notifications_table', 13),
('2016_07_21_112023_create_notification_users_table', 13),
('2014_10_12_100000_create_password_resets_table', 14),
('2016_07_14_102242_create_vendor_types_table', 14),
('2016_07_14_115322_add_vendor_types_id_to_vendors_table', 14),
('2016_07_21_052918_create_transections_table', 14),
('2016_08_03_122445_create_industry_types_table', 14),
('2016_08_03_122517_create_user_addresses_table', 14),
('2016_08_03_122548_create_seller_details_table', 14),
('2016_08_03_122612_create_user_payment_card_details_table', 14),
('2016_08_13_085414_create_login_history_users_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive','','') COLLATE utf8_unicode_ci DEFAULT 'Active',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `status`, `updated_at`, `created_at`) VALUES
(11, 'new module', 'Active', '2016-06-13 07:35:42', '2016-06-13 07:35:42'),
(12, 'giftcards', 'Active', '2016-06-14 03:55:32', '2016-06-14 03:55:32'),
(13, 'products', 'Active', '2016-06-14 07:59:01', '2016-06-14 07:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `msgs_receiver`
--

CREATE TABLE IF NOT EXISTS `msgs_receiver` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `messages_id` int(10) unsigned NOT NULL,
  `msgs_sender_id` int(10) unsigned NOT NULL,
  `receiver_employee_msgs_id` int(10) unsigned DEFAULT NULL,
  `receiver_member_msgs_id` int(10) unsigned DEFAULT NULL,
  `receiver_otheruser_msgs_id` int(10) unsigned DEFAULT NULL,
  `receiver_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg_isMovedto_folder` tinyint(4) DEFAULT NULL,
  `msg_folder_id` int(10) unsigned DEFAULT NULL,
  `msg_isNotified` tinyint(4) DEFAULT NULL,
  `msg_isRead` tinyint(4) DEFAULT NULL,
  `msg_isFlagged` tinyint(4) DEFAULT NULL,
  `msg_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg_status` enum('new','draft','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `msg_isDeletedby_receiver` tinyint(4) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `msgs_sender`
--

CREATE TABLE IF NOT EXISTS `msgs_sender` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `messages_id` int(10) unsigned NOT NULL,
  `sender_employee_msgs_id` int(10) unsigned DEFAULT NULL,
  `sender_member_msgs_id` int(10) unsigned DEFAULT NULL,
  `sender_otheruser_msgs_id` int(10) unsigned DEFAULT NULL,
  `msg_fromid` int(10) unsigned NOT NULL,
  `msg_sender_issuperadmin` tinyint(4) DEFAULT NULL,
  `msg_status` enum('new','draft','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `msg_isRead` tinyint(4) DEFAULT NULL,
  `msg_isFlagged` tinyint(4) DEFAULT NULL,
  `msg_isDeleted_by_sender` tinyint(4) DEFAULT NULL,
  `msg_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg_isMovedto_folder` tinyint(4) DEFAULT NULL,
  `msg_IsReply` tinyint(4) DEFAULT NULL,
  `msg_replyto_messageid` int(10) unsigned DEFAULT NULL,
  `msg_IsNotified` tinyint(4) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE IF NOT EXISTS `newsletters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `newsletter_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `newsletter_content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Draft','Active','Sent') COLLATE utf8_unicode_ci NOT NULL,
  `admin_user_id` int(10) unsigned NOT NULL,
  `newsletter_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` enum('success','info','danger','warning') COLLATE utf8_unicode_ci DEFAULT 'info',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `text`, `url`, `icon`, `created_at`, `updated_at`) VALUES
(9, 'New Giftcard sdf has been Added!!', 'http://localhost/marketplace/public/admin/giftcards/eyJpdiI6IjZlMmVmdDBUU0NlWHJJNFJRUDFMUUE9PSIsInZhbHVlIjoiNTFjZTdlN045K3dpdHhTZGdoVU9Rdz09IiwibWFjIjoiZTYyNjgxOGVmNjljNmJkZjYzOTAyZTgzZjRhNGIxMTkyY2NkYjljMGEyMmQ2YTYxODIwZTdhOWZkNWRkODc0YSJ9/edit', 'info', '2016-07-21 06:28:13', '2016-07-21 06:28:13'),
(10, 'New Giftcard sdf has been Added!!', 'http://localhost/marketplace/public/admin/giftcards/eyJpdiI6IkY1WVJQQUR3VDdDK2VvZjJoOElOWWc9PSIsInZhbHVlIjoiR2h4Tmp2Q1VhXC91YnNiVVNZZTlXSWc9PSIsIm1hYyI6IjI1NTgyNGRiNzNiNjE4YWE2MzcyNGQ0MDY1ZDJiNjExNTM2ZGI5MzllOTliNmQzNDdlMzI1MmIyZTRiMjEzZjIifQ==/edit', 'info', '2016-07-21 06:28:28', '2016-07-21 06:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `notification_users`
--

CREATE TABLE IF NOT EXISTS `notification_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notifications_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `is_read` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `notification_users`
--

INSERT INTO `notification_users` (`id`, `notifications_id`, `user_id`, `is_read`, `created_at`, `updated_at`) VALUES
(11, 9, 1, 'yes', '2016-07-21 06:28:13', '2016-07-21 23:24:46'),
(12, 9, 2, 'no', '2016-07-21 06:28:13', '2016-07-21 06:28:13'),
(13, 9, 5, 'no', '2016-07-21 06:28:13', '2016-07-21 06:28:13'),
(14, 9, 6, 'no', '2016-07-21 06:28:13', '2016-07-21 06:28:13'),
(15, 10, 1, 'yes', '2016-07-21 06:28:28', '2016-07-21 23:24:52'),
(16, 10, 2, 'no', '2016-07-21 06:28:29', '2016-07-21 06:28:29'),
(17, 10, 5, 'no', '2016-07-21 06:28:29', '2016-07-21 06:28:29'),
(18, 10, 6, 'no', '2016-07-21 06:28:29', '2016-07-21 06:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `occasions`
--

CREATE TABLE IF NOT EXISTS `occasions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `occasions`
--

INSERT INTO `occasions` (`id`, `name`, `status`, `start_date`, `end_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'test', 'Active', '2016-07-11', '2016-07-11', NULL, '2016-07-22 01:00:31', '2016-07-22 01:00:31'),
(2, 'test', 'Active', '2016-07-11', '2016-07-11', NULL, '2016-07-22 01:00:58', '2016-07-22 01:00:58'),
(3, 'test', 'Active', '2016-07-11', '2016-07-11', NULL, '2016-07-22 01:01:17', '2016-07-22 01:01:17'),
(4, 'test', 'Active', '2016-07-11', '2016-07-11', NULL, '2016-07-22 01:01:25', '2016-07-22 01:01:25'),
(5, 'test', 'Active', '2016-07-11', '2016-07-11', NULL, '2016-07-22 01:01:53', '2016-07-22 01:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `other_users`
--

CREATE TABLE IF NOT EXISTS `other_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isDeleted` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `listing_status` enum('draft') COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `producttype_id` int(10) unsigned NOT NULL,
  `codetype_id` int(10) unsigned NOT NULL,
  `code_value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_bulk` tinyint(4) NOT NULL,
  `total_stock` decimal(5,2) NOT NULL,
  `unit_price` decimal(5,2) NOT NULL,
  `normal_price` decimal(5,2) NOT NULL,
  `selling_mode` enum('MakeAnOffer','Auction') COLLATE utf8_unicode_ci NOT NULL,
  `condition` enum('New','Used','Refurbished') COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `productsku`
--

CREATE TABLE IF NOT EXISTS `productsku` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `p_id` int(10) unsigned NOT NULL,
  `qty` decimal(5,2) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_conditions`
--

CREATE TABLE IF NOT EXISTS `product_conditions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `product_conditions`
--

INSERT INTO `product_conditions` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', '2016-07-07 04:28:49', '2016-07-07 04:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE IF NOT EXISTS `promotions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `promo_code` text COLLATE utf8_unicode_ci,
  `discount` int(10) unsigned DEFAULT NULL,
  `discount_type` enum('percentage','fix') COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `selected_users` text COLLATE utf8_unicode_ci,
  `users_id` int(10) unsigned DEFAULT NULL,
  `user_type` enum('Admin','Seller') COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `promo_code`, `discount`, `discount_type`, `start_date`, `end_date`, `selected_users`, `users_id`, `user_type`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'eyJpdiI6InVBT0ZnUzNQSkdsQUF1NFpSK1ZzS0E9PSIsInZhbHVlIjoiUkZMTkNTSm92MGM1dEQycU5oTXd4QT09IiwibWFjIjoiYzBiOTYxOWEzYWFmMGQyNDBjNDk3MDI4OTEwZmE0NThkZjZjZWY5OTlhNmZiN2RiMGI1MmQ2ZDg0OTFiY2M3MyJ9', 34, 'fix', '2016-07-12', '2016-07-27', 'all', 1, 'Admin', 'Active', '2016-07-12 04:06:01', '2016-07-12 04:05:51', '2016-07-12 04:06:01'),
(2, 'eyJpdiI6Im01SUFHR0k0bW9yREtuQk9Xb2t5XC9nPT0iLCJ2YWx1ZSI6Ijc3Tkk5d0l0Y3FaTjRjSXZOcmVcL0x3PT0iLCJtYWMiOiIwMjY1NTY5YjA5ZmU2MmVmMjFkN2UyNjIxNDU4M2U5OGQwODU5YjdhNzYzM2RhMjliNmM0YWI3MGUzMjliZmU1In0=', 12, 'percentage', '2016-07-05', '2016-07-26', '2,1', 1, 'Admin', 'Active', NULL, '2016-07-12 04:15:06', '2016-07-12 04:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `receiver_employee_msgs`
--

CREATE TABLE IF NOT EXISTS `receiver_employee_msgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_employee_msgs_id` int(10) unsigned NOT NULL,
  `emp_professional_email_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `msg_sentTo_id` int(10) unsigned NOT NULL,
  `msg_isMovedto_folder` tinyint(4) NOT NULL,
  `msg_folder_id` int(10) unsigned NOT NULL,
  `msg_IsNotified` tinyint(4) NOT NULL,
  `msg_isRead` tinyint(4) NOT NULL,
  `msg_isFlagged` tinyint(4) NOT NULL,
  `msg_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `msg_status` enum('new','draft','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `msg_isDeletedby_receiver` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `receiver_member_msgs`
--

CREATE TABLE IF NOT EXISTS `receiver_member_msgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_member_msgs_id` int(10) unsigned NOT NULL,
  `member_email_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `msg_sentTo_id` int(10) unsigned NOT NULL,
  `msg_isMovedto_folder` tinyint(4) NOT NULL,
  `msg_folder_id` int(10) unsigned NOT NULL,
  `msg_IsNotified` tinyint(4) NOT NULL,
  `msg_isRead` tinyint(4) NOT NULL,
  `msg_isFlagged` tinyint(4) NOT NULL,
  `msg_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `msg_status` enum('new','draft','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `msg_isDeletedby_receiver` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `receiver_otherUser_msgs`
--

CREATE TABLE IF NOT EXISTS `receiver_otherUser_msgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_otherUser_msgs_id` int(10) unsigned NOT NULL,
  `otherUser_email_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `msg_sentTo_id` int(10) unsigned NOT NULL,
  `msg_isMovedto_folder` tinyint(4) NOT NULL,
  `msg_folder_id` int(10) unsigned NOT NULL,
  `msg_IsNotified` tinyint(4) NOT NULL,
  `msg_isRead` tinyint(4) NOT NULL,
  `msg_isFlagged` tinyint(4) NOT NULL,
  `msg_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `msg_status` enum('new','draft','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `msg_isDeletedby_receiver` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `reward_point_settings`
--

CREATE TABLE IF NOT EXISTS `reward_point_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `buyer_earns_reward_point_on_purchase_of_every` decimal(7,2) NOT NULL,
  `reward_point_value` decimal(7,2) NOT NULL,
  `effective_from_date` datetime NOT NULL,
  `admin_user_id` int(10) unsigned NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `secret_questions`
--

CREATE TABLE IF NOT EXISTS `secret_questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `secret_question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_user_id` int(10) unsigned NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=66 ;

--
-- Dumping data for table `secret_questions`
--

INSERT INTO `secret_questions` (`id`, `secret_question`, `admin_user_id`, `status`, `deleted_at`, `created_at`) VALUES
(1, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(2, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(3, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(4, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(5, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(6, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(7, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(8, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(9, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(10, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(11, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(12, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(13, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(14, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(15, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(16, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(17, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(18, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(19, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(20, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(21, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(22, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(23, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(24, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(25, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(26, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(27, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(28, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(29, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(30, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(31, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(32, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(33, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(34, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(35, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(36, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(37, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(38, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(39, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(40, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(41, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(42, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(43, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(44, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(45, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(46, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(47, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(48, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(49, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(50, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(51, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(52, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(53, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(54, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(55, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(56, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(57, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(58, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(59, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(60, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(61, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(62, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(63, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(64, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44'),
(65, 'What is your age', 1, 'Active', NULL, '2016-07-19 00:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `seller_details`
--

CREATE TABLE IF NOT EXISTS `seller_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `industry_type_id` int(10) unsigned NOT NULL,
  `business_details` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `tax_id_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `business_reg_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `business_phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `position_id` int(10) unsigned NOT NULL,
  `position_other` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_phone_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_routing_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seller_details_user_id_index` (`user_id`),
  KEY `seller_details_industry_type_id_index` (`industry_type_id`),
  KEY `seller_details_position_id_index` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sender_employee_msgs`
--

CREATE TABLE IF NOT EXISTS `sender_employee_msgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_subject` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `msg_content` text COLLATE utf8_unicode_ci NOT NULL,
  `msg_fromid` int(10) unsigned NOT NULL,
  `msg_sender_issuperadmin` tinyint(4) NOT NULL,
  `msg_status` enum('new','draft','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `msg_isRead` tinyint(4) NOT NULL,
  `msg_isFlagged` tinyint(4) NOT NULL,
  `msg_isDeleted_by_sender` tinyint(4) NOT NULL,
  `msg_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `msg_isMovedto_folder` tinyint(4) NOT NULL,
  `msg_IsReply` tinyint(4) NOT NULL,
  `msg_replyto_messageid` int(10) unsigned NOT NULL,
  `msg_IsNotified` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sender_member_msgs`
--

CREATE TABLE IF NOT EXISTS `sender_member_msgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_subject` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `msg_content` text COLLATE utf8_unicode_ci NOT NULL,
  `msg_fromid` int(10) unsigned NOT NULL,
  `msg_sender_issuperadmin` tinyint(4) NOT NULL,
  `msg_status` enum('new','draft','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `msg_isRead` tinyint(4) NOT NULL,
  `msg_isFlagged` tinyint(4) NOT NULL,
  `msg_isDeleted_by_sender` tinyint(4) NOT NULL,
  `msg_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `msg_isMovedto_folder` tinyint(4) NOT NULL,
  `msg_IsReply` tinyint(4) NOT NULL,
  `msg_replyto_messageid` int(10) unsigned NOT NULL,
  `msg_IsNotified` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sender_otherUser_msgs`
--

CREATE TABLE IF NOT EXISTS `sender_otherUser_msgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_subject` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `msg_content` text COLLATE utf8_unicode_ci NOT NULL,
  `msg_fromid` int(10) unsigned NOT NULL,
  `msg_sender_issuperadmin` tinyint(4) NOT NULL,
  `msg_status` enum('new','draft','deleted') COLLATE utf8_unicode_ci NOT NULL,
  `msg_isRead` tinyint(4) NOT NULL,
  `msg_isFlagged` tinyint(4) NOT NULL,
  `msg_isDeleted_by_sender` tinyint(4) NOT NULL,
  `msg_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `msg_isMovedto_folder` tinyint(4) NOT NULL,
  `msg_IsReply` tinyint(4) NOT NULL,
  `msg_replyto_messageid` int(10) unsigned NOT NULL,
  `msg_IsNotified` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_carrier_settings`
--

CREATE TABLE IF NOT EXISTS `shipping_carrier_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_id` int(10) unsigned NOT NULL,
  `active_in_system` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL,
  `additional_profit_margin` decimal(5,2) NOT NULL,
  `effective_from_date` datetime NOT NULL,
  `admin_user_id` int(10) unsigned NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(10) unsigned NOT NULL,
  `state_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `term_and_conditions`
--

CREATE TABLE IF NOT EXISTS `term_and_conditions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `terms_conditions` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Published','Draft') COLLATE utf8_unicode_ci NOT NULL,
  `admin_user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `term_and_conditions_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `topic_departments`
--

CREATE TABLE IF NOT EXISTS `topic_departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `department_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `topics` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `topic_departments_topics_index` (`topics`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `vendors_id` int(11) DEFAULT NULL,
  `amount_received` decimal(5,2) NOT NULL,
  `amount_paid` decimal(5,2) NOT NULL,
  `transaction_date` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_vendors_id_index` (`vendors_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('Buyer','Seller','Both') COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('Male','Female','Bussiness') COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `phone_number` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive','Pending') COLLATE utf8_unicode_ci NOT NULL,
  `is_subscribed` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `user_type`, `email`, `gender`, `dob`, `phone_number`, `status`, `is_subscribed`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'Buyer1', '', 'Amit', 'pande', 'Buyer', 'something@gmail.com', 'Female', '2016-07-07', '', 'Active', 0, '2016-07-08 12:48:30', '0000-00-00 00:00:00', NULL),
(2, 'Seller1', '', 'paresh', 'sarkar', 'Buyer', 'something@seller.com', 'Male', '2016-07-11', '', 'Active', 0, '2016-07-08 12:50:26', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE IF NOT EXISTS `user_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `address_type` enum('Billing','Shipping') COLLATE utf8_unicode_ci NOT NULL,
  `address_1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `state_id` int(10) unsigned NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `postal_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_addresses_user_id_index` (`user_id`),
  KEY `user_addresses_country_id_index` (`country_id`),
  KEY `user_addresses_state_id_index` (`state_id`),
  KEY `user_addresses_city_id_index` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_payment_card_details`
--

CREATE TABLE IF NOT EXISTS `user_payment_card_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `card_type` enum('Master','Visa') COLLATE utf8_unicode_ci NOT NULL,
  `card_number` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_month` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `expiry_year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_payment_card_details_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE IF NOT EXISTS `vendors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `state_id` int(10) unsigned NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `account_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vendor_type` enum('Logistics','PaymentSystem','ITServices','Taxes','Legal','Accounting','Marketing') COLLATE utf8_unicode_ci NOT NULL,
  `admin_user_id` int(10) unsigned NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_types_id` int(11) DEFAULT NULL,
  `skype_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vendors_vendor_types_id_index` (`vendor_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_types`
--

CREATE TABLE IF NOT EXISTS `vendor_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vendor_type_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_topic_id_foreign` FOREIGN KEY (`faq_topic_id`) REFERENCES `faq_topics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_pages`
--
ALTER TABLE `front_pages`
  ADD CONSTRAINT `front_pages_front_menu_id_foreign` FOREIGN KEY (`front_menu_id`) REFERENCES `front_menus` (`id`);

--
-- Constraints for table `seller_details`
--
ALTER TABLE `seller_details`
  ADD CONSTRAINT `seller_details_industry_type_id_foreign` FOREIGN KEY (`industry_type_id`) REFERENCES `industry_types` (`id`),
  ADD CONSTRAINT `seller_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `user_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `user_addresses_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_payment_card_details`
--
ALTER TABLE `user_payment_card_details`
  ADD CONSTRAINT `user_payment_card_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
