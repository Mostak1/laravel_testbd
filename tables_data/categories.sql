-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2023 at 07:58 AM
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
-- Database: `tiger_quiz`
--

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Class 5', 'English Version', '1', '2023-07-13 21:01:48', '2023-07-14 22:50:17'),
(2, 'Class 6', 'English Version 2', '1', '2023-07-13 21:46:48', '2023-07-14 22:50:25'),
(3, 'Class 7', 'English Version', '1', '2023-07-14 15:23:57', '2023-07-14 15:26:18'),
(4, 'Class 8', 'English Speaking', '1', '2023-07-14 15:27:37', '2023-07-29 07:51:26'),
(5, 'Class 9', 'NCERT Solutions for Class 9 for the subjects Maths, Science and Social Science.', '1', '2023-07-15 16:28:28', '2023-07-29 07:10:46'),
(6, 'WDPF', 'IT Scholarship Programme', '1', '2023-07-16 22:16:51', '2023-07-29 06:47:04'),
(7, 'Class 10', 'Class 10', '1', '2023-07-29 06:33:17', '2023-07-29 07:50:10'),
(8, 'Class 11', 'Class 11', '1', '2023-07-29 06:33:25', '2023-07-29 07:50:45'),
(9, 'Class 12', 'Class 12', '1', '2023-07-29 06:33:30', '2023-07-29 07:52:03'),
(10, 'BCS', 'BCS', '1', '2023-07-29 06:33:38', '2023-07-29 07:52:30'),
(11, 'General Knowledge', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', '1', '2023-09-02 23:05:11', '2023-09-02 23:05:11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
