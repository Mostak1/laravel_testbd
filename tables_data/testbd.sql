-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2023 at 07:53 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qset_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` set('rq','sq') NOT NULL DEFAULT 'sq',
  `marks` bigint(20) NOT NULL,
  `tquiz` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `topic_id`, `qset_id`, `type`, `marks`, `tquiz`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 8, NULL, 'rq', 3, 10, '2023-08-11 05:49:16', '2023-08-11 05:49:16', NULL),
(2, 1, 9, NULL, 'rq', 3, 9, '2023-08-11 06:21:46', '2023-08-11 06:21:46', NULL),
(3, 11, 24, NULL, 'rq', 1, 2, '2023-08-12 02:12:55', '2023-08-12 02:12:55', NULL),
(4, 1, 25, NULL, 'rq', 1, 1, '2023-08-12 02:33:06', '2023-08-12 02:33:06', NULL),
(7, 1, 26, NULL, 'rq', 3, 9, '2023-08-13 03:03:30', '2023-08-13 03:03:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `name`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Barisal', 'http://www.barisalboard.gov.bd/', NULL, NULL, NULL),
(2, 'Chattogram', 'https://web.bise-ctg.gov.bd/bisectg', NULL, NULL, NULL),
(3, 'Cumilla', 'https://web.comillaboard.gov.bd/bisecb', NULL, NULL, NULL),
(4, 'Dhaka', 'https://dhakaeducationboard.gov.bd/', NULL, NULL, NULL),
(5, 'Dinajpur', 'http://dinajpureducationboard.gov.bd/', NULL, NULL, NULL),
(6, 'Jessore', 'https://www.jessoreboard.gov.bd/', NULL, NULL, NULL),
(7, 'Mymensingh', 'https://mymensingheducationboard.gov.bd/', NULL, NULL, NULL),
(8, 'Rajshahi', 'http://rajshahieducationboard.gov.bd/', NULL, NULL, NULL),
(9, 'Sylhet', 'https://sylhetboard.gov.bd/', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `active` set('0','1','2','3','4') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `price`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'S.S.C', 'English and Bangla Version', 2250, '1', '2023-07-13 21:01:48', '2023-08-13 12:52:28', NULL),
(2, 'H.S.C', 'English Version and Bangla', 3400, '1', '2023-07-13 21:46:48', '2023-08-13 12:53:12', NULL),
(3, 'Management(Honours)', '30 years ago the National University was established by an Act of Parliament as an affiliating University of the country to impart graduate and post-graduate level education to the students through its affiliated colleges and professional institutions throughout the country.', 350, '1', '2023-07-14 15:23:57', '2023-08-16 08:31:04', NULL),
(4, 'Economics(Honours)', '30 years ago the National University was established by an Act of Parliament as an affiliating University of the country to impart graduate and post-graduate level education to the students through its affiliated colleges and professional institutions throughout the country.', 560, '1', '2023-07-14 15:27:37', '2023-08-16 08:32:25', NULL),
(5, 'Marketing(Honours)', '30 years ago the National University was established by an Act of Parliament as an affiliating University of the country to impart graduate and post-graduate level education to the students through its affiliated colleges and professional institutions throughout the country.', 560, '1', '2023-07-15 16:28:28', '2023-08-16 08:33:51', NULL),
(6, 'Basic Web-Design', 'IT  Programme', 1460, '2', '2023-07-16 22:16:51', '2023-08-13 02:13:50', NULL),
(7, 'Advance JavaScripts and jQuery', 'JavaScript (JS) is a lightweight interpreted (or just-in-time compiled) programming language with first-class functions. While it is most well-known as the scripting language for Web pages, many non-browser environments also use it, such as Node.js, Apache CouchDB and Adobe Acrobat.', 4200, '2', '2023-07-29 06:33:17', '2023-08-16 08:38:56', NULL),
(8, 'Learn PHP Basic to Advance with MySQL', 'PHP is a general-purpose scripting language geared towards web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1993 and released in 1995. The PHP reference implementation is now produced by the PHP Group.', 4600, '2', '2023-07-29 06:33:25', '2023-08-16 08:40:47', NULL),
(9, 'React Js', 'React is a free and open-source front-end JavaScript library for building user interfaces based on components. It is maintained by Meta and a community of individual developers and companies. React can be used to develop single-page, mobile, or server-rendered applications with frameworks like Next.js.', 5500, '2', '2023-07-29 06:33:30', '2023-08-16 08:41:40', NULL),
(10, 'BCS', 'BCS preliminary', 8540, '3', '2023-07-29 06:33:38', '2023-08-13 02:33:50', NULL),
(11, 'General Knowledge', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', 670, '3', '2023-09-02 23:05:11', '2023-08-13 02:34:29', NULL),
(12, 'Network Technology', 'Manage Server, Secure Network, Basic CISCO', 2500, '2', '2023-08-12 02:23:37', '2023-08-13 02:34:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `topic_id`, `question`, `answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, 'First Learning with HTML', '<pre>\r\n&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n&lt;title&gt;Page Title&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n\r\n&lt;h1&gt;This is a Heading&lt;/h1&gt;\r\n&lt;p&gt;This is a paragraph.&lt;/p&gt;\r\n\r\n&lt;/body&gt;\r\n&lt;/html&gt;\r\n</pre>\r\n\r\nThe Output Is:\r\n<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Page Title</title>\r\n</head>\r\n<body>\r\n\r\n<h1>This is a Heading</h1>\r\n<p>This is a paragraph.</p>\r\n\r\n</body>\r\n</html>', '2023-08-13 06:54:34', '2023-08-13 11:20:21', NULL),
(2, 8, 'What is HTML?', '1`.HTML stands for Hyper Text Markup Language.\r\n2.HTML is the standard markup language for creating Web pages.\r\n3.HTML describes the structure of a Web page.\r\n4.HTML consists of a series of elements.\r\n5.HTML elements tell the browser how to display the content. \r\n6.HTML elements label pieces of content such as \"this is a heading\", \"this is a paragraph\", \"this is a link\", etc.', '2023-08-13 11:24:04', '2023-08-13 11:25:48', NULL),
(3, 8, 'What is an HTML Element?', '<pre>\r\n&lt;tagname&gt; Content goes here... &lt;/tagname&gt;\r\nThe HTML element is everything from the start tag to the end tag:\r\n\r\n&lt;h1&gt;My First Heading&lt;/h1&gt;\r\n&lt;p&gt;My first paragraph.&lt;/p&gt;\r\n</pre>\r\n\r\nOutput:\r\nAn HTML element is defined by a start tag, some content, and an end tag:\r\n\r\n<tagname> Content goes here... </tagname>\r\nThe HTML element is everything from the start tag to the end tag:\r\n\r\n<h1>My First Heading</h1>\r\n<p>My first paragraph.</p>', '2023-08-13 11:29:24', '2023-08-13 11:29:24', NULL),
(4, 8, 'HTML History', 'Since the early days of the World Wide Web, there have been many versions of HTML:\r\n<table class=\"table\">\r\n  <tr>\r\n    <th>Year</th>\r\n    <th>Version</th>\r\n  </tr>\r\n  <tr>\r\n    <td>1989</td>\r\n    <td>Tim Berners-Lee invented www</td>\r\n  </tr>\r\n  <tr>\r\n    <td>1991</td>\r\n    <td>Tim Berners-Lee invented HTML</td>\r\n  </tr>\r\n  <tr>\r\n    <td>1993</td>\r\n    <td>Dave Raggett drafted HTML+</td>\r\n  </tr>\r\n  <tr>\r\n    <td>1995</td>\r\n    <td>HTML Working Group defined HTML 2.0</td>\r\n  </tr>\r\n  <tr>\r\n    <td>1997</td>\r\n    <td>W3C Recommendation: HTML 3.2</td>\r\n  </tr>\r\n  <tr>\r\n    <td>1999</td>\r\n    <td>W3C Recommendation: HTML 4.01</td>\r\n  </tr>\r\n  <tr>\r\n    <td>2000</td>\r\n    <td>W3C Recommendation: XHTML 1.0</td>\r\n  </tr>\r\n  <tr>\r\n    <td>2008</td>\r\n    <td>WHATWG HTML5 First Public Draft</td>\r\n  </tr>\r\n  <tr>\r\n    <td>2012</td>\r\n    <td>WHATWG HTML5 Living Standard</td>\r\n  </tr>\r\n  <tr>\r\n    <td>2014</td>\r\n    <td>W3C Recommendation: HTML5</td>\r\n  </tr>\r\n  <tr>\r\n    <td>2016</td>\r\n    <td>W3C Candidate Recommendation: HTML 5.1</td>\r\n  </tr>\r\n  <tr>\r\n    <td>2017</td>\r\n    <td>W3C Recommendation: HTML5.1 2nd Edition</td>\r\n  </tr>\r\n  <tr>\r\n    <td>2017</td>\r\n    <td>W3C Recommendation: HTML5.2</td>\r\n  </tr>\r\n</table>', '2023-08-13 11:40:10', '2023-08-13 11:41:25', NULL),
(5, 8, 'Learn HTML Using Notepad or TextEdit', '**Web pages can be created and modified by using professional HTML editors. **\r\n\r\n**However, for learning HTML we recommend a simple text editor like Notepad (PC) or TextEdit (Mac).**\r\n\r\n**We believe that using a simple text editor is a good way to learn HTML.**\r\n\r\n**Follow the steps below to create your first web page with Notepad or TextEdit.**', '2023-08-13 12:34:53', '2023-08-13 12:34:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `board_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bn_name` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lon` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `board_id`, `name`, `bn_name`, `lat`, `lon`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Comilla', 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd', NULL, NULL, NULL),
(2, 3, 'Feni', 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd', NULL, NULL, NULL),
(3, 3, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd', NULL, NULL, NULL),
(4, 2, 'Rangamati', 'রাঙ্গামাটি', '22.65561018', '92.17541121', 'www.rangamati.gov.bd', NULL, NULL, NULL),
(5, 3, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd', NULL, NULL, NULL),
(6, 3, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd', NULL, NULL, NULL),
(7, 3, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd', NULL, NULL, NULL),
(8, 2, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd', NULL, NULL, NULL),
(9, 2, 'Coxsbazar', 'কক্সবাজার', '21.44315751', '91.97381741', 'www.coxsbazar.gov.bd', NULL, NULL, NULL),
(10, 2, 'Khagrachhari', 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd', NULL, NULL, NULL),
(11, 2, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd', NULL, NULL, NULL),
(12, 8, 'Sirajganj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd', NULL, NULL, NULL),
(13, 8, 'Pabna', 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd', NULL, NULL, NULL),
(14, 8, 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd', NULL, NULL, NULL),
(15, 8, 'Rajshahi', 'রাজশাহী', '24.37230298', '88.56307623', 'www.rajshahi.gov.bd', NULL, NULL, NULL),
(16, 8, 'Natore', 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd', NULL, NULL, NULL),
(17, 8, 'Joypurhat', 'জয়পুরহাট', '25.09636876', '89.04004280', 'www.joypurhat.gov.bd', NULL, NULL, NULL),
(18, 8, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd', NULL, NULL, NULL),
(19, 8, 'Naogaon', 'নওগাঁ', '24.83256191', '88.92485205', 'www.naogaon.gov.bd', NULL, NULL, NULL),
(20, 6, 'Jashore', 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd', NULL, NULL, NULL),
(21, 6, 'Satkhira', 'সাতক্ষীরা', 'null', '1111', 'www.satkhira.gov.bd', NULL, NULL, NULL),
(22, 6, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd', NULL, NULL, NULL),
(23, 6, 'Narail', 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd', NULL, NULL, NULL),
(24, 6, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd', NULL, NULL, NULL),
(25, 6, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd', NULL, NULL, NULL),
(26, 6, 'Magura', 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd', NULL, NULL, NULL),
(27, 6, 'Khulna', 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd', NULL, NULL, NULL),
(28, 6, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd', NULL, NULL, NULL),
(29, 6, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd', NULL, NULL, NULL),
(30, 1, 'Jhalakathi', 'ঝালকাঠি', '', '', 'www.jhalakathi.gov.bd', NULL, NULL, NULL),
(31, 1, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd', NULL, NULL, NULL),
(32, 1, 'Pirojpur', 'পিরোজপুর', '', '', 'www.pirojpur.gov.bd', NULL, NULL, NULL),
(33, 1, 'Barisal', 'বরিশাল', '', '', 'www.barisal.gov.bd', NULL, NULL, NULL),
(34, 1, 'Bhola', 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd', NULL, NULL, NULL),
(35, 1, 'Barguna', 'বরগুনা', '', '', 'www.barguna.gov.bd', NULL, NULL, NULL),
(36, 9, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd', NULL, NULL, NULL),
(37, 9, 'Moulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd', NULL, NULL, NULL),
(38, 9, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd', NULL, NULL, NULL),
(39, 9, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd', NULL, NULL, NULL),
(40, 4, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd', NULL, NULL, NULL),
(41, 4, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd', NULL, NULL, NULL),
(42, 4, 'Shariatpur', 'শরীয়তপুর', '', '', 'www.shariatpur.gov.bd', NULL, NULL, NULL),
(43, 4, 'Narayanganj', 'নারায়ণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd', NULL, NULL, NULL),
(44, 4, 'Tangail', 'টাঙ্গাইল', '24.26361358', '89.91794786', 'www.tangail.gov.bd', NULL, NULL, NULL),
(45, 4, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd', NULL, NULL, NULL),
(46, 4, 'Manikganj', 'মানিকগঞ্জ', '', '', 'www.manikganj.gov.bd', NULL, NULL, NULL),
(47, 4, 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd', NULL, NULL, NULL),
(48, 4, 'Munshiganj', 'মুন্সিগঞ্জ', '', '', 'www.munshiganj.gov.bd', NULL, NULL, NULL),
(49, 4, 'Rajbari', 'রাজবাড়ী', '23.7574305', '89.6444665', 'www.rajbari.gov.bd', NULL, NULL, NULL),
(50, 4, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd', NULL, NULL, NULL),
(51, 4, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd', NULL, NULL, NULL),
(52, 4, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd', NULL, NULL, NULL),
(53, 5, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd', NULL, NULL, NULL),
(54, 5, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd', NULL, NULL, NULL),
(55, 5, 'Lalmonirhat', 'লালমনিরহাট', '', '', 'www.lalmonirhat.gov.bd', NULL, NULL, NULL),
(56, 5, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd', NULL, NULL, NULL),
(57, 5, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd', NULL, NULL, NULL),
(58, 5, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd', NULL, NULL, NULL),
(59, 5, 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd', NULL, NULL, NULL),
(60, 5, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd', NULL, NULL, NULL),
(61, 7, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd', NULL, NULL, NULL),
(62, 7, 'Mymensingh', 'ময়মনসিংহ', '24.7465670', '90.4072093', 'www.mymensingh.gov.bd', NULL, NULL, NULL),
(63, 7, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd', NULL, NULL, NULL),
(64, 7, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tj_methode` text NOT NULL,
  `price` int(11) NOT NULL,
  `tj_id` text NOT NULL,
  `status` text NOT NULL,
  `expair_time` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`id`, `category_id`, `user_id`, `tj_methode`, `price`, `tj_id`, `status`, `expair_time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 4, 'Bkash', 1460, '13232432bjhgj', 'Pending', '2024-02-14', '2023-08-14 03:28:28', '2023-08-14 06:22:42', NULL),
(2, 1, 1, 'Bkash', 2250, '122676367dfdf', 'Active', '2024-02-14', '2023-08-14 09:24:06', '2023-08-14 09:33:04', NULL),
(3, 2, 1, 'Bkash', 3400, '13232432bjhgj', 'Active', '2024-02-14', '2023-08-14 09:29:35', '2023-08-14 09:33:17', NULL),
(4, 6, 1, 'Bkash', 1460, '13232432bjhgj', 'Active', '2024-02-16', '2023-08-16 10:07:24', '2023-08-16 10:08:07', NULL),
(5, 7, 1, 'Bkash', 4200, '13232432bjhgj', 'Pending', '2024-02-17', '2023-08-17 06:38:17', '2023-08-17 06:38:17', NULL),
(6, 7, 1, 'Bkash', 4200, '122676367dytrde7576', 'Pending', '2024-02-18', '2023-08-18 03:50:56', '2023-08-18 03:50:56', NULL),
(7, 10, 1, 'Bkash', 7259, '64e05595884d0', 'Pending', '2024-02-19', '2023-08-18 23:39:33', '2023-08-18 23:39:33', NULL),
(8, 10, 1, 'Bkash', 7259, '64e0559589129', 'Pending', '2024-02-19', '2023-08-18 23:39:33', '2023-08-18 23:39:33', NULL),
(9, 10, 1, 'Bkash', 7259, '64e07868938c5', 'Pending', '2024-02-19', '2023-08-19 02:08:09', '2023-08-19 02:08:09', NULL),
(10, 10, 1, 'Bkash', 7259, '64e07868938c5', 'Pending', '2024-02-19', '2023-08-19 02:08:09', '2023-08-19 02:08:09', NULL),
(11, 3, 1, 'Bkash', 298, '64e0792c93f3a', 'Pending', '2024-02-19', '2023-08-19 02:11:24', '2023-08-19 02:11:24', NULL),
(12, 3, 1, 'Bkash', 298, '64e0792c940f9', 'Pending', '2024-02-19', '2023-08-19 02:11:24', '2023-08-19 02:11:24', NULL),
(13, 3, 1, 'Bkash', 298, '64e07e8d07cd2', 'Pending', '2024-02-19', '2023-08-19 02:34:21', '2023-08-19 02:34:21', NULL),
(14, 3, 1, 'Bkash', 298, '64e07e8d1a92f', 'Pending', '2024-02-19', '2023-08-19 02:34:21', '2023-08-19 02:34:21', NULL),
(15, 3, 1, 'Bkash', 298, '64e07fc6a92f7', 'Pending', '2024-02-19', '2023-08-19 02:39:34', '2023-08-19 02:39:34', NULL),
(16, 3, 1, 'Bkash', 298, '64e07fc6ac97c', 'Pending', '2024-02-19', '2023-08-19 02:39:34', '2023-08-19 02:39:34', NULL),
(17, 3, 1, 'Bkash', 298, '64e08145a444f', 'Pending', '2024-02-19', '2023-08-19 02:45:57', '2023-08-19 02:45:57', NULL),
(18, 3, 1, 'Bkash', 298, '64e08145a444f', 'Active', '2024-02-19', '2023-08-19 02:45:57', '2023-08-19 03:39:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leaderboards`
--

CREATE TABLE `leaderboards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quizset_id` bigint(20) UNSIGNED DEFAULT NULL,
  `given_ans` varchar(255) NOT NULL,
  `submitted_at` varchar(255) DEFAULT NULL,
  `marks` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaderboards`
--

INSERT INTO `leaderboards` (`id`, `user_id`, `topic_id`, `quizset_id`, `given_ans`, `submitted_at`, `marks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 8, NULL, '3/10', '(time:5.1)', 3, '2023-08-11 05:49:16', '2023-08-11 05:49:16', NULL),
(2, 1, 9, NULL, '3/9', '(time:5.1)', 3, '2023-08-11 06:21:46', '2023-08-11 06:21:46', NULL),
(3, 11, 24, NULL, '1/2', '(time:5.1)', 1, '2023-08-12 02:12:55', '2023-08-12 02:12:55', NULL),
(4, 1, 25, NULL, '1/1', '(time:5.1)', 1, '2023-08-12 02:33:06', '2023-08-12 02:33:06', NULL),
(7, 1, 26, NULL, '3/9', '(time:5.1)', 3, '2023-08-13 03:03:30', '2023-08-13 03:03:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_07_15_114849_add_role_to_users', 2),
(8, '2023_07_22_094505_create_boards_table', 3),
(12, '2023_07_23_103116_create_districts_table', 4),
(13, '2023_07_23_124927_create_thanas_table', 5),
(14, '2023_07_25_152725_create_categories_table', 6),
(16, '2023_07_29_082613_create_subcategories_table', 7),
(17, '2023_07_29_164849_create_topics_table', 8),
(18, '2023_07_30_071155_create_quizzes_table', 9),
(19, '2023_08_01_091935_create_quizsets_table', 10),
(24, '2023_08_01_110834_create_leaderboards_table', 12),
(25, '2023_08_11_114241_create_answers_table', 13),
(26, '2023_08_13_110232_create_details_table', 14),
(28, '2023_08_14_073328_create_enrolls_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`, `created_at`) VALUES
(1, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '64db6f27a11a5', 'BDT', '2023-08-19 10:37:21'),
(2, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '64df281e2e237', 'BDT', '2023-08-19 10:37:21'),
(3, NULL, NULL, NULL, NULL, NULL, 'Pending', '64df3a06ebe1b', 'BDT', '2023-08-19 10:37:21'),
(4, NULL, NULL, NULL, NULL, NULL, 'Pending', '64df3a06ebe1b', 'BDT', '2023-08-19 10:37:21'),
(5, NULL, NULL, NULL, NULL, NULL, 'Pending', '64df3a37e76ab', 'BDT', '2023-08-19 10:37:21'),
(6, NULL, NULL, NULL, NULL, NULL, 'Pending', '64df3a37f0f42', 'BDT', '2023-08-19 10:37:21'),
(7, NULL, NULL, NULL, NULL, NULL, 'Pending', '64df3b044cfe4', 'BDT', '2023-08-19 10:37:21'),
(8, NULL, NULL, NULL, NULL, NULL, 'Pending', '64df3b044cfeb', 'BDT', '2023-08-19 10:37:21'),
(9, NULL, NULL, NULL, NULL, NULL, 'Pending', '64df3c817fe8f', 'BDT', '2023-08-19 10:37:21'),
(10, NULL, NULL, NULL, NULL, NULL, 'Pending', '64df3c818c5ec', 'BDT', '2023-08-19 10:37:21'),
(11, NULL, NULL, NULL, NULL, NULL, 'Pending', '64dfcb47c258a', 'BDT', '2023-08-19 10:37:21'),
(12, NULL, NULL, NULL, NULL, NULL, 'Pending', '64dfcb47dd539', 'BDT', '2023-08-19 10:37:21'),
(13, 'Admin Mostak', 'admin@gmail.com', '', 7259, '93 B, New Eskaton Road', 'Pending', '64e03c949b3e9', 'BDT', '2023-08-19 10:37:21'),
(14, 'Admin Mostak', 'admin@gmail.com', '', 7259, '93 B, New Eskaton Road', 'Pending', '64e03c94a9b95', 'BDT', '2023-08-19 10:37:21'),
(15, 'Admin Mostak', 'admin@gmail.com', '', 7259, '93 B, New Eskaton Road', 'Pending', '64e03d302a8a8', 'BDT', '2023-08-19 10:37:21'),
(16, 'Admin Mostak', 'admin@gmail.com', '', 7259, '93 B, New Eskaton Road', 'Pending', '64e03d3035276', 'BDT', '2023-08-19 10:37:21'),
(17, 'Admin Mostak', 'admin@gmail.com', '', 7259, '93 B, New Eskaton Road', 'Pending', '64e03e8dc7301', 'BDT', '2023-08-19 10:37:21'),
(18, 'Admin Mostak', 'admin@gmail.com', '', 7259, '93 B, New Eskaton Road', 'Pending', '64e03e8dd7a5f', 'BDT', '2023-08-19 10:37:21'),
(19, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '64e03fc428b32', 'BDT', '2023-08-19 10:37:21'),
(20, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '64e03fc434d21', 'BDT', '2023-08-19 10:37:21'),
(21, 'Admin Mostak', 'admin@gmail.com', '', 7259, '93 B, New Eskaton Road', 'Pending', '64e0404e18581', 'BDT', '2023-08-19 10:37:21'),
(22, 'Admin Mostak', 'admin@gmail.com', '', 7259, '93 B, New Eskaton Road', 'Pending', '64e0404e24184', 'BDT', '2023-08-19 10:37:21'),
(23, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '64e04aae87f31', 'BDT', '2023-08-19 10:53:02'),
(24, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '64e04aaea4327', 'BDT', '2023-08-19 10:53:02'),
(25, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '64e04aca3d351', 'BDT', '2023-08-19 10:53:30'),
(26, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '64e04aca3d34c', 'BDT', '2023-08-19 10:53:30'),
(27, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10000, 'Customer Address', 'Pending', '64e04b35603ec', 'BDT', '2023-08-19 10:55:17'),
(28, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10000, 'Customer Address', 'Pending', '64e04b35727e1', 'BDT', '2023-08-19 10:55:17'),
(29, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 7259, 'Customer Address', 'Pending', '64e04c3075048', 'BDT', '2023-08-19 10:59:28'),
(30, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 7259, 'Customer Address', 'Pending', '64e04c307d44d', 'BDT', '2023-08-19 10:59:28'),
(31, 'Admin Mostak', 'admin@gmail.com', '', 7259, '93 B, New Eskaton Road', 'Pending', '64e04daaa5c14', 'BDT', '2023-08-19 11:05:46'),
(32, 'Admin Mostak', 'admin@gmail.com', '', 7259, '93 B, New Eskaton Road', 'Pending', '64e04daaac421', 'BDT', '2023-08-19 11:05:46'),
(33, 'Admin Mostak', 'customer@mail.com', '8801XXXXXXXXX', 7259, 'Customer Address', 'Pending', '64e04f0b66d8c', 'BDT', '2023-08-19 11:11:39'),
(34, 'Admin Mostak', 'customer@mail.com', '8801XXXXXXXXX', 7259, 'Customer Address', 'Pending', '64e04f0b7574e', 'BDT', '2023-08-19 11:11:39'),
(35, 'Admin Mostak', 'admin@gmail.com', '', 7259, 'Dhaka,Mirpur', 'Pending', '64e05005f3012', 'BDT', '2023-08-19 11:15:50'),
(36, 'Admin Mostak', 'admin@gmail.com', '', 7259, 'Dhaka,Mirpur', 'Pending', '64e050060b211', 'BDT', '2023-08-19 11:15:50'),
(37, 'Admin Mostak', 'admin@gmail.com', '8801XXXXXXXXX', 7259, 'Dhaka,Mirpur', 'Pending', '64e050ec28f22', 'BDT', '2023-08-19 11:19:40'),
(38, 'Admin Mostak', 'admin@gmail.com', '8801XXXXXXXXX', 7259, 'Dhaka,Mirpur', 'Pending', '64e050ec2c4a1', 'BDT', '2023-08-19 11:19:40'),
(39, 'Admin Mostak', 'admin@gmail.com', '8801XXXXXXXXX', 7259, 'Dhaka,Mirpur', 'Pending', '64e05595884d0', 'BDT', '2023-08-19 11:39:33'),
(40, 'Admin Mostak', 'admin@gmail.com', '8801XXXXXXXXX', 7259, 'Dhaka,Mirpur', 'Pending', '64e0559589129', 'BDT', '2023-08-19 11:39:33'),
(41, 'Admin Mostak', 'admin@gmail.com', '8801XXXXXXXXX', 7259, 'Dhaka,Mirpur', 'Pending', '64e07868938c5', 'BDT', '2023-08-19 14:08:08'),
(42, 'Admin Mostak', 'admin@gmail.com', '8801XXXXXXXXX', 7259, 'Dhaka,Mirpur', 'Pending', '64e07868938c5', 'BDT', '2023-08-19 14:08:08'),
(43, 'Admin Mostak', 'admin@gmail.com', '8801XXXXXXXXX', 297.5, 'Dhaka,Mirpur', 'Pending', '64e0792c93f3a', 'BDT', '2023-08-19 14:11:24'),
(44, 'Admin Mostak', 'admin@gmail.com', '8801XXXXXXXXX', 297.5, 'Dhaka,Mirpur', 'Pending', '64e0792c940f9', 'BDT', '2023-08-19 14:11:24'),
(45, 'Admin Mostak', 'admin@gmail.com', '8801XXXXXXXXX', 297.5, 'Dhaka,Mirpur', 'Pending', '64e07e8d07cd2', 'BDT', '2023-08-19 14:34:21'),
(46, 'Admin Mostak', 'admin@gmail.com', '8801XXXXXXXXX', 297.5, 'Dhaka,Mirpur', 'Pending', '64e07e8d1a92f', 'BDT', '2023-08-19 14:34:21'),
(47, 'Admin Mostak', 'admin@gmail.com', '8801XXXXXXXXX', 297.5, 'Dhaka,Mirpur', 'Pending', '64e07fc6a92f7', 'BDT', '2023-08-19 14:39:34'),
(48, 'Admin Mostak', 'admin@gmail.com', '8801XXXXXXXXX', 297.5, 'Dhaka,Mirpur', 'Pending', '64e07fc6ac97c', 'BDT', '2023-08-19 14:39:34'),
(49, 'Admin Mostak', 'admin@gmail.com', '8801XXXXXXXXX', 297.5, 'Dhaka,Mirpur', 'Pending', '64e08145a444f', 'BDT', '2023-08-19 14:45:57'),
(50, 'Admin Mostak', 'admin@gmail.com', '8801XXXXXXXXX', 297.5, 'Dhaka,Mirpur', 'Pending', '64e08145a444f', 'BDT', '2023-08-19 14:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$YDDC2fjNInIhxBKpyqXxIusTORWUy16YRz8yMNUDRUuFrivGIkWJK', '2023-07-19 02:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizsets`
--

CREATE TABLE `quizsets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `quizzes` varchar(255) NOT NULL,
  `active` set('0','1') NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `topic_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  `entime` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizsets`
--

INSERT INTO `quizsets` (`id`, `name`, `title`, `quizzes`, `active`, `user_id`, `category_id`, `subcategory_id`, `topic_id`, `stime`, `entime`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Rational Numbers', 'MCQ Question', '116,117,118,119,120,121,122,123,124,125,126,127,129,130,131,132,131,133,134,135', '1', 1, 4, 20, 14, '2023-07-12 15:00:00', '2023-07-12 18:00:00', '2023-07-02 13:49:09', '2023-07-11 20:57:15', NULL),
(2, 'General Knowledge International', 'CT', '191,192,193,194,195,196,197,198,200,201,202,203,204,205,206,207,208,209,210,211', '1', 1, 11, 24, 19, '2023-07-12 15:00:00', '2023-07-12 16:00:00', '2023-07-04 14:56:46', '2023-07-11 20:59:02', NULL),
(3, 'General Knowledge Bangladesh', 'CT', '151,152,153,154,155,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167', '1', 1, 11, 23, 19, '2023-07-10 13:45:00', '2023-07-10 12:45:00', '2023-07-04 14:55:03', '2023-07-08 23:43:19', NULL),
(4, 'General Knowledge International', 'CT', '191,192,193,194,195,196,197,198,200,201,202,203,204,205,206,207,208,209,210,211', '1', 1, 11, 24, 15, '2023-07-06 04:20:00', '2023-07-06 05:20:00', '2023-07-04 14:56:46', '2023-07-09 00:17:30', NULL),
(5, 'General Knowledge Int', 'CT', '191,192,193,194,195,196,197,198,200,201,202,203,204,205,206,207,208,209,210,211', '1', 1, 11, 24, NULL, NULL, NULL, '2023-07-04 14:56:46', '2023-07-04 14:56:46', NULL),
(6, 'General Knowledge Int2', 'CT', '191,192,193,194,195,196,197,198,200,201,202,203,204,205,206,207,208,209,210,211', '1', 1, 11, 24, NULL, '2023-08-01 16:20:00', '2023-08-01 16:51:00', '2023-07-04 14:56:46', '2023-08-01 04:15:31', NULL),
(7, 'HW', 'Test', '116,117,118,119,120,121,122,123,124,125', '1', 2, 4, 20, 21, '2023-07-08 23:25:00', '2023-07-09 23:25:00', '2023-07-06 23:25:22', '2023-07-06 23:25:22', NULL),
(8, 'CT 2', 'MCQ', '116,117,118,119,120,121,125,126,128,129,132,133', '1', 1, 4, 20, 21, '2023-07-09 12:30:00', '2023-07-09 13:30:00', '2023-07-06 23:30:09', '2023-07-06 23:30:09', NULL),
(9, 'Bangladesh', 'CT', '151,153,154,155,157,158,161,160,165,164,167,168', '1', 1, 11, 23, 17, '2023-07-09 15:40:00', '2023-07-09 16:40:00', '2023-07-06 23:36:21', '2023-07-06 23:36:21', NULL),
(10, 'Bangladesh', 'HW', '152,151,153,154,155,157,158,159,160,162,163,164,165', '1', 1, 11, 23, 15, '2023-07-06 15:40:00', '2023-07-06 16:40:00', '2023-07-06 23:38:08', '2023-07-06 23:38:08', NULL),
(11, 'Class Test', 'MCQ', '191,192,193,194,195,196,197,199,200,201,202,203', '1', 2, 4, 24, 14, '2023-07-10 17:10:00', '2023-07-10 18:15:00', '2023-07-08 12:12:33', '2023-07-08 21:58:24', NULL),
(12, 'React MCQ Test', 'React Quiz', '246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282', '1', 1, 6, 25, 22, '2023-07-12 15:05:00', '2023-07-12 19:05:00', '2023-07-11 16:51:44', '2023-07-11 21:01:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `type` set('m','d','qi') NOT NULL DEFAULT 'm',
  `op1` varchar(255) DEFAULT NULL,
  `op2` varchar(255) DEFAULT NULL,
  `op3` varchar(255) DEFAULT NULL,
  `op4` varchar(255) DEFAULT NULL,
  `ans` varchar(255) DEFAULT NULL,
  `qimage` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `topic_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `question`, `type`, `op1`, `op2`, `op3`, `op4`, `ans`, `qimage`, `user_id`, `category_id`, `subcategory_id`, `topic_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Who is making the Web standards?', 'm', 'Google', 'Mozilla', 'The World Wide Web Consortium', 'Microsoft', 'op3', NULL, 11, 6, 6, 8, '2023-07-18 16:36:13', '2023-09-03 23:51:37', NULL),
(2, 'Choose the correct HTML element for the largest heading:', 'm', '<h6>', '<h1>', '<heading>', '<head>', 'op2', NULL, 11, 6, 6, 8, '2023-07-18 16:50:29', '2023-09-06 15:14:00', NULL),
(3, 'What is the correct HTML element for inserting a line break?', 'm', '<break>', '<ib>', '<br>', '<b>', 'op3', NULL, 11, 6, 6, 8, '2023-07-18 16:51:24', '2023-09-06 15:15:40', NULL),
(4, 'What is the correct HTML for adding a background color?', 'm', '<body bg=\"yellow\">', '<body style=\"background-color:yellow;\">', '<background>yellow</background>', 'None of above', 'op1', NULL, 11, 6, 6, 8, '2023-07-18 16:52:20', '2023-09-06 15:18:52', NULL),
(5, 'Choose the correct HTML element to define important text', 'm', '&lt;strong&gt;', '&lt;b&gt;', '&lt;i&gt;', '&lt;important&gt;', 'op1', NULL, 11, 6, 6, 8, '2023-07-18 16:53:21', '2023-09-03 23:51:37', NULL),
(6, 'Choose the correct HTML element to define emphasized text', 'm', '&lt;italic&gt;', '&lt;i&gt;', '&lt;em&gt;', '&lt;y&gt;', 'op3', NULL, 11, 6, 6, 8, '2023-07-18 16:57:11', '2023-09-03 23:51:37', NULL),
(7, 'What is the correct HTML for creating a hyperlink?', 'm', 'A. &lt;a url=&quot;http://www.w3schools.com&quot;&gt;W3Schools.com&lt;/a&gt;', 'B. &lt;a href=&quot;http://www.w3schools.com&quot;&gt;W3Schools&lt;/a&gt;', 'C. &lt;a name=&quot;http://www.w3schools.com&quot;&gt;W3Schools.com&lt;/a&gt;', 'D. &lt;a&gt;http://www.w3schools.com&lt;/a&gt;', 'op2', NULL, 11, 6, 6, 8, '2023-07-18 16:58:19', '2023-09-03 23:51:37', NULL),
(8, 'Which character is used to indicate an end tag?', 'm', '/', '^', '*', '&lt;', 'op1', NULL, 11, 6, 6, 8, '2023-07-18 16:59:21', '2023-09-03 23:51:37', NULL),
(9, 'How can you open a link in a new tab/browser window?', 'm', '&lt;a href=&quot;url&quot; target=&quot;new&quot;&gt;', '&lt;a href=&quot;url&quot; new&gt;', '&lt;a href=&quot;url&quot; target=&quot;_blank&quot;&gt;', 'None of above', 'op3', NULL, 11, 6, 6, 8, '2023-07-18 17:00:10', '2023-09-03 23:51:37', NULL),
(10, 'Which of these elements are all &lt;table&gt; elements?', 'm', '&lt;table&gt;&lt;head&gt;&lt;tfoot&gt;', '&lt;thead&gt;&lt;body&gt;&lt;tr&gt;', '&lt;table&gt;&lt;tr&gt;&lt;tt&gt;', '&lt;table&gt;&lt;tr&gt;&lt;td&gt;', 'op4', NULL, 11, 6, 6, 8, '2023-07-18 17:01:15', '2023-09-03 23:51:37', NULL),
(11, 'Inline elements are normally displayed without starting a new line.', 'm', 'True', 'False', 'C.', 'D.', 'op1', NULL, 11, 6, 6, 8, '2023-07-18 17:01:54', '2023-09-03 23:51:37', NULL),
(12, 'How can you make a numbered list?', 'm', '&lt;list&gt;', '&lt;ol&gt;', '&lt;dl&gt;', '&lt;ul&gt;', 'op2', NULL, 11, 6, 6, 8, '2023-07-18 17:02:48', '2023-09-03 23:51:37', NULL),
(13, 'How can you make a bulleted list?', 'm', '&lt;ol&gt;', '&lt;list&gt;', '&lt;dl&gt;', '&lt;ul&gt;', 'op4', NULL, 11, 6, 6, 8, '2023-07-18 17:05:16', '2023-09-03 23:51:37', NULL),
(14, 'What is the correct HTML for making a checkbox?', 'm', '&lt;check&gt;', '&lt;input type=&quot;checkbox&quot;&gt;', '&lt;checkbox&gt;', '&lt;input type=&quot;check&quot;&gt;', 'op2', NULL, 11, 6, 6, 8, '2023-07-18 17:06:07', '2023-09-03 23:51:37', NULL),
(15, 'What is the correct HTML for making a text input field?', 'm', '&lt;input type=&quot;text&quot;&gt;', '&lt;textinput type=&quot;text&quot;&gt;', '&lt;input type=&quot;textfield&quot;&gt;', '&lt;textfield&gt;', 'op1', NULL, 11, 6, 6, 8, '2023-07-18 17:06:59', '2023-09-03 23:51:37', NULL),
(16, 'What is the correct HTML for making a drop-down list?', 'm', '&lt;input type=&quot;dropdown&quot;&gt;', '&lt;select&gt;', '&lt;input type=&quot;list&quot;&gt;', '&lt;list&gt;', 'op2', NULL, 11, 6, 6, 8, '2023-07-18 17:07:02', '2023-09-03 23:51:37', NULL),
(17, 'What is the correct HTML for making a text area?', 'm', '&lt;input type=&quot;textarea&quot;&gt;', '&lt;input type=&quot;textbox&quot;&gt;', '&lt;textarea&gt;', 'None of above', 'op1', NULL, 11, 6, 6, 8, '2023-07-18 17:09:57', '2023-09-03 23:51:37', NULL),
(18, 'What is the correct HTML for inserting an image?', 'm', '&lt;image src=&quot;image.gif&quot; alt=&quot;MyImage&quot;&gt;', '&lt;img alt=&quot;MyImage&quot;&gt;image.gif&lt;/img&gt;', '&lt;img src=&quot;image.gif&quot; alt=&quot;MyImage&quot;&gt;', '&lt;img href=&quot;image.gif&quot; alt=&quot;MyImage&quot;&gt;', 'op3', NULL, 11, 6, 6, 8, '2023-07-18 17:11:09', '2023-09-03 23:51:37', NULL),
(19, 'What is the correct HTML for inserting a background image?', 'm', '&lt;background img=&quot;background.gif&quot;&gt;', '&lt;body style=&quot;background-image:url(background.gif)&quot;&gt;', '&lt;body bg=&quot;background.gif&quot;&gt;', 'None of above', 'op2', NULL, 11, 6, 6, 8, '2023-07-18 17:11:53', '2023-09-03 23:51:37', NULL),
(20, 'An &lt;iframe&gt; is used to display a web page within a web page.', 'm', 'True', 'There is no such thing as an &lt;iframe&gt;', 'C. False', 'None of above', 'op1', NULL, 11, 6, 6, 8, '2023-07-18 17:12:34', '2023-09-03 23:51:37', NULL),
(21, 'HTML comments start with &lt;!-- and end with --&gt;', 'm', 'False', 'True', 'C.', 'None of above', 'op2', NULL, 11, 6, 6, 8, '2023-07-18 17:13:13', '2023-09-03 23:51:37', NULL),
(22, 'Block elements are normally displayed without starting a new line.', 'm', 'True', 'False', 'C.', 'None of above', 'op2', NULL, 11, 6, 6, 8, '2023-07-18 17:13:48', '2023-09-03 23:51:37', NULL),
(23, 'Which HTML element defines the title of a document?', 'm', '&lt;head&gt;', '&lt;meta&gt;', '&lt;title&gt;', 'None of above', 'op3', NULL, 11, 6, 6, 8, '2023-07-18 17:14:37', '2023-09-03 23:51:37', NULL),
(24, 'Which HTML attribute specifies an alternate text for an image, if the image cannot be displayed?', 'm', 'longdesc', 'src', 'title', 'alt', 'op4', NULL, 11, 6, 6, 8, '2023-07-18 17:15:39', '2023-09-03 23:51:37', NULL),
(25, 'What does CSS stand for?', 'm', 'Computer Style Sheets', 'Cascading Style Sheets', 'Colorful Style Sheets', 'Creative Style Sheets', 'op2', NULL, 11, 6, 8, 10, '2023-07-21 22:16:09', '2023-09-03 23:51:37', NULL),
(26, 'What is the correct HTML for referring to an external style sheet?', 'm', 'A. &lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;mystyle.css&quot;&gt;', 'B. &lt;stylesheet&gt;mystyle.css&lt;/stylesheet&gt;', 'C. &lt;style src=&quot;mystyle.css&quot;&gt;', 'D.', 'op1', NULL, 11, 6, 8, 10, '2023-07-21 22:17:07', '2023-09-03 23:51:37', NULL),
(27, 'Where in an HTML document is the correct place to refer to an external style sheet?', 'm', 'A. In the &lt;head&gt; section', 'B. In the &lt;body&gt; section', 'C. At the end of the document', 'D.', 'op1', NULL, 11, 6, 8, 10, '2023-07-21 22:18:01', '2023-09-03 23:51:37', NULL),
(28, 'Which HTML tag is used to define an internal style sheet?', 'm', 'A. &lt;script&gt;', 'B. &lt;css&gt;', 'C. &lt;style&gt;', 'D.', 'op3', NULL, 11, 6, 8, 10, '2023-07-21 22:18:50', '2023-09-03 23:51:37', NULL),
(29, 'Which HTML attribute is used to define inline styles?', 'm', 'A. class', 'B. font', 'C. styles', 'D. style', 'op4', NULL, 11, 6, 8, 10, '2023-07-21 22:20:05', '2023-09-03 23:51:37', NULL),
(30, 'Which is the correct CSS syntax?', 'm', 'A. {body:color=black;}', 'B. body {color: black;}', 'C. body:color=black;', 'D. {body;color:black;}', 'op2', NULL, 11, 6, 8, 10, '2023-07-21 22:21:04', '2023-09-03 23:51:37', NULL),
(31, 'How do you insert a comment in a CSS file?', 'm', 'A. // this is a comment', 'B. &#039; this is a comment', '/* this is a comment */', 'D. // this is a comment //', 'op3', NULL, 11, 6, 8, 10, '2023-07-21 22:22:42', '2023-09-03 23:51:37', NULL),
(32, 'Which property is used to change the background color?', 'm', 'A. bgcolor', 'B. background-color', 'C. color', 'D.', 'op2', NULL, 11, 6, 8, 10, '2023-07-21 22:23:28', '2023-09-03 23:51:37', NULL),
(33, 'How do you add a background color for all &lt;h1&gt; elements?', 'm', 'A. h1.all {background-color:#FFFFFF;}', 'B. all.h1 {background-color:#FFFFFF;}', 'C. h1 {background-color:#FFFFFF;}', 'D.', 'op3', NULL, 11, 6, 8, 10, '2023-07-21 22:24:34', '2023-09-03 23:51:37', NULL),
(34, 'Which CSS property is used to change the text color of an element?', 'm', 'A. text-color', 'B. color', 'C. fgcolor', 'D.', 'op2', NULL, 11, 6, 8, 10, '2023-07-21 22:25:25', '2023-09-03 23:51:37', NULL),
(35, 'Which CSS property controls the text size?', 'm', 'A. font-size', 'B. font-style', 'C. text-size', 'D. text-style', 'op1', NULL, 11, 6, 8, 10, '2023-07-21 22:27:31', '2023-09-03 23:51:37', NULL),
(36, 'What is the correct CSS syntax for making all the &lt;p&gt; elements bold?', 'm', 'A. &lt;p style=&quot;font-size:bold;&quot;&gt;', 'B. p {font-weight:bold;}', 'C. p {text-size:bold;}', 'D. &lt;p style=&quot;text-size:bold;&quot;&gt;', 'op2', NULL, 11, 6, 8, 10, '2023-07-21 22:28:32', '2023-09-03 23:51:37', NULL),
(37, 'How do you display hyperlinks without an underline?', 'm', 'A. a {text-decoration:none;}', 'B. a {text-decoration:no-underline;}', 'C. a {underline:none;}', 'D. a {decoration:no-underline;}', 'op1', NULL, 11, 6, 8, 10, '2023-07-21 22:29:43', '2023-09-03 23:51:37', NULL),
(38, 'How do you make each word in a text start with a capital letter?', 'm', 'A. transform:capitalize', 'B. text-style:capitalize', 'C. text-transform:capitalize', 'D. You can&#039;t do that with CSS', 'op3', NULL, 11, 6, 8, 10, '2023-07-21 22:30:45', '2023-09-03 23:51:37', NULL),
(39, 'Which property is used to change the font of an element?', 'm', 'A. font-weight', 'B. font-family', 'C. font-style', 'D.', 'op2', NULL, 11, 6, 8, 10, '2023-07-21 22:31:31', '2023-09-03 23:51:37', NULL),
(40, 'How do you make the text bold?', 'm', 'A. style:bold;', 'B. font:bold;', 'C. font-weight:bold;', 'D.', 'op3', NULL, 11, 6, 8, 10, '2023-07-21 22:32:37', '2023-09-03 23:51:37', NULL),
(41, 'How do you display a border like this:\r\n\r\nThe top border = 10 pixels\r\nThe bottom border = 5 pixels\r\nThe left border = 20 pixels\r\nThe right border = 1pixel?', 'm', 'A. border-width:5px 20px 10px 1px;', 'B. border-width:10px 5px 20px 1px;', 'C. border-width:10px 20px 5px 1px;', 'D. border-width:10px 1px 5px 20px;', 'op4', NULL, 11, 6, 8, 10, '2023-07-21 22:33:56', '2023-09-03 23:51:37', NULL),
(42, 'Which property is used to change the left margin of an element?', 'm', 'A. margin-left', 'B. padding-left', 'C. indent', 'D.', 'op1', NULL, 11, 6, 8, 10, '2023-07-21 22:34:57', '2023-09-03 23:51:37', NULL),
(43, 'When using the padding property; are you allowed to use negative values?', 'm', 'A. Yes', 'B. No', 'C.', 'D.', 'op2', NULL, 11, 6, 8, 10, '2023-07-21 22:35:36', '2023-09-03 23:51:37', NULL),
(44, 'How do you make a list that lists its items with squares?', 'm', 'A. list-type: square;', 'B. list: square;', 'C.list-style-type: square;', 'D.', 'op3', NULL, 11, 6, 8, 10, '2023-07-21 22:36:28', '2023-09-03 23:51:37', NULL),
(45, 'The .container class provides a full width container, spanning the entire width of the screen', 'm', 'A. True', 'B. False', 'C.', 'D.', 'op2', NULL, 11, 6, 9, 11, '2023-07-21 22:43:04', '2023-09-03 23:51:37', NULL),
(46, 'Which class provides a responsive fixed width container?', 'm', 'A. .container-fluid', 'B. .container-responsive', 'C. .container-fixed', 'D. .container', 'op4', NULL, 11, 6, 9, 11, '2023-07-21 22:44:07', '2023-09-03 23:51:37', NULL),
(47, 'Which contextual class is used to create an orange text color?', 'm', 'A. .bg-warning', 'B. .txt-orange', 'C. .text-warning', 'D. .txt-warning', 'op3', NULL, 11, 6, 9, 11, '2023-07-21 22:45:05', '2023-09-03 23:51:37', NULL),
(48, 'The Bootstrap grid system is based on how many columns?', 'm', 'A. 12', 'B. 3', 'C. 9', 'D. 6', 'op1', NULL, 11, 6, 9, 11, '2023-07-21 22:45:48', '2023-09-03 23:51:37', NULL),
(49, 'Which class adds zebra-stripes to a table?', 'm', 'A. .table-bordered', 'B. .table-striped', 'C. .table-zebra', 'D. .even and .odd', 'op2', NULL, 11, 6, 9, 11, '2023-07-21 22:46:45', '2023-09-03 23:51:37', NULL),
(50, 'Which class shapes an image to a circle?', 'm', 'A. .img-rounded', 'B. .rounded-circle', 'C. .img-round', 'D. .img-circle', 'op2', NULL, 11, 6, 9, 11, '2023-07-21 22:47:36', '2023-09-03 23:51:37', NULL),
(51, 'Which class is used to create a big box for calling extra attention?', 'm', 'A. .jumbotron', 'B. .bigbox', 'C. There is no such class', 'D. .container', 'op3', NULL, 11, 6, 9, 11, '2023-07-21 22:48:24', '2023-09-03 23:51:37', NULL),
(52, 'Which class is used to create a button group?', 'm', 'A. .btn-group', 'B. .group-btn', 'C. .group-button', 'D. .button-group', 'op1', NULL, 11, 6, 9, 11, '2023-07-21 22:49:26', '2023-09-03 23:51:37', NULL),
(53, 'Which button class is used to create a large button?', 'm', 'A. .btn-large', 'B. .btn-l2', 'C. .btn-l', 'D. .btn-lg', 'op4', NULL, 11, 6, 9, 11, '2023-07-21 22:50:17', '2023-09-03 23:51:37', NULL),
(54, 'Which class is used to create a badge?', 'm', 'A. .label-badge', 'B. .badge-label', 'C. .badge', 'D. .badge-item', 'op3', NULL, 11, 6, 9, 11, '2023-07-21 22:51:06', '2023-09-03 23:51:37', NULL),
(55, 'Which class is used to create a loader?', 'm', 'A. .spinner-border', 'B. .spinner', 'C. .spinner-loader', 'D. .loader', 'op1', NULL, 11, 6, 9, 11, '2023-07-21 22:52:09', '2023-09-03 23:51:37', NULL),
(56, 'Which class is used to create a basic pagination?', 'm', 'A. .navigation', 'B. .pages', 'C. .page', 'D. .pagination', 'op4', NULL, 11, 6, 9, 11, '2023-07-21 22:52:54', '2023-09-03 23:51:37', NULL),
(57, 'Which class is used to create a basic list group?', 'm', 'A. .grouped-list', 'B. .list-group', 'C. .group-list', 'D.', 'op2', NULL, 11, 6, 9, 11, '2023-07-21 22:53:35', '2023-09-03 23:51:37', NULL),
(58, 'Which class adds a heading to a card?', 'm', 'A. .card-header', 'B. .card-head', 'C. .card-footer', 'D. .card-heading', 'op1', NULL, 11, 6, 9, 11, '2023-07-21 22:54:22', '2023-09-03 23:51:37', NULL),
(59, 'Which class indicates a dropdown menu?', 'm', 'A. .dropdown-list', 'B. .select', 'C. .dropdown', 'D.', 'op3', NULL, 11, 6, 9, 11, '2023-07-21 22:55:20', '2023-09-03 23:51:37', NULL),
(60, 'Which class is used to create a vertical navigation bar?', 'm', 'A. .navbar navbar-vertical', 'B. .navbar', 'C. .navbar-inverse', 'D. .navbar-vertical', 'op2', NULL, 11, 6, 9, 11, '2023-07-21 22:56:25', '2023-09-03 23:51:37', NULL),
(61, 'Which component is used to cycle through elements, like a slideshow?', 'm', 'A. Scrollspy', 'B. Slideshow', 'C. Orbit', 'D. Carousel', 'op4', NULL, 11, 6, 9, 11, '2023-07-21 22:57:17', '2023-09-03 23:51:37', NULL),
(62, 'Which contextual class indicates a succesful or positive action?', 'm', 'A. .bg-warning', 'B. .bg-primary', 'C. .bg-success', 'D. .bg-info', 'op3', NULL, 11, 6, 9, 11, '2023-07-21 22:58:07', '2023-09-03 23:51:37', NULL),
(63, 'Which contextual class indicates a dangerous or potentially negative action?', 'm', 'A. .bg-danger', 'B. .bg-info', 'C. .bg-dark', 'D. .bg-primary', 'op1', NULL, 11, 6, 9, 11, '2023-07-21 22:58:59', '2023-09-03 23:51:37', NULL),
(64, 'Which class indicates uppercased text?', 'm', 'A. .text-capitalize', 'B. .ucase', 'C. .text-uppercase', 'D. .uppercase', 'op3', NULL, 11, 6, 9, 11, '2023-07-21 22:59:50', '2023-09-03 23:51:37', NULL),
(65, 'Inside which HTML element do we put the JavaScript?', 'm', 'A. &lt;js&gt;', 'B. &lt;javascript&gt;', 'C. &lt;script&gt;', 'D. &lt;scripting&gt;', 'op3', NULL, 11, 6, 7, 9, '2023-07-21 23:02:33', '2023-09-03 23:51:37', NULL),
(66, 'What is the correct JavaScript syntax to change the content of the HTML element below?\r\n&lt;p id=&quot;demo&quot;&gt;This is a demonstration.&lt;/p&gt;', 'm', 'A. document.getElement(&quot;p&quot;).innerHTML = &quot;Hello World!&quot;;', 'B. document.getElementById(&quot;demo&quot;).innerHTML = &quot;Hello World!&quot;;', 'C. document.getElementByName(&quot;p&quot;).innerHTML = &quot;Hello World!&quot;;', 'D. #demo.innerHTML = &quot;Hello World!&quot;;', 'op2', NULL, 11, 6, 7, 9, '2023-07-21 23:03:41', '2023-09-03 23:51:37', NULL),
(67, 'Where is the correct place to insert a JavaScript?', 'm', 'A. The &lt;body&gt; section', 'B. The &lt;head&gt; section', 'C. Both the &lt;head&gt; section and the &lt;body&gt; section are correct', 'D.', 'op3', NULL, 11, 6, 7, 9, '2023-07-21 23:04:39', '2023-09-03 23:51:37', NULL),
(68, 'What is the correct syntax for referring to an external script called &quot;xxx.js&quot;?', 'm', 'A. &lt;script src=&quot;xxx.js&quot;&gt;', 'B. &lt;script name=&quot;xxx.js&quot;&gt;', 'C. &lt;script href=&quot;xxx.js&quot;&gt;', 'D.', 'op1', NULL, 11, 6, 7, 9, '2023-07-21 23:05:25', '2023-09-03 23:51:37', NULL),
(69, 'The external JavaScript file must contain the &lt;script&gt; tag.', 'm', 'A. True', 'B. False', 'C.', 'D.', 'op2', NULL, 11, 6, 7, 9, '2023-07-21 23:06:40', '2023-09-03 23:51:37', NULL),
(70, 'How do you write &quot;Hello World&quot; in an alert box?', 'm', 'A. msgBox(&quot;Hello World&quot;);', 'B. alertBox(&quot;Hello World&quot;);', 'C. msg(&quot;Hello World&quot;);', 'D. alert(&quot;Hello World&quot;);', 'op4', NULL, 11, 6, 7, 9, '2023-07-21 23:07:45', '2023-09-03 23:51:37', NULL),
(71, 'How do you create a function in JavaScript?', 'm', 'A. function:myFunction()', 'B. function = myFunction()', 'C. function myFunction()', 'D.', 'op3', NULL, 11, 6, 7, 9, '2023-07-21 23:07:29', '2023-09-03 23:51:37', NULL),
(72, 'How do you call a function named &quot;myFunction&quot;?', 'm', 'A. myFunction()', 'B. call myFunction()', 'C. call function myFunction()', 'D.', 'op1', NULL, 11, 6, 7, 9, '2023-07-21 23:09:14', '2023-09-03 23:51:37', NULL),
(73, 'How to write an IF statement in JavaScript?', 'm', 'A. if i = 5 then', 'B. if (i == 5)', 'C. if i = 5', 'D. if i == 5 then', 'op2', NULL, 11, 6, 7, 9, '2023-07-21 23:10:13', '2023-09-03 23:51:37', NULL),
(74, 'How to write an IF statement for executing some code if &quot;i&quot; is NOT equal to 5?', 'm', 'A. if (i != 5)', 'B. if (i &lt;&gt; 5)', 'C. if i &lt;&gt; 5', 'D. if i =! 5 then', 'op1', NULL, 11, 6, 7, 9, '2023-07-21 23:11:02', '2023-09-03 23:51:37', NULL),
(75, 'How does a WHILE loop start?', 'm', 'A. while (i &lt;= 10; i++)', 'B. while i = 1 to 10', 'C. while (i &lt;= 10)', 'D.', 'op3', NULL, 11, 6, 7, 9, '2023-07-21 23:11:48', '2023-09-03 23:51:37', NULL),
(76, 'What does PHP stand for?', 'm', 'A. Personal Hypertext Processor', 'B. PHP: Hypertext Preprocessor', 'C. Private Home Page', 'D.', 'op2', NULL, 11, 6, 10, 12, '2023-07-22 00:58:45', '2023-09-03 23:51:37', NULL),
(77, 'PHP server scripts are surrounded by delimiters, which?', 'm', 'A. &lt;?php&gt;...&lt;/?&gt;', 'B. &lt;&amp;&gt;...&lt;/&amp;&gt;', 'C. &lt;script&gt;...&lt;/script&gt;', 'D. &lt;?php...?&gt;', 'null', NULL, 11, 6, 10, 12, '2023-07-22 00:59:33', '2023-09-03 23:51:37', NULL),
(78, 'How do you write &quot;Hello World&quot; in PHP', 'm', 'A. &quot;Hello World&quot;;', 'B. echo &quot;Hello World&quot;', 'C. Document.Write(&quot;Hello World&quot;);', 'D.', 'null', NULL, 11, 6, 10, 12, '2023-07-22 01:00:12', '2023-09-03 23:51:37', NULL),
(79, 'All variables in PHP start with which symbol?', 'm', 'A. $', 'B. &amp;', 'C. !', 'D.', 'op1', NULL, 11, 6, 10, 12, '2023-07-22 01:00:56', '2023-09-03 23:51:37', NULL),
(80, 'What is the correct way to end a PHP statement?', 'm', 'A. &lt;/php&gt;', 'B. New line', 'C. ;', 'D. ,', 'op3', NULL, 11, 6, 10, 12, '2023-07-22 01:01:47', '2023-09-03 23:51:37', NULL),
(81, 'The PHP syntax is most similar to:', 'm', 'A. JavaScript', 'B. Perl and C', 'C. VBScript', 'D.', 'op2', NULL, 11, 6, 10, 12, '2023-07-22 01:02:56', '2023-09-03 23:51:37', NULL),
(82, 'How do you get information from a form that is submitted using the &quot;get&quot; method?', 'm', 'A. $_GET[];', 'B. Request.Form;', 'C. Request.QueryString;', 'D.', 'op1', NULL, 11, 6, 10, 12, '2023-07-22 01:04:01', '2023-09-03 23:51:37', NULL),
(83, 'When using the POST method, variables are displayed in the URL:', 'm', 'A. False', 'B. True', 'C.', 'D.', 'op1', NULL, 11, 6, 10, 12, '2023-07-22 01:04:35', '2023-09-03 23:51:37', NULL),
(84, 'In PHP you can use both single quotes ( &#039; &#039; ) and double quotes ( &quot; &quot; ) for strings:', 'm', 'A. False', 'B. True', 'C.', 'D.', 'op2', NULL, 11, 6, 10, 12, '2023-07-22 01:05:12', '2023-09-03 23:51:37', NULL),
(85, 'Include files must have the file extension &quot;.inc&quot;', 'm', 'A. True', 'B. False', 'C.', 'D.', 'op2', NULL, 11, 6, 10, 12, '2023-07-22 01:05:51', '2023-09-03 23:51:37', NULL),
(86, 'What is the correct way to include the file &quot;time.inc&quot; ?', 'm', 'A. &lt;?php include &quot;time.inc&quot;; ?&gt;', 'B. &lt;!-- include file=&quot;time.inc&quot; --&gt;', 'C. &lt;?php include file=&quot;time.inc&quot;; ?&gt;', 'D. &lt;?php include:&quot;time.inc&quot;; ?&gt;', 'op1', NULL, 11, 6, 10, 12, '2023-07-22 01:06:45', '2023-09-03 23:51:37', NULL),
(87, 'What is the correct way to create a function in PHP?', 'm', 'A. function myFunction()', 'B. create myFunction()', 'C. new_function myFunction()', 'D.', 'op1', NULL, 11, 6, 10, 12, '2023-07-22 01:07:19', '2023-09-03 23:51:37', NULL),
(88, 'What is the correct way to open the file \"time.txt\" as readable?', 'm', 'open(\"time.txt\",\"read\");', 'fopen(\"time.txt\",\"r+\")', 'open(\"time.txt\");', 'fopen(\"time.txt\",\"r\");', 'op2', NULL, 11, 6, 7, 9, '2023-07-22 01:09:24', '2023-09-06 15:20:06', NULL),
(89, 'PHP allows you to send emails directly from a script', 'm', 'A. False', 'B. True', 'C.', 'D.', 'op2', NULL, 11, 6, 10, 12, '2023-07-22 01:10:13', '2023-09-03 23:51:37', NULL),
(90, 'Which superglobal variable holds information about headers, paths, and script locations?', 'm', 'A. $_SESSION', 'B. $_GET', 'C. $_SERVER', 'D. $GLOBALS', 'op3', NULL, 11, 6, 10, 12, '2023-07-22 01:11:14', '2023-09-03 23:51:37', NULL),
(91, 'What is the correct way to add 1 to the $count variable?', 'm', 'A. count++;', 'B. $count++;', 'C. $count =+1', 'D. ++count', 'op2', NULL, 11, 6, 10, 12, '2023-07-22 01:12:14', '2023-09-03 23:51:37', NULL),
(92, 'What is a correct way to add a comment in PHP?', 'm', 'A. &lt;comment&gt;...&lt;/comment&gt;', 'B. &lt;!--...--&gt;', 'C. *\\...\\*', 'D. /*...*/', 'op4', NULL, 11, 6, 10, 12, '2023-07-22 01:13:16', '2023-09-03 23:51:37', NULL),
(93, 'PHP can be run on Microsoft Windows IIS(Internet Information Server):', 'm', 'A. True', 'B. False', 'C.', 'D.', 'op1', NULL, 11, 6, 10, 12, '2023-07-22 01:14:30', '2023-09-03 23:51:37', NULL),
(94, 'The die() and exit() functions do the exact same thing.', 'm', 'A. True', 'B. False', 'C.', 'D.', 'op1', NULL, 11, 6, 10, 12, '2023-07-22 01:15:26', '2023-09-03 23:51:37', NULL),
(95, 'Which one of these variables has an illegal name?', 'm', 'A. $my-Var', 'B. $myVar', 'C. $my_Var', 'D.', 'op1', NULL, 11, 6, 10, 12, '2023-07-22 01:16:13', '2023-09-03 23:51:37', NULL),
(96, 'Which of the following is correct?', 'm', 'A. jQuery is a JavaScript Library', 'B. jQuery is a JSON Library', 'C.', 'D.', 'op1', NULL, 11, 6, 11, 13, '2023-07-22 01:21:24', '2023-09-03 23:51:37', NULL),
(97, 'jQuery uses CSS selectors to select elements?', 'm', 'A. False', 'B. True', 'C.', 'D.', 'op2', NULL, 11, 6, 11, 13, '2023-07-22 01:21:55', '2023-09-03 23:51:37', NULL),
(98, 'Which sign does jQuery use as a shortcut for jQuery?', 'm', 'A. the ? Sign', 'B. the % sign', 'C. the $ sign', 'D.', 'op3', NULL, 11, 6, 11, 13, '2023-07-22 01:22:44', '2023-09-03 23:51:37', NULL),
(99, 'Look at the following selector: $(&quot;div&quot;). What does it select?', 'm', 'A. The first div element', 'B. All div elements', 'C.', 'D.', 'op2', NULL, 11, 6, 11, 13, '2023-07-22 01:23:27', '2023-09-03 23:51:37', NULL),
(100, 'Is jQuery a library for client scripting or server scripting?', 'm', 'A. Client scripting', 'B. Server scripting', 'C.', 'D.', 'op1', NULL, 11, 6, 11, 13, '2023-07-22 01:24:13', '2023-09-03 23:51:37', NULL),
(101, 'Is it possible to use jQuery together with AJAX?', 'm', 'A. Yes', 'B. No', 'C.', 'D.', 'op1', NULL, 11, 6, 11, 13, '2023-07-22 01:24:50', '2023-09-03 23:51:37', NULL),
(102, 'The jQuery html() method works for both HTML and XML documents', 'm', 'A. False', 'B. True', 'C.', 'D.', 'op1', NULL, 11, 6, 11, 13, '2023-07-22 01:25:21', '2023-09-03 23:51:37', NULL),
(103, 'What is the correct jQuery code to set the background color of all p elements to red?', 'm', 'A. $(&quot;p&quot;).layout(&quot;background-color&quot;,&quot;red&quot;);', 'B. $(&quot;p&quot;).manipulate(&quot;background-color&quot;,&quot;red&quot;);', 'C. $(&quot;p&quot;).css(&quot;background-color&quot;,&quot;red&quot;);', 'D. $(&quot;p&quot;).style(&quot;background-color&quot;,&quot;red&quot;);', 'op3', NULL, 11, 6, 11, 13, '2023-07-22 01:26:34', '2023-09-03 23:51:37', NULL),
(104, 'With jQuery, look at the following selector: $(&quot;div.intro&quot;). What does it select?', 'm', 'A. All div elements with id=&quot;intro&quot;', 'B. The first div element with class=&quot;intro&quot;', 'C. The first div element with id=&quot;intro&quot;', 'D. All div elements with class=&quot;intro&quot;', 'op4', NULL, 11, 6, 11, 13, '2023-07-22 01:28:04', '2023-09-03 23:51:37', NULL),
(105, 'Which jQuery method is used to hide selected elements?', 'm', 'A. display(none)', 'B.visible(false)', 'C. hide()', 'D.hidden()', 'op3', NULL, 11, 6, 11, 13, '2023-07-22 01:29:04', '2023-09-03 23:51:38', NULL),
(106, 'Which jQuery method is used to set one or more style properties for selected elements?', 'm', 'A. style()', 'B. css()', 'C. html()', 'D.', 'op2', NULL, 11, 6, 11, 13, '2023-07-22 01:29:50', '2023-09-03 23:51:38', NULL),
(107, 'Which jQuery method is used to perform an asynchronous HTTP request?', 'm', 'A. jQuery.ajaxSetup()', 'B. jQuery.ajaxAsync()', 'C. jQuery.ajax()', 'D.', 'op3', NULL, 11, 6, 11, 13, '2023-07-22 01:30:33', '2023-09-03 23:51:38', NULL),
(108, 'What is the correct jQuery code for making all div elements 100 pixels high?', 'm', 'A. $(&quot;div&quot;).height(100)', 'B. $(&quot;div&quot;).yPos(100)', 'C. $(&quot;div&quot;).height=&quot;100&quot;', 'D.', 'op1', NULL, 11, 6, 11, 13, '2023-07-22 01:31:22', '2023-09-03 23:51:38', NULL),
(109, 'Which statement is true?', 'm', 'A. To use jQuery, you do not have to do anything. Most browsers (Internet Explorer, Chrome, Firefox and Opera) have the jQuery library built in the browser', 'B. To use jQuery, you must buy the jQuery library at www.jquery.com', 'C. To use jQuery, you can refer to a hosted jQuery library at Google', 'D.', 'op3', NULL, 11, 6, 11, 13, '2023-07-22 01:32:07', '2023-09-03 23:51:38', NULL),
(110, 'What scripting language is jQuery written in?', 'm', 'A. VBScript', 'B. C#', 'C. C++', 'D. JavaScript', 'op4', NULL, 11, 6, 11, 13, '2023-07-22 01:32:57', '2023-09-03 23:51:38', NULL),
(111, 'Which jQuery function is used to prevent code from running, before the document is finished loading?', 'm', 'A. $(document).ready()', 'B. $(body).onload()', 'C. $(document).load()', 'D.', 'op1', NULL, 11, 6, 11, 13, '2023-07-22 01:33:40', '2023-09-03 23:51:38', NULL),
(112, 'Which jQuery method should be used to deal with name conflicts?', 'm', 'A. nameConflict()', 'B. noConflict()', 'C. conflict()', 'D. noNameConflict()', 'op2', NULL, 11, 6, 11, 13, '2023-07-22 01:34:33', '2023-09-03 23:51:38', NULL),
(113, 'Which jQuery method is used to switch between adding/removing one or more classes (for CSS) from selected elements?', 'm', 'A. switchClass()', 'B. toggleClass()', 'C. altClass()', 'D. switch()', 'op2', NULL, 11, 6, 11, 13, '2023-07-22 01:35:30', '2023-09-03 23:51:38', NULL),
(114, 'Look at the following selector: $(&quot;div p&quot;). What does it select?', 'm', 'A. The first p element inside a div element', 'B. All div elements with a p element', 'C. All p elements inside a div element', 'D.', 'op3', NULL, 11, 6, 11, 13, '2023-07-22 01:37:49', '2023-09-03 23:51:38', NULL),
(115, 'Is jQuery a W3C standard?', 'm', 'A. Yes', 'B. No', 'C.', 'D.', 'op2', NULL, 11, 6, 11, 13, '2023-07-22 01:38:31', '2023-09-03 23:51:38', NULL),
(116, 'Which of the following statements is false ?', 'm', 'Natural numbers are closed under addition', 'Whole numbers are closed under addition', 'Integers are closed under addition', 'Rational numbers are not closed under addition.', 'op4', '', 1, 4, 20, 14, '2023-09-02 12:57:23', '2023-09-03 23:51:38', NULL),
(117, 'Which of the following statements is false?', 'm', 'Natural numbers are closed under subtraction', 'Whole numbers are not closed under subtraction', 'Integers are closed under subtraction', 'Rational numbers are closed under subtraction.', 'op1', '', 1, 4, 20, 14, '2023-09-02 13:01:57', '2023-09-03 23:51:38', NULL),
(118, 'Which of the following statements is true?', 'm', 'Natural numbers are closed under multiplication', 'Whole numbers are not closed under multiplication', 'Integers are not closed under multiplication', 'Rational numbers are not closed under multiplication.', 'op1', '', 1, 4, 20, 14, '2023-09-02 13:03:48', '2023-09-03 23:51:38', NULL),
(119, 'Which of the following statements is true?', 'm', 'Natural numbers are closed under division', 'Whole numbers are not closed under division', 'Integers are closed under division', 'Rational numbers are closed under division.', 'op2', '', 1, 4, 20, 14, '2023-09-02 13:06:34', '2023-09-03 23:51:38', NULL),
(120, 'Which of the following statements is false?', 'm', 'Natural numbers are commutative for addition', 'Whole numbers are commutative for addition', 'Integers are not commutative for addition', 'Rational numbers are commutative for addition.', 'op3', '', 1, 4, 20, 14, '2023-09-02 13:07:44', '2023-09-03 23:51:38', NULL),
(121, 'Which of the following statements is true?', 'm', 'Natural numbers are commutative for subtraction', 'Whole numbers are commutative for subtraction', 'Integers are commutative for subtraction', 'Rational numbers are not commutative for subtraction.', 'op4', '', 1, 4, 20, 14, '2023-09-02 13:09:02', '2023-09-03 23:51:38', NULL),
(122, 'Which of the following statements is false?', 'm', 'Natural numbers are commutative for multiplication', 'Whole numbers are commutative for multiplication', 'Integers are not commutative for multiplication', 'Rational numbers are commutative for multiplication.', 'op3', '', 1, 4, 20, 14, '2023-09-02 13:10:03', '2023-09-03 23:51:38', NULL),
(123, 'Which of the following statements is true?', 'm', 'Natural numbers are commutative for division', 'Whole numbers are not commutative for division', 'Integers are commutative for division', 'Rational numbers are commutative for division.', 'op2', '', 1, 4, 20, 14, '2023-09-02 13:11:26', '2023-09-03 23:51:38', NULL),
(124, 'Which of the following statements is true?', 'm', 'Natural numbers are associative for addition', 'Whole numbers are not associative for addition', 'Integers are not associative for addition', 'Rational numbers are not associative for addition.', 'op1', '', 1, 4, 20, 14, '2023-09-02 13:13:01', '2023-09-03 23:51:38', NULL),
(125, 'Which of the following statements is true?', 'm', 'Natural numbers are associative for subtraction', 'Whole numbers are not associative for subtraction', 'Integers are associative for subtraction', 'Rational numbers are associative for subtraction.', 'op2', '', 1, 4, 20, 14, '2023-09-02 13:14:13', '2023-09-03 23:51:38', NULL),
(126, 'Which of the following statements is true?', 'm', 'Natural numbers are not associative for multiplication', 'Whole numbers are not associative for multiplication', 'Integers are associative for multiplication', 'Rational numbers are not associative for multiplication.', 'op3', '', 1, 4, 20, 14, '2023-09-02 13:15:23', '2023-09-03 23:51:38', NULL),
(127, 'Which of the following statements is true?', 'm', 'Natural numbers are associative for division', 'Whole numbers are associative for division', 'Integers are associative for division', 'Rational numbers are not associative for division.', 'op4', '', 1, 4, 20, 14, '2023-09-02 13:16:32', '2023-09-03 23:51:38', NULL),
(128, '0 is not', 'm', 'a natural number', 'a whole number', 'an integer', 'a rational number.', 'op1', '', 1, 4, 20, 14, '2023-09-02 13:17:56', '2023-09-03 23:51:38', NULL),
(129, '1/2 is 2', 'm', 'a natural number', 'a whole number', 'an integer', 'a rational number.', 'op4', '', 1, 4, 20, 14, '2023-09-02 13:19:52', '2023-09-03 23:51:38', NULL),
(130, 'a + b = b + a is called', 'm', 'commutative law of addition', 'associative law of addition', 'distributive law of addition', 'none of these.', 'op1', '', 1, 4, 20, 14, '2023-09-02 13:20:59', '2023-09-03 23:51:38', NULL),
(131, 'a &times; b = b &times; a is called', 'm', 'commutative law for addition', 'commutative law for multiplication', 'associative law for addition', 'associative law for multiplication.', 'op2', '', 1, 4, 20, 14, '2023-09-02 13:22:02', '2023-09-03 23:51:38', NULL),
(132, '(a + b) + c = a + (b + c) is called', 'm', 'commutative law for multiplication', 'commutative law for addition', 'associative law for addition', 'associative law for multiplication.', 'op3', '', 1, 4, 20, 14, '2023-09-02 13:22:54', '2023-09-03 23:51:38', NULL),
(133, 'a &times; (b &times; c) = (a &times; b) &times; c is called', 'm', 'associative law for addition', 'associative law for multiplication', 'commutative law for addition', 'commutative law for multiplication.', 'op2', '', 1, 4, 20, 14, '2023-09-02 13:24:26', '2023-09-03 23:51:38', NULL),
(134, 'a(b + c) = ab + ac is called', 'm', 'commutative law', 'associative law', 'distributive law', 'none of these.', 'op3', '', 1, 4, 20, 14, '2023-09-02 13:25:33', '2023-09-03 23:51:38', NULL),
(135, 'The additive identity for rational numbers is', 'm', '1', '-1', '0', 'none of these.', 'op3', '', 1, 4, 20, 14, '2023-09-02 13:26:34', '2023-09-03 23:51:38', NULL),
(136, 'The multiplicative identity for rational numbers is', 'm', '-1', '1', '0', 'none of these.', 'op2', '', 1, 4, 20, 14, '2023-09-02 13:28:09', '2023-09-03 23:51:38', NULL),
(137, 'The additive inverse of 2/3 is', 'm', '&ndash;2/3', '3/2', '&ndash;3/2', '1', 'op1', '', 1, 4, 20, 14, '2023-09-02 13:29:39', '2023-09-03 23:51:38', NULL),
(138, 'The additive inverse of &ndash;3/4 is', 'm', '&ndash;3/4', '1', '0', '3/4', 'op4', '', 1, 4, 20, 14, '2023-09-02 13:30:44', '2023-09-03 23:51:38', NULL),
(139, 'The multiplicative inverse of 12 is', 'm', '1', '-1', '2', '0', 'op3', '', 1, 4, 20, 14, '2023-09-02 13:31:49', '2023-09-03 23:51:38', NULL),
(140, 'The multiplicative inverse of &ndash;2/5 is', 'm', '&ndash;2/5', '&ndash;5/2', '5/2', '1', 'op2', '', 1, 4, 20, 14, '2023-09-02 13:33:09', '2023-09-03 23:51:38', NULL),
(141, 'The multiplicative inverse of 1 is', 'm', '0', '-1', '1', 'none of these.', 'op3', '', 1, 4, 20, 14, '2023-09-02 13:34:11', '2023-09-03 23:51:38', NULL),
(142, 'The multiplicative inverse of -1 is', 'm', '0', '-1', '1', 'none of these.', 'op2', '', 1, 4, 20, 14, '2023-09-02 13:35:09', '2023-09-03 23:51:38', NULL),
(143, 'How many rational numbers are there between any two given rational numbers?', 'm', 'Only one', 'Only two', 'Countless', 'Nothing can be said.', 'op3', '', 1, 4, 20, 14, '2023-09-02 13:36:05', '2023-09-03 23:51:38', NULL),
(144, 'The negative of 2 is', 'm', '2', '1/2', '-2', '&ndash;1/2', 'op3', '', 1, 4, 20, 14, '2023-09-02 13:37:06', '2023-09-03 23:51:38', NULL),
(145, 'The negative of -2 is', 'm', '-2', '2', '&ndash;1/2', '1/2', 'op2', '', 1, 4, 20, 14, '2023-09-02 13:38:18', '2023-09-03 23:51:38', NULL),
(146, 'If a and b are two rational numbers, then', 'm', 'a+b/2 &lt; a', 'a+b/2 &lt; b', 'a+b/2 = a', 'a+b/2 &gt; b', 'op2', '', 1, 4, 20, 14, '2023-09-02 13:39:27', '2023-09-03 23:51:38', NULL),
(147, 'The rational number that does not have a reciprocal is', 'm', '0', '1', '-1', '1/2', 'op1', '', 1, 4, 20, 14, '2023-09-02 13:40:24', '2023-09-03 23:51:38', NULL),
(148, 'The rational number which is equal to its negative is', 'm', '0', '1', '-1', '1/2', 'op1', '', 1, 4, 20, 14, '2023-09-02 13:42:06', '2023-09-03 23:51:38', NULL),
(149, 'The reciprocal of a positive rational number is', 'm', 'a positive rational number', 'a negative rational number', '0', '1', 'op1', '', 1, 4, 20, 14, '2023-09-02 13:43:04', '2023-09-03 23:51:38', NULL),
(150, 'The reciprocal of a negative rational number is', 'm', 'a positive rational number', 'a negative rational number', '0', '-1', 'op2', '', 1, 4, 20, 14, '2023-09-02 13:44:12', '2023-09-03 23:51:38', NULL),
(151, 'বাংলাদেশের মুক্তিযুদ্ধে প্রথম শত্রুমুক্ত জেলার নাম -', 'm', 'রাজশাহী', 'যশোর', 'জয়পুরহাট', 'নওগাঁ', 'op2', '', 11, 11, 23, 15, '2023-09-02 23:15:20', '2023-09-03 23:51:38', NULL),
(152, 'বীরশ্রেষ্ঠ রুহুল আমিন কোথায় কাজ করতেন?', 'm', 'সেনাবাহিনী', 'বিমানবাহিনী', 'নৌবাহিনী', 'ইপিয়ার', 'op3', '', 11, 11, 23, 15, '2023-09-02 23:17:22', '2023-09-03 23:51:38', NULL),
(153, 'বীরশ্রেষ্ঠ ফ্লাইট লেফটেন্যান্ট মতিউর রহমানের দেহাবশেষ পাকিস্তান থেকে কবে বাংলাদেশে আনা হয় ?', 'm', '২৪ জুন,২০০৬', '২৫ জুন,২০০৬', '২৩ জুন,২০০৬', '২৬ ডিসেম্বর,১৯৭২', 'op1', '', 11, 11, 23, 15, '2023-09-02 23:18:41', '2023-09-03 23:51:38', NULL),
(154, 'বীরশ্রেষ্ঠ হামিদুর রহমানের দেহাবশেষ কোথায় সমাহিত করা হয়?', 'm', 'বনানী কবরস্থানে', 'আজিমপুর কবরস্থানে', 'মোহাম্মদপুর কবরস্থানে', 'মিরপুর শহীদ বুদ্ধিজীবী কবরস্থানে', 'op4', '', 11, 11, 23, 15, '2023-09-02 23:19:45', '2023-09-03 23:51:38', NULL),
(155, 'মুক্তিযুদ্ধের সময় বরিশাল কোন সেক্টরের অধীনে ছিল?', 'm', '১নং সেক্টর', '৯নং সেক্টর', '২নং সেক্টর', '৬নং সেক্টর', 'op2', '', 11, 11, 23, 15, '2023-09-02 23:20:37', '2023-09-03 23:51:38', NULL),
(156, 'বাংলাদেশের প্রথম অস্থায়ী সরকার কোথায় গঠিত হয়েছিল?', 'm', 'মেহেরপুরে', 'চট্টগ্রামের কালুরঘাটে', 'আগরতলায়', 'ঢাকায়', 'op1', '', 11, 11, 23, 15, '2023-09-02 23:21:44', '2023-09-03 23:51:38', NULL),
(157, 'মুক্তিযুদ্ধে &#039;বীরপ্রতীক&#039; খেতাবপ্রাপ্ত দুই জন মহিলা মুক্তিযোদ্ধা কে কে?', 'm', 'বেগম সুফিয়া কামাল', 'আঞ্জুমান আরা ও কানিজ ফাতেমা', 'ডা. সেতারা বেগম ও তারামন বিবি', 'সুলতান কবীর ও সালমা খান', 'op3', '', 11, 11, 23, 15, '2023-09-02 23:22:56', '2023-09-03 23:51:38', NULL),
(158, '১৯৭১ সালে জর্জ হ্যারিসন কার আহবানে বাংলাদেশ কনসার্টে যোগ দেন ?', 'm', 'Anthony Mascarenhas', 'Peter Shore', 'DP Dhar', 'Ravi Shankar', 'op4', '', 11, 11, 23, 15, '2023-09-02 23:25:28', '2023-09-03 23:51:38', NULL),
(159, 'মুজিবনগর সরকারের অর্থমন্ত্রী ছিলেন -', 'm', 'অধ্যাপক ইউসুফ আলী', 'তাজউদ্দিন আহমেদ', 'ক্যাপ্টেন মনসুর আলী', 'কামরুজ্জামান', 'op3', '', 11, 11, 23, 15, '2023-09-02 23:26:57', '2023-09-03 23:51:38', NULL),
(160, 'সেক্টর-৩ এর সেক্টর কমান্ডার ছিলেন -', 'm', 'মেজর এন.আম.নুরুজ্জামান', 'মেজর শওকত আলী', 'মেজর এম এ জলিল', 'মেজর কাজী নূরুজ্জামান', 'op4', '', 11, 11, 23, 15, '2023-09-02 23:28:17', '2023-09-03 23:51:38', NULL),
(161, 'মুক্তিযুদ্ধকালীন কোন তারিখে বুদ্ধিজীবীদের ওপর ব্যাপক হত্যাকান্ড সংগটিত হয়?', 'm', '২৫ মার্চ ১৯৭১', '১৪ ডিসেম্বর ১৯৭১', '২৬ মার্চ ২৯৭১', '১৬ ডিসেম্বর ১৯৭১', 'op2', '', 11, 11, 23, 15, '2023-09-02 23:29:20', '2023-09-03 23:51:38', NULL),
(162, 'বাংলাদেশের মুক্তিযুদ্ধে অসাধারণ বীরত্ব প্রদর্শনের জন্য সর্বমোট কতজনকে বীরত্বসূচক খেতাব প্রদান করা হয়?', 'm', '৬৭৬ জন', '১৭৫ জন', '৪২৬ জন', '৬৮ জন', 'op1', '', 11, 11, 23, 15, '2023-09-02 23:30:36', '2023-09-03 23:51:38', NULL),
(163, 'আনুষ্ঠানিকভাবে স্বাধীনতার ঘোষণাপত্র কবে জারি করা হয়?', 'm', '১৭ এপ্রিল, ১৯৭১', '১০ এপ্রিল, ১৯৭১', '৭ মার্চ, ১৯৭১', '২৫ মার্চ, ১৯৭১', 'op2', '', 11, 11, 23, 15, '2023-09-02 23:31:36', '2023-09-03 23:51:38', NULL),
(164, 'বীরশ্রেষ্ঠ রুহুল আমিন ছিলেন -', 'm', 'ফ্লাইট লেফটেন্যান্ট', 'ক্যাপ্টেন', 'ল্যান্স নায়েক', 'স্কোয়াড্রন ইঞ্জিনিয়ার', 'op4', '', 11, 11, 23, 15, '2023-09-02 23:32:40', '2023-09-03 23:51:38', NULL),
(165, 'বীরশ্রেষ্ঠ রুহুল আমিন ছিলেন -', 'm', 'ফ্লাইট লেফটেন্যান্ট', 'ক্যাপ্টেন', 'ল্যান্স নায়েক', 'স্কোয়াড্রন ইঞ্জিনিয়ার', 'op4', '', 11, 11, 23, 15, '2023-09-02 23:32:41', '2023-09-03 23:51:38', NULL),
(166, 'জেনারেল নিয়াজী কোথায় আত্নসমর্পণ করেন ?', 'm', 'পল্টন ময়দানে', 'লালবাগে', 'সোহরাওয়ার্দী উদ্যানে', 'ওসমানী উদ্যানে', 'op3', '', 11, 11, 23, 15, '2023-09-02 23:33:39', '2023-09-03 23:51:38', NULL),
(167, 'বাংলাদেশের কোন দুটি স্থান UNICEF WORLD HERITAGE এর অন্তর্ভুক্ত ?', 'm', 'টাঙ্গুয়ার হাওর ও সুন্দরবন', 'কক্সবাজার ও কুয়াকাটা সৈকত', 'লালমাই ও ময়নামতি', 'মহাস্থানগড় ও পাহাড়পুর', 'op1', '', 11, 11, 23, 17, '2023-09-02 23:36:39', '2023-09-03 23:51:38', NULL),
(168, 'ইউনেস্কো কোন সালে বাংলাদেশের সুন্দরবনকে বিশ্ব ঐতিহ্যের অংশ হিসেবে ঘোষণা করে?', 'm', '১৯৯৬', '১৯৯৯', '১৯৯৮', '১৯৯৭', 'op4', '', 11, 11, 23, 17, '2023-09-02 23:37:45', '2023-09-03 23:51:38', NULL),
(169, 'বাংলাদেশের কোন বনাঞ্চল বিশ্ব ঐতিহ্য (World heritage site) হিসেবে স্বীকৃতি পেয়েছে ?', 'm', 'মধুপুরের শালবন', 'পার্বত্য চট্টগ্রামের কাপ্তাই বনাঞ্চল', 'সুন্দরবন', 'সিলেটের লাউয়াছড়া বনাঞ্চল', 'op3', '', 11, 11, 23, 17, '2023-09-02 23:38:58', '2023-09-03 23:51:38', NULL),
(170, 'কোন সংস্থা &#039;বিশ্ব ঐতিহ্য এলাকা&#039; ঘোষণা করেছে ?', 'm', 'UNEP', 'UNESCO', 'WHO', 'WTO', 'op2', '', 11, 11, 23, 17, '2023-09-02 23:40:02', '2023-09-03 23:51:38', NULL),
(171, 'বিশ্ব ঐতিহ্য তালিকায় বাংলাদেশের কতটি স্থান অন্তর্ভুক্ত আছে?', 'm', '৩', '৪', '৫', '৬', 'op1', '', 11, 11, 23, 17, '2023-09-02 23:40:43', '2023-09-03 23:51:38', NULL),
(172, 'ইউনেস্কো সুন্দরবনকে কততম &#039;বিশ্ব ঐতিহ্য&#039; হিসেবে ঘোষণা করে?', 'm', '৫২১ তম', '৫২২তম', '৫২৩ তম', '৫২৪ তম', 'op2', '', 11, 11, 23, 17, '2023-09-02 23:41:58', '2023-09-03 23:51:38', NULL),
(173, 'উপরের ছবিটি কিসের?', 'qi', 'বাংলাদেশর মুক্তিযুদ্ধের।', '৬৯&#039;রের গণঅভ্যুত্থানের', 'ভাষা আন্দোলনের', 'ভারত পাকিস্তান যুদ্ধের', 'op1', '173.jpg', 11, 11, 23, 15, '2023-09-02 23:49:03', '2023-09-03 23:51:38', NULL),
(174, 'উত্তরবঙ্গে বসবাসকারী আদিবাসীদের ভাষা -', 'm', 'হিন্দি', 'মৈথিল্য', 'সাদ্রি', 'কুরুক', 'op4', '', 11, 11, 23, 18, '2023-09-02 23:51:31', '2023-09-03 23:51:38', NULL),
(175, 'ফাল্গুনী পূর্ণিমা&#039; কাদের ধর্মীয় উৎসব ?', 'm', 'চাকমাদের', 'হিন্দুদের', 'খ্রিস্টানদের', 'বৌদ্ধদের', 'op1', '', 11, 11, 23, 18, '2023-09-02 23:52:34', '2023-09-03 23:51:38', NULL),
(176, 'বাংলাদেশে কতটি উপজাতীয় প্রতিষ্ঠান আছে?', 'm', '৬ টি', '৫ টি', '৪ টি', '৩ টি', 'op4', '', 11, 11, 23, 18, '2023-09-02 23:53:26', '2023-09-03 23:51:38', NULL),
(177, 'খিয়াং সম্প্রদায় যেখানে বসবাস করে -', 'm', 'সিলেট', 'কুয়াকাটা', 'পার্বত্য চট্টগ্রাম', 'দিনাজপুর', 'op3', '', 11, 11, 23, 18, '2023-09-02 23:54:34', '2023-09-03 23:51:38', NULL),
(178, '&#039;মারমা&#039; উপজাতিরা বাস করে -', 'm', 'গারো পাহাড়ে', 'বান্দরবানে চিম্বুক পাহাড়ের পাদদেশে', 'দিনাজপুরে', 'সিলেটের জয়ন্তিয়া পাহাড়ের পাদদেশে', 'op2', '', 11, 11, 23, 18, '2023-09-02 23:55:34', '2023-09-03 23:51:38', NULL),
(179, 'বাংলাদেশের উপজাতি কোনটি ?', 'm', 'হস্', 'রাখাইন', 'হটেনটট', 'না', 'op2', '', 11, 11, 23, 18, '2023-09-02 23:56:32', '2023-09-03 23:51:38', NULL),
(180, 'বাংলাদেশের কোন আদিবাসীদের ক্ষেত্রে সম্পত্তির উত্তরাধিকার নীতি মাতৃসূত্রায় ?', 'm', 'গারো', 'রাখাইন', 'চাকমা', 'মুরং', 'op1', '', 11, 11, 23, 18, '2023-09-02 23:57:30', '2023-09-03 23:51:38', NULL),
(181, 'বাংলাদেশের কোন জেলায় হাজং উপজাতি বাস করে?', 'm', 'দিনাজপুর', 'খাগড়াছড়ি', 'নেত্রকোণা', 'বান্দরবান', 'op3', '', 11, 11, 23, 18, '2023-09-03 00:07:14', '2023-09-03 23:51:38', NULL),
(182, 'খাসিয়া উপজাতি বাংলাদেশের কোন জেলায় বাস করে?', 'm', 'ময়মনসিংহ', 'নেত্রকোণা', 'সিলেট', 'পার্বত্য চট্টগ্রাম', 'op3', '', 11, 11, 23, 18, '2023-09-03 00:09:18', '2023-09-03 23:51:38', NULL),
(183, 'কোনটি জন গোষ্ঠীর প্রধান ধর্মীগ্রন্থ ত্রিপিটক ?', 'm', 'ত্রিপুরা', 'মণিপুরি', 'সাঁওতাল', 'চাকমা', 'op4', '', 11, 11, 23, 18, '2023-09-03 00:11:13', '2023-09-03 23:51:38', NULL),
(184, 'উপজাতি সাংস্কৃতিক কেন্দ্রর &#039;বিরিসিরি&#039; কোথায় অবস্থিত?', 'm', 'বান্দরবান', 'খাগড়াছড়ি', 'নেত্রকোনা', 'রাঙ্গামাটি', 'op3', '', 11, 11, 23, 18, '2023-09-03 00:13:19', '2023-09-03 23:51:38', NULL),
(185, 'নিচের কোন উপজাতি ইসলাম ধর্মাবলম্বী?', 'm', 'পাঙন', 'গারো', 'মারমা', 'চাকমা', 'op1', '', 11, 11, 23, 18, '2023-09-03 00:15:24', '2023-09-03 23:51:38', NULL),
(186, 'খুমী উপজাতিরা কোথায় বাস করে?', 'm', 'ময়মনসিংহে', 'বান্দরবানে', 'দিনাজপুরে', 'জামালপুর', 'op2', '', 11, 11, 23, 18, '2023-09-03 00:17:06', '2023-09-03 23:51:38', NULL),
(187, 'বাংলাদেশের ত্রিপুরা আদিবাসী গোষ্ঠী যে ধর্মবিশ্বাসের অনুসারী--', 'm', 'বুদ্ধ', 'খ্রিস্টান', 'সনাতন', 'মুসলমান', 'op3', '', 11, 11, 23, 18, '2023-09-03 00:18:21', '2023-09-03 23:51:38', NULL),
(188, 'বাংলাদেশে বাস নেই এমন উপজাতির নাম -', 'm', 'সাঁওতাল', 'মাওরি', 'মুরং', 'গারো', 'op2', '', 11, 11, 23, 18, '2023-09-03 00:19:57', '2023-09-03 23:51:38', NULL),
(189, 'বাংলাদেশের মারমা উপজাতির বর্ষবরণ অনুষ্ঠান কোনটি ?', 'm', 'ইঙ্গবানী', 'ফাগুয়া', 'বিঝু', 'সাংগ্রাই', 'op4', '', 11, 11, 23, 18, '2023-09-03 00:22:10', '2023-09-03 23:51:38', NULL),
(190, '&#039;বাওয়ালি&#039; কারা?', 'm', 'ভাওয়াল অঞ্চলের বাসিন্দা', 'বাউল সম্প্রদায়', 'সুন্দরবনের গোলপাতা সংগ্রহকারী', 'চট্টগ্রামের বলী খেলোয়াড়', 'op3', '', 11, 11, 23, 18, '2023-09-03 00:24:31', '2023-09-03 23:51:38', NULL),
(191, 'জাতিসংঘের পূর্বসূরি আন্তর্জাতিক প্রতিষ্ঠান কোনটি?', 'm', 'ইউনাইটেড নেশনস', 'লীগ অব নেশনস', 'কম্যুনিটি অব নেশনস', 'এসোসিয়েশনস অব নেশনস', 'op2', '', 11, 11, 24, 19, '2023-09-03 00:30:52', '2023-09-03 23:51:38', NULL),
(192, 'জাতিসংঘের মিলিনিয়াম শীর্ষ সম্মেলন কোথায় অনুষ্ঠিত হয়েছিল?', 'm', 'ওয়াশিংটন ডিসি', 'মেক্সিকো সিটি', 'জেনেভা', 'নিউইয়র্ক', 'op4', '', 11, 11, 24, 19, '2023-09-03 00:32:13', '2023-09-03 23:51:38', NULL),
(193, 'How many countries have accepted &#039;Euro&#039; as their common currency?/ ইউরো সংশ্লিষ্ট যতটি দেশের একক মুদ্রায় পরিণত হয়েছে--', 'm', '১৬', '১৭', '১৮', '১৯', 'op2', '', 11, 11, 24, 19, '2023-09-03 00:33:09', '2023-09-03 23:51:38', NULL),
(194, 'টেকসই উন্নয়ন লক্ষ্য কত বছর মেয়াদি?', 'm', '১৫', '১৬', '১৭', '১৮', 'op1', '', 11, 11, 24, 19, '2023-09-03 00:33:50', '2023-09-03 23:51:38', NULL),
(195, 'ওপেক (OPEC)-এর বর্তমান (২০১৬) সদস্য দেশ কতটি?', 'm', '১১', '১২', '১৩', '১৪', 'op3', '', 11, 11, 24, 19, '2023-09-03 00:34:36', '2023-09-03 23:51:38', NULL),
(196, 'জাতিসংঘ সাধারণ পরিষদের ৭০তম অধিবেশনের প্রেসিডেন্ট কে?', 'm', 'মর্গেন্স লিক্কেটফট (ডেনমার্ক)', 'নাবিল আর আরাবি (মিশর)', 'জেসন স্টলেনবার্গ (নরওয়ে)', 'হাওলিন ঝাও (চীন)', 'op1', '', 11, 11, 24, 19, '2023-09-03 00:35:30', '2023-09-03 23:51:38', NULL),
(197, '&lsquo;নন-এলাইনমেন্ট মোভমেন্ট&rsquo; এর সচিবালয়---তে অবস্থিত?', 'm', 'ঢাকা', 'নয়াদিল্লি', 'জাকার্তা', 'কোনটা সত্য নয়', 'op4', '', 11, 11, 24, 19, '2023-09-03 00:36:30', '2023-09-03 23:51:38', NULL),
(198, 'Interpol-এর বর্তমান (২০১৭) সদস্য দেশ কতটি?', 'm', '১৯৫টি', '১৯৪টি', '১৯৩টি', '১৯২টি', 'op4', '', 11, 11, 24, 19, '2023-09-03 00:37:29', '2023-09-03 23:51:38', NULL),
(199, 'বিশ্ব পর্যটন সংস্থা (UNWTO)-এর বর্তমান ২০১৬ সদস্য দেশ কতটি?', 'm', '১৫৬টি', '১৫৭টি', '১৫৮টি', '১৫৯টি', 'op1', '', 11, 11, 24, 19, '2023-09-03 00:38:16', '2023-09-03 23:51:38', NULL),
(200, 'Which Asian country belongs to the group of G-8 countries?/ জি-৮ এর একমাত্র এশিয়ার দেশ--', 'm', 'Thailand(থাইল্যান্ড)', 'Japan(জাপান)', 'India(ভারত)', 'China(চীন)', 'op2', '', 11, 11, 24, 19, '2023-09-03 00:39:04', '2023-09-03 23:51:38', NULL),
(201, 'প্রেসিডেন্ট-উইড্র উইলসনের 14 points এ কত নম্বর point এ জাতিপুঞ্জের সৃষ্টির কথা উল্লেখ করা হয়েছে?', 'm', '১২', '১৩', '১৪', '১৫', 'op3', '', 11, 11, 24, 19, '2023-09-03 00:39:50', '2023-09-03 23:51:38', NULL),
(202, '&lsquo;ইউনিডো&rsquo; (UNIDO) এর প্রধান কার্যালয় কোথয় অবস্থিত?', 'm', 'টোকিও', 'প্যারিস', 'নিউইয়র্ক', 'ভিয়েনা', 'null', '', 11, 11, 24, 19, '2023-09-03 00:40:38', '2023-09-03 23:51:38', NULL),
(203, 'কোন পরিষদের সুপারিশক্রমে জাতিসংঘে নতুন সদস্য গ্রহণ করা হয়?', 'm', 'অছি পরিষদ', 'সাধারণ পরিষদ', 'নিরাপত্তা পরিষদ', 'অর্থনৈতিক ও সামাজিক পরিষদ', 'op3', '', 11, 11, 24, 19, '2023-09-03 00:41:31', '2023-09-03 23:51:38', NULL),
(204, '&#039;লীগ অব নেশনস&#039; কবে গঠিত হয়?', 'm', '১৯৯৭ সালে', '১৯১৮ সালে', '১৯১৯ সালে', '১৯২০ সালে', 'op4', '', 11, 11, 24, 19, '2023-09-03 00:42:18', '2023-09-03 23:51:38', NULL),
(205, 'সার্ক শীর্ষ সম্মেলনে কোন বিষয়টি আলোচিত হতে পারে না?', 'm', 'কৃষি উন্নয়ন', 'দ্বিপাক্ষিক সমস্যা', 'অবাধ বাণিজ্য', 'সাংস্কৃতিক বিনিময়', 'op2', '', 11, 11, 24, 19, '2023-09-03 00:43:14', '2023-09-03 23:51:38', NULL),
(206, 'এটাও ইতিহাসের শিক্ষা যে, কেউই ইতিহাস থেকে শিক্ষা নেয়না&#039;- বলেছিলেন', 'm', 'উইনস্টোন চার্চিল', 'নেপোলিয়ান বোনাপোর্ট', 'বিসমার্ক', 'কার্ল মার্কস', 'null', '', 11, 11, 24, 20, '2023-09-03 00:44:28', '2023-09-03 23:51:38', NULL),
(207, '&lsquo;মিডিয়া মোগল&rsquo; হিসবে পরিচিত-', 'm', 'রূপার্ট মারডক', 'বিল গেটস', 'টাটা', 'রকফেলার', 'null', '', 11, 11, 24, 20, '2023-09-03 00:45:18', '2023-09-03 23:51:38', NULL),
(208, 'ভারতের প্রেসিডেন্ট আবুল পাকির জয়নুল আবেদীন আবদুল কালাম কি নামে বহুল পরিচিত?', 'm', 'গোল্ডেন ম্যান', 'মিসাইল ম্যান', 'হিরু অফ ইন্ডিয়া', 'ভারতরত্ন', 'op2', '', 11, 11, 24, 20, '2023-09-03 00:46:11', '2023-09-03 23:51:38', NULL),
(209, 'Man is the measure of all things, উক্তিটি কার?', 'm', 'জর্জিয়াস', 'স্বামী বিবেকানন্দ', 'প্রোটাগোরাস', 'আল্লামা ইকবাল', 'op3', '', 11, 11, 24, 20, '2023-09-03 00:47:01', '2023-09-03 23:51:38', NULL),
(210, '&lsquo;দোলনা থেকে কবর পর্যন্ত জ্ঞান অন্বেষণ কর&rdquo; উক্তিটি-', 'm', 'হযরত মুহম্মদের (সাঃ)', 'হযরত আলীর (রাঃ)', 'লোকমান হাকিমের', 'হযরত শেখ সাদীর (রাঃ)', 'op1', '', 11, 11, 24, 20, '2023-09-03 00:47:53', '2023-09-03 23:51:38', NULL),
(211, '&quot;Man is a political animal&quot; - who said this?', 'm', 'Dante', 'Plato', 'Aristotle', 'Socrates', 'op3', '', 11, 11, 24, 20, '2023-09-03 00:48:46', '2023-09-03 23:51:38', NULL),
(212, 'Who is known as the &#039;Lady of the lamp&#039;?/&lsquo;লেডী উইথ দি ল্যাপ&rsquo; কে?', 'm', 'Sorojini Naidu', 'Florence Nightingale', 'Hellen Killer', 'Madame Teresa', 'op2', '', 11, 11, 24, 20, '2023-09-03 00:49:36', '2023-09-03 23:51:38', NULL),
(213, '&lsquo;আরবের নাইটিঙ্গেল&rsquo; বলা হয়-', 'm', 'উম্মে কুলসুম', 'উম্মে হাফিজা', 'উম্মে সাদিয়া', 'উম্মে মারিয়ম', 'op1', '', 11, 11, 24, 20, '2023-09-03 00:50:28', '2023-09-03 23:51:38', NULL),
(214, 'Man is born free, but is everywhere in chains-কার উক্তি?', 'm', 'ভলতেয়ার', 'কাল মার্কস', 'জেএসমিল', 'রুশো', 'op4', '', 11, 11, 24, 20, '2023-09-03 00:51:21', '2023-09-03 23:51:38', NULL),
(215, 'কে বলেছেন &lsquo;কাপুরুষেরা মরার আগে বহুবার মারা যায়, সাহসীরা একবার মৃত্যুবরণ করে&rsquo;।', 'm', 'উইলিয়াম শেক্সপিয়ার', 'রবীন্দ্রনাথ ঠাকুর', 'উইনস্টন চার্চিল', 'অলিভার গোল্ডস্মিথ', 'op1', '', 11, 11, 24, 20, '2023-09-03 00:52:23', '2023-09-03 23:51:38', NULL),
(216, 'First women Prime Minister in the world- অথবা, বিশ্বের প্রথম মহিলা প্রধানমন্ত্রী কে?', 'm', 'বেনজির ভুট্টো(Benazir Bhutto)', 'খালেদা জিয়া(Khalada Zia)', 'শ্রীমাভো বন্দরনায়েক(Sirimavo Bandaranaike)', 'কোনটিই নয়(None of these)', 'op3', '', 11, 11, 24, 20, '2023-09-03 00:53:16', '2023-09-03 23:51:38', NULL);
INSERT INTO `quizzes` (`id`, `question`, `type`, `op1`, `op2`, `op3`, `op4`, `ans`, `qimage`, `user_id`, `category_id`, `subcategory_id`, `topic_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(217, 'কোন দেশের প্রধানমন্ত্রী বিশ্বের প্রথম মহিলা প্রধানমন্ত্রী?', 'm', 'ভারত', 'যুক্তরাজ্য', 'ইসরাইল', 'শ্রীলংকা', 'op4', '', 11, 11, 24, 20, '2023-09-03 00:54:04', '2023-09-03 23:51:38', NULL),
(218, 'যে রাষ্ট্রের মহিলাদের সামরিক কার্যক্রমে অংশগ্রহণ বাধ্যতামূলক-', 'm', 'ইসরায়েল', 'সুইজারল্যান্ড', 'সুইডেন', 'তুরস্ক', 'op1', '', 11, 11, 24, 20, '2023-09-03 00:54:54', '2023-09-03 23:51:38', NULL),
(219, 'কে &lsquo;ডেজার্ট ফক্স&rsquo; নামে পরিচিত?', 'm', 'আনোয়ার সাদাত', 'কামাল আতাতুর্ক', 'মার্শাল টিটো', 'ফিল্ড মার্শাল রোমেল', 'op4', '', 11, 11, 24, 20, '2023-09-03 00:55:48', '2023-09-03 23:51:38', NULL),
(220, 'লিটল কর্পোরেল&rsquo; কার উপাধি?', 'm', 'লাল বাহাদুর শাস্ত্রী', 'নেপোলিয়ান বেনপোর্ট', 'সাদা বাহাদুর শাস্ত্রী', 'আল খাওয়াজমি', 'op2', '', 11, 11, 24, 20, '2023-09-03 00:56:43', '2023-09-03 23:51:38', NULL),
(221, 'Daughter of the Eastকাকে বলা হয়?', 'm', 'বেনজির ভুট্টো', 'অং সান সূচী', 'ইন্দিরা গান্ধি', 'সরোজিনী নাইডু', 'op1', '', 11, 11, 24, 20, '2023-09-03 00:57:38', '2023-09-03 23:51:38', NULL),
(222, 'The diagram has the shape of a', 'm', 'square', 'rectangle', 'triangle', 'trapezium.', 'op2', '222.jpg', 1, 4, 20, 21, '2023-09-03 15:27:53', '2023-09-03 23:51:38', NULL),
(223, 'The diagram has the shape of a', 'qi', 'rectangle', 'square', 'circle', 'parallelogram.', 'op2', '223.jpg', 1, 4, 20, 14, '2023-09-03 15:53:28', '2023-09-03 23:51:38', NULL),
(224, 'The diagram has the shape of a', 'qi', 'circle', 'rectangle', 'square', 'triangle.', 'op4', '224.jpg', 1, 4, 20, 14, '2023-09-03 15:55:58', '2023-09-03 23:51:38', NULL),
(225, 'The diagram has the shape of a', 'm', 'rectangle', 'square', 'parallelogram', 'circle.', 'op3', '225.jpg', 1, 4, 20, 21, '2023-09-03 15:59:27', '2023-09-03 23:51:38', NULL),
(226, 'The diagram has the shape of a', 'qi', 'circle', 'square', 'rectangle', 'parallelogram.', 'op1', '226.jpg', 1, 4, 20, 21, '2023-09-03 16:10:09', '2023-09-03 23:51:38', NULL),
(227, 'The diagram has the shape of a', 'qi', 'circle', 'parallelogram', 'rectangle', 'trapezium.', 'op4', '227.jpg', 1, 4, 20, 21, '2023-09-03 16:11:54', '2023-09-03 23:51:38', NULL),
(228, 'The perimeter of the figure is', 'qi', '7 cm', '14 cm', '12 cm', '24 cm.', 'op2', '228.jpg', 1, 4, 20, 21, '2023-09-04 18:22:56', '2023-09-04 18:26:34', NULL),
(229, 'The area of the figure is', 'qi', '8 cm&sup2;', '6 cm&sup2;', '12 cm&sup2;', '16 cm&sup2;', 'op2', '229.jpg', 1, 4, 20, 21, '2023-09-04 18:28:32', '2023-09-04 18:28:32', NULL),
(230, 'The perimeter of the figure is', 'qi', '5 cm', '10 cm', '4 cm', '8 cm.', 'op2', '230.jpg', 1, 4, 20, 21, '2023-09-04 18:30:30', '2023-09-04 18:30:30', NULL),
(231, 'The area of the figure is', 'qi', '6 cm&sup2;', '12 cm&sup2;', '5 cm&sup2;', '10 cm&sup2;', 'op1', '231.jpg', 1, 4, 20, 21, '2023-09-04 18:32:24', '2023-09-04 18:32:24', NULL),
(232, 'The perimeter of the figure is', 'qi', '12 cm', '24 cm', '6 cm', '60 cm.', 'op1', '232.jpg', 1, 4, 20, 21, '2023-09-04 18:34:26', '2023-09-04 18:34:26', NULL),
(233, 'The area of the figure is', 'qi', '9 cm&sup2;', '18 cm&sup2;', '12 cm&sup2;', '15 cm&sup2;', 'op1', '233.jpg', 1, 4, 20, 21, '2023-09-04 18:36:24', '2023-09-04 18:36:24', NULL),
(234, 'The perimeter of the figure is', 'qi', '4 cm', '6 cm', '8 cm', '12 cm.', 'op3', '234.jpg', 1, 4, 20, 21, '2023-09-04 18:37:45', '2023-09-04 18:37:45', NULL),
(235, 'The area of the figure is', 'qi', '16 cm&sup2;', '8 cm&sup2;', '4 cm&sup2;', '12 cm&sup2;', 'op1', '235.jpg', 1, 4, 20, 21, '2023-09-04 18:39:23', '2023-09-04 18:39:23', NULL),
(236, 'The area of the figure is', 'm', '77 cm²', '154 cm²', '38.5 cm²', 'none of these', 'op1', '236.jpg', 1, 4, 20, 21, '2023-09-04 18:40:51', '2023-09-04 18:41:33', NULL),
(237, 'The area of the trapezium is', 'qi', '9 cm&sup2;', '6 cm&sup2;', '7 cm&sup2;', '24 cm&sup2;', 'op1', '237.jpg', 1, 4, 20, 21, '2023-09-04 18:43:21', '2023-09-04 18:43:21', NULL),
(238, 'The area of the trapezium is', 'qi', '6 cm²', '4 cm²', '3 cm²', '9 cm²', 'op1', '238.jpg', 1, 4, 20, 21, '2023-09-04 18:45:12', '2023-09-04 18:46:29', NULL),
(239, 'The perimeter of the trapezium is', 'qi', '12 cm', '24 cm', '6 cm', '18 cm.', 'op1', '239.jpg', 1, 4, 20, 21, '2023-09-04 18:48:36', '2023-09-04 18:48:36', NULL),
(240, 'The area of the quadrilateral is', 'qi', '3.75 cm&sup2;', '7.5 cm&sup2;', '3 cm&sup2;', '10 cm&sup2;', 'op1', '240.jpg', 1, 4, 20, 21, '2023-09-04 18:50:07', '2023-09-04 18:50:07', NULL),
(241, 'The area of the quadrilateral is', 'qi', '10 cm&sup2;', '5 cm&sup2;', '20 cm&sup2;', '15 cm&sup2;', 'op1', '241.jpg', 1, 4, 20, 21, '2023-09-04 18:51:45', '2023-09-04 18:51:45', NULL),
(242, 'The area of the quadrilateral is', 'qi', '6 cm&sup2;', '12 cm&sup2;', '3 cm&sup2;', '8 cm&sup2;', 'op1', '242.jpg', 1, 4, 20, 21, '2023-09-04 18:53:06', '2023-09-04 18:53:06', NULL),
(243, 'ভারতীয় গণিতের যুবরাজ হিসেবে কে পরিচিত?', 'm', 'শ্রীনিবাস রামানুজন', 'পিথাগোরাস', 'আর্কিমিডিস', 'কোনটি না', 'op1', '', 1, 1, 1, 4, '2023-09-11 07:43:52', '2023-09-11 07:43:52', NULL),
(244, 'চিরস্থায়ী বন্দোবস্ত চালু করেন -', 'm', 'হেস্টিংস', 'কর্ণওয়ালিস', 'ডালহৌসি', 'কোনটি না', 'op2', '', 1, 1, 1, 4, '2023-09-11 07:49:28', '2023-09-11 07:49:28', NULL),
(245, 'মহলওয়ারি ব্যবস্থা চালু হয়েছিল -', 'm', 'বাংলায়', 'উত্তর ভারতে', 'দক্ষিণ ভারতে', 'কোনটি না', 'null', '', 1, 1, 1, 4, '2023-09-11 07:50:53', '2023-09-11 07:50:53', NULL),
(246, 'Everything in React is a _____________', 'm', 'Module', 'Component', 'Package', 'Class', 'op2', '', 1, 6, 25, 22, '2023-09-11 07:59:32', '2023-09-11 09:02:20', NULL),
(247, 'In which directory React Components are saved?', 'm', 'Inside js/components/', 'Inside vendor/components/', 'Inside vendor/', 'Inside vendor/', 'op1', '', 1, 6, 25, 22, '2023-09-11 09:01:41', '2023-09-11 09:01:41', NULL),
(248, 'How many elements does a react component return?', 'm', '2 Elements', '1 Element', 'Multiple Elements', 'None of These', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:03:19', '2023-09-11 09:03:19', NULL),
(249, 'What is state in React?', 'm', 'A persistant storage.', 'An internal data store (object) of a component.', 'Transpiles all the Javascript down into one file', 'Runs react local development server.', 'op2', '', 1, 6, 25, 22, '2023-09-11 09:05:11', '2023-09-11 09:05:11', NULL),
(250, 'What is Babel?', 'm', 'A transpiler.', 'An interpreter', 'A Compiler', 'Both Compiler and Transpilar', 'op4', '', 1, 6, 25, 22, '2023-09-11 09:06:32', '2023-09-11 09:06:32', NULL),
(251, 'What does the &quot;webpack&quot; command do?', 'm', 'Transpiles all the Javascript down into one file', 'Runs react local development server.', 'A module bundler', 'None', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:07:24', '2023-09-11 09:07:24', NULL),
(252, 'What port is the default where the webpack-dev-server will run?', 'm', '3000', '8070', '3306', 'None', 'op2', '', 1, 6, 25, 22, '2023-09-11 09:07:30', '2023-09-11 09:07:30', NULL),
(253, 'What is ReactJS?', 'm', 'Server side Framework', 'User-interface framework', 'A Library for building interaction interfaces', 'None of These', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:09:38', '2023-09-11 09:09:38', NULL),
(254, 'What are the two ways that data gets handled in React?', 'm', 'state &amp; props', 'services &amp; components', 'setState', 'render with arguments', 'op1', '', 1, 6, 25, 22, '2023-09-11 09:11:24', '2023-09-11 09:11:24', NULL),
(255, 'In React what is used to pass data to a component from outside?', 'm', 'setState', 'render with arguments', 'props', 'PropTypes', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:12:41', '2023-09-11 09:12:41', NULL),
(256, 'How can you access the state of a component from inside of a member function?', 'm', 'this.getState()', 'this.values', 'this.prototype.stateValue', 'this.state', 'op2', '', 1, 6, 25, 22, '2023-09-11 09:13:38', '2023-09-11 09:13:38', NULL),
(257, 'Props are __________ into other components', 'm', 'Methods', 'Injected', 'Both 1 &amp; 2', 'All of the above', 'op1', '', 1, 6, 25, 22, '2023-09-11 09:15:00', '2023-09-11 09:15:00', NULL),
(258, 'What is a react.js in MVC?', 'm', 'Middleware', 'Controller', 'Model', 'Router', 'op2', '', 1, 6, 25, 22, '2023-09-11 09:16:00', '2023-09-11 09:16:00', NULL),
(259, 'ReactJS uses _____ to increase performance', 'm', 'Original DOM', 'Virtual DOM', 'Both 1 &amp; 2', 'None of above', 'op2', '', 1, 6, 25, 22, '2023-09-11 09:17:19', '2023-09-11 09:17:19', NULL),
(260, 'Keys are given to a list of elements in react. These keys should be &ndash;', 'm', 'Do not requires to be unique', 'Unique in the DOM', 'Unique among the siblings only', 'All of the above', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:19:17', '2023-09-11 09:19:17', NULL),
(261, 'Which of the following is the correct data flow sequence of flux concept?', 'm', 'Dispatcher-&gt;Action-&gt;Store-&gt;View', 'Action-&gt;Dispatcher-&gt;View-&gt;Store', 'Action-&gt;Dispatcher-&gt;Store-&gt;View', 'Action-&gt;Store-&gt;Dispatcher-&gt;View', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:20:18', '2023-09-11 09:20:18', NULL),
(262, 'What is the name of React.js Developer ?', 'm', 'Jordan mike', 'Jordan Lee', 'Jordan Walke', 'Tim Lee', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:21:49', '2023-09-11 09:21:49', NULL),
(263, 'Who Develop React.js?', 'm', 'Apple', 'Facebook', 'Twitter', 'Google', 'op2', '', 1, 6, 25, 22, '2023-09-11 09:22:31', '2023-09-11 09:22:31', NULL),
(264, '.............. helps react for keeping their data unidirectional.', 'm', 'JSX', 'Flux', 'Dom', 'Props', 'op2', '', 1, 6, 25, 22, '2023-09-11 09:23:18', '2023-09-11 09:23:18', NULL),
(265, 'We can go for keys when there is possibility that our user could change the data', 'm', 'Keys', 'ref', 'both', 'none of above', 'op1', '', 1, 6, 25, 22, '2023-09-11 09:24:01', '2023-09-11 09:24:01', NULL),
(266, 'React merges the object you provide into the current state using __________.', 'm', 'setState()', 'State()', 'Keys', 'Props', 'op1', '', 1, 6, 25, 22, '2023-09-11 09:25:37', '2023-09-11 09:25:37', NULL),
(267, '_________ can be done while more than one element needs to be returned from a component.', 'm', 'Abstraction', 'Packing', 'Insulation', 'Wrapping', 'op4', '', 1, 6, 25, 22, '2023-09-11 09:26:20', '2023-09-11 09:26:20', NULL),
(268, 'Lifecycle methods are mainly used ___________.', 'm', 'To keep track of event history', 'to enhance components', 'freeup resources', 'none of the options', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:27:20', '2023-09-11 09:27:20', NULL),
(269, 'Ref is used to refer an element / component returned by _______________.', 'm', 'React ()', 'Render ()', 'Reduce ()', 'Refer ()', 'op2', '', 1, 6, 25, 22, '2023-09-11 09:28:16', '2023-09-11 09:28:16', NULL),
(270, 'In JSX most of the errors can be caught during _________.', 'm', 'Interpretation', 'Execution', 'Compilation', 'Build', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:29:43', '2023-09-11 09:29:43', NULL),
(271, 'JSX is faster because it performs ____________ while compiling code to JavaScript', 'm', 'Modification', 'Compression', 'Optimization', 'Encryption', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:30:42', '2023-09-11 09:30:42', NULL),
(272, 'What is the smallest building block of ReactJS?', 'm', 'components', 'props', 'elements', 'none of the options', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:32:21', '2023-09-11 09:32:21', NULL),
(273, 'React considers everything as _______.', 'm', 'User interface', 'elements', 'components', 'Objects', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:33:46', '2023-09-11 09:33:46', NULL),
(274, 'React keeps track of what items have changed, been added, or been removed from a list using ________.', 'm', 'state', 'props', 'keys', 'ref', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:35:10', '2023-09-11 09:35:10', NULL),
(275, 'React is mainly for building _____________.', 'm', 'Database', 'Connectivity', 'User interface', 'Design platform', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:36:23', '2023-09-11 09:36:23', NULL),
(276, 'React supports all the syntax of _________________.', 'm', 'ES6', 'Redux', 'None of options', 'Native Java', 'op1', '', 1, 6, 25, 22, '2023-09-11 09:38:02', '2023-09-11 09:38:02', NULL),
(277, 'In React state can be accessed using ________.', 'm', 'current', 'state', 'current()', 'state()', 'op2', '', 1, 6, 25, 22, '2023-09-11 09:42:13', '2023-09-11 09:42:13', NULL),
(278, 'How can we prevent default behavior in React?', 'm', 'using avoidDefault()', 'using revokeDefault()', 'Using preventDefault()', 'None of the options', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:43:11', '2023-09-11 09:43:11', NULL),
(279, 'Invoked once, only on the client, after rendering occurs', 'm', 'componentWillUnmount', 'shouldComponentUpdate', 'componentWillMount', 'componentDidMount', 'op4', '', 1, 6, 25, 22, '2023-09-11 09:44:11', '2023-09-11 09:44:11', NULL),
(280, 'Life cycle methods of a components fall under following categories?', 'm', 'Mounting, Updating, Unmounting', 'Mounting, Unmounting', 'Mounting, Updating', 'None of these', 'op1', '', 1, 6, 25, 22, '2023-09-11 09:45:03', '2023-09-11 09:45:03', NULL),
(281, 'Which is used to pass the data from parent to child?', 'm', 'render', 'Components', 'props', 'state', 'op3', '', 1, 6, 25, 22, '2023-09-11 09:46:28', '2023-09-11 09:46:28', NULL),
(282, 'Which is used to update the state?', 'm', 'setInitialnumber', 'setState', 'setnumber', 'setNewnumber', 'op2', '', 1, 6, 25, 22, '2023-09-11 09:47:45', '2023-09-11 09:47:45', NULL),
(283, 'বাংলা ভাষায় দীর্ঘ স্বরবর্ণের সংখ্যা কয়টি ?', 'm', '৫ টি', '৭ টি', '৩ টি', '৯টি', 'op2', '', 1, 10, 26, 23, '2023-09-11 17:21:12', '2023-09-11 17:21:12', NULL),
(284, 'ত, থ, দ, ধ, ন হচ্ছে-', 'm', 'তালব্যবর্ণ', 'কণ্ঠবর্ণ', 'দন্ত্যবর্ণ', 'মূর্ধন্যবর্ণ', 'op3', '', 1, 10, 26, 23, '2023-09-11 17:25:21', '2023-09-11 17:25:21', NULL),
(285, 'নিচের কোনটি অল্পপ্রাণ ধ্বনি?', 'm', 'ঘ', 'ঠ', 'প', 'থ', 'op3', '', 1, 10, 26, 23, '2023-09-11 17:38:04', '2023-09-11 17:38:04', NULL),
(286, 'নিচের কোনটি অল্পপ্রাণ ধ্বনি?', 'm', 'ঘ', 'ঠ', 'প', 'থ', 'op3', '', 1, 10, 26, 23, '2023-09-11 17:39:14', '2023-09-11 17:39:14', NULL),
(287, 'নিচের কোনটি অল্পপ্রাণ ধ্বনি?', 'm', 'ঘ', 'ঠ', 'প', 'থ', 'op3', '', 1, 10, 26, 23, '2023-09-11 17:40:13', '2023-09-11 17:40:13', NULL),
(288, 'নিচের কোনটি অল্পপ্রাণ ধ্বনি?', 'm', 'ঘ', 'ঠ', 'প', 'থ', 'op3', '', 1, 10, 26, 23, '2023-09-11 17:46:16', '2023-09-11 17:46:16', NULL),
(289, 'নিচের কোনটি অল্পপ্রাণ ধ্বনি?', 'm', 'ঘ', 'ঠ', 'প', 'থ', 'op3', '', 1, 10, 26, 23, '2023-09-11 17:47:15', '2023-09-11 17:47:15', NULL),
(290, 'নিচের কোনটি অল্পপ্রাণ ধ্বনি?', 'm', 'ঘ', 'ঠ', 'প', 'থ', 'op3', '', 1, 10, 26, 23, '2023-09-11 17:51:16', '2023-09-11 17:51:16', NULL),
(291, 'নিচের কোনটি অল্পপ্রাণ ধ্বনি?', 'm', 'ঘ', 'ঠ', 'প', 'থ', 'op3', '', 1, 10, 26, 23, '2023-09-11 17:51:56', '2023-09-11 17:51:56', NULL),
(292, 'যে যে বর্ণের সমন্বয়ে &lsquo;ষ্ণ&rsquo; যুক্তবর্ণটি গঠিত হয়েছে, সেগুলো নির্দেশ করুন-', 'm', 'ষ + ণ', 'ষ + ঞ', 'ষ + ন', 'ষ + ঙ', 'op1', '', 1, 10, 26, 23, '2023-09-11 17:57:49', '2023-09-11 17:57:49', NULL),
(293, 'কোন ধ্বনি উচ্চারণের সময় ফুসফুস তাড়িত বাতাস মুখ বিবরের কোথাও না কোথাও বাধা পায়?', 'm', 'কণ্ঠধ্বনি', 'স্বরধ্বনি', 'ব্যঞ্জনধ্বনি', 'মিশ্র ধ্বনি', 'op3', '', 1, 10, 26, 23, '2023-09-11 18:01:07', '2023-09-11 18:01:07', NULL),
(294, 'বর্গীয় এবং অন্তঃস্থ ব -এর মধ্যে কিসে কোনো পার্থক্য নেই ?', 'm', 'বিন্যাসে', 'আকৃতিতে', 'অবস্থানে', 'উচ্চারণে', 'op2', '', 1, 10, 26, 23, '2023-09-11 18:02:56', '2023-09-11 18:02:56', NULL),
(295, 'বর্গীয় এবং অন্তঃস্থ ব -এর মধ্যে কিসে কোনো পার্থক্য নেই ?', 'm', 'বিন্যাসে', 'আকৃতিতে', 'অবস্থানে', 'উচ্চারণে', 'op2', '', 1, 10, 26, 23, '2023-09-11 18:03:48', '2023-09-11 18:03:48', NULL),
(296, 'বর্গীয় এবং অন্তঃস্থ ব -এর মধ্যে কিসে কোনো পার্থক্য নেই ?', 'm', 'বিন্যাসে', 'আকৃতিতে', 'অবস্থানে', 'উচ্চারণে', 'op2', '', 1, 10, 26, 23, '2023-09-11 18:04:12', '2023-09-11 18:04:12', NULL),
(297, 'বাংলা ভাষায় ব্যবহৃত অর্ধমাত্রার বর্ণগুলোর মধ্যে কতটি স্বরবর্ণের?', 'm', '৩টি', '১টি', '২টি', '৪টি', 'op2', '', 1, 10, 26, 23, '2023-09-11 18:07:11', '2023-09-11 18:07:11', NULL),
(298, 'নিচের কোন বর্ণগুলো কখনো শব্দের প্রথমে আসে না?', 'm', 'ঙ ং ঞ ণ', 'ন ঝ ধ ঙ', 'থ ন ধ', 'কোনোটিই নয়', 'null', '', 1, 10, 26, 23, '2023-09-11 18:10:17', '2023-09-11 18:10:17', NULL),
(299, 'অঘোষ অল্পপ্রাণ দ্যোতিত বর্ণ কয়টি?', 'm', '২ টি', '৫ টি', '৬ টি', '৩ টি', 'op4', '', 1, 10, 26, 23, '2023-09-11 18:13:45', '2023-09-11 18:13:45', NULL),
(300, 'বাংলা ভাষায় পরাশ্রয়ী ধ্বনি কতটি ?', 'm', '২ টি', '৪ টি', '৩ টি', '৫ টি', 'null', '', 1, 10, 26, 23, '2023-09-11 18:15:30', '2023-09-11 18:15:30', NULL),
(301, 'বাংলা ভাষার পরাশ্রয়ী ধ্বনি কতটি?', 'm', '২টি', '৪টি', '৩টি', '৫টি', 'op3', '', 1, 10, 26, 23, '2023-09-11 18:47:03', '2023-09-11 18:47:03', NULL),
(304, 'Test Question', 'qi', 'as', 'fe', 'ds', 'ddf', 'op4', '302.jpg', 1, 10, 27, 24, '2023-07-31 06:44:01', '2023-07-31 06:44:01', NULL),
(305, 'Tesst cc', 'qi', 'b', 'b hbjb', 'ggfh', 'bubu', 'op2', '305png', 1, 10, 27, 24, '2023-08-01 00:34:15', '2023-08-01 00:34:15', NULL),
(306, 'When it comes to virtualization, what is a host?', 'm', 'A computer that hosts a service.', 'A computer that hosts virtual machines', 'A computer that hosts Windows Server 2012r2-2016', 'A computer that can run and operate hosts', 'op2', '', 1, 12, 31, 25, '2023-08-12 02:32:15', '2023-08-12 02:32:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `active` set('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `description`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Bangla', 'Bengali language', '1', '2023-07-13 21:47:48', '2023-07-29 07:09:24', NULL),
(2, 4, 'Bangla', 'Bangla', '1', '2023-07-13 21:48:11', '2023-07-29 07:07:10', NULL),
(3, 1, 'Mathematic', 'Karok and FT', '0', '2023-07-14 15:25:49', '2023-07-14 20:28:56', NULL),
(4, 7, 'Mathematic', 'Mathematic', '1', '2023-07-14 15:28:44', '2023-09-06 11:20:45', NULL),
(5, 5, 'Bangla', 'Bangla', '1', '2023-07-15 16:29:07', '2023-07-29 07:12:09', NULL),
(6, 6, 'HTML', 'IT Scholarship Programme', '1', '2023-07-16 22:20:07', '2023-07-16 22:20:07', NULL),
(7, 6, 'JavaScript', 'JavaScript', '1', '2023-07-29 06:34:22', '2023-07-29 07:43:26', NULL),
(8, 6, 'CSS', 'CSS 3', '1', '2023-07-29 06:34:32', '2023-07-29 07:44:16', NULL),
(9, 6, 'Bootstrap', 'Bootstrap', '1', '2023-07-29 06:34:49', '2023-07-29 07:45:09', NULL),
(10, 6, 'Angular', 'Angular', '1', '2023-07-29 06:35:01', '2023-07-29 07:47:19', NULL),
(11, 6, 'Laravel', 'Laravel', '1', '2023-07-29 07:31:07', '2023-07-29 07:48:19', NULL),
(12, 6, 'PHP', 'PHP', '1', '2023-07-29 07:59:40', '2023-07-29 07:59:40', NULL),
(13, 2, 'Bangla', 'Bangla', '1', '2023-07-29 07:03:58', '2023-07-29 07:03:58', NULL),
(14, 2, 'English', 'English', '1', '2023-07-29 07:04:11', '2023-07-29 07:04:11', NULL),
(15, 3, 'Bangla', 'Bangla', '1', '2023-07-29 07:04:33', '2023-07-29 07:04:33', NULL),
(16, 3, 'English', 'English', '1', '2023-07-29 07:04:49', '2023-07-29 07:04:49', NULL),
(17, 5, 'English', 'English', '1', '2023-07-29 07:07:40', '2023-09-02 12:42:43', NULL),
(18, 7, 'English', 'English', '1', '2023-07-29 07:12:37', '2023-09-06 11:19:43', NULL),
(19, 5, 'Science', 'Science', '1', '2023-07-29 07:12:55', '2023-07-29 07:12:55', NULL),
(20, 4, 'Mathematic', 'Mathematic', '1', '2023-09-02 12:36:59', '2023-09-02 12:36:59', NULL),
(21, 4, 'English', 'English', '1', '2023-09-02 12:38:14', '2023-09-02 12:38:14', NULL),
(22, 5, 'Mathematic', 'Mathematic', '1', '2023-09-02 12:38:36', '2023-09-02 12:43:05', NULL),
(23, 11, 'Banglaedesh', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', '1', '2023-09-02 23:05:40', '2023-09-02 23:05:40', NULL),
(24, 11, 'International', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', '1', '2023-09-02 23:12:15', '2023-09-02 23:12:15', NULL),
(25, 6, 'React', 'React MCQ', '1', '2023-09-11 07:53:37', '2023-09-11 07:53:37', NULL),
(26, 10, 'Bangla', 'Bangla', '1', '2023-09-11 16:58:48', '2023-09-11 16:58:48', NULL),
(27, 10, 'English', 'English', '1', '2023-09-11 17:02:46', '2023-09-11 17:02:46', NULL),
(28, 10, 'Mathematic', 'Mathematic', '1', '2023-09-11 17:03:31', '2023-09-11 17:03:31', NULL),
(29, 10, 'History', 'History', '1', '2023-09-11 17:04:41', '2023-09-11 17:04:41', NULL),
(30, 2, 'Math', 'Math Quiz', '1', '2023-08-09 04:19:48', '2023-08-09 04:19:48', NULL),
(31, 12, 'Server 2016', 'Domain,Active Directory,Core,IT configuration etc', '1', '2023-08-12 02:27:03', '2023-08-12 02:27:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thanas`
--

CREATE TABLE `thanas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bn_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanas`
--

INSERT INTO `thanas` (`id`, `district_id`, `name`, `bn_name`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Debidwar', 'দেবিদ্বার', 'debidwar.comilla.gov.bd', NULL, NULL, NULL),
(2, 1, 'Barura', 'বরুড়া', 'barura.comilla.gov.bd', NULL, NULL, NULL),
(3, 1, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 'brahmanpara.comilla.gov.bd', NULL, NULL, NULL),
(4, 1, 'Chandina', 'চান্দিনা', 'chandina.comilla.gov.bd', NULL, NULL, NULL),
(5, 1, 'Chauddagram', 'চৌদ্দগ্রাম', 'chauddagram.comilla.gov.bd', NULL, NULL, NULL),
(6, 1, 'Daudkandi', 'দাউদকান্দি', 'daudkandi.comilla.gov.bd', NULL, NULL, NULL),
(7, 1, 'Homna', 'হোমনা', 'homna.comilla.gov.bd', NULL, NULL, NULL),
(8, 1, 'Laksam', 'লাকসাম', 'laksam.comilla.gov.bd', NULL, NULL, NULL),
(9, 1, 'Muradnagar', 'মুরাদনগর', 'muradnagar.comilla.gov.bd', NULL, NULL, NULL),
(10, 1, 'Nangalkot', 'নাঙ্গলকোট', 'nangalkot.comilla.gov.bd', NULL, NULL, NULL),
(11, 1, 'Comilla Sadar', 'কুমিল্লা সদর', 'comillasadar.comilla.gov.bd', NULL, NULL, NULL),
(12, 1, 'Meghna', 'মেঘনা', 'meghna.comilla.gov.bd', NULL, NULL, NULL),
(13, 1, 'Monohargonj', 'মনোহরগঞ্জ', 'monohargonj.comilla.gov.bd', NULL, NULL, NULL),
(14, 1, 'Sadarsouth', 'সদর দক্ষিণ', 'sadarsouth.comilla.gov.bd', NULL, NULL, NULL),
(15, 1, 'Titas', 'তিতাস', 'titas.comilla.gov.bd', NULL, NULL, NULL),
(16, 1, 'Burichang', 'বুড়িচং', 'burichang.comilla.gov.bd', NULL, NULL, NULL),
(17, 1, 'Lalmai', 'লালমাই', 'lalmai.comilla.gov.bd', NULL, NULL, NULL),
(18, 2, 'Chhagalnaiya', 'ছাগলনাইয়া', 'chhagalnaiya.feni.gov.bd', NULL, NULL, NULL),
(19, 2, 'Feni Sadar', 'ফেনী সদর', 'sadar.feni.gov.bd', NULL, NULL, NULL),
(20, 2, 'Sonagazi', 'সোনাগাজী', 'sonagazi.feni.gov.bd', NULL, NULL, NULL),
(21, 2, 'Fulgazi', 'ফুলগাজী', 'fulgazi.feni.gov.bd', NULL, NULL, NULL),
(22, 2, 'Parshuram', 'পরশুরাম', 'parshuram.feni.gov.bd', NULL, NULL, NULL),
(23, 2, 'Daganbhuiyan', 'দাগনভূঞা', 'daganbhuiyan.feni.gov.bd', NULL, NULL, NULL),
(24, 3, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 'sadar.brahmanbaria.gov.bd', NULL, NULL, NULL),
(25, 3, 'Kasba', 'কসবা', 'kasba.brahmanbaria.gov.bd', NULL, NULL, NULL),
(26, 3, 'Nasirnagar', 'নাসিরনগর', 'nasirnagar.brahmanbaria.gov.bd', NULL, NULL, NULL),
(27, 3, 'Sarail', 'সরাইল', 'sarail.brahmanbaria.gov.bd', NULL, NULL, NULL),
(28, 3, 'Ashuganj', 'আশুগঞ্জ', 'ashuganj.brahmanbaria.gov.bd', NULL, NULL, NULL),
(29, 3, 'Akhaura', 'আখাউড়া', 'akhaura.brahmanbaria.gov.bd', NULL, NULL, NULL),
(30, 3, 'Nabinagar', 'নবীনগর', 'nabinagar.brahmanbaria.gov.bd', NULL, NULL, NULL),
(31, 3, 'Bancharampur', 'বাঞ্ছারামপুর', 'bancharampur.brahmanbaria.gov.bd', NULL, NULL, NULL),
(32, 3, 'Bijoynagar', 'বিজয়নগর', 'bijoynagar.brahmanbaria.gov.bd    ', NULL, NULL, NULL),
(33, 4, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 'sadar.rangamati.gov.bd', NULL, NULL, NULL),
(34, 4, 'Kaptai', 'কাপ্তাই', 'kaptai.rangamati.gov.bd', NULL, NULL, NULL),
(35, 4, 'Kawkhali', 'কাউখালী', 'kawkhali.rangamati.gov.bd', NULL, NULL, NULL),
(36, 4, 'Baghaichari', 'বাঘাইছড়ি', 'baghaichari.rangamati.gov.bd', NULL, NULL, NULL),
(37, 4, 'Barkal', 'বরকল', 'barkal.rangamati.gov.bd', NULL, NULL, NULL),
(38, 4, 'Langadu', 'লংগদু', 'langadu.rangamati.gov.bd', NULL, NULL, NULL),
(39, 4, 'Rajasthali', 'রাজস্থলী', 'rajasthali.rangamati.gov.bd', NULL, NULL, NULL),
(40, 4, 'Belaichari', 'বিলাইছড়ি', 'belaichari.rangamati.gov.bd', NULL, NULL, NULL),
(41, 4, 'Juraichari', 'জুরাছড়ি', 'juraichari.rangamati.gov.bd', NULL, NULL, NULL),
(42, 4, 'Naniarchar', 'নানিয়ারচর', 'naniarchar.rangamati.gov.bd', NULL, NULL, NULL),
(43, 5, 'Noakhali Sadar', 'নোয়াখালী সদর', 'sadar.noakhali.gov.bd', NULL, NULL, NULL),
(44, 5, 'Companiganj', 'কোম্পানীগঞ্জ', 'companiganj.noakhali.gov.bd', NULL, NULL, NULL),
(45, 5, 'Begumganj', 'বেগমগঞ্জ', 'begumganj.noakhali.gov.bd', NULL, NULL, NULL),
(46, 5, 'Hatia', 'হাতিয়া', 'hatia.noakhali.gov.bd', NULL, NULL, NULL),
(47, 5, 'Subarnachar', 'সুবর্ণচর', 'subarnachar.noakhali.gov.bd', NULL, NULL, NULL),
(48, 5, 'Kabirhat', 'কবিরহাট', 'kabirhat.noakhali.gov.bd', NULL, NULL, NULL),
(49, 5, 'Senbug', 'সেনবাগ', 'senbug.noakhali.gov.bd', NULL, NULL, NULL),
(50, 5, 'Chatkhil', 'চাটখিল', 'chatkhil.noakhali.gov.bd', NULL, NULL, NULL),
(51, 5, 'Sonaimori', 'সোনাইমুড়ী', 'sonaimori.noakhali.gov.bd', NULL, NULL, NULL),
(52, 6, 'Haimchar', 'হাইমচর', 'haimchar.chandpur.gov.bd', NULL, NULL, NULL),
(53, 6, 'Kachua', 'কচুয়া', 'kachua.chandpur.gov.bd', NULL, NULL, NULL),
(54, 6, 'Shahrasti', 'শাহরাস্তি	', 'shahrasti.chandpur.gov.bd', NULL, NULL, NULL),
(55, 6, 'Chandpur Sadar', 'চাঁদপুর সদর', 'sadar.chandpur.gov.bd', NULL, NULL, NULL),
(56, 6, 'Matlab South', 'মতলব দক্ষিণ', 'matlabsouth.chandpur.gov.bd', NULL, NULL, NULL),
(57, 6, 'Hajiganj', 'হাজীগঞ্জ', 'hajiganj.chandpur.gov.bd', NULL, NULL, NULL),
(58, 6, 'Matlab North', 'মতলব উত্তর', 'matlabnorth.chandpur.gov.bd', NULL, NULL, NULL),
(59, 6, 'Faridgonj', 'ফরিদগঞ্জ', 'faridgonj.chandpur.gov.bd', NULL, NULL, NULL),
(60, 7, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 'sadar.lakshmipur.gov.bd', NULL, NULL, NULL),
(61, 7, 'Kamalnagar', 'কমলনগর', 'kamalnagar.lakshmipur.gov.bd', NULL, NULL, NULL),
(62, 7, 'Raipur', 'রায়পুর', 'raipur.lakshmipur.gov.bd', NULL, NULL, NULL),
(63, 7, 'Ramgati', 'রামগতি', 'ramgati.lakshmipur.gov.bd', NULL, NULL, NULL),
(64, 7, 'Ramganj', 'রামগঞ্জ', 'ramganj.lakshmipur.gov.bd', NULL, NULL, NULL),
(65, 8, 'Rangunia', 'রাঙ্গুনিয়া', 'rangunia.chittagong.gov.bd', NULL, NULL, NULL),
(66, 8, 'Sitakunda', 'সীতাকুন্ড', 'sitakunda.chittagong.gov.bd', NULL, NULL, NULL),
(67, 8, 'Mirsharai', 'মীরসরাই', 'mirsharai.chittagong.gov.bd', NULL, NULL, NULL),
(68, 8, 'Patiya', 'পটিয়া', 'patiya.chittagong.gov.bd', NULL, NULL, NULL),
(69, 8, 'Sandwip', 'সন্দ্বীপ', 'sandwip.chittagong.gov.bd', NULL, NULL, NULL),
(70, 8, 'Banshkhali', 'বাঁশখালী', 'banshkhali.chittagong.gov.bd', NULL, NULL, NULL),
(71, 8, 'Boalkhali', 'বোয়ালখালী', 'boalkhali.chittagong.gov.bd', NULL, NULL, NULL),
(72, 8, 'Anwara', 'আনোয়ারা', 'anwara.chittagong.gov.bd', NULL, NULL, NULL),
(73, 8, 'Chandanaish', 'চন্দনাইশ', 'chandanaish.chittagong.gov.bd', NULL, NULL, NULL),
(74, 8, 'Satkania', 'সাতকানিয়া', 'satkania.chittagong.gov.bd', NULL, NULL, NULL),
(75, 8, 'Lohagara', 'লোহাগাড়া', 'lohagara.chittagong.gov.bd', NULL, NULL, NULL),
(76, 8, 'Hathazari', 'হাটহাজারী', 'hathazari.chittagong.gov.bd', NULL, NULL, NULL),
(77, 8, 'Fatikchhari', 'ফটিকছড়ি', 'fatikchhari.chittagong.gov.bd', NULL, NULL, NULL),
(78, 8, 'Raozan', 'রাউজান', 'raozan.chittagong.gov.bd', NULL, NULL, NULL),
(79, 8, 'Karnafuli', 'কর্ণফুলী', 'karnafuli.chittagong.gov.bd', NULL, NULL, NULL),
(80, 9, 'Coxsbazar Sadar', 'কক্সবাজার সদর', 'sadar.coxsbazar.gov.bd', NULL, NULL, NULL),
(81, 9, 'Chakaria', 'চকরিয়া', 'chakaria.coxsbazar.gov.bd', NULL, NULL, NULL),
(82, 9, 'Kutubdia', 'কুতুবদিয়া', 'kutubdia.coxsbazar.gov.bd', NULL, NULL, NULL),
(83, 9, 'Ukhiya', 'উখিয়া', 'ukhiya.coxsbazar.gov.bd', NULL, NULL, NULL),
(84, 9, 'Moheshkhali', 'মহেশখালী', 'moheshkhali.coxsbazar.gov.bd', NULL, NULL, NULL),
(85, 9, 'Pekua', 'পেকুয়া', 'pekua.coxsbazar.gov.bd', NULL, NULL, NULL),
(86, 9, 'Ramu', 'রামু', 'ramu.coxsbazar.gov.bd', NULL, NULL, NULL),
(87, 9, 'Teknaf', 'টেকনাফ', 'teknaf.coxsbazar.gov.bd', NULL, NULL, NULL),
(88, 10, 'Khagrachhari Sadar', 'খাগড়াছড়ি সদর', 'sadar.khagrachhari.gov.bd', NULL, NULL, NULL),
(89, 10, 'Dighinala', 'দিঘীনালা', 'dighinala.khagrachhari.gov.bd', NULL, NULL, NULL),
(90, 10, 'Panchari', 'পানছড়ি', 'panchari.khagrachhari.gov.bd', NULL, NULL, NULL),
(91, 10, 'Laxmichhari', 'লক্ষীছড়ি', 'laxmichhari.khagrachhari.gov.bd', NULL, NULL, NULL),
(92, 10, 'Mohalchari', 'মহালছড়ি', 'mohalchari.khagrachhari.gov.bd', NULL, NULL, NULL),
(93, 10, 'Manikchari', 'মানিকছড়ি', 'manikchari.khagrachhari.gov.bd', NULL, NULL, NULL),
(94, 10, 'Ramgarh', 'রামগড়', 'ramgarh.khagrachhari.gov.bd', NULL, NULL, NULL),
(95, 10, 'Matiranga', 'মাটিরাঙ্গা', 'matiranga.khagrachhari.gov.bd', NULL, NULL, NULL),
(96, 10, 'Guimara', 'গুইমারা', 'guimara.khagrachhari.gov.bd', NULL, NULL, NULL),
(97, 11, 'Bandarban Sadar', 'বান্দরবান সদর', 'sadar.bandarban.gov.bd', NULL, NULL, NULL),
(98, 11, 'Alikadam', 'আলীকদম', 'alikadam.bandarban.gov.bd', NULL, NULL, NULL),
(99, 11, 'Naikhongchhari', 'নাইক্ষ্যংছড়ি', 'naikhongchhari.bandarban.gov.bd', NULL, NULL, NULL),
(100, 11, 'Rowangchhari', 'রোয়াংছড়ি', 'rowangchhari.bandarban.gov.bd', NULL, NULL, NULL),
(101, 11, 'Lama', 'লামা', 'lama.bandarban.gov.bd', NULL, NULL, NULL),
(102, 11, 'Ruma', 'রুমা', 'ruma.bandarban.gov.bd', NULL, NULL, NULL),
(103, 11, 'Thanchi', 'থানচি', 'thanchi.bandarban.gov.bd', NULL, NULL, NULL),
(104, 12, 'Belkuchi', 'বেলকুচি', 'belkuchi.sirajganj.gov.bd', NULL, NULL, NULL),
(105, 12, 'Chauhali', 'চৌহালি', 'chauhali.sirajganj.gov.bd', NULL, NULL, NULL),
(106, 12, 'Kamarkhand', 'কামারখন্দ', 'kamarkhand.sirajganj.gov.bd', NULL, NULL, NULL),
(107, 12, 'Kazipur', 'কাজীপুর', 'kazipur.sirajganj.gov.bd', NULL, NULL, NULL),
(108, 12, 'Raigonj', 'রায়গঞ্জ', 'raigonj.sirajganj.gov.bd', NULL, NULL, NULL),
(109, 12, 'Shahjadpur', 'শাহজাদপুর', 'shahjadpur.sirajganj.gov.bd', NULL, NULL, NULL),
(110, 12, 'Sirajganj Sadar', 'সিরাজগঞ্জ সদর', 'sirajganjsadar.sirajganj.gov.bd', NULL, NULL, NULL),
(111, 12, 'Tarash', 'তাড়াশ', 'tarash.sirajganj.gov.bd', NULL, NULL, NULL),
(112, 12, 'Ullapara', 'উল্লাপাড়া', 'ullapara.sirajganj.gov.bd', NULL, NULL, NULL),
(113, 13, 'Sujanagar', 'সুজানগর', 'sujanagar.pabna.gov.bd', NULL, NULL, NULL),
(114, 13, 'Ishurdi', 'ঈশ্বরদী', 'ishurdi.pabna.gov.bd', NULL, NULL, NULL),
(115, 13, 'Bhangura', 'ভাঙ্গুড়া', 'bhangura.pabna.gov.bd', NULL, NULL, NULL),
(116, 13, 'Pabna Sadar', 'পাবনা সদর', 'pabnasadar.pabna.gov.bd', NULL, NULL, NULL),
(117, 13, 'Bera', 'বেড়া', 'bera.pabna.gov.bd', NULL, NULL, NULL),
(118, 13, 'Atghoria', 'আটঘরিয়া', 'atghoria.pabna.gov.bd', NULL, NULL, NULL),
(119, 13, 'Chatmohar', 'চাটমোহর', 'chatmohar.pabna.gov.bd', NULL, NULL, NULL),
(120, 13, 'Santhia', 'সাঁথিয়া', 'santhia.pabna.gov.bd', NULL, NULL, NULL),
(121, 13, 'Faridpur', 'ফরিদপুর', 'faridpur.pabna.gov.bd', NULL, NULL, NULL),
(122, 14, 'Kahaloo', 'কাহালু', 'kahaloo.bogra.gov.bd', NULL, NULL, NULL),
(123, 14, 'Bogra Sadar', 'বগুড়া সদর', 'sadar.bogra.gov.bd', NULL, NULL, NULL),
(124, 14, 'Shariakandi', 'সারিয়াকান্দি', 'shariakandi.bogra.gov.bd', NULL, NULL, NULL),
(125, 14, 'Shajahanpur', 'শাজাহানপুর', 'shajahanpur.bogra.gov.bd', NULL, NULL, NULL),
(126, 14, 'Dupchanchia', 'দুপচাচিঁয়া', 'dupchanchia.bogra.gov.bd', NULL, NULL, NULL),
(127, 14, 'Adamdighi', 'আদমদিঘি', 'adamdighi.bogra.gov.bd', NULL, NULL, NULL),
(128, 14, 'Nondigram', 'নন্দিগ্রাম', 'nondigram.bogra.gov.bd', NULL, NULL, NULL),
(129, 14, 'Sonatala', 'সোনাতলা', 'sonatala.bogra.gov.bd', NULL, NULL, NULL),
(130, 14, 'Dhunot', 'ধুনট', 'dhunot.bogra.gov.bd', NULL, NULL, NULL),
(131, 14, 'Gabtali', 'গাবতলী', 'gabtali.bogra.gov.bd', NULL, NULL, NULL),
(132, 14, 'Sherpur', 'শেরপুর', 'sherpur.bogra.gov.bd', NULL, NULL, NULL),
(133, 14, 'Shibganj', 'শিবগঞ্জ', 'shibganj.bogra.gov.bd', NULL, NULL, NULL),
(134, 15, 'Paba', 'পবা', 'paba.rajshahi.gov.bd', NULL, NULL, NULL),
(135, 15, 'Durgapur', 'দুর্গাপুর', 'durgapur.rajshahi.gov.bd', NULL, NULL, NULL),
(136, 15, 'Mohonpur', 'মোহনপুর', 'mohonpur.rajshahi.gov.bd', NULL, NULL, NULL),
(137, 15, 'Charghat', 'চারঘাট', 'charghat.rajshahi.gov.bd', NULL, NULL, NULL),
(138, 15, 'Puthia', 'পুঠিয়া', 'puthia.rajshahi.gov.bd', NULL, NULL, NULL),
(139, 15, 'Bagha', 'বাঘা', 'bagha.rajshahi.gov.bd', NULL, NULL, NULL),
(140, 15, 'Godagari', 'গোদাগাড়ী', 'godagari.rajshahi.gov.bd', NULL, NULL, NULL),
(141, 15, 'Tanore', 'তানোর', 'tanore.rajshahi.gov.bd', NULL, NULL, NULL),
(142, 15, 'Bagmara', 'বাগমারা', 'bagmara.rajshahi.gov.bd', NULL, NULL, NULL),
(143, 16, 'Natore Sadar', 'নাটোর সদর', 'natoresadar.natore.gov.bd', NULL, NULL, NULL),
(144, 16, 'Singra', 'সিংড়া', 'singra.natore.gov.bd', NULL, NULL, NULL),
(145, 16, 'Baraigram', 'বড়াইগ্রাম', 'baraigram.natore.gov.bd', NULL, NULL, NULL),
(146, 16, 'Bagatipara', 'বাগাতিপাড়া', 'bagatipara.natore.gov.bd', NULL, NULL, NULL),
(147, 16, 'Lalpur', 'লালপুর', 'lalpur.natore.gov.bd', NULL, NULL, NULL),
(148, 16, 'Gurudaspur', 'গুরুদাসপুর', 'gurudaspur.natore.gov.bd', NULL, NULL, NULL),
(149, 16, 'Naldanga', 'নলডাঙ্গা', 'naldanga.natore.gov.bd', NULL, NULL, NULL),
(150, 17, 'Akkelpur', 'আক্কেলপুর', 'akkelpur.joypurhat.gov.bd', NULL, NULL, NULL),
(151, 17, 'Kalai', 'কালাই', 'kalai.joypurhat.gov.bd', NULL, NULL, NULL),
(152, 17, 'Khetlal', 'ক্ষেতলাল', 'khetlal.joypurhat.gov.bd', NULL, NULL, NULL),
(153, 17, 'Panchbibi', 'পাঁচবিবি', 'panchbibi.joypurhat.gov.bd', NULL, NULL, NULL),
(154, 17, 'Joypurhat Sadar', 'জয়পুরহাট সদর', 'joypurhatsadar.joypurhat.gov.bd', NULL, NULL, NULL),
(155, 18, 'Chapainawabganj Sadar', 'চাঁপাইনবাবগঞ্জ সদর', 'chapainawabganjsadar.chapainawabganj.gov.bd', NULL, NULL, NULL),
(156, 18, 'Gomostapur', 'গোমস্তাপুর', 'gomostapur.chapainawabganj.gov.bd', NULL, NULL, NULL),
(157, 18, 'Nachol', 'নাচোল', 'nachol.chapainawabganj.gov.bd', NULL, NULL, NULL),
(158, 18, 'Bholahat', 'ভোলাহাট', 'bholahat.chapainawabganj.gov.bd', NULL, NULL, NULL),
(159, 18, 'Shibganj', 'শিবগঞ্জ', 'shibganj.chapainawabganj.gov.bd', NULL, NULL, NULL),
(160, 19, 'Mohadevpur', 'মহাদেবপুর', 'mohadevpur.naogaon.gov.bd', NULL, NULL, NULL),
(161, 19, 'Badalgachi', 'বদলগাছী', 'badalgachi.naogaon.gov.bd', NULL, NULL, NULL),
(162, 19, 'Patnitala', 'পত্নিতলা', 'patnitala.naogaon.gov.bd', NULL, NULL, NULL),
(163, 19, 'Dhamoirhat', 'ধামইরহাট', 'dhamoirhat.naogaon.gov.bd', NULL, NULL, NULL),
(164, 19, 'Niamatpur', 'নিয়ামতপুর', 'niamatpur.naogaon.gov.bd', NULL, NULL, NULL),
(165, 19, 'Manda', 'মান্দা', 'manda.naogaon.gov.bd', NULL, NULL, NULL),
(166, 19, 'Atrai', 'আত্রাই', 'atrai.naogaon.gov.bd', NULL, NULL, NULL),
(167, 19, 'Raninagar', 'রাণীনগর', 'raninagar.naogaon.gov.bd', NULL, NULL, NULL),
(168, 19, 'Naogaon Sadar', 'নওগাঁ সদর', 'naogaonsadar.naogaon.gov.bd', NULL, NULL, NULL),
(169, 19, 'Porsha', 'পোরশা', 'porsha.naogaon.gov.bd', NULL, NULL, NULL),
(170, 19, 'Sapahar', 'সাপাহার', 'sapahar.naogaon.gov.bd', NULL, NULL, NULL),
(171, 20, 'Manirampur', 'মণিরামপুর', 'manirampur.jessore.gov.bd', NULL, NULL, NULL),
(172, 20, 'Abhaynagar', 'অভয়নগর', 'abhaynagar.jessore.gov.bd', NULL, NULL, NULL),
(173, 20, 'Bagherpara', 'বাঘারপাড়া', 'bagherpara.jessore.gov.bd', NULL, NULL, NULL),
(174, 20, 'Chougachha', 'চৌগাছা', 'chougachha.jessore.gov.bd', NULL, NULL, NULL),
(175, 20, 'Jhikargacha', 'ঝিকরগাছা', 'jhikargacha.jessore.gov.bd', NULL, NULL, NULL),
(176, 20, 'Keshabpur', 'কেশবপুর', 'keshabpur.jessore.gov.bd', NULL, NULL, NULL),
(177, 20, 'Jessore Sadar', 'যশোর সদর', 'sadar.jessore.gov.bd', NULL, NULL, NULL),
(178, 20, 'Sharsha', 'শার্শা', 'sharsha.jessore.gov.bd', NULL, NULL, NULL),
(179, 21, 'Assasuni', 'আশাশুনি', 'assasuni.satkhira.gov.bd', NULL, NULL, NULL),
(180, 21, 'Debhata', 'দেবহাটা', 'debhata.satkhira.gov.bd', NULL, NULL, NULL),
(181, 21, 'Kalaroa', 'কলারোয়া', 'kalaroa.satkhira.gov.bd', NULL, NULL, NULL),
(182, 21, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 'satkhirasadar.satkhira.gov.bd', NULL, NULL, NULL),
(183, 21, 'Shyamnagar', 'শ্যামনগর', 'shyamnagar.satkhira.gov.bd', NULL, NULL, NULL),
(184, 21, 'Tala', 'তালা', 'tala.satkhira.gov.bd', NULL, NULL, NULL),
(185, 21, 'Kaliganj', 'কালিগঞ্জ', 'kaliganj.satkhira.gov.bd', NULL, NULL, NULL),
(186, 22, 'Mujibnagar', 'মুজিবনগর', 'mujibnagar.meherpur.gov.bd', NULL, NULL, NULL),
(187, 22, 'Meherpur Sadar', 'মেহেরপুর সদর', 'meherpursadar.meherpur.gov.bd', NULL, NULL, NULL),
(188, 22, 'Gangni', 'গাংনী', 'gangni.meherpur.gov.bd', NULL, NULL, NULL),
(189, 23, 'Narail Sadar', 'নড়াইল সদর', 'narailsadar.narail.gov.bd', NULL, NULL, NULL),
(190, 23, 'Lohagara', 'লোহাগড়া', 'lohagara.narail.gov.bd', NULL, NULL, NULL),
(191, 23, 'Kalia', 'কালিয়া', 'kalia.narail.gov.bd', NULL, NULL, NULL),
(192, 24, 'Chuadanga Sadar', 'চুয়াডাঙ্গা সদর', 'chuadangasadar.chuadanga.gov.bd', NULL, NULL, NULL),
(193, 24, 'Alamdanga', 'আলমডাঙ্গা', 'alamdanga.chuadanga.gov.bd', NULL, NULL, NULL),
(194, 24, 'Damurhuda', 'দামুড়হুদা', 'damurhuda.chuadanga.gov.bd', NULL, NULL, NULL),
(195, 24, 'Jibannagar', 'জীবননগর', 'jibannagar.chuadanga.gov.bd', NULL, NULL, NULL),
(196, 25, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 'kushtiasadar.kushtia.gov.bd', NULL, NULL, NULL),
(197, 25, 'Kumarkhali', 'কুমারখালী', 'kumarkhali.kushtia.gov.bd', NULL, NULL, NULL),
(198, 25, 'Khoksa', 'খোকসা', 'khoksa.kushtia.gov.bd', NULL, NULL, NULL),
(199, 25, 'Mirpur', 'মিরপুর', 'mirpurkushtia.kushtia.gov.bd', NULL, NULL, NULL),
(200, 25, 'Daulatpur', 'দৌলতপুর', 'daulatpur.kushtia.gov.bd', NULL, NULL, NULL),
(201, 25, 'Bheramara', 'ভেড়ামারা', 'bheramara.kushtia.gov.bd', NULL, NULL, NULL),
(202, 26, 'Shalikha', 'শালিখা', 'shalikha.magura.gov.bd', NULL, NULL, NULL),
(203, 26, 'Sreepur', 'শ্রীপুর', 'sreepur.magura.gov.bd', NULL, NULL, NULL),
(204, 26, 'Magura Sadar', 'মাগুরা সদর', 'magurasadar.magura.gov.bd', NULL, NULL, NULL),
(205, 26, 'Mohammadpur', 'মহম্মদপুর', 'mohammadpur.magura.gov.bd', NULL, NULL, NULL),
(206, 27, 'Paikgasa', 'পাইকগাছা', 'paikgasa.khulna.gov.bd', NULL, NULL, NULL),
(207, 27, 'Fultola', 'ফুলতলা', 'fultola.khulna.gov.bd', NULL, NULL, NULL),
(208, 27, 'Digholia', 'দিঘলিয়া', 'digholia.khulna.gov.bd', NULL, NULL, NULL),
(209, 27, 'Rupsha', 'রূপসা', 'rupsha.khulna.gov.bd', NULL, NULL, NULL),
(210, 27, 'Terokhada', 'তেরখাদা', 'terokhada.khulna.gov.bd', NULL, NULL, NULL),
(211, 27, 'Dumuria', 'ডুমুরিয়া', 'dumuria.khulna.gov.bd', NULL, NULL, NULL),
(212, 27, 'Botiaghata', 'বটিয়াঘাটা', 'botiaghata.khulna.gov.bd', NULL, NULL, NULL),
(213, 27, 'Dakop', 'দাকোপ', 'dakop.khulna.gov.bd', NULL, NULL, NULL),
(214, 27, 'Koyra', 'কয়রা', 'koyra.khulna.gov.bd', NULL, NULL, NULL),
(215, 28, 'Fakirhat', 'ফকিরহাট', 'fakirhat.bagerhat.gov.bd', NULL, NULL, NULL),
(216, 28, 'Bagerhat Sadar', 'বাগেরহাট সদর', 'sadar.bagerhat.gov.bd', NULL, NULL, NULL),
(217, 28, 'Mollahat', 'মোল্লাহাট', 'mollahat.bagerhat.gov.bd', NULL, NULL, NULL),
(218, 28, 'Sarankhola', 'শরণখোলা', 'sarankhola.bagerhat.gov.bd', NULL, NULL, NULL),
(219, 28, 'Rampal', 'রামপাল', 'rampal.bagerhat.gov.bd', NULL, NULL, NULL),
(220, 28, 'Morrelganj', 'মোড়েলগঞ্জ', 'morrelganj.bagerhat.gov.bd', NULL, NULL, NULL),
(221, 28, 'Kachua', 'কচুয়া', 'kachua.bagerhat.gov.bd', NULL, NULL, NULL),
(222, 28, 'Mongla', 'মোংলা', 'mongla.bagerhat.gov.bd', NULL, NULL, NULL),
(223, 28, 'Chitalmari', 'চিতলমারী', 'chitalmari.bagerhat.gov.bd', NULL, NULL, NULL),
(224, 29, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 'sadar.jhenaidah.gov.bd', NULL, NULL, NULL),
(225, 29, 'Shailkupa', 'শৈলকুপা', 'shailkupa.jhenaidah.gov.bd', NULL, NULL, NULL),
(226, 29, 'Harinakundu', 'হরিণাকুন্ডু', 'harinakundu.jhenaidah.gov.bd', NULL, NULL, NULL),
(227, 29, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.jhenaidah.gov.bd', NULL, NULL, NULL),
(228, 29, 'Kotchandpur', 'কোটচাঁদপুর', 'kotchandpur.jhenaidah.gov.bd', NULL, NULL, NULL),
(229, 29, 'Moheshpur', 'মহেশপুর', 'moheshpur.jhenaidah.gov.bd', NULL, NULL, NULL),
(230, 30, 'Jhalakathi Sadar', 'ঝালকাঠি সদর', 'sadar.jhalakathi.gov.bd', NULL, NULL, NULL),
(231, 30, 'Kathalia', 'কাঠালিয়া', 'kathalia.jhalakathi.gov.bd', NULL, NULL, NULL),
(232, 30, 'Nalchity', 'নলছিটি', 'nalchity.jhalakathi.gov.bd', NULL, NULL, NULL),
(233, 30, 'Rajapur', 'রাজাপুর', 'rajapur.jhalakathi.gov.bd', NULL, NULL, NULL),
(234, 31, 'Bauphal', 'বাউফল', 'bauphal.patuakhali.gov.bd', NULL, NULL, NULL),
(235, 31, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 'sadar.patuakhali.gov.bd', NULL, NULL, NULL),
(236, 31, 'Dumki', 'দুমকি', 'dumki.patuakhali.gov.bd', NULL, NULL, NULL),
(237, 31, 'Dashmina', 'দশমিনা', 'dashmina.patuakhali.gov.bd', NULL, NULL, NULL),
(238, 31, 'Kalapara', 'কলাপাড়া', 'kalapara.patuakhali.gov.bd', NULL, NULL, NULL),
(239, 31, 'Mirzaganj', 'মির্জাগঞ্জ', 'mirzaganj.patuakhali.gov.bd', NULL, NULL, NULL),
(240, 31, 'Galachipa', 'গলাচিপা', 'galachipa.patuakhali.gov.bd', NULL, NULL, NULL),
(241, 31, 'Rangabali', 'রাঙ্গাবালী', 'rangabali.patuakhali.gov.bd', NULL, NULL, NULL),
(242, 32, 'Pirojpur Sadar', 'পিরোজপুর সদর', 'sadar.pirojpur.gov.bd', NULL, NULL, NULL),
(243, 32, 'Nazirpur', 'নাজিরপুর', 'nazirpur.pirojpur.gov.bd', NULL, NULL, NULL),
(244, 32, 'Kawkhali', 'কাউখালী', 'kawkhali.pirojpur.gov.bd', NULL, NULL, NULL),
(245, 32, 'Zianagar', 'জিয়ানগর', 'zianagar.pirojpur.gov.bd', NULL, NULL, NULL),
(246, 32, 'Bhandaria', 'ভান্ডারিয়া', 'bhandaria.pirojpur.gov.bd', NULL, NULL, NULL),
(247, 32, 'Mathbaria', 'মঠবাড়ীয়া', 'mathbaria.pirojpur.gov.bd', NULL, NULL, NULL),
(248, 32, 'Nesarabad', 'নেছারাবাদ', 'nesarabad.pirojpur.gov.bd', NULL, NULL, NULL),
(249, 33, 'Barisal Sadar', 'বরিশাল সদর', 'barisalsadar.barisal.gov.bd', NULL, NULL, NULL),
(250, 33, 'Bakerganj', 'বাকেরগঞ্জ', 'bakerganj.barisal.gov.bd', NULL, NULL, NULL),
(251, 33, 'Babuganj', 'বাবুগঞ্জ', 'babuganj.barisal.gov.bd', NULL, NULL, NULL),
(252, 33, 'Wazirpur', 'উজিরপুর', 'wazirpur.barisal.gov.bd', NULL, NULL, NULL),
(253, 33, 'Banaripara', 'বানারীপাড়া', 'banaripara.barisal.gov.bd', NULL, NULL, NULL),
(254, 33, 'Gournadi', 'গৌরনদী', 'gournadi.barisal.gov.bd', NULL, NULL, NULL),
(255, 33, 'Agailjhara', 'আগৈলঝাড়া', 'agailjhara.barisal.gov.bd', NULL, NULL, NULL),
(256, 33, 'Mehendiganj', 'মেহেন্দিগঞ্জ', 'mehendiganj.barisal.gov.bd', NULL, NULL, NULL),
(257, 33, 'Muladi', 'মুলাদী', 'muladi.barisal.gov.bd', NULL, NULL, NULL),
(258, 33, 'Hizla', 'হিজলা', 'hizla.barisal.gov.bd', NULL, NULL, NULL),
(259, 34, 'Bhola Sadar', 'ভোলা সদর', 'sadar.bhola.gov.bd', NULL, NULL, NULL),
(260, 34, 'Borhan Sddin', 'বোরহান উদ্দিন', 'borhanuddin.bhola.gov.bd', NULL, NULL, NULL),
(261, 34, 'Charfesson', 'চরফ্যাশন', 'charfesson.bhola.gov.bd', NULL, NULL, NULL),
(262, 34, 'Doulatkhan', 'দৌলতখান', 'doulatkhan.bhola.gov.bd', NULL, NULL, NULL),
(263, 34, 'Monpura', 'মনপুরা', 'monpura.bhola.gov.bd', NULL, NULL, NULL),
(264, 34, 'Tazumuddin', 'তজুমদ্দিন', 'tazumuddin.bhola.gov.bd', NULL, NULL, NULL),
(265, 34, 'Lalmohan', 'লালমোহন', 'lalmohan.bhola.gov.bd', NULL, NULL, NULL),
(266, 35, 'Amtali', 'আমতলী', 'amtali.barguna.gov.bd', NULL, NULL, NULL),
(267, 35, 'Barguna Sadar', 'বরগুনা সদর', 'sadar.barguna.gov.bd', NULL, NULL, NULL),
(268, 35, 'Betagi', 'বেতাগী', 'betagi.barguna.gov.bd', NULL, NULL, NULL),
(269, 35, 'Bamna', 'বামনা', 'bamna.barguna.gov.bd', NULL, NULL, NULL),
(270, 35, 'Pathorghata', 'পাথরঘাটা', 'pathorghata.barguna.gov.bd', NULL, NULL, NULL),
(271, 35, 'Taltali', 'তালতলি', 'taltali.barguna.gov.bd', NULL, NULL, NULL),
(272, 36, 'Balaganj', 'বালাগঞ্জ', 'balaganj.sylhet.gov.bd', NULL, NULL, NULL),
(273, 36, 'Beanibazar', 'বিয়ানীবাজার', 'beanibazar.sylhet.gov.bd', NULL, NULL, NULL),
(274, 36, 'Bishwanath', 'বিশ্বনাথ', 'bishwanath.sylhet.gov.bd', NULL, NULL, NULL),
(275, 36, 'Companiganj', 'কোম্পানীগঞ্জ', 'companiganj.sylhet.gov.bd', NULL, NULL, NULL),
(276, 36, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 'fenchuganj.sylhet.gov.bd', NULL, NULL, NULL),
(277, 36, 'Golapganj', 'গোলাপগঞ্জ', 'golapganj.sylhet.gov.bd', NULL, NULL, NULL),
(278, 36, 'Gowainghat', 'গোয়াইনঘাট', 'gowainghat.sylhet.gov.bd', NULL, NULL, NULL),
(279, 36, 'Jaintiapur', 'জৈন্তাপুর', 'jaintiapur.sylhet.gov.bd', NULL, NULL, NULL),
(280, 36, 'Kanaighat', 'কানাইঘাট', 'kanaighat.sylhet.gov.bd', NULL, NULL, NULL),
(281, 36, 'Sylhet Sadar', 'সিলেট সদর', 'sylhetsadar.sylhet.gov.bd', NULL, NULL, NULL),
(282, 36, 'Zakiganj', 'জকিগঞ্জ', 'zakiganj.sylhet.gov.bd', NULL, NULL, NULL),
(283, 36, 'Dakshinsurma', 'দক্ষিণ সুরমা', 'dakshinsurma.sylhet.gov.bd', NULL, NULL, NULL),
(284, 36, 'Osmaninagar', 'ওসমানী নগর', 'osmaninagar.sylhet.gov.bd', NULL, NULL, NULL),
(285, 37, 'Barlekha', 'বড়লেখা', 'barlekha.moulvibazar.gov.bd', NULL, NULL, NULL),
(286, 37, 'Kamolganj', 'কমলগঞ্জ', 'kamolganj.moulvibazar.gov.bd', NULL, NULL, NULL),
(287, 37, 'Kulaura', 'কুলাউড়া', 'kulaura.moulvibazar.gov.bd', NULL, NULL, NULL),
(288, 37, 'Moulvibazar Sadar', 'মৌলভীবাজার সদর', 'moulvibazarsadar.moulvibazar.gov.bd', NULL, NULL, NULL),
(289, 37, 'Rajnagar', 'রাজনগর', 'rajnagar.moulvibazar.gov.bd', NULL, NULL, NULL),
(290, 37, 'Sreemangal', 'শ্রীমঙ্গল', 'sreemangal.moulvibazar.gov.bd', NULL, NULL, NULL),
(291, 37, 'Juri', 'জুড়ী', 'juri.moulvibazar.gov.bd', NULL, NULL, NULL),
(292, 38, 'Nabiganj', 'নবীগঞ্জ', 'nabiganj.habiganj.gov.bd', NULL, NULL, NULL),
(293, 38, 'Bahubal', 'বাহুবল', 'bahubal.habiganj.gov.bd', NULL, NULL, NULL),
(294, 38, 'Ajmiriganj', 'আজমিরীগঞ্জ', 'ajmiriganj.habiganj.gov.bd', NULL, NULL, NULL),
(295, 38, 'Baniachong', 'বানিয়াচং', 'baniachong.habiganj.gov.bd', NULL, NULL, NULL),
(296, 38, 'Lakhai', 'লাখাই', 'lakhai.habiganj.gov.bd', NULL, NULL, NULL),
(297, 38, 'Chunarughat', 'চুনারুঘাট', 'chunarughat.habiganj.gov.bd', NULL, NULL, NULL),
(298, 38, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 'habiganjsadar.habiganj.gov.bd', NULL, NULL, NULL),
(299, 38, 'Madhabpur', 'মাধবপুর', 'madhabpur.habiganj.gov.bd', NULL, NULL, NULL),
(300, 39, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 'sadar.sunamganj.gov.bd', NULL, NULL, NULL),
(301, 39, 'South Sunamganj', 'দক্ষিণ সুনামগঞ্জ', 'southsunamganj.sunamganj.gov.bd', NULL, NULL, NULL),
(302, 39, 'Bishwambarpur', 'বিশ্বম্ভরপুর', 'bishwambarpur.sunamganj.gov.bd', NULL, NULL, NULL),
(303, 39, 'Chhatak', 'ছাতক', 'chhatak.sunamganj.gov.bd', NULL, NULL, NULL),
(304, 39, 'Jagannathpur', 'জগন্নাথপুর', 'jagannathpur.sunamganj.gov.bd', NULL, NULL, NULL),
(305, 39, 'Dowarabazar', 'দোয়ারাবাজার', 'dowarabazar.sunamganj.gov.bd', NULL, NULL, NULL),
(306, 39, 'Tahirpur', 'তাহিরপুর', 'tahirpur.sunamganj.gov.bd', NULL, NULL, NULL),
(307, 39, 'Dharmapasha', 'ধর্মপাশা', 'dharmapasha.sunamganj.gov.bd', NULL, NULL, NULL),
(308, 39, 'Jamalganj', 'জামালগঞ্জ', 'jamalganj.sunamganj.gov.bd', NULL, NULL, NULL),
(309, 39, 'Shalla', 'শাল্লা', 'shalla.sunamganj.gov.bd', NULL, NULL, NULL),
(310, 39, 'Derai', 'দিরাই', 'derai.sunamganj.gov.bd', NULL, NULL, NULL),
(311, 40, 'Belabo', 'বেলাবো', 'belabo.narsingdi.gov.bd', NULL, NULL, NULL),
(312, 40, 'Monohardi', 'মনোহরদী', 'monohardi.narsingdi.gov.bd', NULL, NULL, NULL),
(313, 40, 'Narsingdi Sadar', 'নরসিংদী সদর', 'narsingdisadar.narsingdi.gov.bd', NULL, NULL, NULL),
(314, 40, 'Palash', 'পলাশ', 'palash.narsingdi.gov.bd', NULL, NULL, NULL),
(315, 40, 'Raipura', 'রায়পুরা', 'raipura.narsingdi.gov.bd', NULL, NULL, NULL),
(316, 40, 'Shibpur', 'শিবপুর', 'shibpur.narsingdi.gov.bd', NULL, NULL, NULL),
(317, 41, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.gazipur.gov.bd', NULL, NULL, NULL),
(318, 41, 'Kaliakair', 'কালিয়াকৈর', 'kaliakair.gazipur.gov.bd', NULL, NULL, NULL),
(319, 41, 'Kapasia', 'কাপাসিয়া', 'kapasia.gazipur.gov.bd', NULL, NULL, NULL),
(320, 41, 'Gazipur Sadar', 'গাজীপুর সদর', 'sadar.gazipur.gov.bd', NULL, NULL, NULL),
(321, 41, 'Sreepur', 'শ্রীপুর', 'sreepur.gazipur.gov.bd', NULL, NULL, NULL),
(322, 42, 'Shariatpur Sadar', 'শরিয়তপুর সদর', 'sadar.shariatpur.gov.bd', NULL, NULL, NULL),
(323, 42, 'Naria', 'নড়িয়া', 'naria.shariatpur.gov.bd', NULL, NULL, NULL),
(324, 42, 'Zajira', 'জাজিরা', 'zajira.shariatpur.gov.bd', NULL, NULL, NULL),
(325, 42, 'Gosairhat', 'গোসাইরহাট', 'gosairhat.shariatpur.gov.bd', NULL, NULL, NULL),
(326, 42, 'Bhedarganj', 'ভেদরগঞ্জ', 'bhedarganj.shariatpur.gov.bd', NULL, NULL, NULL),
(327, 42, 'Damudya', 'ডামুড্যা', 'damudya.shariatpur.gov.bd', NULL, NULL, NULL),
(328, 43, 'Araihazar', 'আড়াইহাজার', 'araihazar.narayanganj.gov.bd', NULL, NULL, NULL),
(329, 43, 'Bandar', 'বন্দর', 'bandar.narayanganj.gov.bd', NULL, NULL, NULL),
(330, 43, 'Narayanganj Sadar', 'নারায়নগঞ্জ সদর', 'narayanganjsadar.narayanganj.gov.bd', NULL, NULL, NULL),
(331, 43, 'Rupganj', 'রূপগঞ্জ', 'rupganj.narayanganj.gov.bd', NULL, NULL, NULL),
(332, 43, 'Sonargaon', 'সোনারগাঁ', 'sonargaon.narayanganj.gov.bd', NULL, NULL, NULL),
(333, 44, 'Basail', 'বাসাইল', 'basail.tangail.gov.bd', NULL, NULL, NULL),
(334, 44, 'Bhuapur', 'ভুয়াপুর', 'bhuapur.tangail.gov.bd', NULL, NULL, NULL),
(335, 44, 'Delduar', 'দেলদুয়ার', 'delduar.tangail.gov.bd', NULL, NULL, NULL),
(336, 44, 'Ghatail', 'ঘাটাইল', 'ghatail.tangail.gov.bd', NULL, NULL, NULL),
(337, 44, 'Gopalpur', 'গোপালপুর', 'gopalpur.tangail.gov.bd', NULL, NULL, NULL),
(338, 44, 'Madhupur', 'মধুপুর', 'madhupur.tangail.gov.bd', NULL, NULL, NULL),
(339, 44, 'Mirzapur', 'মির্জাপুর', 'mirzapur.tangail.gov.bd', NULL, NULL, NULL),
(340, 44, 'Nagarpur', 'নাগরপুর', 'nagarpur.tangail.gov.bd', NULL, NULL, NULL),
(341, 44, 'Sakhipur', 'সখিপুর', 'sakhipur.tangail.gov.bd', NULL, NULL, NULL),
(342, 44, 'Tangail Sadar', 'টাঙ্গাইল সদর', 'tangailsadar.tangail.gov.bd', NULL, NULL, NULL),
(343, 44, 'Kalihati', 'কালিহাতী', 'kalihati.tangail.gov.bd', NULL, NULL, NULL),
(344, 44, 'Dhanbari', 'ধনবাড়ী', 'dhanbari.tangail.gov.bd', NULL, NULL, NULL),
(345, 45, 'Itna', 'ইটনা', 'itna.kishoreganj.gov.bd', NULL, NULL, NULL),
(346, 45, 'Katiadi', 'কটিয়াদী', 'katiadi.kishoreganj.gov.bd', NULL, NULL, NULL),
(347, 45, 'Bhairab', 'ভৈরব', 'bhairab.kishoreganj.gov.bd', NULL, NULL, NULL),
(348, 45, 'Tarail', 'তাড়াইল', 'tarail.kishoreganj.gov.bd', NULL, NULL, NULL),
(349, 45, 'Hossainpur', 'হোসেনপুর', 'hossainpur.kishoreganj.gov.bd', NULL, NULL, NULL),
(350, 45, 'Pakundia', 'পাকুন্দিয়া', 'pakundia.kishoreganj.gov.bd', NULL, NULL, NULL),
(351, 45, 'Kuliarchar', 'কুলিয়ারচর', 'kuliarchar.kishoreganj.gov.bd', NULL, NULL, NULL),
(352, 45, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 'kishoreganjsadar.kishoreganj.gov.bd', NULL, NULL, NULL),
(353, 45, 'Karimgonj', 'করিমগঞ্জ', 'karimgonj.kishoreganj.gov.bd', NULL, NULL, NULL),
(354, 45, 'Bajitpur', 'বাজিতপুর', 'bajitpur.kishoreganj.gov.bd', NULL, NULL, NULL),
(355, 45, 'Austagram', 'অষ্টগ্রাম', 'austagram.kishoreganj.gov.bd', NULL, NULL, NULL),
(356, 45, 'Mithamoin', 'মিঠামইন', 'mithamoin.kishoreganj.gov.bd', NULL, NULL, NULL),
(357, 45, 'Nikli', 'নিকলী', 'nikli.kishoreganj.gov.bd', NULL, NULL, NULL),
(358, 46, 'Harirampur', 'হরিরামপুর', 'harirampur.manikganj.gov.bd', NULL, NULL, NULL),
(359, 46, 'Saturia', 'সাটুরিয়া', 'saturia.manikganj.gov.bd', NULL, NULL, NULL),
(360, 46, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 'sadar.manikganj.gov.bd', NULL, NULL, NULL),
(361, 46, 'Gior', 'ঘিওর', 'gior.manikganj.gov.bd', NULL, NULL, NULL),
(362, 46, 'Shibaloy', 'শিবালয়', 'shibaloy.manikganj.gov.bd', NULL, NULL, NULL),
(363, 46, 'Doulatpur', 'দৌলতপুর', 'doulatpur.manikganj.gov.bd', NULL, NULL, NULL),
(364, 46, 'Singiar', 'সিংগাইর', 'singiar.manikganj.gov.bd', NULL, NULL, NULL),
(365, 47, 'Savar', 'সাভার', 'savar.dhaka.gov.bd', NULL, NULL, NULL),
(366, 47, 'Dhamrai', 'ধামরাই', 'dhamrai.dhaka.gov.bd', NULL, NULL, NULL),
(367, 47, 'Keraniganj', 'কেরাণীগঞ্জ', 'keraniganj.dhaka.gov.bd', NULL, NULL, NULL),
(368, 47, 'Nawabganj', 'নবাবগঞ্জ', 'nawabganj.dhaka.gov.bd', NULL, NULL, NULL),
(369, 47, 'Dohar', 'দোহার', 'dohar.dhaka.gov.bd', NULL, NULL, NULL),
(370, 48, 'Munshiganj Sadar', 'মুন্সিগঞ্জ সদর', 'sadar.munshiganj.gov.bd', NULL, NULL, NULL),
(371, 48, 'Sreenagar', 'শ্রীনগর', 'sreenagar.munshiganj.gov.bd', NULL, NULL, NULL),
(372, 48, 'Sirajdikhan', 'সিরাজদিখান', 'sirajdikhan.munshiganj.gov.bd', NULL, NULL, NULL),
(373, 48, 'Louhajanj', 'লৌহজং', 'louhajanj.munshiganj.gov.bd', NULL, NULL, NULL),
(374, 48, 'Gajaria', 'গজারিয়া', 'gajaria.munshiganj.gov.bd', NULL, NULL, NULL),
(375, 48, 'Tongibari', 'টংগীবাড়ি', 'tongibari.munshiganj.gov.bd', NULL, NULL, NULL),
(376, 49, 'Rajbari Sadar', 'রাজবাড়ী সদর', 'sadar.rajbari.gov.bd', NULL, NULL, NULL),
(377, 49, 'Goalanda', 'গোয়ালন্দ', 'goalanda.rajbari.gov.bd', NULL, NULL, NULL),
(378, 49, 'Pangsa', 'পাংশা', 'pangsa.rajbari.gov.bd', NULL, NULL, NULL),
(379, 49, 'Baliakandi', 'বালিয়াকান্দি', 'baliakandi.rajbari.gov.bd', NULL, NULL, NULL),
(380, 49, 'Kalukhali', 'কালুখালী', 'kalukhali.rajbari.gov.bd', NULL, NULL, NULL),
(381, 50, 'Madaripur Sadar', 'মাদারীপুর সদর', 'sadar.madaripur.gov.bd', NULL, NULL, NULL),
(382, 50, 'Shibchar', 'শিবচর', 'shibchar.madaripur.gov.bd', NULL, NULL, NULL),
(383, 50, 'Kalkini', 'কালকিনি', 'kalkini.madaripur.gov.bd', NULL, NULL, NULL),
(384, 50, 'Rajoir', 'রাজৈর', 'rajoir.madaripur.gov.bd', NULL, NULL, NULL),
(385, 51, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 'sadar.gopalganj.gov.bd', NULL, NULL, NULL),
(386, 51, 'Kashiani', 'কাশিয়ানী', 'kashiani.gopalganj.gov.bd', NULL, NULL, NULL),
(387, 51, 'Tungipara', 'টুংগীপাড়া', 'tungipara.gopalganj.gov.bd', NULL, NULL, NULL),
(388, 51, 'Kotalipara', 'কোটালীপাড়া', 'kotalipara.gopalganj.gov.bd', NULL, NULL, NULL),
(389, 51, 'Muksudpur', 'মুকসুদপুর', 'muksudpur.gopalganj.gov.bd', NULL, NULL, NULL),
(390, 52, 'Faridpur Sadar', 'ফরিদপুর সদর', 'sadar.faridpur.gov.bd', NULL, NULL, NULL),
(391, 52, 'Alfadanga', 'আলফাডাঙ্গা', 'alfadanga.faridpur.gov.bd', NULL, NULL, NULL),
(392, 52, 'Boalmari', 'বোয়ালমারী', 'boalmari.faridpur.gov.bd', NULL, NULL, NULL),
(393, 52, 'Sadarpur', 'সদরপুর', 'sadarpur.faridpur.gov.bd', NULL, NULL, NULL),
(394, 52, 'Nagarkanda', 'নগরকান্দা', 'nagarkanda.faridpur.gov.bd', NULL, NULL, NULL),
(395, 52, 'Bhanga', 'ভাঙ্গা', 'bhanga.faridpur.gov.bd', NULL, NULL, NULL),
(396, 52, 'Charbhadrasan', 'চরভদ্রাসন', 'charbhadrasan.faridpur.gov.bd', NULL, NULL, NULL),
(397, 52, 'Madhukhali', 'মধুখালী', 'madhukhali.faridpur.gov.bd', NULL, NULL, NULL),
(398, 52, 'Saltha', 'সালথা', 'saltha.faridpur.gov.bd', NULL, NULL, NULL),
(399, 53, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 'panchagarhsadar.panchagarh.gov.bd', NULL, NULL, NULL),
(400, 53, 'Debiganj', 'দেবীগঞ্জ', 'debiganj.panchagarh.gov.bd', NULL, NULL, NULL),
(401, 53, 'Boda', 'বোদা', 'boda.panchagarh.gov.bd', NULL, NULL, NULL),
(402, 53, 'Atwari', 'আটোয়ারী', 'atwari.panchagarh.gov.bd', NULL, NULL, NULL),
(403, 53, 'Tetulia', 'তেতুলিয়া', 'tetulia.panchagarh.gov.bd', NULL, NULL, NULL),
(404, 54, 'Nawabganj', 'নবাবগঞ্জ', 'nawabganj.dinajpur.gov.bd', NULL, NULL, NULL),
(405, 54, 'Birganj', 'বীরগঞ্জ', 'birganj.dinajpur.gov.bd', NULL, NULL, NULL),
(406, 54, 'Ghoraghat', 'ঘোড়াঘাট', 'ghoraghat.dinajpur.gov.bd', NULL, NULL, NULL),
(407, 54, 'Birampur', 'বিরামপুর', 'birampur.dinajpur.gov.bd', NULL, NULL, NULL),
(408, 54, 'Parbatipur', 'পার্বতীপুর', 'parbatipur.dinajpur.gov.bd', NULL, NULL, NULL),
(409, 54, 'Bochaganj', 'বোচাগঞ্জ', 'bochaganj.dinajpur.gov.bd', NULL, NULL, NULL),
(410, 54, 'Kaharol', 'কাহারোল', 'kaharol.dinajpur.gov.bd', NULL, NULL, NULL),
(411, 54, 'Fulbari', 'ফুলবাড়ী', 'fulbari.dinajpur.gov.bd', NULL, NULL, NULL),
(412, 54, 'Dinajpur Sadar', 'দিনাজপুর সদর', 'dinajpursadar.dinajpur.gov.bd', NULL, NULL, NULL),
(413, 54, 'Hakimpur', 'হাকিমপুর', 'hakimpur.dinajpur.gov.bd', NULL, NULL, NULL),
(414, 54, 'Khansama', 'খানসামা', 'khansama.dinajpur.gov.bd', NULL, NULL, NULL),
(415, 54, 'Birol', 'বিরল', 'birol.dinajpur.gov.bd', NULL, NULL, NULL),
(416, 54, 'Chirirbandar', 'চিরিরবন্দর', 'chirirbandar.dinajpur.gov.bd', NULL, NULL, NULL),
(417, 55, 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', 'sadar.lalmonirhat.gov.bd', NULL, NULL, NULL),
(418, 55, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.lalmonirhat.gov.bd', NULL, NULL, NULL),
(419, 55, 'Hatibandha', 'হাতীবান্ধা', 'hatibandha.lalmonirhat.gov.bd', NULL, NULL, NULL),
(420, 55, 'Patgram', 'পাটগ্রাম', 'patgram.lalmonirhat.gov.bd', NULL, NULL, NULL),
(421, 55, 'Aditmari', 'আদিতমারী', 'aditmari.lalmonirhat.gov.bd', NULL, NULL, NULL),
(422, 56, 'Syedpur', 'সৈয়দপুর', 'syedpur.nilphamari.gov.bd', NULL, NULL, NULL),
(423, 56, 'Domar', 'ডোমার', 'domar.nilphamari.gov.bd', NULL, NULL, NULL),
(424, 56, 'Dimla', 'ডিমলা', 'dimla.nilphamari.gov.bd', NULL, NULL, NULL),
(425, 56, 'Jaldhaka', 'জলঢাকা', 'jaldhaka.nilphamari.gov.bd', NULL, NULL, NULL),
(426, 56, 'Kishorganj', 'কিশোরগঞ্জ', 'kishorganj.nilphamari.gov.bd', NULL, NULL, NULL),
(427, 56, 'Nilphamari Sadar', 'নীলফামারী সদর', 'nilphamarisadar.nilphamari.gov.bd', NULL, NULL, NULL),
(428, 57, 'Sadullapur', 'সাদুল্লাপুর', 'sadullapur.gaibandha.gov.bd', NULL, NULL, NULL),
(429, 57, 'Gaibandha Sadar', 'গাইবান্ধা সদর', 'gaibandhasadar.gaibandha.gov.bd', NULL, NULL, NULL),
(430, 57, 'Palashbari', 'পলাশবাড়ী', 'palashbari.gaibandha.gov.bd', NULL, NULL, NULL),
(431, 57, 'Saghata', 'সাঘাটা', 'saghata.gaibandha.gov.bd', NULL, NULL, NULL),
(432, 57, 'Gobindaganj', 'গোবিন্দগঞ্জ', 'gobindaganj.gaibandha.gov.bd', NULL, NULL, NULL),
(433, 57, 'Sundarganj', 'সুন্দরগঞ্জ', 'sundarganj.gaibandha.gov.bd', NULL, NULL, NULL),
(434, 57, 'Phulchari', 'ফুলছড়ি', 'phulchari.gaibandha.gov.bd', NULL, NULL, NULL),
(435, 58, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 'thakurgaonsadar.thakurgaon.gov.bd', NULL, NULL, NULL),
(436, 58, 'Pirganj', 'পীরগঞ্জ', 'pirganj.thakurgaon.gov.bd', NULL, NULL, NULL),
(437, 58, 'Ranisankail', 'রাণীশংকৈল', 'ranisankail.thakurgaon.gov.bd', NULL, NULL, NULL),
(438, 58, 'Haripur', 'হরিপুর', 'haripur.thakurgaon.gov.bd', NULL, NULL, NULL),
(439, 58, 'Baliadangi', 'বালিয়াডাঙ্গী', 'baliadangi.thakurgaon.gov.bd', NULL, NULL, NULL),
(440, 59, 'Rangpur Sadar', 'রংপুর সদর', 'rangpursadar.rangpur.gov.bd', NULL, NULL, NULL),
(441, 59, 'Gangachara', 'গংগাচড়া', 'gangachara.rangpur.gov.bd', NULL, NULL, NULL),
(442, 59, 'Taragonj', 'তারাগঞ্জ', 'taragonj.rangpur.gov.bd', NULL, NULL, NULL),
(443, 59, 'Badargonj', 'বদরগঞ্জ', 'badargonj.rangpur.gov.bd', NULL, NULL, NULL),
(444, 59, 'Mithapukur', 'মিঠাপুকুর', 'mithapukur.rangpur.gov.bd', NULL, NULL, NULL),
(445, 59, 'Pirgonj', 'পীরগঞ্জ', 'pirgonj.rangpur.gov.bd', NULL, NULL, NULL),
(446, 59, 'Kaunia', 'কাউনিয়া', 'kaunia.rangpur.gov.bd', NULL, NULL, NULL),
(447, 59, 'Pirgacha', 'পীরগাছা', 'pirgacha.rangpur.gov.bd', NULL, NULL, NULL),
(448, 60, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 'kurigramsadar.kurigram.gov.bd', NULL, NULL, NULL),
(449, 60, 'Nageshwari', 'নাগেশ্বরী', 'nageshwari.kurigram.gov.bd', NULL, NULL, NULL),
(450, 60, 'Bhurungamari', 'ভুরুঙ্গামারী', 'bhurungamari.kurigram.gov.bd', NULL, NULL, NULL),
(451, 60, 'Phulbari', 'ফুলবাড়ী', 'phulbari.kurigram.gov.bd', NULL, NULL, NULL),
(452, 60, 'Rajarhat', 'রাজারহাট', 'rajarhat.kurigram.gov.bd', NULL, NULL, NULL),
(453, 60, 'Ulipur', 'উলিপুর', 'ulipur.kurigram.gov.bd', NULL, NULL, NULL),
(454, 60, 'Chilmari', 'চিলমারী', 'chilmari.kurigram.gov.bd', NULL, NULL, NULL),
(455, 60, 'Rowmari', 'রৌমারী', 'rowmari.kurigram.gov.bd', NULL, NULL, NULL),
(456, 60, 'Charrajibpur', 'চর রাজিবপুর', 'charrajibpur.kurigram.gov.bd', NULL, NULL, NULL),
(457, 61, 'Sherpur Sadar', 'শেরপুর সদর', 'sherpursadar.sherpur.gov.bd', NULL, NULL, NULL),
(458, 61, 'Nalitabari', 'নালিতাবাড়ী', 'nalitabari.sherpur.gov.bd', NULL, NULL, NULL),
(459, 61, 'Sreebordi', 'শ্রীবরদী', 'sreebordi.sherpur.gov.bd', NULL, NULL, NULL),
(460, 61, 'Nokla', 'নকলা', 'nokla.sherpur.gov.bd', NULL, NULL, NULL),
(461, 61, 'Jhenaigati', 'ঝিনাইগাতী', 'jhenaigati.sherpur.gov.bd', NULL, NULL, NULL),
(462, 62, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbaria.mymensingh.gov.bd', NULL, NULL, NULL),
(463, 62, 'Trishal', 'ত্রিশাল', 'trishal.mymensingh.gov.bd', NULL, NULL, NULL),
(464, 62, 'Bhaluka', 'ভালুকা', 'bhaluka.mymensingh.gov.bd', NULL, NULL, NULL),
(465, 62, 'Muktagacha', 'মুক্তাগাছা', 'muktagacha.mymensingh.gov.bd', NULL, NULL, NULL),
(466, 62, 'Mymensingh Sadar', 'ময়মনসিংহ সদর', 'mymensinghsadar.mymensingh.gov.bd', NULL, NULL, NULL),
(467, 62, 'Dhobaura', 'ধোবাউড়া', 'dhobaura.mymensingh.gov.bd', NULL, NULL, NULL),
(468, 62, 'Phulpur', 'ফুলপুর', 'phulpur.mymensingh.gov.bd', NULL, NULL, NULL),
(469, 62, 'Haluaghat', 'হালুয়াঘাট', 'haluaghat.mymensingh.gov.bd', NULL, NULL, NULL),
(470, 62, 'Gouripur', 'গৌরীপুর', 'gouripur.mymensingh.gov.bd', NULL, NULL, NULL),
(471, 62, 'Gafargaon', 'গফরগাঁও', 'gafargaon.mymensingh.gov.bd', NULL, NULL, NULL),
(472, 62, 'Iswarganj', 'ঈশ্বরগঞ্জ', 'iswarganj.mymensingh.gov.bd', NULL, NULL, NULL),
(473, 62, 'Nandail', 'নান্দাইল', 'nandail.mymensingh.gov.bd', NULL, NULL, NULL),
(474, 62, 'Tarakanda', 'তারাকান্দা', 'tarakanda.mymensingh.gov.bd', NULL, NULL, NULL),
(475, 63, 'Jamalpur Sadar', 'জামালপুর সদর', 'jamalpursadar.jamalpur.gov.bd', NULL, NULL, NULL),
(476, 63, 'Melandah', 'মেলান্দহ', 'melandah.jamalpur.gov.bd', NULL, NULL, NULL),
(477, 63, 'Islampur', 'ইসলামপুর', 'islampur.jamalpur.gov.bd', NULL, NULL, NULL),
(478, 63, 'Dewangonj', 'দেওয়ানগঞ্জ', 'dewangonj.jamalpur.gov.bd', NULL, NULL, NULL),
(479, 63, 'Sarishabari', 'সরিষাবাড়ী', 'sarishabari.jamalpur.gov.bd', NULL, NULL, NULL),
(480, 63, 'Madarganj', 'মাদারগঞ্জ', 'madarganj.jamalpur.gov.bd', NULL, NULL, NULL),
(481, 63, 'Bokshiganj', 'বকশীগঞ্জ', 'bokshiganj.jamalpur.gov.bd', NULL, NULL, NULL),
(482, 64, 'Barhatta', 'বারহাট্টা', 'barhatta.netrokona.gov.bd', NULL, NULL, NULL),
(483, 64, 'Durgapur', 'দুর্গাপুর', 'durgapur.netrokona.gov.bd', NULL, NULL, NULL),
(484, 64, 'Kendua', 'কেন্দুয়া', 'kendua.netrokona.gov.bd', NULL, NULL, NULL),
(485, 64, 'Atpara', 'আটপাড়া', 'atpara.netrokona.gov.bd', NULL, NULL, NULL),
(486, 64, 'Madan', 'মদন', 'madan.netrokona.gov.bd', NULL, NULL, NULL),
(487, 64, 'Khaliajuri', 'খালিয়াজুরী', 'khaliajuri.netrokona.gov.bd', NULL, NULL, NULL),
(488, 64, 'Kalmakanda', 'কলমাকান্দা', 'kalmakanda.netrokona.gov.bd', NULL, NULL, NULL),
(489, 64, 'Mohongonj', 'মোহনগঞ্জ', 'mohongonj.netrokona.gov.bd', NULL, NULL, NULL),
(490, 64, 'Purbadhala', 'পূর্বধলা', 'purbadhala.netrokona.gov.bd', NULL, NULL, NULL),
(491, 64, 'Netrokona Sadar', 'নেত্রকোণা সদর', 'netrokonasadar.netrokona.gov.bd', NULL, NULL, NULL),
(493, 39, 'Madhyanagar', 'মধ্যনগর', 'null', NULL, NULL, NULL),
(494, 50, 'Dasar', 'ডাসার', 'null', NULL, NULL, NULL),
(495, 47, 'Demra', 'ডেমরা', 'demra.com', NULL, NULL, NULL),
(496, 47, 'Dhaka Cantonment ', 'ঢাকা ক্যান্টনমেন্ট', 'dhakacant.com', NULL, NULL, NULL),
(498, 47, 'Dhanmondi', 'ধানমন্ডি', 'dhanmondi.com', NULL, NULL, NULL),
(499, 47, 'Gulshan', '', 'gulsan.com', NULL, NULL, NULL),
(500, 47, 'Jatrabari', '', 'jatrabari.com', NULL, NULL, NULL),
(501, 47, 'Joypara', '', 'joy.com', NULL, NULL, NULL),
(502, 47, 'Keraniganj', '', 'keranigonj.com', NULL, NULL, NULL),
(503, 47, 'Khilgaon', '', 'khilgaon.com', NULL, NULL, NULL),
(504, 47, 'Khilkhet', '', 'Khilkhet.com', NULL, NULL, NULL),
(505, 47, 'Lalbag', '', 'Lalbag.com', NULL, NULL, NULL),
(506, 47, 'Mirpur', 'Mirpur', 'Mirpur.com', NULL, NULL, NULL),
(507, 47, 'Mohammadpur', 'Mohammadpur', 'Mohammadpur.com', NULL, NULL, NULL),
(508, 47, 'Motijheel', 'Motijheel', 'Motijheel.com', NULL, NULL, NULL),
(509, 47, 'Nawabganj', 'Nawabganj', 'Nawabganj.com', NULL, NULL, NULL),
(510, 47, 'New market', 'New-market', 'Newmarket.com', NULL, NULL, NULL),
(511, 47, 'Palton', 'Palton', 'Palton.com', NULL, NULL, NULL),
(512, 47, 'Ramna', 'Ramna', 'Ramna.com', NULL, NULL, NULL),
(513, 47, 'Sabujbag', 'Sabujbag', 'Sabujbag.com', NULL, NULL, NULL),
(514, 47, 'Savar', 'Savar', 'Savar.com', NULL, NULL, NULL),
(515, 47, 'Uttara', 'Uttara', 'Uttara.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `active` set('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `category_id`, `subcategory_id`, `name`, `description`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 14, 'Noun', 'A noun is a word that names something, such as a person, place, thing, or idea.', '1', '2023-07-13 21:50:01', '2023-07-29 11:27:04', NULL),
(2, 2, 14, 'Parts of Speech', 'The Eight Parts of Speech.', '1', '2023-07-13 21:51:14', '2023-09-02 07:32:58', NULL),
(3, 1, 3, 'Viva-Voice', 'Viva-Voice', '1', '2023-07-14 15:29:54', '2023-09-02 07:35:13', NULL),
(4, NULL, 1, 'History', 'Bengali language, an eastern Indo-Aryan language · The endonym of Bengal, a geographical and ethno-linguistic region in South Asia.', '1', '2023-07-15 16:27:23', '2023-07-15 16:27:23', NULL),
(5, 1, 1, 'ও আমার দেশের মাটি', 'Bangla Version', '1', '2023-07-16 21:35:11', '2023-09-02 07:36:18', NULL),
(6, NULL, 1, 'Chapter-2', 'English Version', '1', '2023-07-16 21:56:25', '2023-07-16 21:56:25', NULL),
(7, NULL, 1, 'Chapter-1', 'English Version', '1', '2023-07-16 21:58:45', '2023-07-16 21:58:45', NULL),
(8, 6, 6, 'Introduction of html', 'IT Scholarship Programme', '1', '2023-07-16 22:23:15', '2023-07-16 22:26:51', NULL),
(9, 6, 7, 'Introduction of JavaScript', 'Introduction of JavaScript', '1', '2023-07-29 06:36:20', '2023-07-29 07:58:20', NULL),
(10, 6, 8, 'Introduction of CSS', 'Introduction of CSS', '1', '2023-07-29 07:21:16', '2023-07-29 07:57:58', NULL),
(11, 6, 9, 'Introduction of Bootstrap', 'Introduction of Bootstrap', '1', '2023-07-29 07:21:30', '2023-07-29 07:57:35', NULL),
(12, 6, 12, 'Introduction of PHP', 'Introduction of PHP', '1', '2023-07-29 07:21:54', '2023-07-29 07:00:01', NULL),
(13, 6, 10, 'Introduction of Angular', 'Introduction of Angular', '1', '2023-07-29 07:39:27', '2023-07-29 07:00:55', NULL),
(14, NULL, 20, 'Rational Numbers', 'Rational Numbers', '1', '2023-09-02 12:43:59', '2023-09-02 12:43:59', NULL),
(15, NULL, 23, 'Liberation war', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', '1', '2023-09-02 23:07:18', '2023-09-02 23:07:18', NULL),
(16, 11, 23, 'History', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', '1', '2023-09-02 23:07:45', '2023-09-02 23:13:21', NULL),
(17, NULL, 23, 'বিশ্ব ঐতিহ্য ও বাংলাদেশ', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', '1', '2023-09-02 23:35:16', '2023-09-02 23:35:16', NULL),
(18, NULL, 23, 'বাংলাদেশের উপজাতি ও ক্ষুদ্র-নৃতাত্বিক জনগোষ্ঠী', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', '1', '2023-09-02 23:43:09', '2023-09-02 23:43:09', NULL),
(19, NULL, 24, 'আন্তর্জাতিক সংস্থা ও সংগঠন', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', '1', '2023-09-03 00:28:48', '2023-09-03 00:28:48', NULL),
(20, NULL, 24, 'বিখ্যাত ব্যাক্তিদের উক্তি ও উপাধি', 'General Knowledge or General Awareness is an important and common section in all competitive and government recruitment examinations such as UPSC, SSC, Bank PO/Clerk, and so forth.', '1', '2023-09-03 00:29:45', '2023-09-03 00:29:45', NULL),
(21, NULL, 20, 'Chapter 11', 'MCQ Questions for Class 8 Maths Chapter 11 Mensuration with Answers', '1', '2023-09-03 15:23:18', '2023-09-03 15:23:18', NULL),
(22, NULL, 25, 'Introduction of React', 'Intro', '1', '2023-09-11 07:54:15', '2023-09-11 07:54:15', NULL),
(23, 10, 26, 'ধ্বনি ও বর্ণ', 'ধ্বনি ও বর্ণ', '1', '2023-09-11 17:07:41', '2023-09-11 17:19:03', NULL),
(24, NULL, 27, 'Parts of Speech', 'All Kinds of Parts of Speech', '1', '2023-07-31 06:38:00', '2023-07-31 06:38:00', NULL),
(25, NULL, 31, 'Domain', 'All About Domain', '1', '2023-08-12 02:28:54', '2023-08-12 02:28:54', NULL),
(26, NULL, NULL, 'Random Quiz', '', '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(5) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin Mostak', 'admin@gmail.com', '2', NULL, '$2y$10$AUcfqQ2L6599AMuUpb/7H.vwsg2MN63h9iowAvTP06/mhbvsJlS6C', 'UdJlLy3tAh3m18PNl0A7L2a2QRoJaeH4j77N8nH65RQds2ewhnj8jxr766LO', '2023-07-12 04:39:16', '2023-07-30 11:35:11', NULL),
(2, 'jannat', 'jannat@gmail.com', '2', NULL, '$2y$10$AUcfqQ2L6599AMuUpb/7H.vwsg2MN63h9iowAvTP06/mhbvsJlS6C', NULL, NULL, NULL, NULL),
(3, 'admin2', 'admin2@gmail.com', '2', NULL, '$2y$10$PCYOjJEqcPCLleerUXnBIuvw/e5sg2Tq0OS01tSqm8ChGngU6VM9W', NULL, '2023-07-23 03:56:24', '2023-07-23 03:56:24', NULL),
(4, 'jalal', 'jalal@gmail.com', NULL, NULL, '$2y$10$0NxO7c.kcrg6XaPJzKDdP.9oQmiAtJYKOL5uiKUEDMYlOSw/tV.e6', NULL, '2023-07-30 06:25:55', '2023-07-30 06:25:55', NULL),
(5, 'Asif', 'asif@gmail.com', NULL, NULL, '$2y$10$FHTi8ipVnGA9htvapB.4fugxve0qkgh06TUkqrUiY5sD3r0JFz1u6', NULL, '2023-07-30 06:26:34', '2023-07-30 06:26:34', NULL),
(6, 'Mahim', 'mahim@gmail.com', NULL, NULL, '$2y$10$AVRGXj7nmkhKLwgUyAplC.n84.Ot2Aw6rHmRKRsUIiXOQIi6c5XFC', NULL, '2023-07-30 06:27:11', '2023-07-30 06:27:11', NULL),
(7, 'Sharif', 'sharif@gmail.com', NULL, NULL, '$2y$10$EZ2Pv4Pzh8NoCyOiKIUGyuDkyDRHgT9/.d.D16h/UPNaFh8vnOTj6', NULL, '2023-07-30 06:27:53', '2023-07-30 06:27:53', NULL),
(8, 'Msotak', 'mostak@gmail.com', NULL, NULL, '$2y$10$2u8/gLHpm7bDLg/D4Acev.xU/1f72JPk3npF6psYpKBSh5w.Mp7e6', NULL, '2023-07-30 06:28:55', '2023-07-30 06:28:55', NULL),
(9, 'Shohan', 'shohan@gmail.com', NULL, NULL, '$2y$10$EiShtWgHSxRwS102eAQhSezOVqzAnahNpXrUS6ZoCzUrzpGF3ywpG', NULL, '2023-07-30 06:33:36', '2023-07-30 06:33:36', NULL),
(10, 'Mamun', 'mamun@gmail.com', NULL, NULL, '$2y$10$hDOyZuK0kOZK/HtMPG33K.FJQpkJw1WOVoaPcYnvdjvd8dNTWvZEq', NULL, '2023-07-30 06:35:18', '2023-07-30 06:35:18', NULL),
(11, 'Simon', 'simon@gmail.com', NULL, NULL, '$2y$10$r5xLHVob4k.VNRXFjzEasO78ZBa1BmJLH8O1Li/aJ6E2afG7lmBTi', NULL, '2023-07-30 06:36:43', '2023-07-30 06:36:43', NULL),
(12, 'Tanvir', 'tanvir@gmail.com', '1', NULL, '$2y$10$WEHR2GA9gsss3pp0G.WxsutKLhPDTK5y9pPPGDkbQA.buFWYfrVH.', NULL, '2023-08-20 10:33:06', '2023-08-20 10:33:06', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_user_id_foreign` (`user_id`),
  ADD KEY `answers_topic_id_foreign` (`topic_id`),
  ADD KEY `answers_qset_id_foreign` (`qset_id`);

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `details_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_board_id_foreign` (`board_id`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enrolls_category_id_foreign` (`category_id`),
  ADD KEY `enrolls_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `leaderboards`
--
ALTER TABLE `leaderboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaderboards_user_id_foreign` (`user_id`),
  ADD KEY `leaderboards_topic_id_foreign` (`topic_id`),
  ADD KEY `leaderboards_quizset_id_foreign` (`quizset_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `quizsets`
--
ALTER TABLE `quizsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizsets_user_id_foreign` (`user_id`),
  ADD KEY `quizsets_category_id_foreign` (`category_id`),
  ADD KEY `quizsets_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `quizsets_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_user_id_foreign` (`user_id`),
  ADD KEY `quizzes_category_id_foreign` (`category_id`),
  ADD KEY `quizzes_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `quizzes_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `thanas`
--
ALTER TABLE `thanas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thanas_district_id_foreign` (`district_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_category_id_foreign` (`category_id`),
  ADD KEY `topics_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaderboards`
--
ALTER TABLE `leaderboards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizsets`
--
ALTER TABLE `quizsets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `thanas`
--
ALTER TABLE `thanas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_qset_id_foreign` FOREIGN KEY (`qset_id`) REFERENCES `quizsets` (`id`),
  ADD CONSTRAINT `answers_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`),
  ADD CONSTRAINT `answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`);

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_board_id_foreign` FOREIGN KEY (`board_id`) REFERENCES `boards` (`id`);

--
-- Constraints for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD CONSTRAINT `enrolls_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `enrolls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `leaderboards`
--
ALTER TABLE `leaderboards`
  ADD CONSTRAINT `leaderboards_quizset_id_foreign` FOREIGN KEY (`quizset_id`) REFERENCES `quizsets` (`id`),
  ADD CONSTRAINT `leaderboards_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`),
  ADD CONSTRAINT `leaderboards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `quizsets`
--
ALTER TABLE `quizsets`
  ADD CONSTRAINT `quizsets_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `quizsets_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`),
  ADD CONSTRAINT `quizsets_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`),
  ADD CONSTRAINT `quizsets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `quizzes_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`),
  ADD CONSTRAINT `quizzes_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`),
  ADD CONSTRAINT `quizzes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `thanas`
--
ALTER TABLE `thanas`
  ADD CONSTRAINT `thanas_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`);

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `topics_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
