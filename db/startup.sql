-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2023 at 02:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `startup`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `perks` text DEFAULT NULL,
  `backer_count` int(11) DEFAULT NULL,
  `goal_amount` int(11) DEFAULT NULL,
  `current_amount` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_images`
--

CREATE TABLE `campaign_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) UNSIGNED NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `avatar_file_name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `occupation`, `email`, `password_hash`, `avatar_file_name`, `role`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Name dari Postman ke 6', 'Backend Programmer', 'Ryan@domain.com', '$2a$04$.tLE3LLc57oUWCyaHeqdguuC792ZjGJjQ1d0dc4fT1e8yINcNsESK', 'images/1-2022-09-07 (4).png', 'user', NULL, '2023-02-18 17:33:59', '2023-02-25 20:53:20'),
(2, 'Name dari Postman ke 6', 'Backend Programmer', 'Ryan@domain.com', '$2a$04$o2AedQr.gVBbzpxeyWZ1N.kdIB9hD.91oUigkjht.fYkpHPuMx3vy', '', 'user', NULL, '2023-02-18 18:39:45', '2023-02-18 18:39:45'),
(3, 'Name dari Postman ke 6', 'Backend Programmer', 'Ryan@domain.com', '$2a$04$dowIz9MiRBTXB4SrIVxSK.K2H76ALDhsLqqGdsYmFhBHFj.8OOoKm', '', 'user', NULL, '2023-02-18 18:42:00', '2023-02-18 18:42:00'),
(4, 'Name dari Postman ke 7', 'Backend Programmer', 'Ryan1@domain.com', '$2a$04$VM1O9b2.znLxNn6yGQfocuv10QVPdjPIERQ2CL6jxkdx8BGKKRNCu', '', 'user', NULL, '2023-02-18 18:43:31', '2023-02-18 18:43:31'),
(5, 'Name dari Postman ke 7', 'Backend Programmer', 'Ryan1@domain.com', '$2a$04$essrP12tWmRbwNjrzPQGpueMPshEVOHlaDH0Gqw8lajjRDN98iMkm', '', 'user', NULL, '2023-02-18 18:43:59', '2023-02-18 18:43:59'),
(6, 'Name dari Postman ke 7', 'Backend Programmer', 'Ryan2@domain.com', '$2a$04$DdmrXMk95vY8eSw.bRAxXesBbagOZ8AWwrgOB78TcXhMFC6XYJc66', '', 'user', NULL, '2023-02-18 18:52:29', '2023-02-18 18:52:29'),
(7, 'Name dari Postman ke 7', 'Backend Programmer', 'Ryan2@domain.com', '$2a$04$eFii.RWy/NpHfHwlstNV0.eJ5ey8/zWHluxtuAPA9Mrw99dhyhzPy', '', 'user', NULL, '2023-02-18 21:29:28', '2023-02-18 21:29:28'),
(8, 'Name dari Postman ke 7', 'Backend Programmer', 'Ryan2@domain.com', '$2a$04$6j56zm84CqXDJ4TrwKUYEOKbrCKR/DtWa6ZnkPQX3tGORHC7KwT5e', '', 'user', NULL, '2023-02-18 21:29:51', '2023-02-18 21:29:51'),
(9, 'Name dari Postman ke 7', 'Backend Programmer', 'Ryan2@domain.com', '$2a$04$ktXIFNCC3CJ/9tVYx3yIUu83DxKvwOzcaouc5mvvbASb4j6gUemn.', '', 'user', NULL, '2023-02-18 21:30:35', '2023-02-18 21:30:35'),
(10, 'Name dari Postman ke 7', 'Backend Programmer', 'Ryan2@domain.com', '$2a$04$UZe0vm.aucHq8CGYWu/CU.zXTOOVfQRiQBpvN2ra5bRQ3pszzuIda', '', 'user', NULL, '2023-02-18 21:30:49', '2023-02-18 21:30:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_images`
--
ALTER TABLE `campaign_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_images`
--
ALTER TABLE `campaign_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
