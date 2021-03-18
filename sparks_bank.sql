-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 17, 2021 at 09:19 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Sno` int(3) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Account No.` varchar(8) NOT NULL,
  `Balance` int(5) NOT NULL,
  `Date joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Sno`, `Name`, `Email`, `Account No.`, `Balance`, `Date joined`) VALUES
(1, 'Tim ferris', 'iamtim.feris@gmail.com', 'SLA0001', 29801, '2021-01-11 22:01:53'),
(2, 'Arun kumar', 'iamarun.kumar@novelty.com', 'SLA0002', 13192, '2021-01-11 22:02:53'),
(3, 'Krisha menon', 'iamkrisha.menon@novelty.com', 'SLA0003', 74950, '2021-01-11 22:04:17'),
(4, 'Ram Lalchandani', 'iamram@novelty.com', 'SLA0004', 97305, '2021-01-11 22:04:56'),
(5, 'Adityam Lalchandani', 'iamadityam@novelty.com', 'SLA0005', 5818, '2021-01-11 22:05:43'),
(6, 'Reyan dsouza', 'iamreyan.dsouza@novelty.com', 'SLA0006', 2007, '2021-01-11 22:06:53'),
(7, 'Neelima desai', 'iamneelima.desai@novelty.com', 'SLA0007', 8401, '2021-01-11 22:16:09'),
(8, 'Gabbar', 'iamgabbar@novelty.com', 'SLA0008', 23000, '2021-01-11 22:16:58'),
(9, 'Vasooli Bhai', 'iamvasooli.bhai@novelty.com', 'SLA0009', 84666, '2021-01-11 22:18:00'),
(10, 'Kachra seth', 'iamkachra.seth@novelty.com', 'SLA0010', 11111, '2021-01-11 22:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Sno` int(4) NOT NULL,
  `Sender` varchar(30) NOT NULL,
  `Receiver` varchar(30) NOT NULL,
  `Money` int(5) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Sno`, `Sender`, `Receiver`, `Money`, `Date`) VALUES
(9, 'Tim ferris', '', 0, '2021-01-15 21:05:38'),
(10, '', '', 0, '2021-01-15 21:05:41'),
(11, 'Tim ferris', '', 0, '2021-01-15 21:07:21'),
(12, 'Tim ferris', '', 0, '2021-01-15 21:07:56'),
(13, 'Tim ferris', '', 0, '2021-01-15 23:11:35'),
(14, 'Tim ferris', '', 0, '2021-01-15 23:17:52'),
(15, '', '', 0, '2021-01-15 23:17:56'),
(16, 'Krisha menon', '', 0, '2021-01-15 23:18:12'),
(17, '', '', 0, '2021-01-15 23:19:18'),
(18, 'Arun kumar', '', 90, '2021-01-15 23:54:03'),
(19, 'Arun kumar', '', 0, '2021-01-16 00:01:24'),
(20, 'Arun kumar', '', 4, '2021-01-16 00:01:35'),
(21, 'Ram Lalchandani', '', 0, '2021-01-16 00:02:15'),
(22, 'Ram Lalchandani', '', 0, '2021-01-16 00:04:15'),
(23, 'Ram Lalchandani', '', 0, '2021-01-16 00:04:24'),
(24, 'Krisha menon', '', 0, '2021-01-16 00:08:07'),
(25, 'Krisha menon', '', 9, '2021-01-16 00:08:23'),
(26, 'Krisha menon', '', 0, '2021-01-16 00:08:50'),
(27, 'Ram Lalchandani', '', 0, '2021-01-16 00:10:09'),
(28, 'Ram Lalchandani', '', 900, '2021-01-16 00:10:25'),
(29, 'Krisha menon', '', 0, '2021-01-16 00:13:29'),
(30, 'Krisha menon', '', 0, '2021-01-16 00:14:00'),
(31, 'Ram Lalchandani', '', 0, '2021-01-16 00:14:04'),
(32, 'Ram Lalchandani', '', 0, '2021-01-16 00:14:07'),
(33, 'Adityam Lalchandani', '', 0, '2021-01-16 00:15:09'),
(34, 'Adityam Lalchandani', '', 0, '2021-01-16 00:15:15'),
(35, 'Adityam Lalchandani', '', 0, '2021-01-16 00:15:19'),
(36, 'Adityam Lalchandani', '', 56, '2021-01-16 00:15:34'),
(37, '', '', 0, '2021-01-16 00:18:30'),
(38, 'Reyan dsouza', '', 0, '2021-01-16 00:21:06'),
(39, 'Reyan dsouza', '', 4, '2021-01-16 00:21:35'),
(40, '', '', 0, '2021-01-16 00:26:24'),
(41, '', '', 0, '2021-01-16 00:26:27'),
(42, '', '', 0, '2021-01-16 00:27:07'),
(43, '', '', 0, '2021-01-16 00:27:09'),
(44, '', '', 0, '2021-01-16 00:27:14'),
(45, '', '', 0, '2021-01-16 00:27:16'),
(46, '', '', 0, '2021-01-16 00:27:18'),
(47, 'Adityam Lalchandani', '', 0, '2021-01-16 00:28:04'),
(48, 'Adityam Lalchandani', '', 3, '2021-01-16 00:28:14'),
(49, 'Adityam Lalchandani', '', 3, '2021-01-16 00:28:33'),
(50, 'Adityam Lalchandani', '', 3, '2021-01-16 00:30:08'),
(51, 'Adityam Lalchandani', '', 0, '2021-01-16 00:30:10'),
(52, 'Adityam Lalchandani', '', 0, '2021-01-16 00:30:14'),
(53, 'Adityam Lalchandani', '', 0, '2021-01-16 00:30:25'),
(54, '', '', 0, '2021-01-17 22:01:39'),
(55, 'Ram Lalchandani', '', 0, '2021-01-17 22:01:52'),
(56, 'Ram Lalchandani', '', 0, '2021-01-17 22:02:15'),
(57, 'Ram Lalchandani', '', 0, '2021-01-17 22:03:04'),
(58, 'Ram Lalchandani', '', 0, '2021-01-17 22:20:24'),
(59, '', '', 0, '2021-01-17 22:20:29'),
(60, 'Krisha menon', '', 0, '2021-01-17 22:20:45'),
(61, 'Adityam Lalchandani', '', 0, '2021-01-17 22:26:38'),
(62, '', '', 0, '2021-01-17 22:26:57'),
(63, '', '', 0, '2021-01-17 22:26:58'),
(64, 'Ram Lalchandani', '', 0, '2021-01-17 22:38:48'),
(65, '', '', 0, '2021-01-17 22:38:51'),
(66, '', '', 0, '2021-01-17 22:38:51'),
(67, 'Ram Lalchandani', '', 0, '2021-01-17 22:45:34'),
(68, 'Ram Lalchandani', '', 0, '2021-01-17 22:48:26'),
(69, 'Arun kumar', '', 0, '2021-01-17 22:48:32'),
(70, 'Adityam Lalchandani', '', 0, '2021-01-17 22:49:50'),
(71, 'Adityam Lalchandani', '', 54, '2021-01-17 22:49:58'),
(72, 'Arun kumar', '', 0, '2021-01-17 22:53:38'),
(73, 'Arun kumar', '', 0, '2021-01-17 22:54:20'),
(74, 'Arun kumar', '', 0, '2021-01-17 22:55:31'),
(75, 'Arun kumar', '', 3, '2021-01-17 22:55:40'),
(76, 'Arun kumar', '', 3, '2021-01-17 23:00:14'),
(77, 'Neelima desai', '', 0, '2021-01-17 23:00:20'),
(78, 'Krisha menon', '', 0, '2021-01-17 23:09:13'),
(79, 'Reyan dsouza', '', 0, '2021-01-18 01:38:06'),
(80, 'Neelima desai', '', 0, '2021-01-18 01:38:53'),
(81, 'Gabbar', '', 0, '2021-01-18 01:42:16'),
(82, 'Gabbar', '', 0, '2021-01-18 01:49:45'),
(83, 'Krisha menon', '', 0, '2021-01-18 12:19:47'),
(84, 'Gabbar', '', 0, '2021-01-18 12:19:51'),
(85, 'Gabbar', '', 0, '2021-01-18 12:24:14'),
(86, 'Vasooli Bhai', '', 0, '2021-01-18 12:24:19'),
(87, 'Vasooli Bhai', '', 1, '2021-01-18 13:08:34'),
(88, 'Vasooli Bhai', '', 1, '2021-01-18 13:12:43'),
(89, 'Gabbar', 'Tim ferris', 1, '2021-01-18 13:17:22'),
(90, 'Gabbar', 'Tim ferris', 1, '2021-01-18 13:31:23'),
(91, 'Gabbar', 'Tim ferris', 1, '2021-01-18 13:31:26'),
(92, 'Vasooli Bhai', '', 0, '2021-01-18 13:39:50'),
(93, 'Vasooli Bhai', '', 0, '2021-01-18 13:41:10'),
(94, 'Vasooli Bhai', '', 0, '2021-01-18 13:41:43'),
(95, 'Kachra seth', 'Tim ferris', 0, '2021-01-18 13:43:06'),
(96, 'Neelima desai', 'Tim ferris', 1, '2021-01-18 13:43:18'),
(97, 'Kachra seth', 'Tim ferris', 1, '2021-01-18 13:43:43'),
(98, 'Vasooli Bhai', 'Tim ferris', 1, '2021-01-18 13:46:25'),
(99, 'Kachra seth', '', 0, '2021-01-18 13:49:58'),
(100, 'Kachra seth', '', 0, '2021-01-18 13:50:51'),
(101, 'Gabbar', '', 0, '2021-01-18 13:54:55'),
(102, 'Neelima desai', '', 0, '2021-01-18 13:56:08'),
(103, 'Reyan dsouza', '', 0, '2021-01-18 13:57:29'),
(104, 'Vasooli Bhai', '', 0, '2021-01-18 13:58:53'),
(105, 'Gabbar', 'Tim ferris', 1, '2021-01-19 13:49:46'),
(106, 'Gabbar', 'Tim ferris', 1, '2021-01-19 13:53:27'),
(107, 'Gabbar', 'Tim ferris', 1, '2021-01-19 13:54:16'),
(108, 'Gabbar', 'Tim ferris', 1, '2021-01-19 13:54:32'),
(109, 'Gabbar', 'Tim ferris', 1, '2021-03-08 13:54:51'),
(110, 'Vasooli Bhai', 'Tim ferris', 1, '2021-03-08 14:18:01'),
(111, 'Vasooli Bhai', 'Tim ferris', 1, '2021-03-08 14:28:49'),
(112, 'Gabbar', 'Tim ferris', 1, '2021-03-08 14:30:30'),
(113, 'Kachra seth', 'Tim ferris', 1, '2021-03-08 14:48:22'),
(114, 'Kachra seth', 'Tim ferris', 1, '2021-03-08 14:51:07'),
(115, 'Kachra seth', 'Tim ferris', 1, '2021-03-08 14:51:17'),
(116, 'Tim ferris', 'Kachra seth', 10, '2021-03-08 14:51:59'),
(117, 'Tim ferris', 'Vasooli Bhai', 100, '2021-03-08 14:52:14'),
(118, '', '', 0, '2021-03-08 14:53:59'),
(119, 'Reyan dsouza', '', 0, '2021-03-08 10:26:06'),
(120, 'Krisha menon', '', 4, '2021-03-08 10:37:58'),
(121, 'Krisha menon', '', 2, '2021-03-08 10:38:14'),
(122, 'Krisha menon', 'Arun kumar', 3, '2021-03-08 10:39:40'),
(123, 'Tim ferris', '', 0, '2021-03-08 10:44:33'),
(124, 'Krisha menon', '', 0, '2021-03-08 10:45:54'),
(125, 'Arun kumar', '', 0, '2021-03-08 10:56:36'),
(126, 'Arun kumar', 'Krisha menon', 9, '2021-03-08 10:57:21'),
(127, 'Arun kumar', 'Krisha menon', 9, '2021-03-08 11:00:29'),
(128, 'Krisha menon', '', 0, '2021-03-08 11:09:09'),
(129, 'Arun kumar', 'Gabbar', 1, '2021-01-20 11:25:34'),
(130, 'Arun kumar', 'Gabbar', 1, '2021-03-08 11:26:37'),
(131, 'Arun kumar', 'Gabbar', 1, '2021-01-20 11:28:50'),
(132, 'Arun kumar', 'Gabbar', 1, '2021-03-08 11:30:42'),
(133, 'Arun kumar', 'Gabbar', 1, '2021-03-08 11:34:49'),
(156, 'Reyan dsouza', 'Neelima desai', 800, '2021-03-08 16:49:10'),
(157, 'Ram Lalchandani', 'Reyan dsouza', 900, '2021-03-08 16:49:55'),
(158, 'Ram Lalchandani', '', 0, '2021-03-08 16:50:02'),
(159, 'Tim ferris', 'Krisha menon', 3, '2021-03-08 17:17:38'),
(160, 'Adityam Lalchandani', 'Arun kumar', 1, '2021-03-08 17:18:13'),
(161, 'Krisha menon', 'Reyan dsouza', 1, '2021-03-08 17:18:54'),
(162, 'Krisha menon', 'Reyan dsouza', 1, '2021-03-08 17:19:06'),
(163, 'Gabbar', 'Reyan dsouza', 1, '2021-03-08 17:19:21'),
(164, 'Vasooli Bhai', 'Kachra seth', 1, '2021-03-08 18:20:05'),
(165, 'Vasooli Bhai', 'Arun kumar', 1, '2021-03-08 18:20:19'),
(166, 'Vasooli Bhai', 'Ram Lalchandani', 3, '2021-03-08 18:20:29'),
(167, 'Vasooli Bhai', 'Krisha menon', 7, '2021-03-08 18:20:46'),
(168, 'Krisha menon', 'Neelima desai', 7, '2021-03-08 18:21:01'),
(169, 'Krisha menon', 'Reyan dsouza', 9, '2021-03-08 18:21:11'),
(170, 'Vasooli Bhai', 'Tim ferris', 1, '2021-03-08 18:22:06'),
(171, 'Vasooli Bhai', 'Arun kumar', 80, '2021-03-08 18:22:16'),
(172, 'Vasooli Bhai', 'Ram Lalchandani', 101, '2021-03-08 18:22:27'),
(173, 'Vasooli Bhai', 'Reyan dsouza', 1001, '2021-03-08 18:22:40'),
(174, 'Vasooli Bhai', 'Arun kumar', 783, '2021-03-08 18:22:59'),
(175, 'Krisha menon', 'Adityam Lalchandani', 3941, '2021-03-08 18:24:21'),
(176, 'Arun kumar', 'Adityam Lalchandani', 1, '2021-03-08 21:58:40'),
(177, 'Tim ferris', 'Ram Lalchandani', 3, '2021-03-09 02:27:00'),
(178, 'Tim ferris', 'Neelima desai', 101, '2021-03-09 02:27:17'),
(179, 'Krisha menon', 'Neelima desai', 1001, '2021-03-09 02:27:39'),
(180, 'Krisha menon', 'Neelima desai', 101, '2021-03-09 02:50:28'),
(181, 'Vasooli Bhai', 'Arun kumar', 455, '2021-03-09 02:50:46'),
(182, 'Arun kumar', 'Krisha menon', 3, '2021-03-09 02:56:19'),
(183, 'Reyan dsouza', 'Arun kumar', 1, '2021-03-18 01:47:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `Sno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
