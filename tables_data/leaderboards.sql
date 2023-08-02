-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2023 at 01:35 PM
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
-- Dumping data for table `leaderboards`
--

INSERT INTO `leaderboards` (`id`, `user_id`, `quizset_id`, `given_ans`, `submitted_at`, `marks`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '100/100', '(time: 10:25 minutes)', 100, '2023-08-31 19:11:48', '2023-08-31 19:11:48'),
(11, 2, 2, '99/100', '(time: 12:01 minutes)', 99, '2023-08-05 19:11:48', '2023-08-31 19:11:48'),
(12, 3, 2, '92/100', '(time: 11:25 minutes)', 92, '2023-08-07 19:11:48', '2023-08-31 19:11:48'),
(13, 4, 4, '88/100', '(time: 12:25 minutes)', 88, '2023-08-08 19:11:48', '2023-08-31 19:11:48'),
(14, 7, 3, '78/100', '(time: 11:29 minutes)', 78, '2023-08-01 19:11:48', '2023-08-31 19:11:48'),
(15, 6, 2, '90/100', '(time: 1:25 minutes)', 90, '2023-08-31 19:11:48', '2023-08-31 19:11:48'),
(16, 7, 1, '70/100', '(time: 1:25 minutes)', 70, '2023-08-02 19:11:48', '2023-08-31 19:11:48'),
(17, 8, 4, '60/100', '(time: 1:25 minutes)', 60, '2023-08-01 19:11:48', '2023-08-31 19:11:48'),
(18, 9, 2, '80/100', '(time: 1:25 minutes)', 80, '2023-08-03 19:11:48', '2023-08-31 19:11:48'),
(19, 10, 2, '70/100', '(time: 1:25 minutes)', 70, '2023-08-02 19:11:48', '2023-08-31 19:11:48');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
