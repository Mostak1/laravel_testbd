-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2023 at 12:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testbd`
--

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `description`, `category_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', 'Bengali language', 1, '1', '2023-07-13 21:47:48', '2023-07-29 07:09:24'),
(2, 'Bangla', 'Bangla', 4, '1', '2023-07-13 21:48:11', '2023-07-29 07:07:10'),
(3, 'Mathematic', 'Karok and FT', 1, '0', '2023-07-14 15:25:49', '2023-07-14 20:28:56'),
(4, 'Mathematic', 'Mathematic', 7, '1', '2023-07-14 15:28:44', '2023-09-06 11:20:45'),
(5, 'Bangla', 'Bangla', 5, '1', '2023-07-15 16:29:07', '2023-07-29 07:12:09'),
(6, 'HTML', 'IT Scholarship Programme', 6, '1', '2023-07-16 22:20:07', '2023-07-16 22:20:07'),
(7, 'JavaScript', 'JavaScript', 6, '1', '2023-07-29 06:34:22', '2023-07-29 07:43:26'),
(8, 'CSS', 'CSS 3', 6, '1', '2023-07-29 06:34:32', '2023-07-29 07:44:16'),
(9, 'Bootstrap', 'Bootstrap', 6, '1', '2023-07-29 06:34:49', '2023-07-29 07:45:09'),
(10, 'Angular', 'Angular', 6, '1', '2023-07-29 06:35:01', '2023-07-29 07:47:19'),
(11, 'Laravel', 'Laravel', 6, '1', '2023-07-29 07:31:07', '2023-07-29 07:48:19'),
(12, 'PHP', 'PHP', 6, '1', '2023-07-29 07:59:40', '2023-07-29 07:59:40'),
(13, 'Bangla', 'Bangla', 2, '1', '2023-07-29 07:03:58', '2023-07-29 07:03:58'),
(14, 'English', 'English', 2, '1', '2023-07-29 07:04:11', '2023-07-29 07:04:11'),
(15, 'Bangla', 'Bangla', 3, '1', '2023-07-29 07:04:33', '2023-07-29 07:04:33'),
(16, 'English', 'English', 3, '1', '2023-07-29 07:04:49', '2023-07-29 07:04:49'),
(17, 'English', 'English', 5, '1', '2023-07-29 07:07:40', '2023-09-02 12:42:43'),
(18, 'English', 'English', 7, '1', '2023-07-29 07:12:37', '2023-09-06 11:19:43'),
(19, 'Science', 'Science', 5, '1', '2023-07-29 07:12:55', '2023-07-29 07:12:55'),
(20, 'Mathematic', 'Mathematic', 4, '1', '2023-09-02 12:36:59', '2023-09-02 12:36:59'),
(21, 'English', 'English', 4, '1', '2023-09-02 12:38:14', '2023-09-02 12:38:14'),
(22, 'Mathematic', 'Mathematic', 5, '1', '2023-09-02 12:38:36', '2023-09-02 12:43:05'),
(23, 'Banglaedesh', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', 11, '1', '2023-09-02 23:05:40', '2023-09-02 23:05:40'),
(24, 'International', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', 11, '1', '2023-09-02 23:12:15', '2023-09-02 23:12:15'),
(25, 'React', 'React MCQ', 6, '1', '2023-09-11 07:53:37', '2023-09-11 07:53:37'),
(26, 'Bangla', 'Bangla', 10, '1', '2023-09-11 16:58:48', '2023-09-11 16:58:48'),
(27, 'English', 'English', 10, '1', '2023-09-11 17:02:46', '2023-09-11 17:02:46'),
(28, 'Mathematic', 'Mathematic', 10, '1', '2023-09-11 17:03:31', '2023-09-11 17:03:31'),
(29, 'History', 'History', 10, '1', '2023-09-11 17:04:41', '2023-09-11 17:04:41');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
