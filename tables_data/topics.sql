-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2023 at 07:03 PM
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
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`, `category_id`, `subcategory_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Noun', 'A noun is a word that names something, such as a person, place, thing, or idea.', 2, 14, '1', '2023-07-13 21:50:01', '2023-09-02 12:31:07'),
(2, 'Parts of Speech', 'The Eight Parts of Speech.', 2, 14, '1', '2023-07-13 21:51:14', '2023-09-02 07:32:58'),
(3, 'Viva-Voice', 'Viva-Voice', 1, 3, '1', '2023-07-14 15:29:54', '2023-09-02 07:35:13'),
(4, 'History', 'Bengali language, an eastern Indo-Aryan language · The endonym of Bengal, a geographical and ethno-linguistic region in South Asia.', NULL, 1, '1', '2023-07-15 16:27:23', '2023-07-15 16:27:23'),
(5, 'ও আমার দেশের মাটি', 'Bangla Version', 1, 1, '1', '2023-07-16 21:35:11', '2023-09-02 07:36:18'),
(6, 'Chapter-2', 'English Version', NULL, 1, '1', '2023-07-16 21:56:25', '2023-07-16 21:56:25'),
(7, 'Chapter-1', 'English Version', NULL, 1, '1', '2023-07-16 21:58:45', '2023-07-16 21:58:45'),
(8, 'Introduction of html', 'IT Scholarship Programme', 6, 6, '1', '2023-07-16 22:23:15', '2023-07-16 22:26:51'),
(9, 'Introduction of JavaScript', 'Introduction of JavaScript', 6, 7, '1', '2023-07-29 06:36:20', '2023-07-29 07:58:20'),
(10, 'Introduction of CSS', 'Introduction of CSS', 6, 8, '1', '2023-07-29 07:21:16', '2023-07-29 07:57:58'),
(11, 'Introduction of Bootstrap', 'Introduction of Bootstrap', 6, 9, '1', '2023-07-29 07:21:30', '2023-07-29 07:57:35'),
(12, 'Introduction of PHP', 'Introduction of PHP', 6, 12, '1', '2023-07-29 07:21:54', '2023-07-29 07:00:01'),
(13, 'Introduction of Angular', 'Introduction of Angular', 6, 10, '1', '2023-07-29 07:39:27', '2023-07-29 07:00:55'),
(14, 'Rational Numbers', 'Rational Numbers', NULL, 20, '1', '2023-09-02 12:43:59', '2023-09-02 12:43:59'),
(15, 'Liberation war', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', NULL, 23, '1', '2023-09-02 23:07:18', '2023-09-02 23:07:18'),
(16, 'History', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', 11, 23, '1', '2023-09-02 23:07:45', '2023-09-02 23:13:21'),
(17, 'বিশ্ব ঐতিহ্য ও বাংলাদেশ', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', NULL, 23, '1', '2023-09-02 23:35:16', '2023-09-02 23:35:16'),
(18, 'বাংলাদেশের উপজাতি ও ক্ষুদ্র-নৃতাত্বিক জনগোষ্ঠী', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', NULL, 23, '1', '2023-09-02 23:43:09', '2023-09-02 23:43:09'),
(19, 'আন্তর্জাতিক সংস্থা ও সংগঠন', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', NULL, 24, '1', '2023-09-03 00:28:48', '2023-09-03 00:28:48'),
(20, 'বিখ্যাত ব্যাক্তিদের উক্তি ও উপাধি', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', NULL, 24, '1', '2023-09-03 00:29:45', '2023-09-03 00:29:45'),
(21, 'Chapter 11', 'MCQ Questions for Class 8 Maths Chapter 11 Mensuration with Answers', NULL, 20, '1', '2023-09-03 15:23:18', '2023-09-03 15:23:18'),
(22, 'Introduction of React', 'Intro', NULL, 25, '1', '2023-09-11 07:54:15', '2023-09-11 07:54:15'),
(23, 'ধ্বনি ও বর্ণ', 'ধ্বনি ও বর্ণ', 10, 26, '1', '2023-09-11 17:07:41', '2023-09-11 17:19:03');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
