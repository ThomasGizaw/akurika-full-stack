-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2023 at 11:43 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brandmar_shopo`
--

-- --------------------------------------------------------

--
-- Table structure for table `biztech_sms`
--

CREATE TABLE `biztech_sms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_register_sms` int(11) NOT NULL DEFAULT 0,
  `enable_reset_pass_sms` int(11) NOT NULL DEFAULT 0,
  `enable_order_confirmation_sms` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biztech_sms`
--

INSERT INTO `biztech_sms` (`id`, `api_key`, `client_id`, `sender_id`, `enable_register_sms`, `enable_reset_pass_sms`, `enable_order_confirmation_sms`, `created_at`, `updated_at`) VALUES
(1, 'UpB/QWgGqJSfHJLsZdMqulqwXtU6EzNGNiwI11EUl4o=', '1a1b0bf0-07fd-402f-b1d2-15c99e130c8f', '8809617609947', 1, 1, 1, NULL, '2023-01-12 04:46:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biztech_sms`
--
ALTER TABLE `biztech_sms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biztech_sms`
--
ALTER TABLE `biztech_sms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
