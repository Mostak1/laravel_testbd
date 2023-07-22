-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 03:28 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

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
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `name`, `url`) VALUES
(1, 'Barisal', 'http://www.barisalboard.gov.bd/'),
(2, 'Chattogram', 'https://web.bise-ctg.gov.bd/bisectg'),
(3, 'Cumilla', 'https://web.comillaboard.gov.bd/bisecb'),
(4, 'Dhaka', 'https://dhakaeducationboard.gov.bd/'),
(5, 'Dinajpur', 'http://dinajpureducationboard.gov.bd/'),
(6, 'Jessore', 'https://www.jessoreboard.gov.bd/'),
(7, 'Mymensingh', 'https://mymensingheducationboard.gov.bd/'),
(8, 'Rajshahi', 'http://rajshahieducationboard.gov.bd/'),
(9, 'Sylhet', 'https://sylhetboard.gov.bd/');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
