-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2016 at 03:35 PM
-- Server version: 5.7.16
-- PHP Version: 7.1.0RC3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pset7`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` char(6) NOT NULL,
  `symbol` char(5) NOT NULL,
  `shares` varchar(65) NOT NULL,
  `price` int(65) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `user_id`, `type`, `symbol`, `shares`, `price`, `date`) VALUES
(265, 12, 'DONATE', 'Cash', '0', 10, '2016-08-19 15:31:34'),
(266, 12, 'DONATE', 'Cash', '$$$', 1, '2016-08-19 15:32:56'),
(267, 12, 'DONATE', 'Cash', '$$$', 1, '2016-08-19 15:33:19'),
(268, 12, 'BUY', 'FREE', '10', 1, '2016-08-19 15:33:32'),
(269, 14, 'BUY', 'GOOGL', '1', 807, '2016-10-18 10:12:18'),
(270, 14, 'BUY', 'FREE', '1', 1, '2016-10-18 10:12:26'),
(271, 14, 'SELL', 'GOOGL', '1', 807, '2016-10-18 10:12:40'),
(272, 14, 'DONATE', 'Cash', '$$$', 1, '2016-10-18 10:12:43'),
(273, 14, 'DONATE', 'Cash', '$$$', 1, '2016-10-18 10:12:49'),
(274, 14, 'DONATE', 'Cash', '$$$', 1000, '2016-10-18 10:13:04'),
(275, 14, 'SELL', 'FREE', '1', 1, '2016-10-18 10:34:44'),
(276, 14, 'BUY', 'GOOGL', '9', 819, '2016-10-18 14:05:19'),
(277, 14, 'SELL', 'GOOGL', '9', 819, '2016-10-18 14:06:02'),
(278, 14, 'DONATE', 'Cash', '$$$', 4000, '2016-10-18 14:06:38'),
(279, 14, 'BUY', 'BIDU', '10', 177, '2016-10-18 14:16:05'),
(280, 14, 'BUY', 'GOOGL', '1', 824, '2016-10-24 10:23:11'),
(281, 14, 'SELL', 'BIDU', '10', 177, '2016-10-24 10:24:01'),
(282, 14, 'BUY', 'BIDU', '20', 177, '2016-10-24 10:24:21'),
(283, 14, 'SELL', 'BIDU', '20', 177, '2016-10-25 15:32:43'),
(284, 14, 'BUY', 'BIDU', '1', 178, '2016-10-25 15:32:50'),
(285, 14, 'BUY', 'FREE', '1', 1, '2016-10-25 15:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `shares` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `user_id`, `symbol`, `shares`) VALUES
(255, 12, 'GOOGL', 2),
(256, 12, 'FREE', 10),
(261, 14, 'GOOGL', 1),
(263, 14, 'BIDU', 1),
(264, 14, 'FREE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `cash` decimal(65,4) UNSIGNED NOT NULL DEFAULT '0.0000',
  `username` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `cash`, `username`, `hash`) VALUES
(1, '10000.0000', 'andi', '$2y$10$c.e4DK7pVyLT.stmHxgAleWq4yViMmkwKz3x8XCo4b/u3r8g5OTnS'),
(2, '10000.0000', 'caesar', '$2y$10$0p2dlmu6HnhzEMf9UaUIfuaQP7tFVDMxgFcVs0irhGqhOxt6hJFaa'),
(3, '10000.0000', 'eli', '$2y$10$COO6EnTVrCPCEddZyWeEJeH9qPCwPkCS0jJpusNiru.XpRN6Jf7HW'),
(4, '10000.0000', 'hdan', '$2y$10$o9a4ZoHqVkVHSno6j.k34.wC.qzgeQTBHiwa3rpnLq7j2PlPJHo1G'),
(5, '10000.0000', 'jason', '$2y$10$ci2zwcWLJmSSqyhCnHKUF.AjoysFMvlIb1w4zfmCS7/WaOrmBnLNe'),
(6, '10000.0000', 'john', '$2y$10$dy.LVhWgoxIQHAgfCStWietGdJCPjnNrxKNRs5twGcMrQvAPPIxSy'),
(7, '10000.0000', 'levatich', '$2y$10$fBfk7L/QFiplffZdo6etM.096pt4Oyz2imLSp5s8HUAykdLXaz6MK'),
(8, '10000.0000', 'rob', '$2y$10$3pRWcBbGdAdzdDiVVybKSeFq6C50g80zyPRAxcsh2t5UnwAkG.I.2'),
(9, '10000.0000', 'skroob', '$2y$10$395b7wODm.o2N7W5UZSXXuXwrC0OtFB17w4VjPnCIn/nvv9e4XUQK'),
(10, '10000.0000', 'zamyla', '$2y$10$UOaRF0LGOaeHG4oaEkfO4O7vfI34B1W23WqHr9zCpXL68hfQsS3/e'),
(14, '7545.9250', 'twofyw', '$2y$10$wMahK11fFjLLyz5jBuymr.Z5P1Eq0Mum3HmQkibM3EYSKUFUFTPqq'),
(15, '10000.0000', 'imcuna', '$2y$10$Gq2BfdYRTQWrXc8IxibL9.roBicrKwU8MkbM8veAp861MinqbwyxG'),
(16, '10000.0000', '530315187', '$2y$10$maRGGO3HckWxNgQJ4sGIZuZn/z8m4sLRoYVkmRVW.A.NIo0Oewt/O');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`symbol`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;
--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
