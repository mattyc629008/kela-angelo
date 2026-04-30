-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2026 at 03:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bhea_cay_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE `audit_trail` (
  `id` int(11) NOT NULL,
  `action_made` text NOT NULL,
  `performed_by` varchar(100) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_trail`
--

INSERT INTO `audit_trail` (`id`, `action_made`, `performed_by`, `date_time`) VALUES
(1, 'New User Registered: Matt', 'Matt', '2026-04-30 15:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_name`, `category`, `quantity`, `unit_price`, `expiry_date`, `supplier`, `created_at`) VALUES
(1, 'red', 'Moisturizers', 233, 22.00, '2028-01-16', '', '2026-04-30 05:30:17'),
(2, 'red', 'Moisturizers', 32, 22.00, '2026-04-30', 'redes', '2026-04-30 05:30:48'),
(3, 'bisaya produvy', 'Moisturizers', 123, 123.00, '2026-04-24', '1312', '2026-04-30 08:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `action_made` text NOT NULL,
  `performed_by` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `action_made`, `performed_by`, `date_created`) VALUES
(1, 'Added Product: red', 'Admin Bhea', '2026-04-30 05:30:17'),
(2, 'Stock In: red (Amount: 100)', 'Admin Bhea', '2026-04-30 05:30:26'),
(3, 'Added Product: red', 'Admin Bhea', '2026-04-30 05:30:48'),
(4, 'Stock In: red (Amount: 1)', 'Admin Bhea', '2026-04-30 07:50:15'),
(5, 'Stock In: red (Amount: 1)', 'Admin Bhea', '2026-04-30 07:50:15'),
(6, 'Stock In: red (Amount: 1)', 'Admin Bhea', '2026-04-30 07:50:16'),
(7, 'Stock In: red (Amount: 1)', 'Admin Bhea', '2026-04-30 07:50:16'),
(8, 'Stock In: red (Amount: 1)', 'Admin Bhea', '2026-04-30 07:50:16'),
(9, 'User logged out from the system.', 'Admin', '2026-04-30 08:27:10'),
(10, 'User logged out from the system.', 'Admin', '2026-04-30 08:28:32'),
(11, 'User logged out from the system.', 'Admin', '2026-04-30 08:29:35'),
(12, 'User logged into the system.', 'Admin', '2026-04-30 08:35:01'),
(13, 'User logged out from the system.', 'Admin', '2026-04-30 08:35:12'),
(14, 'User logged into the system.', 'Admin', '2026-04-30 08:35:22'),
(15, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:42'),
(16, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:42'),
(17, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:42'),
(18, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:43'),
(19, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:43'),
(20, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:43'),
(21, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:43'),
(22, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:43'),
(23, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:43'),
(24, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:43'),
(25, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:44'),
(26, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:44'),
(27, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:44'),
(28, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:44'),
(29, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:44'),
(30, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:44'),
(31, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:45'),
(32, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:46'),
(33, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:46'),
(34, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:46'),
(35, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:46'),
(36, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:46'),
(37, 'Stock In: red (Amount: 1)', 'Admin', '2026-04-30 08:35:47'),
(38, 'Stock In: red (Amount: 100)', 'Admin', '2026-04-30 08:36:06'),
(39, 'Added Product: bisaya produvy', 'Admin', '2026-04-30 08:36:34'),
(40, 'User logged out from the system.', 'Admin', '2026-04-30 08:36:45'),
(41, 'New User Registered: twilight', 'twilight', '2026-04-30 08:42:42'),
(42, 'User logged into the system.', 'twilight', '2026-04-30 08:42:58'),
(43, 'User logged out from the system.', 'twilight', '2026-04-30 08:43:12'),
(44, 'User logged into the system.', 'Matt', '2026-04-30 08:45:23'),
(45, 'Stock In: red (Amount: 1)', 'Matt', '2026-04-30 08:45:44'),
(46, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:48'),
(47, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:48'),
(48, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:48'),
(49, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:50'),
(50, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:50'),
(51, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:50'),
(52, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:51'),
(53, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:51'),
(54, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:51'),
(55, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:51'),
(56, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:51'),
(57, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:51'),
(58, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:52'),
(59, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:52'),
(60, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:53'),
(61, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:53'),
(62, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:53'),
(63, 'Stock Out: red (Amount: 1)', 'Matt', '2026-04-30 13:33:53'),
(64, 'User logged out from the system.', 'Matt', '2026-04-30 13:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `date_added`) VALUES
(1, 'Admin', 'admin@bheacay.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2026-04-30 15:43:06'),
(2, 'Matt', 'mattdavidpogi@gmail.com', '$2y$10$xeKI9lAnNozP6aPrKZH2luO2ga7iYQUd.dD5p8k9hX9MSbnZv1Yvq', '2026-04-30 15:44:12'),
(5, 'Matt', 'eman@gmail.com', '$2y$10$hSU2M4bqOR9.L.2Vb.koUeza8R07ne/4LL71UMIwFIwkaIzvhssiK', '2026-04-30 16:28:04'),
(6, 'twilight', 'angelo@gmail.com', '$2y$10$uL7KAk73J8H3ifju/AU.tuMmUmaaDQOsg94nnCQ.Pd8Vve/YAYFgS', '2026-04-30 16:37:54'),
(9, 'twilight', 'sakolantayo@gmail.com', '$2y$10$23nBNoMAcosYb/MXY.8ebeb3.7FoBMUDxhr3EQcZxeu72SPeX7mPi', '2026-04-30 16:42:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
