-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 15, 2023 at 09:02 PM
-- Server version: 5.7.36
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ostad_db_laravel24`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `events_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `title`, `description`, `event_date`, `event_time`, `location`, `created_at`, `updated_at`) VALUES
(2, 1, 'Laravel 10 Programming Event', 'A basic Bootstrap table has light padding and only horizontal dividers. The .table class adds ... The .table-striped class adds zebra-stripes to a table', '2023-08-16', '07:20:00', 'Dhaka', '2023-08-15 13:20:40', '2023-08-15 13:38:29'),
(3, 1, 'Ostad Laravel Batch Event', 'Ostad Laravel Batch Event Ostad Laravel Batch Event Ostad Laravel Batch Event Ostad Laravel Batch Event Ostad Laravel Batch Event sdaasdf asdf asdf asf asdf asdf asdf asdf asdf asdf sad', '2023-08-29', '16:43:00', 'Dhaka', '2023-08-15 13:43:41', '2023-08-15 14:10:27'),
(5, 1, 'Testing Event', 'This is testing eventThis is testing eventThis is testing eventThis is testing eventThis is testing eventThis is testing eventThis is testing eventThis is testing eventThis is testing eventThis is testing eventThis is testing eventThis is testing eventThis is testing eventThis is testing eventThis is testing eventThis is testing event', '2023-08-22', '02:20:00', 'Dhaka', '2023-08-15 14:16:32', '2023-08-15 14:24:07'),
(6, 1, 'The Big Laravel meetup', 'The Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetup', '2023-08-16', '06:28:00', 'Singapore', '2023-08-15 14:28:21', '2023-08-15 14:29:16'),
(7, 1, 'This is test', 'af sdf asdf asdf asdf asdf', '2023-08-16', '06:03:00', 'London', '2023-08-15 14:59:54', '2023-08-15 14:59:54'),
(8, 1, 'Laravel 11 Programming Event', 'A basic Bootstrap table has light padding and only horizontal dividers. The .table class adds ... The .table-striped class adds zebra-stripes to a table', '2023-08-16', '07:20:00', 'Canada', '2023-08-15 13:20:40', '2023-08-15 13:38:29'),
(9, 2, 'Ostad Laravel Batch Event', 'Ostad Laravel Batch Event Ostad Laravel Batch Event Ostad Laravel Batch Event Ostad Laravel Batch Event Ostad Laravel Batch Event sdaasdf asdf asdf asf asdf asdf asdf asdf asdf asdf sad', '2023-08-29', '16:43:00', 'Dhaka', '2023-08-15 13:43:41', '2023-08-15 21:00:54'),
(10, 2, 'Ostad Laravel Batch Event', 'Ostad Laravel Batch Event Ostad Laravel Batch Event Ostad Laravel Batch Event Ostad Laravel Batch Event Ostad Laravel Batch Event sdaasdf asdf asdf asf asdf asdf asdf asdf asdf asdf sad', '2023-08-29', '16:43:00', 'Dhaka', '2023-08-15 13:43:41', '2023-08-15 21:00:57'),
(11, 2, 'Ostad Laravel Batch Event', 'Ostad Laravel Batch Event Ostad Laravel Batch Event Ostad Laravel Batch Event Ostad Laravel Batch Event Ostad Laravel Batch Event sdaasdf asdf asdf asf asdf asdf asdf asdf asdf asdf sad', '2023-08-29', '16:43:00', 'Dhaka', '2023-08-15 13:43:41', '2023-08-15 21:01:00'),
(12, 2, 'The Big Laravel meetup', 'The Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetup', '2023-08-16', '06:28:00', 'Singapore', '2023-08-15 14:28:21', '2023-08-15 21:01:03'),
(13, 2, 'The Big Laravel and Vue JS meetup', 'The Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetupThe Big Laravel meetup', '2023-08-16', '06:28:00', 'Singapore', '2023-08-15 14:28:21', '2023-08-15 21:01:03'),
(14, 1, 'React Programming Event', 'A basic Bootstrap table has light padding and only horizontal dividers. The .table class adds ... The .table-striped class adds zebra-stripes to a table', '2023-08-16', '07:20:00', 'Canada', '2023-08-15 13:20:40', '2023-08-15 13:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_14_194358_create_events_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nur Alam', 'cenur10@gmail.com', NULL, '$2y$10$/idg7YAA1N5mqQAY5Lvc1OJxBD9vhW4Dlr2fa6pDYvxAEnF6qc68W', NULL, '2023-08-14 13:43:30', '2023-08-14 13:43:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
