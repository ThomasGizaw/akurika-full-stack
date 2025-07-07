-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2024 at 12:28 PM
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
-- Database: `shopo_m`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `description`, `banner_image`, `status`, `created_at`, `updated_at`) VALUES
(1, '<h1 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">What is e-commerce business?<br></h1><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries but also the on leap into electronic typesetting.</p><ul><li style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">slim body with metal cover</li><li style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"> latest Intel Core i5-1135G7 processor (4 cores / 8 threads)</li><li style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"> 8GB DDR4 RAM and fast 512GB PCIe SSD</li><li style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"> NVIDIA GeForce MX350 2GB GDDR5 graphics card backlit keyboard</li><li style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">hello hello hello prashant sir ?</li></ul>', 'uploads/custom-images/about-us-2022-09-22-04-39-05-2348.png', NULL, '2022-09-20 08:21:31', '2022-11-23 07:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `state_id` int(11) NOT NULL DEFAULT 0,
  `city_id` int(11) NOT NULL DEFAULT 0,
  `address` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `default_shipping` int(11) NOT NULL DEFAULT 0,
  `default_billing` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `email`, `phone`, `country_id`, `state_id`, `city_id`, `address`, `type`, `default_shipping`, `default_billing`, `created_at`, `updated_at`, `latitude`, `longitude`) VALUES
(1, 7, 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 2, 5, 9, 'California, USA', 'home', 1, 1, '2024-10-15 14:06:56', '2024-10-20 05:36:24', 27.9546524, 80.2135340),
(2, 7, 'Mohammad Ali', 'ali.mohammad@gmail.com', '01877716614', 2, 4, 8, 'Mirpur 11', 'home', 0, 0, '2024-10-20 01:54:19', '2024-10-20 08:04:42', 23.8175825, 90.3669783),
(3, 7, 'Mohammad', 'm.ali@gmail.com', '01788171332', 4, 7, 10, 'Dhaka University, Nilkhet Road, Dhaka, Bangladesh', 'home', 0, 0, '2024-10-20 05:29:30', '2024-10-20 05:29:30', 23.7339483, 90.3929252),
(4, 7, 'Enim doloribus lauda', 'rafiqulislamsuvobd@gmail.com', '01642222090', 4, 7, 10, 'London', 'home', 0, 0, '2024-10-20 08:00:41', '2024-10-20 08:00:41', 51.5072178, -0.1275862),
(5, 7, 'Mirror', 'mkkj@ghj.con', '012558', 4, 7, 10, 'Gulshan 1, Dhaka, Bangladesh', 'home', 0, 0, '2024-10-22 01:58:27', '2024-10-22 01:58:27', 23.7820624, 90.4160527),
(6, 7, 'Pichone', 'pichono@gmail.com', '01663458', 2, 4, 8, 'Dhanmondi 32 Road Bridge, Dhanmondi Bridge, Dhaka, Bangladesh', 'home', 0, 0, '2024-10-22 02:11:06', '2024-10-22 02:11:06', 23.7509735, 90.3735820),
(9, 7, 'Rashedul Islam', 'rashed4pa@gmail.com', '01767078222', 2, 5, 9, '19 Rd No 1, Dhaka 1216, Bangladesh', '1', 0, 0, '2024-10-23 08:07:58', '2024-10-23 08:07:58', 23.8223370, 90.3654296),
(11, 7, 'Dolorem Nam perspici Aut assumenda quaera', 'Magna exercitationem', 'Quia officiis omnis', 2, 4, 8, 'Quam at quis volupta', '1', 0, 0, '2024-10-24 03:07:41', '2024-10-24 03:07:41', NULL, NULL),
(12, 119, 'Mohammad', 'mohammad@gmail.com', '0187726621', 4, 7, 10, 'Gulshan 1, Dhaka, Bangladesh', 'home', 1, 1, '2024-10-24 03:22:16', '2024-10-24 03:22:16', 23.7820624, 90.4160527),
(13, 119, 'Ali', 'ali@gmail.com', '01877166221', 1, 1, 2, 'Lalpur, Natore, Bangladesh', 'home', 0, 0, '2024-10-24 03:22:58', '2024-10-24 03:22:58', 24.1834882, 88.9569466);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `forget_password_token` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_type`, `name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `status`, `forget_password_token`, `created_at`, `updated_at`, `latitude`, `longitude`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'uploads/website-images/ibrahim-khalil-2022-01-30-02-48-50-5743.jpg', NULL, '$2y$10$Gtc/CuE9RTk0HaCVeXyrGeEC/cFW9WXc9tc/EX2PwhRGAn3H9L59S', 'EiXroNIchadmlFpC8YSAaSBzfwYJR4mrNI25aRQpsbiF9Io7w3R3AJ0MiUTk', 1, NULL, NULL, '2024-10-14 13:58:51', 23.8121605, 90.3679744);

-- --------------------------------------------------------

--
-- Table structure for table `announcement_modals`
--

CREATE TABLE `announcement_modals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `expired_date` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcement_modals`
--

INSERT INTO `announcement_modals` (`id`, `status`, `title`, `description`, `image`, `expired_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'GET UP TO 75% OFF', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem, facere nesciunt doloremque nobis debitis sint?', 'uploads/website-images/announcement-2022-11-19-12-33-21-4518.png', 5, NULL, '2022-11-19 17:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `bank_payments`
--

CREATE TABLE `bank_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `account_info` text DEFAULT NULL,
  `cash_on_delivery_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_payments`
--

INSERT INTO `bank_payments` (`id`, `status`, `account_info`, `cash_on_delivery_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', 1, NULL, '2022-07-30 03:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE `banner_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `banner_location` varchar(255) DEFAULT NULL,
  `after_product_qty` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_one` varchar(255) DEFAULT NULL,
  `title_two` varchar(255) DEFAULT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `product_slug` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `header`, `title`, `link`, `image`, `banner_location`, `after_product_qty`, `status`, `created_at`, `updated_at`, `title_one`, `title_two`, `badge`, `product_slug`) VALUES
(13, NULL, NULL, '', 'uploads/website-images/banner-2022-06-13-12-45-14-6950.jpg', 'Login page', 0, 0, NULL, '2022-06-13 06:45:14', NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, 'uploads/website-images/default-avatar-2022-11-18-12-03-30-6530.webp', 'Default Profile Image', 0, 0, NULL, '2022-11-18 05:03:30', NULL, NULL, NULL, NULL),
(16, NULL, NULL, '#', 'uploads/website-images/Mega-menu-2022-10-27-01-41-46-7345.png', 'Slider First', 0, 1, NULL, '2022-10-30 19:07:42', 'Apple', 'Smart Watch', 'Gaming', 'electronics'),
(17, NULL, NULL, 'link', 'uploads/website-images/Mega-menu-2022-10-27-01-42-01-1798.png', 'Slider Second', 0, 1, NULL, '2022-10-30 19:07:48', 'Xbox', '5th Version', 'Gaming', 'electronics'),
(18, NULL, NULL, 'link', 'uploads/website-images/Mega-menu-2022-07-31-12-32-19-7306.jpg', 'Popular category sidebar banner', 0, 1, NULL, '2022-10-30 19:07:53', NULL, NULL, NULL, 'electronics'),
(19, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-43-02-7910.png', 'Two Column banner One', 0, 1, NULL, '2022-10-30 19:07:59', 'Beat wireless', 'Headphone', 'HEADSET', 'electronics'),
(20, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-43-27-5225.png', 'Two Column Banner two', 0, 1, NULL, '2022-10-30 19:08:04', 'Samsung', 'Smart Watch II', 'SMART WATCH', 'electronics'),
(21, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-43-51-3694.png', 'Homepage Single banner one', 0, 1, NULL, '2022-10-30 19:08:09', 'HEADPHONE', 'Get the best deal for Headphones', NULL, 'electronics'),
(22, NULL, NULL, 'https://shopo-ecom.vercel.app/single-product?slug=kospet-tank-t1-milstd-rugged-waterproof-smartwatch', 'uploads/website-images/Mega-menu-2022-10-27-01-44-06-8672.png', 'Homepage Single banner Two', 0, 1, NULL, '2022-10-30 19:08:18', 'Get the best deal for Headphones', NULL, NULL, 'electronics'),
(23, NULL, NULL, 'https://shopo-ecom.vercel.app/products?category=game', 'uploads/website-images/Mega-menu-2022-10-27-01-44-55-7811.png', 'Megamenu banner', 0, 1, NULL, '2022-10-30 19:08:38', 'SMART WATCH', 'Samsung Smart Watch', NULL, 'electronics'),
(24, NULL, '#', '#', 'uploads/website-images/Mega-menu-2022-09-20-10-59-27-3427.png', 'Homepage flash sale sidebar banner', 0, 1, NULL, '2022-09-20 04:59:27', NULL, NULL, NULL, NULL),
(25, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-44-41-4959.png', 'Shop page center banner', 3, 1, NULL, '2023-08-23 02:23:18', 'Get the best deal for Headphones', NULL, NULL, 'electronics'),
(26, '', '', 'https://shopo-ecom.vercel.app/single-product?slug=wireless-headphones-and-earbuds-', 'uploads/website-images/Mega-menu-2022-10-27-01-44-49-1623.png', 'Shop page sidebar banner', 0, 1, NULL, '2023-08-23 02:23:24', 'HEADSET', 'Beat wireless Headphone', NULL, 'electronics'),
(27, 'Get our latest offer', 'by subscription', '', 'uploads/website-images/banner-2022-09-25-05-12-43-6914.png', 'Subscribe section banner', 0, 1, NULL, '2022-09-25 11:12:43', NULL, NULL, NULL, NULL),
(28, NULL, NULL, 'link', 'uploads/website-images/Mega-menu-2022-06-14-11-26-55-8951.jpg', 'Featured category sidebar banner', 0, 1, NULL, '2022-06-14 05:26:56', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `biztech_sms`
--

CREATE TABLE `biztech_sms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_key` text NOT NULL,
  `client_id` text NOT NULL,
  `sender_id` varchar(255) NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) NOT NULL,
  `seo_description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `show_homepage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `admin_id`, `title`, `slug`, `blog_category_id`, `image`, `description`, `views`, `seo_title`, `seo_description`, `status`, `show_homepage`, `created_at`, `updated_at`) VALUES
(2, 1, 'Business-to-consumer that involves selling fight products and services', 'businesstoconsumer-that-involves-selling-fight-products-and-services', 2, 'uploads/custom-images/blog--2022-09-22-04-09-44-5529.jpg', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 46, 'Business-to-consumer that involves selling fight products and services', 'Business-to-consumer that involves selling fight products and services', 1, 1, '2022-09-22 10:09:44', '2024-04-13 19:18:36'),
(3, 1, 'Top 10 Best Professional Blogging Platforms for 2022', 'top-10-best-professional-blogging-platforms-for-2022', 3, 'uploads/custom-images/blog--2022-09-22-04-12-00-7502.jpg', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 45, 'Top 10 Best Professional Blogging Platforms for 2022', 'Top 10 Best Professional Blogging Platforms for 2022', 1, 1, '2022-09-22 10:12:00', '2024-04-13 19:16:49'),
(4, 1, '6 Best WordPress E-commerce Plugins for Online Stores in 2022', '6-best-wordpress-ecommerce-plugins-for-online-stores-in-2022', 5, 'uploads/custom-images/blog--2022-09-22-04-13-57-7380.jpg', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 65, '6 Best WordPress E-commerce Plugins for Online Stores in 2022', '6 Best WordPress E-commerce Plugins for Online Stores in 2022', 1, 1, '2022-09-22 10:13:57', '2024-05-21 01:39:01'),
(5, 1, '15 Best WordPress Newspaper Themes to Look Out for in 2022', '15-best-wordpress-newspaper-themes-to-look-out-for-in-2022', 5, 'uploads/custom-images/blog--2022-09-22-04-14-55-6716.jpg', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 80, '15 Best WordPress Newspaper Themes to Look Out for in 2022', '15 Best WordPress Newspaper Themes to Look Out for in 2022', 1, 1, '2022-09-22 10:14:55', '2024-05-25 18:57:15'),
(6, 1, 'Must-Have WordPress Plugins for Ecommerce Websites in 2022', 'musthave-wordpress-plugins-for-ecommerce-websites-in-2022', 4, 'uploads/custom-images/blog--2022-09-22-04-15-55-3458.jpg', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 59, 'Must-Have WordPress Plugins for Ecommerce Websites in 2022', 'Must-Have WordPress Plugins for Ecommerce Websites in 2022', 1, 0, '2022-09-22 10:15:55', '2024-05-20 04:29:38'),
(7, 1, 'It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.', 'its-official-the-iphone-14-series-is-on-its-way-rumors-turned-out-to-be-true-the-goods-the-bads', 2, 'uploads/custom-images/blog--2022-09-22-04-18-09-8292.jpg', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 225, 'It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.', 'It’s official! The iPhone 14 Series is on its way! Rumors turned out to be true. The Goods & the Bads.', 1, 1, '2022-09-22 10:18:09', '2024-05-27 09:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Development', 'development', 1, '2022-09-22 10:05:56', '2022-09-22 10:05:56'),
(3, 'Guide', 'guide-', 1, '2022-09-22 10:06:06', '2022-09-22 10:06:06'),
(4, 'Inspiration', 'inspiration-', 1, '2022-09-22 10:06:13', '2022-09-22 10:06:13'),
(5, 'Latest News', 'latest-news', 1, '2022-09-22 10:06:25', '2022-09-22 10:06:25'),
(6, 'Revenue', 'revenue-', 1, '2022-09-22 10:06:37', '2022-09-22 10:06:37'),
(7, 'Start Up', 'start-up', 1, '2022-09-22 10:06:48', '2022-09-22 10:06:48'),
(8, 'Technology', 'technology', 1, '2022-09-22 10:06:56', '2022-09-22 10:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `name`, `email`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'Len Newton', 'fose@mailinator.com', 'Ratione deserunt lab', 0, '2022-09-25 07:43:47', '2022-09-25 07:43:47'),
(2, 6, 'Lara Mason', 'nicuqovu@mailinator.com', 'Voluptatem facilis v', 0, '2022-09-25 07:45:00', '2022-09-25 07:45:00'),
(3, 5, 'Abel Spencer', 'sicyxohore@mailinator.com', 'Molestiae totam magn', 0, '2022-09-25 10:22:20', '2022-09-25 10:22:20'),
(4, 6, 'Hannah Nunez', 'hupymug@mailinator.com', 'Vel ea fugit ad duc', 0, '2022-09-25 11:05:46', '2022-09-25 11:05:46'),
(5, 2, 'Dara Odom', 'caqo@mailinator.com', 'Ducimus doloremque', 0, '2022-09-25 11:38:22', '2022-09-25 11:38:22'),
(6, 2, 'Boris David', 'jypiw@mailinator.com', 'Ipsum quam harum co', 0, '2022-09-25 11:39:26', '2022-09-25 11:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Oneplus', 'oneplus', 'uploads/custom-images/oneplus-2022-09-25-04-15-53-8330.png', 1, '2022-09-20 07:16:12', '2022-09-25 10:15:53'),
(2, 'Tencent', 'tencent', 'uploads/custom-images/tencent-2022-09-25-04-16-01-9474.png', 1, '2022-09-20 07:16:24', '2022-09-25 10:16:01'),
(3, 'Apple', 'apple', 'uploads/custom-images/apple-2022-09-25-04-16-05-2914.png', 1, '2022-09-20 07:16:43', '2022-09-25 10:16:05'),
(4, 'Mircrosoft', 'mircrosoft', 'uploads/custom-images/mircrosoft-2022-09-25-04-16-10-7094.png', 1, '2022-09-20 07:16:59', '2022-09-25 10:16:10'),
(5, 'lenovo', 'lenovo', 'uploads/custom-images/lenovo-2022-09-25-04-16-19-9532.png', 1, '2022-09-20 07:17:17', '2022-09-25 10:16:19'),
(6, 'Huawei', 'huawei', 'uploads/custom-images/huawei-2022-09-25-04-16-23-2134.png', 1, '2022-09-20 07:17:29', '2022-09-25 10:16:23'),
(7, 'Nexus', 'nexus', 'uploads/custom-images/nexus-2022-09-25-04-16-31-3263.png', 1, '2022-09-20 07:17:44', '2022-09-25 10:16:31'),
(8, 'Google', 'google', 'uploads/custom-images/google-2022-09-25-04-16-35-5464.png', 1, '2022-09-20 07:17:57', '2022-09-25 10:16:35'),
(9, 'Firefox', 'firefox', 'uploads/custom-images/firefox-2022-09-25-04-16-43-3374.png', 1, '2022-09-20 07:18:11', '2022-09-25 10:16:43'),
(10, 'Tesla', 'tesla', 'uploads/custom-images/tesla-2022-09-25-04-16-47-6997.png', 1, '2022-09-20 07:18:29', '2022-09-25 10:16:47'),
(11, 'Brave', 'brave', 'uploads/custom-images/brave-2022-09-25-04-16-55-9281.png', 1, '2022-09-20 07:19:01', '2022-09-25 10:16:55'),
(12, 'Facebook', 'facebook', 'uploads/custom-images/facebook-2022-09-25-04-17-01-2209.png', 1, '2022-09-20 07:19:14', '2022-09-25 10:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `breadcrumb_images`
--

CREATE TABLE `breadcrumb_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `image_type` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `breadcrumb_images`
--

INSERT INTO `breadcrumb_images` (`id`, `location`, `image_type`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Brand Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-00-6529.jpg', NULL, '2022-02-11 09:19:03'),
(2, 'Cart Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-13-2295.jpg', NULL, '2022-02-11 09:19:16'),
(3, 'Campaign Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-26-4555.jpg', NULL, '2022-02-11 09:19:28'),
(4, 'FAQ page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-38-5297.jpg', NULL, '2022-02-11 09:19:40'),
(5, 'User Authentication', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-51-4946.jpg', NULL, '2022-02-11 09:19:53'),
(6, 'Compare Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-02-1928.jpg', NULL, '2022-02-11 09:20:04'),
(7, 'Order Tracking Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-16-5029.jpg', NULL, '2022-02-11 09:20:18'),
(8, 'Vendor Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-28-1461.jpg', NULL, '2022-02-11 09:20:30'),
(9, 'Shop Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-39-4557.jpg', NULL, '2022-02-11 09:20:41'),
(10, 'Blog page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-51-3046.jpg', NULL, '2022-02-11 09:20:54'),
(11, 'Flash Deal Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-21-04-8636.jpg', NULL, '2022-02-11 09:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'electronics', 'fas fa-anchor', 1, 'uploads/custom-images/electronics-2022-11-19-02-48-28-5548.png', '2022-09-20 05:16:25', '2022-11-22 04:08:36'),
(2, 'Game', 'game', 'fas fa-gamepad', 1, 'uploads/custom-images/game-2022-11-19-02-48-48-6382.png', '2022-09-20 05:16:50', '2022-11-22 18:09:39'),
(3, 'Mobile', 'mobile', 'fas fa-mobile-alt', 1, 'uploads/custom-images/mobile-2022-11-19-02-49-20-2538.png', '2022-09-20 05:17:43', '2022-11-19 19:49:20'),
(4, 'Lifestyle', 'lifestyle', 'fas fa-home', 1, 'uploads/custom-images/lifestyle-2022-11-19-02-49-38-3139.png', '2022-09-20 05:24:47', '2022-11-19 19:49:38'),
(5, 'Babies & Toys', 'babies-toys', 'fas fa-basketball-ball', 1, 'uploads/custom-images/babies-toys-2022-11-19-02-50-00-3811.png', '2022-09-20 05:26:13', '2022-11-20 23:14:20'),
(6, 'Bike', 'bike', 'fas fa-bicycle', 1, 'uploads/custom-images/bike-2022-11-19-02-50-18-4648.png', '2022-09-20 05:28:22', '2022-11-19 19:50:18'),
(7, 'Men\'s Fasion', 'mens-fasion', 'fas fa-street-view', 1, 'uploads/custom-images/mens-fasion-2022-11-19-02-50-39-5203.png', '2022-09-20 05:35:28', '2022-11-19 19:50:39'),
(8, 'Woman Fashion', 'woman-fashion', 'fab fa-android', 1, 'uploads/custom-images/womans-fasion-2022-11-19-02-52-58-2850.png', '2022-09-20 05:38:38', '2022-11-21 10:45:01'),
(9, 'Talevision', 'talevision', 'fas fa-adjust', 1, NULL, '2022-09-20 06:04:03', '2022-11-19 19:52:40'),
(10, 'Accessories', 'accessories', 'fas fa-cogs', 1, NULL, '2022-09-20 06:05:41', '2022-09-20 09:56:55'),
(11, 'John Doe', 'john-doe', 'fas fa-adjust', 1, 'uploads/custom-images/john-doe-2022-11-17-12-00-23-1751.jpg', '2022-11-17 05:54:49', '2022-11-17 06:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'LG', 'lg', 1, '2022-09-20 06:02:47', '2022-11-22 17:01:10'),
(2, 1, 2, 'HP', 'hp', 0, '2022-09-20 06:03:17', '2022-11-22 17:01:11'),
(3, 2, 5, 'PlayStation 4', 'playstation-4', 0, '2022-09-20 07:13:18', '2022-11-22 17:01:12'),
(4, 2, 5, 'PlayStation 5', 'playstation-5', 0, '2022-09-20 07:13:29', '2022-11-22 17:01:12'),
(5, 1, 1, 'Samsung', 'samsung', 0, '2022-09-20 07:13:41', '2022-11-22 17:01:13'),
(6, 1, 1, 'Apple', 'apple', 1, '2022-09-20 07:13:51', '2022-09-20 07:13:51');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_state_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_state_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Florida City', 'florida-city', 1, '2022-01-30 09:29:19', '2022-02-06 04:18:33'),
(2, 1, 'Los Angeles', 'los-angeles', 1, '2022-01-30 09:29:29', '2022-02-06 04:20:30'),
(4, 2, 'Tallahassee', 'tallahassee', 1, '2022-02-06 04:18:49', '2022-02-06 04:18:49'),
(5, 2, 'Weston', 'weston', 1, '2022-02-06 04:19:56', '2022-02-06 04:19:56'),
(6, 1, 'San Jose', 'san-jose', 1, '2022-02-06 04:21:08', '2022-02-06 04:21:08'),
(7, 1, 'San Diego', 'san-diego', 1, '2022-02-06 04:21:26', '2022-02-06 04:21:26'),
(8, 4, 'Gandhinagar', 'gandhinagar', 1, '2022-02-06 04:22:21', '2022-02-06 04:22:21'),
(9, 5, 'Chandigarh', 'chandigarh', 1, '2022-02-06 04:22:44', '2022-02-06 04:22:44'),
(10, 7, 'London', 'london', 1, '2022-02-06 04:23:12', '2022-02-06 04:23:12'),
(11, 7, 'Liverpool', 'liverpool', 1, '2022-02-06 04:23:29', '2022-07-31 02:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `compare_products`
--

CREATE TABLE `compare_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compare_products`
--

INSERT INTO `compare_products` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(17, 7, 37, '2022-10-27 09:42:54', '2022-10-27 09:42:54'),
(18, 7, 4, '2022-11-21 12:25:03', '2022-11-21 12:25:03'),
(19, 7, 34, '2023-06-19 08:20:22', '2023-06-19 08:20:22'),
(20, 48, 39, '2023-10-02 07:46:10', '2023-10-02 07:46:10'),
(21, 12, 39, '2024-04-27 12:26:29', '2024-04-27 12:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'sdafdsf', 'asdfsdf', NULL, 'send me your purchase code .  and then send me your admin access', 'asdfsdf', '2022-09-23 06:01:33', '2022-09-23 06:01:33'),
(2, 'Ibrahim Khalil', 'agent@gmail.com', NULL, 'Subscribe Verification', 'tst', '2022-10-29 17:55:18', '2022-10-29 17:55:18'),
(3, 'John Doe', 'user@gmail.com', NULL, 'Subscribe Verification', 'test', '2022-10-29 19:07:00', '2022-10-29 19:07:00'),
(4, 'Ali', 'xacasi6022@snowlash.com', NULL, 'test', 'hello', '2023-04-18 11:37:29', '2023-04-18 11:37:29'),
(5, 'test name', 'ramadiw274@pixiil.com', NULL, 'test subject', 'test message', '2023-05-02 05:12:36', '2023-05-02 05:12:36'),
(6, 'ff', 'ff', NULL, '434', 'tretrtt', '2023-06-22 08:45:21', '2023-06-22 08:45:21'),
(7, 'ff', 'fdf', NULL, 'trt', 'gfg', '2023-06-23 01:12:00', '2023-06-23 01:12:00'),
(8, 'sdf', 'dgvss', NULL, 'dgvs', 'ab Beth', '2023-07-09 09:58:54', '2023-07-09 09:58:54'),
(9, 'jjj', 'jj', NULL, 'jj', 'jj', '2023-07-27 02:11:16', '2023-07-27 02:11:16'),
(10, 'jhbjh', 'a@b.com', NULL, 'kjnkjb', 'hbjh', '2023-08-11 07:02:54', '2023-08-11 07:02:54'),
(11, 'junaid', 'junaid@1234gmail.com', NULL, 'java', 'hi', '2023-09-19 04:52:28', '2023-09-19 04:52:28'),
(12, 'junaid', 'junaid@1234gmail.com', NULL, 'java', 'hi', '2023-09-19 04:52:37', '2023-09-19 04:52:37'),
(13, 'admin', 'agent@gmail.com', NULL, 'AutoSSL reduced SSL coverage', '1234', '2023-10-12 01:50:35', '2023-10-12 01:50:35'),
(14, 'gssdfsd', 'sdfs@gdgdg.com', NULL, 'erwrwer', 'werwer', '2023-10-12 01:59:53', '2023-10-12 01:59:53'),
(15, 'Crypto Exchange Armenia', '303', NULL, '521', '3626', '2023-11-08 08:49:58', '2023-11-08 08:49:58'),
(16, 'kamalnath junnu', 'itskamalnath@gmail.com', NULL, 'Full account backup page shows 404', 'tes', '2023-11-18 03:19:17', '2023-11-18 03:19:17'),
(17, 'Lacey Rivera', 'suvujup@mailinator.com', NULL, 'Aliquid amet debiti', 'Officia facilis aut', '2024-02-10 04:02:17', '2024-02-10 04:02:17'),
(18, 'Octavia Gaines', 'mylogab@mailinator.com', NULL, 'Illum ipsam et Nam', 'Quas placeat qui ex', '2024-02-10 04:04:38', '2024-02-10 04:04:38'),
(19, 'Iris Atkins', 'riqygaracy@mailinator.com', NULL, 'Consequat Elit ver', 'Quo ut quis cupidata', '2024-02-10 04:04:51', '2024-02-10 04:04:51'),
(20, 'Alec Mccarty', 'laquz@mailinator.com', NULL, 'Tempore aperiam eli', 'Pariatur Ut aute eu', '2024-02-10 04:05:05', '2024-02-10 04:05:05'),
(21, 'John Doe', 'user@gmail.com', NULL, 'Subscribe Verification', 'Messag', '2024-02-10 04:07:11', '2024-02-10 04:07:11'),
(22, 'John Doe', 'user@gmail.com', NULL, 'Subscribe Verification', 'Message', '2024-02-10 04:08:01', '2024-02-10 04:08:01'),
(23, 'David Richard', 'user@gmail.com', NULL, 'Lawyer Login Information', 'essage*', '2024-02-10 04:09:21', '2024-02-10 04:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `contact_pages`
--

CREATE TABLE `contact_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `map` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_pages`
--

INSERT INTO `contact_pages` (`id`, `title`, `description`, `email`, `address`, `phone`, `map`, `created_at`, `updated_at`) VALUES
(1, 'Contact Information', 'Fill the form below or write us .We will help you as soon as possible.', 'abdur.rohman2003@gmail.com', 'Mirpur 11 ,Dhaka 1216 Bangladesh', '+88 01682 825 123', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193595.94539481518!2d-74.26675559025064!3d40.69739290398433!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1656755618576!5m2!1sen!2sbd', '2022-09-22 11:08:24', '2022-09-22 11:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `cookie_consents`
--

CREATE TABLE `cookie_consents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `border` varchar(255) DEFAULT NULL,
  `corners` varchar(255) DEFAULT NULL,
  `background_color` varchar(255) DEFAULT NULL,
  `text_color` varchar(255) DEFAULT NULL,
  `border_color` varchar(255) DEFAULT NULL,
  `btn_bg_color` varchar(255) DEFAULT NULL,
  `btn_text_color` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `link_text` varchar(255) DEFAULT NULL,
  `btn_text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cookie_consents`
--

INSERT INTO `cookie_consents` (`id`, `status`, `border`, `corners`, `background_color`, `text_color`, `border_color`, `btn_bg_color`, `btn_text_color`, `message`, `link_text`, `btn_text`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 'thin', 'normal', '#184dec', '#fafafa', '#0a58d6', '#fffceb', '#222758', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the when an unknown printer took.', 'More Info', 'Yes', NULL, NULL, '2022-02-13 08:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'United State', 'united-state', 1, '2022-01-30 09:28:28', '2022-02-06 04:11:42'),
(2, 'India', 'india', 1, '2022-01-30 09:28:39', '2022-01-30 09:28:39'),
(4, 'United Kindom', 'united-kindom', 1, '2022-02-06 04:11:51', '2022-02-06 04:11:51'),
(5, 'Australia', 'australia', 1, '2022-02-06 04:12:36', '2022-02-06 04:12:36'),
(10, 'Bangladesh', 'bangladesh', 1, '2022-09-22 05:46:54', '2022-09-22 05:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `country_states`
--

CREATE TABLE `country_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_states`
--

INSERT INTO `country_states` (`id`, `country_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'California', 'california', 1, '2022-01-30 09:29:00', '2022-02-06 04:14:28'),
(2, 1, 'Florida', 'florida', 1, '2022-01-30 09:29:07', '2022-02-06 04:14:42'),
(3, 1, 'Alaska', 'alaska', 1, '2022-02-05 07:49:14', '2022-02-06 04:15:09'),
(4, 2, 'Gujarat', 'gujarat', 1, '2022-02-06 04:16:27', '2022-02-06 04:16:27'),
(5, 2, 'Punjab', 'punjab', 1, '2022-02-06 04:16:39', '2022-02-06 04:16:39'),
(6, 2, 'Rajasthan', 'rajasthan', 1, '2022-02-06 04:16:48', '2022-02-06 04:16:48'),
(7, 4, 'England', 'england', 1, '2022-02-06 04:17:35', '2022-02-06 04:17:35'),
(8, 4, 'Scotland', 'scotland', 1, '2022-02-06 04:17:44', '2022-02-06 04:17:44'),
(9, 4, 'Wales', 'wales', 1, '2022-02-06 04:17:53', '2022-02-06 04:17:53');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `offer_type` int(11) NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `max_quantity` int(11) NOT NULL DEFAULT 0,
  `min_purchase_price` varchar(255) DEFAULT NULL,
  `expired_date` varchar(191) NOT NULL,
  `apply_qty` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `offer_type`, `discount`, `max_quantity`, `min_purchase_price`, `expired_date`, `apply_qty`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Happy New Year', 'newyear', 1, 10, 100, '200', '2025-12-10', 4, 1, '2022-11-16 02:18:50', '2023-05-02 05:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'AFA', 'Afghan Afghani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'ALL', 'Albanian Lek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'DZD', 'Algerian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'AOA', 'Angolan Kwanza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'ARS', 'Argentine Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'AMD', 'Armenian Dram', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'AWG', 'Aruban Florin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'AUD', 'Australian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'AZN', 'Azerbaijani Manat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'BSD', 'Bahamian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'BHD', 'Bahraini Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'BDT', 'Bangladeshi Taka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'BBD', 'Barbadian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'BYR', 'Belarusian Ruble', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'BEF', 'Belgian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'BZD', 'Belize Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'BMD', 'Bermudan Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'BTN', 'Bhutanese Ngultrum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'BTC', 'Bitcoin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'BOB', 'Bolivian Boliviano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'BAM', 'Bosnia-Herzegovina Convertible Mark', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'BWP', 'Botswanan Pula', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'BRL', 'Brazilian Real', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'GBP', 'British Pound Sterling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'BND', 'Brunei Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'BGN', 'Bulgarian Lev', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'BIF', 'Burundian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'KHR', 'Cambodian Riel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'CAD', 'Canadian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'CVE', 'Cape Verdean Escudo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'KYD', 'Cayman Islands Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'XOF', 'CFA Franc BCEAO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'XAF', 'CFA Franc BEAC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'XPF', 'CFP Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'CLP', 'Chilean Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'CNY', 'Chinese Yuan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'COP', 'Colombian Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'KMF', 'Comorian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'CDF', 'Congolese Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'CRC', 'Costa Rican ColÃ³n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'HRK', 'Croatian Kuna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'CUC', 'Cuban Convertible Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'CZK', 'Czech Republic Koruna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'DKK', 'Danish Krone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'DJF', 'Djiboutian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'DOP', 'Dominican Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'XCD', 'East Caribbean Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'EGP', 'Egyptian Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'ERN', 'Eritrean Nakfa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'EEK', 'Estonian Kroon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'ETB', 'Ethiopian Birr', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'EUR', 'Euro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'FKP', 'Falkland Islands Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'FJD', 'Fijian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'GMD', 'Gambian Dalasi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'GEL', 'Georgian Lari', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'DEM', 'German Mark', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'GHS', 'Ghanaian Cedi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'GIP', 'Gibraltar Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'GRD', 'Greek Drachma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'GTQ', 'Guatemalan Quetzal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'GNF', 'Guinean Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'GYD', 'Guyanaese Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'HTG', 'Haitian Gourde', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'HNL', 'Honduran Lempira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'HKD', 'Hong Kong Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'HUF', 'Hungarian Forint', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'ISK', 'Icelandic KrÃ³na', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'INR', 'Indian Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'IDR', 'Indonesian Rupiah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'IRR', 'Iranian Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'IQD', 'Iraqi Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'ILS', 'Israeli New Sheqel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'ITL', 'Italian Lira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'JMD', 'Jamaican Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'JPY', 'Japanese Yen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'JOD', 'Jordanian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'KZT', 'Kazakhstani Tenge', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'KES', 'Kenyan Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'KWD', 'Kuwaiti Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'KGS', 'Kyrgystani Som', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'LAK', 'Laotian Kip', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'LVL', 'Latvian Lats', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'LBP', 'Lebanese Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'LSL', 'Lesotho Loti', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'LRD', 'Liberian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'LYD', 'Libyan Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'LTL', 'Lithuanian Litas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'MOP', 'Macanese Pataca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'MKD', 'Macedonian Denar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'MGA', 'Malagasy Ariary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'MWK', 'Malawian Kwacha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'MYR', 'Malaysian Ringgit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'MVR', 'Maldivian Rufiyaa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'MRO', 'Mauritanian Ouguiya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'MUR', 'Mauritian Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'MXN', 'Mexican Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'MDL', 'Moldovan Leu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'MNT', 'Mongolian Tugrik', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'MAD', 'Moroccan Dirham', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'MZM', 'Mozambican Metical', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'MMK', 'Myanmar Kyat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'NAD', 'Namibian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'NPR', 'Nepalese Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'ANG', 'Netherlands Antillean Guilder', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'TWD', 'New Taiwan Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'NZD', 'New Zealand Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'NIO', 'Nicaraguan CÃ³rdoba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'NGN', 'Nigerian Naira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'KPW', 'North Korean Won', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'NOK', 'Norwegian Krone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'OMR', 'Omani Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'PKR', 'Pakistani Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'PAB', 'Panamanian Balboa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'PGK', 'Papua New Guinean Kina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'PYG', 'Paraguayan Guarani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'PEN', 'Peruvian Nuevo Sol', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'PHP', 'Philippine Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'PLN', 'Polish Zloty', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'QAR', 'Qatari Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'RON', 'Romanian Leu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'RUB', 'Russian Ruble', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'RWF', 'Rwandan Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'SVC', 'Salvadoran ColÃ³n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'WST', 'Samoan Tala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'SAR', 'Saudi Riyal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'RSD', 'Serbian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'SCR', 'Seychellois Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'SLL', 'Sierra Leonean Leone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'SGD', 'Singapore Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'SKK', 'Slovak Koruna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'SBD', 'Solomon Islands Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'SOS', 'Somali Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'ZAR', 'South African Rand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'KRW', 'South Korean Won', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'XDR', 'Special Drawing Rights', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'LKR', 'Sri Lankan Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'SHP', 'St. Helena Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'SDG', 'Sudanese Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'SRD', 'Surinamese Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'SZL', 'Swazi Lilangeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'SEK', 'Swedish Krona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'CHF', 'Swiss Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'SYP', 'Syrian Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'STD', 'São Tomé and Príncipe Dobra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'TJS', 'Tajikistani Somoni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'TZS', 'Tanzanian Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'THB', 'Thai Baht', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'TOP', 'Tongan pa\'anga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'TTD', 'Trinidad & Tobago Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'TND', 'Tunisian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'TRY', 'Turkish Lira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'TMT', 'Turkmenistani Manat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'UGX', 'Ugandan Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'UAH', 'Ukrainian Hryvnia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'AED', 'United Arab Emirates Dirham', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'UYU', 'Uruguayan Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'USD', 'US Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'UZS', 'Uzbekistan Som', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'VUV', 'Vanuatu Vatu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'VEF', 'Venezuelan BolÃ­var', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'VND', 'Vietnamese Dong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'YER', 'Yemeni Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'ZMK', 'Zambian Kwacha', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `currency_countries`
--

CREATE TABLE `currency_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `currency_countries`
--

INSERT INTO `currency_countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Andorra', 'AD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Afghanistan', 'AF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Åland Islands', 'AX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Albania', 'AL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Algeria', 'DZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'American Samoa', 'AS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Angola', 'AO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Anguilla', 'AI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Antarctica', 'AQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Antigua and Barbuda', 'AG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Argentina', 'AR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Armenia', 'AM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Aruba', 'AW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Australia', 'AU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Austria', 'AT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Azerbaijan', 'AZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Bahamas', 'BS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Bahrain', 'BH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Bangladesh', 'BD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Barbados', 'BB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Belarus', 'BY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Belgium', 'BE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Belize', 'BZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Benin', 'BJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Bermuda', 'BM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Bhutan', 'BT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Bolivia (Plurinational State of)', 'BO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Bosnia and Herzegovina', 'BA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Botswana', 'BW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Bouvet Island', 'BV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Brazil', 'BR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'British Indian Ocean Territory', 'IO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Brunei Darussalam', 'BN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Bulgaria', 'BG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Burkina Faso', 'BF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Burundi', 'BI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Cabo Verde', 'CV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Cambodia', 'KH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Cameroon', 'CM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Canada', 'CA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Cayman Islands', 'KY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Central African Republic', 'CF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Chad', 'TD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Chile', 'CL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'China', 'CN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Christmas Island', 'CX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Cocos (Keeling) Islands', 'CC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Colombia', 'CO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Comoros', 'KM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Congo', 'CG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Congo (Democratic Republic of the)', 'CD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Cook Islands', 'CK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Costa Rica', 'CR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Côte d\'Ivoire', 'CI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Croatia', 'HR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Cuba', 'CU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Curaçao', 'CW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Cyprus', 'CY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Czech Republic', 'CZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Denmark', 'DK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Djibouti', 'DJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Dominica', 'DM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Dominican Republic', 'DO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Ecuador', 'EC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Egypt', 'EG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'El Salvador', 'SV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Equatorial Guinea', 'GQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Eritrea', 'ER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Estonia', 'EE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Ethiopia', 'ET', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Falkland Islands (Malvinas)', 'FK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Faroe Islands', 'FO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Fiji', 'FJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Finland', 'FI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'France', 'FR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'French Guiana', 'GF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'French Polynesia', 'PF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'French Southern Territories', 'TF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Gabon', 'GA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Gambia', 'GM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Georgia', 'GE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Germany', 'DE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Ghana', 'GH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Gibraltar', 'GI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Greece', 'GR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Greenland', 'GL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Grenada', 'GD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Guadeloupe', 'GP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Guam', 'GU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Guatemala', 'GT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Guernsey', 'GG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Guinea', 'GN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Guinea-Bissau', 'GW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Guyana', 'GY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Haiti', 'HT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Heard Island and McDonald Islands', 'HM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Holy See', 'VA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Honduras', 'HN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Hong Kong', 'HK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Hungary', 'HU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Iceland', 'IS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'India', 'IN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Indonesia', 'ID', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Iran (Islamic Republic of)', 'IR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Iraq', 'IQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Ireland', 'IE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Isle of Man', 'IM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Israel', 'IL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Italy', 'IT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Jamaica', 'JM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Japan', 'JP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Jersey', 'JE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Jordan', 'JO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Kazakhstan', 'KZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Kenya', 'KE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Kiribati', 'KI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Korea (Democratic People\'s Republic of)', 'KP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Korea (Republic of)', 'KR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Kuwait', 'KW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Kyrgyzstan', 'KG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Lao People\'s Democratic Republic', 'LA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Latvia', 'LV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Lebanon', 'LB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Lesotho', 'LS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Liberia', 'LR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Libya', 'LY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Liechtenstein', 'LI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Lithuania', 'LT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Luxembourg', 'LU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Macao', 'MO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Macedonia (the former Yugoslav Republic of)', 'MK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Madagascar', 'MG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Malawi', 'MW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Malaysia', 'MY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Maldives', 'MV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Mali', 'ML', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Malta', 'MT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Marshall Islands', 'MH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Martinique', 'MQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Mauritania', 'MR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Mauritius', 'MU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Mayotte', 'YT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Mexico', 'MX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Micronesia (Federated States of)', 'FM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Moldova (Republic of)', 'MD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Monaco', 'MC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Mongolia', 'MN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Montenegro', 'ME', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Montserrat', 'MS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Morocco', 'MA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Mozambique', 'MZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Myanmar', 'MM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Namibia', 'NA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Nauru', 'NR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Nepal', 'NP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Netherlands', 'NL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'New Caledonia', 'NC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'New Zealand', 'NZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Nicaragua', 'NI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Niger', 'NE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Nigeria', 'NG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Niue', 'NU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Norfolk Island', 'NF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Northern Mariana Islands', 'MP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Norway', 'NO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Oman', 'OM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Pakistan', 'PK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Palau', 'PW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Palestine, State of', 'PS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Panama', 'PA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Papua New Guinea', 'PG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Paraguay', 'PY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Peru', 'PE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Philippines', 'PH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Pitcairn', 'PN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Poland', 'PL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Portugal', 'PT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Puerto Rico', 'PR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Qatar', 'QA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Réunion', 'RE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Romania', 'RO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Russian Federation', 'RU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Rwanda', 'RW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Saint Barthélemy', 'BL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Saint Kitts and Nevis', 'KN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Saint Lucia', 'LC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Saint Martin (French part)', 'MF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Saint Pierre and Miquelon', 'PM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Saint Vincent and the Grenadines', 'VC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Samoa', 'WS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'San Marino', 'SM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Sao Tome and Principe', 'ST', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Saudi Arabia', 'SA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Senegal', 'SN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Serbia', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Seychelles', 'SC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Sierra Leone', 'SL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Singapore', 'SG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Sint Maarten (Dutch part)', 'SX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Slovakia', 'SK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Slovenia', 'SI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Solomon Islands', 'SB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Somalia', 'SO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'South Africa', 'ZA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'South Georgia and the South Sandwich Islands', 'GS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'South Sudan', 'SS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Spain', 'ES', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Sri Lanka', 'LK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Sudan', 'SD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Suriname', 'SR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Svalbard and Jan Mayen', 'SJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Swaziland', 'SZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Sweden', 'SE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Switzerland', 'CH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Syrian Arab Republic', 'SY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Taiwan, Province of China', 'TW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Tajikistan', 'TJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Tanzania, United Republic of', 'TZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Thailand', 'TH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Timor-Leste', 'TL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Togo', 'TG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'Tokelau', 'TK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Tonga', 'TO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'Trinidad and Tobago', 'TT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Tunisia', 'TN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Turkey', 'TR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Turkmenistan', 'TM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Turks and Caicos Islands', 'TC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'Tuvalu', 'TV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'Uganda', 'UG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'Ukraine', 'UA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'United Arab Emirates', 'AE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'United Kingdom of Great Britain and Northern Ireland', 'GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'United States Minor Outlying Islands', 'UM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'United States of America', 'US', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Uruguay', 'UY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'Uzbekistan', 'UZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Vanuatu', 'VU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Venezuela (Bolivarian Republic of)', 'VE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'Viet Nam', 'VN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'Virgin Islands (British)', 'VG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'Virgin Islands (U.S.)', 'VI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'Wallis and Futuna', 'WF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Western Sahara', 'EH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'Yemen', 'YE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'Zambia', 'ZM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'Zimbabwe', 'ZW', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` longtext NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `page_name`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kibatu', 'kibatu', '<p>beeyi nsaamu saamu bjajdbjas fdn ajsfbasf</p>', 1, '2022-11-20 22:43:08', '2022-11-23 07:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `custom_paginations`
--

CREATE TABLE `custom_paginations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_paginations`
--

INSERT INTO `custom_paginations` (`id`, `page_name`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Blog Page', 4, NULL, '2022-11-18 02:19:18'),
(2, 'Product Page', 12, NULL, '2022-11-18 02:22:39'),
(3, 'Brand Page', 10, NULL, '2022-06-11 11:13:13'),
(4, 'Blog Comment', 4, NULL, '2022-06-11 11:13:13'),
(5, 'Product Review', 8, NULL, '2022-06-11 11:13:13'),
(6, 'Seller page', 8, NULL, '2022-06-11 11:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_reviews`
--

CREATE TABLE `delivery_man_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_withdraws`
--

CREATE TABLE `delivery_man_withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text NOT NULL,
  `approved_date` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_man_withdraws`
--

INSERT INTO `delivery_man_withdraws` (`id`, `delivery_man_id`, `method`, `total_amount`, `withdraw_amount`, `withdraw_charge`, `account_info`, `approved_date`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 'Rocket', 100, 95, 5, '017000000000', '2023-03-29', 1, '2023-03-29 09:46:06', '2023-03-29 09:46:21'),
(5, 1, 'Rocket', 100, 95, 5, '01745738777', NULL, 0, '2023-04-03 15:32:29', '2023-04-03 15:32:29'),
(6, 1, 'Rocket', 100, 95, 5, 'test', NULL, 0, '2023-04-03 20:40:51', '2023-04-03 20:40:51'),
(7, 1, 'Rocket', 102, 96.9, 5.1, 'info', NULL, 0, '2023-04-06 16:33:40', '2023-04-06 16:33:40'),
(8, 1, 'Rocket', 100, 95, 5, 'test', NULL, 0, '2023-04-10 18:53:00', '2023-04-10 18:53:00'),
(9, 1, 'Rocket', 100, 95, 5, 'Okkk', NULL, 0, '2023-04-30 12:01:52', '2023-04-30 12:01:52'),
(10, 1, 'Rocket', 100, 95, 5, 'Payment', NULL, 0, '2023-05-01 04:23:16', '2023-05-01 04:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_withdraw_methods`
--

CREATE TABLE `delivery_man_withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `min_amount` double NOT NULL DEFAULT 0,
  `max_amount` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_man_withdraw_methods`
--

INSERT INTO `delivery_man_withdraw_methods` (`id`, `name`, `min_amount`, `max_amount`, `withdraw_charge`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rocket', 20, 1000, 5, '<p>Ok</p>', 1, '2023-03-29 09:27:35', '2023-05-02 04:13:46'),
(2, 'bKash', 10, 200, 18, '<p>bKash bank account number</p>', 1, '2023-05-02 04:13:35', '2023-05-02 04:13:35');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `man_image` varchar(255) DEFAULT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `man_type` varchar(255) NOT NULL,
  `idn_type` varchar(255) NOT NULL,
  `idn_num` varchar(255) NOT NULL,
  `idn_image` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_men`
--

INSERT INTO `delivery_men` (`id`, `man_image`, `fname`, `lname`, `email`, `man_type`, `idn_type`, `idn_num`, `idn_image`, `phone`, `password`, `status`, `created_at`, `updated_at`, `latitude`, `longitude`) VALUES
(1, 'uploads/custom-images/man--2023-05-01-10-25-11-7429.jpg', 'Sarah Ali', 'Khan', 'deliveryman@gmail.com', 'freelancer', 'driving license', '33032178345', 'uploads/custom-images/identity--2023-03-29-01-35-00-3097.png', '01245623888', '$2y$10$2zHT3QNLwJj3YNXw9ITgnO.6s8PMNDJQg72LJEhDTiQF.0deBdPDu', 1, '2023-03-29 07:35:01', '2024-10-24 06:05:54', 23.8121597, 90.3679332);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_messages`
--

CREATE TABLE `delivery_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `sent_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_messages`
--

INSERT INTO `delivery_messages` (`id`, `delivery_man_id`, `customer_id`, `order_id`, `message`, `sent_by`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 44, 'Hlw', 'deliveryman', '2023-03-29 10:34:25', '2023-03-29 10:34:25'),
(2, 1, 7, 44, 'Hi', 'customer', '2023-03-30 02:35:20', '2023-03-30 02:35:20'),
(3, 1, 7, 44, 'Your address', 'deliveryman', '2023-03-30 02:37:03', '2023-03-30 02:37:03'),
(4, 1, 7, 44, 'Mirpur 10, kajipara', 'customer', '2023-03-30 02:37:38', '2023-03-30 02:37:38'),
(5, 1, 7, 44, 'Your location', 'customer', '2023-03-30 03:20:35', '2023-03-30 03:20:35'),
(6, 1, 7, 44, 'hlw', 'customer', '2023-03-30 04:23:41', '2023-03-30 04:23:41'),
(7, 1, 7, 44, 'Hi', 'customer', '2023-03-30 04:31:59', '2023-03-30 04:31:59'),
(8, 1, 7, 44, 'Hlw', 'deliveryman', '2023-03-30 04:32:18', '2023-03-30 04:32:18'),
(9, 1, 7, 44, 'OK', 'customer', '2023-03-30 04:35:38', '2023-03-30 04:35:38'),
(10, 0, 5, 29, 'ha ha', 'deliveryman', '2023-03-30 18:39:25', '2023-03-30 18:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `email_configurations`
--

CREATE TABLE `email_configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_type` tinyint(4) DEFAULT NULL,
  `mail_host` varchar(255) DEFAULT NULL,
  `mail_port` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `smtp_username` varchar(255) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `mail_encryption` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_configurations`
--

INSERT INTO `email_configurations` (`id`, `mail_type`, `mail_host`, `mail_port`, `email`, `smtp_username`, `smtp_password`, `mail_encryption`, `created_at`, `updated_at`) VALUES
(1, 2, 'mail.mamunuiux.com', '465', 'ecoshop@mamunuiux.com', 'ecoshop@mamunuiux.com', ',NvBWT77)+8l', 'ssl', NULL, '2023-07-08 02:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Password Reset', 'Password Reset', '<h4>Dear <b>{{name}}</b>,</h4>\\r\\n    <p>Do you want to reset your password? Please Copy and past this code</p>', NULL, '2022-06-11 10:43:01'),
(2, 'Contact Email', 'Contact Email', '<p>Name: <b>{{name}}</b></p><p>\r\n\r\nEmail: <b>{{email}}</b></p><p>\r\n\r\nPhone: <b>{{phone}}</b></p><p><span style=\"background-color: transparent;\">Subject: <b>{{subject}}</b></span></p><p>\r\n\r\nMessage: <b>{{message}}</b></p>', NULL, '2021-12-10 23:44:34'),
(3, 'Subscribe Notification', 'Subscribe Notification', '<h2><b>Hi there</b>,</h2><p>\r\nCongratulations! Your Subscription has been created successfully. Please copy and past this code and Verified Your Subscription. If you won\'t verified, after 24hourse your subscription will be deny</p>', NULL, '2021-12-10 23:44:53'),
(4, 'User Verification', 'User Verification', '<p>Dear <b>{{user_name}}</b>,\r\n</p><p>Congratulations! Your Account has been created successfully. Please copy and past and Active your Account.</p>', NULL, '2021-12-10 23:45:25'),
(5, 'Seller Withdraw', 'Seller Withdraw Approval', '<p>Hi <b>{{seller_name}}</b>,</p><p>Your withdraw Request Approval successfully. Please check your account.</p><p>Withdraw Details:</p><p>Withdraw method : <b>{{withdraw_method}}</b>,</p><p>Total Amount :<b> {{total_amount}}</b>,</p><p>Withdraw charge : <b>{{withdraw_charge}}</b>,</p><p>Withdraw&nbsp; Amount : <b>{{withdraw_amount}}</b>,</p><p>Approval Date :<b> {{approval_date}}</b></p>', NULL, '2021-12-26 03:24:45'),
(6, 'Order Successfully', 'Order Successfully', '<p>Hi {{user_name}},</p><p> \r\nThanks for your new order. Your order id has been submited .</p><p>Total Amount : {{total_amount}},</p><p>Payment Method : {{payment_method}},</p><p>Payment Status : {{payment_status}},</p><p>Order Status : {{order_status}},</p><p>Order Date: {{order_date}},</p><p>Order Detail: {{order_detail}}</p>', NULL, '2022-01-10 21:37:03'),
(7, 'Seller Request Approved', 'Seller Request Approved', '<p>Hi {{name}},\r\n</p><p><span style=\"background-color: transparent;\">Congratulations !!&nbsp;</span>Your Shop account has been approved successfully</p>', NULL, '2022-02-05 08:59:34'),
(8, 'Delivery Man Withdraw', 'Delivery Man Withdraw Approval', '<p>Hi <b>{{delivery_man_name}}</b>,</p><p>Your withdraw Request Approval successfully. Please check your account.</p><p>Withdraw Details:</p><p>Withdraw method : <b>{{withdraw_method}}</b>,</p><p>Total Amount :<b> {{total_amount}}</b>,</p><p>Withdraw charge : <b>{{withdraw_charge}}</b>,</p><p>Withdraw&nbsp; Amount : <b>{{withdraw_amount}}</b>,</p><p>Approval Date :<b> {{approval_date}}</b></p>', '2023-03-29 09:35:53', '2023-03-29 09:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `error_pages`
--

CREATE TABLE `error_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `header` varchar(255) NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `error_pages`
--

INSERT INTO `error_pages` (`id`, `page_name`, `image`, `header`, `button_text`, `created_at`, `updated_at`) VALUES
(1, '404 page', '404.jpg', 'test header', 'Go to Home', NULL, '2022-09-20 08:24:13'),
(2, '500 Error', '500.jpg', 'That Page Doesn\'t Exist!', 'Go to Home', NULL, '2021-12-06 09:46:52'),
(3, '505 Error', '505.jpg', 'That Page Doesn\'t Exist!', 'Go to Home', NULL, '2021-12-06 09:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_comments`
--

CREATE TABLE `facebook_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `comment_type` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_comments`
--

INSERT INTO `facebook_comments` (`id`, `app_id`, `comment_type`, `created_at`, `updated_at`) VALUES
(1, 'test', 1, NULL, '2022-06-11 11:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_pixels`
--

CREATE TABLE `facebook_pixels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `app_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_pixels`
--

INSERT INTO `facebook_pixels` (`id`, `status`, `app_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'fsdf45sdf4sdf', NULL, '2022-06-11 11:17:42');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(2, 'how to download wordpress', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown&nbsp;</p><br style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">', 1, '2022-09-22 13:27:39', '2022-09-22 13:27:39'),
(3, 'how to download elementor', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an un</span><br></p>', 1, '2022-09-22 13:28:08', '2022-09-22 13:28:08'),
(4, 'how to download app', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an un</span><br></p>', 1, '2022-09-22 13:28:20', '2022-09-22 13:28:20'),
(5, 'how to download IOS app', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an un</span><br></p>', 1, '2022-09-22 13:28:36', '2022-09-22 13:28:36');

-- --------------------------------------------------------

--
-- Table structure for table `featured_categories`
--

CREATE TABLE `featured_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_categories`
--

INSERT INTO `featured_categories` (`id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 10, '2022-09-21 08:43:30', '2022-09-21 08:43:30'),
(2, 4, '2022-09-21 08:43:37', '2022-09-21 08:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `homepage_image` varchar(255) NOT NULL,
  `flashsale_page_image` varchar(255) NOT NULL,
  `end_time` datetime NOT NULL,
  `offer` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `title`, `homepage_image`, `flashsale_page_image`, `end_time`, `offer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'WOO! Flash Sale', 'uploads/website-images/flash_sale--2022-09-25-04-09-21-6554.png', 'uploads/website-images/flash_sale--2022-09-20-10-54-12-8555.png', '2025-09-14 14:57:00', 10, 1, NULL, '2022-11-21 17:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_products`
--

CREATE TABLE `flash_sale_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_products`
--

INSERT INTO `flash_sale_products` (`id`, `product_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-09-20 08:02:41', '2022-09-20 08:02:41'),
(2, 2, 1, '2022-09-20 08:02:45', '2022-09-20 08:02:45'),
(3, 3, 1, '2022-09-20 08:02:48', '2022-11-22 22:13:00'),
(4, 4, 1, '2022-09-20 08:02:52', '2022-09-20 08:02:52'),
(5, 8, 1, '2022-09-20 08:02:56', '2022-09-20 08:02:56'),
(6, 9, 1, '2022-09-20 08:03:01', '2022-09-20 08:03:01'),
(7, 11, 1, '2022-09-20 08:03:05', '2022-09-20 08:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `flutterwaves`
--

CREATE TABLE `flutterwaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `public_key` text NOT NULL,
  `secret_key` text NOT NULL,
  `currency_rate` double NOT NULL DEFAULT 1,
  `country_code` varchar(191) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flutterwaves`
--

INSERT INTO `flutterwaves` (`id`, `public_key`, `secret_key`, `currency_rate`, `country_code`, `currency_code`, `title`, `logo`, `status`, `created_at`, `updated_at`, `currency_id`) VALUES
(1, 'FLWPUBK_TEST-5760e3ff9888aa1ab5e5cd1ec3f99cb1-X', 'FLWSECK_TEST-81cb5da016d0a51f7329d4a8057e766d-X', 417.35, 'NG', 'NGN', 'Ecommerce', 'uploads/website-images/flutterwave-2021-12-30-03-44-30-8813.jpg', 1, NULL, '2024-10-24 00:25:28', 2);

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_us` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `first_column` varchar(255) DEFAULT NULL,
  `second_column` varchar(255) DEFAULT NULL,
  `third_column` varchar(255) DEFAULT NULL,
  `copyright` varchar(191) DEFAULT NULL,
  `payment_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `about_us`, `phone`, `email`, `address`, `first_column`, `second_column`, `third_column`, `copyright`, `payment_image`, `created_at`, `updated_at`) VALUES
(1, 'We know there are a lot of threa developers our but we pride into a firm in the industry.', '+88 01682 825 123', 'abdur.rohman2003@gmail.com', 'Mirpur 11 ,Dhaka 1216 Bangladesh', 'Feature', 'General Links', 'Helpful', '©2022 Quomodosoft All rights reserved', 'uploads/website-images/payment-card-2022-09-26-12-59-29-8933.png', NULL, '2022-11-16 02:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `footer_links`
--

CREATE TABLE `footer_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `column` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_links`
--

INSERT INTO `footer_links` (`id`, `column`, `link`, `title`, `created_at`, `updated_at`) VALUES
(1, '1', '/about', 'About Us', '2022-09-20 08:19:02', '2022-11-17 23:48:53'),
(2, '1', '/terms-condition', 'Terms Condition', '2022-09-20 08:19:15', '2022-11-17 23:48:57'),
(3, '1', '/products?highlight=best_product', 'Best Products', '2022-09-20 08:19:24', '2022-11-17 23:50:38'),
(4, '2', '/blogs', 'Blog', '2022-09-20 08:19:38', '2022-11-17 23:49:16'),
(5, '2', '/sellers', 'shop', '2022-09-20 08:19:46', '2022-11-17 23:49:24'),
(6, '2', '/faq', 'Support', '2022-09-20 08:19:52', '2022-11-17 23:49:30'),
(7, '3', '/about', 'About Us', '2022-09-20 08:20:05', '2022-11-17 23:49:38'),
(8, '3', '/products?highlight=popular_category', 'Popular Category', '2022-09-20 08:20:11', '2022-11-17 23:49:48'),
(9, '3', '/contact', 'Contact Us', '2022-09-20 08:20:19', '2022-11-17 23:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `footer_social_links`
--

CREATE TABLE `footer_social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_social_links`
--

INSERT INTO `footer_social_links` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'fab fa-facebook-f', '2022-09-20 08:18:12', '2022-09-20 08:18:12'),
(2, 'https://twitter.com/mexuv', 'fab fa-twitter', '2022-09-20 08:18:29', '2022-09-28 04:35:50'),
(3, 'https://linkedin.com/', 'fab fa-linkedin', '2022-09-20 08:18:43', '2022-09-20 08:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `google_analytics`
--

CREATE TABLE `google_analytics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `analytic_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_analytics`
--

INSERT INTO `google_analytics` (`id`, `analytic_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '5248-fd-5fds', 1, NULL, '2022-06-11 11:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `google_recaptchas`
--

CREATE TABLE `google_recaptchas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_key` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_recaptchas`
--

INSERT INTO `google_recaptchas` (`id`, `site_key`, `secret_key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', 1, NULL, '2022-06-11 11:05:35');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_one_visibilities`
--

CREATE TABLE `home_page_one_visibilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default_name` varchar(255) NOT NULL,
  `section_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `qty` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_one_visibilities`
--

INSERT INTO `home_page_one_visibilities` (`id`, `default_name`, `section_name`, `status`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Slider', 'Slider', 1, 6, NULL, '2022-06-14 06:30:37'),
(2, 'Our Service', 'Our Service', 1, 6, NULL, '2022-06-14 06:29:47'),
(4, 'Popular Category', 'Popular Categories', 1, 24, NULL, '2022-06-14 06:29:47'),
(5, 'Brand', 'Our Brand', 1, 12, NULL, '2022-06-14 06:29:47'),
(6, 'Top Rated Product', 'Top Rated Product', 1, 16, NULL, '2022-06-14 06:29:47'),
(7, 'Best Seller', 'Best Sellers', 1, 8, NULL, '2022-06-14 06:29:47'),
(8, 'Featured Product', 'Featured Products', 1, 15, NULL, '2022-06-14 06:29:47'),
(9, 'New Arrival', 'New Arrival', 1, 19, NULL, '2022-06-14 06:29:47'),
(10, 'Best Product', 'Best Product', 1, 16, NULL, '2022-06-14 06:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `instamojo_payments`
--

CREATE TABLE `instamojo_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_key` text NOT NULL,
  `auth_token` text NOT NULL,
  `currency_rate` varchar(255) NOT NULL DEFAULT '1',
  `account_mode` varchar(255) NOT NULL DEFAULT 'Sandbox',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instamojo_payments`
--

INSERT INTO `instamojo_payments` (`id`, `api_key`, `auth_token`, `currency_rate`, `account_mode`, `status`, `created_at`, `updated_at`, `currency_id`) VALUES
(1, 'test_5f4a2c9a58ef216f8a1a688910f', 'test_994252ada69ce7b3d282b9941c2', '74.66', 'Sandbox', 1, NULL, '2022-02-07 02:32:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `stock_in` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `stock_in`, `created_at`, `updated_at`) VALUES
(2, 12, '230', '2023-01-12 09:36:10', '2023-01-12 09:36:10'),
(3, 12, '555', '2023-01-12 09:36:16', '2023-01-12 09:36:16'),
(6, 13, '100', '2023-01-12 09:59:48', '2023-01-12 09:59:48'),
(7, 13, '50', '2023-01-12 10:00:36', '2023-01-12 10:00:36'),
(8, 13, '80', '2023-01-12 10:00:39', '2023-01-12 10:00:39'),
(10, 36, '10', '2023-01-12 10:24:07', '2023-01-12 10:24:07'),
(11, 37, '100', '2023-01-12 10:25:21', '2023-01-12 10:25:21'),
(12, 37, '800', '2023-01-12 10:25:28', '2023-01-12 10:25:28'),
(13, 55, '500', '2024-09-24 18:57:45', '2024-09-24 18:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(255) DEFAULT NULL,
  `lang_name` varchar(255) DEFAULT NULL,
  `is_default` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `lang_direction` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang_code`, `lang_name`, `is_default`, `status`, `lang_direction`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'Yes', 1, 'left_to_right', '2024-10-13 15:42:20', '2024-10-13 15:47:22');

-- --------------------------------------------------------

--
-- Table structure for table `maintainance_texts`
--

CREATE TABLE `maintainance_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintainance_texts`
--

INSERT INTO `maintainance_texts` (`id`, `status`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 'uploads/website-images/maintainance-mode-2022-09-20-02-13-54-5890.png', 'We are upgrading our site.  We will come back soon.  \r\nPlease stay with us. \r\nThank you.', NULL, '2022-09-20 08:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `mega_menu_categories`
--

CREATE TABLE `mega_menu_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mega_menu_categories`
--

INSERT INTO `mega_menu_categories` (`id`, `category_id`, `status`, `serial`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-09-20 07:06:01', '2022-11-22 07:49:52'),
(2, 2, 1, 2, '2022-09-20 07:07:39', '2022-09-20 07:07:39'),
(3, 10, 1, 3, '2022-09-20 07:11:07', '2022-09-20 07:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `mega_menu_sub_categories`
--

CREATE TABLE `mega_menu_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mega_menu_category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mega_menu_sub_categories`
--

INSERT INTO `mega_menu_sub_categories` (`id`, `mega_menu_category_id`, `sub_category_id`, `status`, `serial`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2022-09-20 07:06:23', '2022-09-20 07:06:23'),
(2, 1, 2, 1, 2, '2022-09-20 07:06:34', '2022-09-20 07:06:34'),
(3, 1, 3, 1, 3, '2022-09-20 07:06:47', '2022-09-20 07:06:47'),
(4, 2, 4, 1, 1, '2022-09-20 07:10:04', '2022-09-20 07:10:04'),
(5, 2, 5, 1, 2, '2022-09-20 07:10:18', '2022-09-20 07:10:18'),
(6, 2, 6, 1, 3, '2022-09-20 07:10:29', '2022-09-20 07:10:29'),
(7, 3, 7, 1, 1, '2022-09-20 07:12:13', '2022-09-20 07:12:13'),
(8, 3, 8, 1, 2, '2022-09-20 07:12:22', '2022-09-20 07:12:22'),
(9, 3, 9, 1, 3, '2022-09-20 07:12:29', '2022-09-20 07:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_visibilities`
--

CREATE TABLE `menu_visibilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_visibilities`
--

INSERT INTO `menu_visibilities` (`id`, `menu_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 1, NULL, '2022-01-23 20:05:32'),
(2, 'Shop', 1, NULL, '2022-01-23 20:05:31'),
(3, 'Mega Menu', 1, NULL, '2022-01-16 20:51:23'),
(4, 'Sellers', 1, NULL, '2022-01-16 20:52:31'),
(5, 'Blog', 1, NULL, '2022-01-16 20:52:32'),
(6, 'Campaign', 1, NULL, '2022-01-16 20:52:33'),
(7, 'Pages', 1, NULL, '2022-01-16 20:52:34'),
(8, 'About us', 1, NULL, '2022-01-16 20:57:27'),
(9, 'Contact Us', 1, NULL, '2022-01-16 20:57:28'),
(10, 'Checkout', 1, NULL, '2022-01-16 20:57:29'),
(11, 'Brand', 1, NULL, '2022-01-16 20:57:25'),
(12, 'FAQ', 1, NULL, '2022-01-16 20:57:26'),
(13, 'Privacy Policy', 1, NULL, '2022-01-16 20:57:23'),
(14, 'Terms and Conditions', 1, NULL, '2022-01-16 20:57:22'),
(15, 'Track Order', 1, NULL, '2022-01-16 20:52:29'),
(16, 'Flash Deal', 1, NULL, '2022-01-16 20:52:28'),
(17, 'My Account', 1, NULL, '2022-01-16 20:04:54'),
(18, 'Login/Register', 1, NULL, '2022-01-16 20:04:47'),
(19, 'Shopping Cart', 1, NULL, '2022-01-16 20:09:28'),
(20, 'Compare', 1, NULL, '2022-01-16 20:37:54'),
(21, 'Wishlist', 1, NULL, '2022-01-16 20:37:55'),
(22, 'Topbar Phone', 1, NULL, '2022-01-16 20:02:07'),
(23, 'Menu Phone', 1, NULL, '2022-01-16 20:08:00'),
(24, 'Categories', 1, NULL, '2022-01-16 23:52:39'),
(25, 'Search', 1, NULL, '2022-01-16 20:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_read_msg` int(11) NOT NULL DEFAULT 0,
  `seller_read_msg` int(11) NOT NULL,
  `send_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `customer_id`, `seller_id`, `message`, `product_id`, `customer_read_msg`, `seller_read_msg`, `send_by`, `created_at`, `updated_at`) VALUES
(1, 7, 4, 'this is test message', 14, 1, 0, 'customer', '2022-12-19 15:36:56', '2024-06-01 12:11:04'),
(2, 7, 4, 'Hi, are you there ?', 0, 1, 0, 'customer', '2022-12-19 15:36:56', '2024-06-01 12:11:04'),
(3, 7, 4, 'Yes there. please tell me how can I help', 0, 1, 1, 'seller', '2022-12-19 15:36:56', '2024-06-01 12:11:04'),
(4, 7, 9, 'this is test message', 0, 1, 0, 'customer', '2022-12-19 15:36:56', '2024-05-18 02:46:01'),
(5, 7, 9, 'Hi, are you there ?', 0, 1, 0, 'customer', '2022-12-19 15:36:56', '2024-05-18 02:46:01'),
(6, 7, 9, 'Yes there. please tell me how can I help', 0, 1, 1, 'seller', '2022-12-19 15:36:56', '2024-05-18 02:46:01'),
(7, 7, 8, 'this is test message', 0, 1, 0, 'customer', '2022-12-19 15:36:56', '2024-05-31 10:16:29'),
(8, 7, 8, 'Hi, are you there ?', 0, 1, 0, 'customer', '2022-12-19 15:36:56', '2024-05-31 10:16:29'),
(9, 7, 8, 'Yes there. please tell me how can I help', 0, 1, 1, 'seller', '2022-12-19 15:36:56', '2024-05-31 10:16:29'),
(10, 7, 8, 'It\'s available now. You can buy it', 0, 1, 1, 'seller', '2022-12-19 15:36:56', '2024-05-31 10:16:29'),
(11, 7, 8, 'It\'s available now. You can buy it', 0, 1, 1, 'seller', '2022-12-19 15:36:56', '2024-05-31 10:16:29'),
(12, 7, 4, 'Hello seller', 0, 1, 0, 'customer', '2022-12-20 14:15:11', '2024-06-01 12:11:04'),
(13, 7, 4, 'Hello seller', 0, 1, 0, 'customer', '2022-12-20 14:23:32', '2024-06-01 12:11:04'),
(14, 7, 4, 'Hello seller', 0, 1, 0, 'customer', '2022-12-20 14:24:52', '2024-06-01 12:11:04'),
(15, 7, 4, 'Hello seller', 14, 1, 0, 'customer', '2022-12-20 14:25:32', '2024-06-01 12:11:04'),
(16, 7, 4, 'Hello seller', 14, 1, 0, 'customer', '2022-12-20 14:26:26', '2024-06-01 12:11:04'),
(17, 7, 4, 'Hello seller', 0, 1, 0, 'customer', '2022-12-28 04:51:26', '2024-06-01 12:11:04'),
(18, 7, 12, 'Hello seller', 0, 1, 1, 'customer', '2022-12-28 05:48:16', '2024-05-31 10:16:30'),
(19, 7, 12, 'Are you there  ?', 0, 1, 1, 'customer', '2022-12-28 05:54:09', '2024-05-31 10:16:30'),
(20, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-28 05:54:17', '2024-05-31 10:16:30'),
(21, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-28 09:02:08', '2024-05-31 10:16:30'),
(22, 15, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-28 09:02:08', '2022-12-29 15:27:22'),
(23, 7, 12, 'Hello seller', 0, 1, 1, 'seller', '2022-12-28 05:48:16', '2024-05-31 10:16:30'),
(24, 7, 12, 'Are you there  ?', 0, 1, 1, 'seller', '2022-12-28 05:54:09', '2024-05-31 10:16:30'),
(25, 7, 12, 'Is it available ?', 0, 1, 1, 'seller', '2022-12-28 05:54:17', '2024-05-31 10:16:30'),
(26, 7, 12, 'Is it available ?', 0, 1, 1, 'seller', '2022-12-28 09:02:08', '2024-05-31 10:16:30'),
(27, 7, 12, 'Hello seller', 0, 1, 1, 'customer', '2022-12-28 05:48:16', '2024-05-31 10:16:30'),
(28, 7, 12, 'Are you there  ?', 0, 1, 1, 'customer', '2022-12-28 05:54:09', '2024-05-31 10:16:30'),
(29, 7, 12, 'Hi Joe', 0, 1, 1, 'seller', '2022-12-28 11:21:26', '2024-05-31 10:16:30'),
(30, 7, 12, 'do you want to purchase this ?', 0, 1, 1, 'seller', '2022-12-28 11:24:49', '2024-05-31 10:16:30'),
(31, 7, 12, 'How many item do you want ?', 0, 1, 1, 'seller', '2022-12-28 11:26:17', '2024-05-31 10:16:30'),
(32, 7, 12, 'where is ur location ?', 0, 1, 1, 'seller', '2022-12-28 11:26:40', '2024-05-31 10:16:30'),
(33, 7, 12, 'please share your phone number', 0, 1, 1, 'seller', '2022-12-28 11:28:02', '2024-05-31 10:16:30'),
(34, 15, 12, 'Yes available', 0, 0, 1, 'seller', '2022-12-28 11:44:26', '2022-12-29 15:27:22'),
(35, 15, 12, 'want to purchase ?', 0, 0, 1, 'seller', '2022-12-28 11:44:35', '2022-12-29 15:27:22'),
(36, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-28 11:59:51', '2024-05-31 10:16:30'),
(37, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-28 12:00:49', '2024-05-31 10:16:30'),
(38, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-28 12:08:35', '2024-05-31 10:16:30'),
(39, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-28 12:18:44', '2024-05-31 10:16:30'),
(40, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-29 03:15:15', '2024-05-31 10:16:30'),
(41, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-29 03:48:04', '2024-05-31 10:16:30'),
(42, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-29 03:54:26', '2024-05-31 10:16:30'),
(43, 7, 12, 'This is new message', 0, 1, 1, 'customer', '2022-12-29 03:59:51', '2024-05-31 10:16:30'),
(44, 7, 12, 'This is new message', 0, 1, 1, 'customer', '2022-12-29 04:07:02', '2024-05-31 10:16:30'),
(45, 7, 12, 'This is new message', 0, 1, 1, 'customer', '2022-12-29 04:10:56', '2024-05-31 10:16:30'),
(46, 7, 12, 'Yes I am here', 0, 1, 1, 'seller', '2022-12-29 04:11:21', '2024-05-31 10:16:30'),
(47, 7, 12, 'please tell me', 0, 1, 1, 'seller', '2022-12-29 04:11:30', '2024-05-31 10:16:30'),
(48, 7, 12, 'This is new message', 0, 1, 1, 'customer', '2022-12-29 04:12:25', '2024-05-31 10:16:30'),
(49, 7, 12, 'Hi', 0, 1, 1, 'seller', '2022-12-29 04:12:59', '2024-05-31 10:16:30'),
(50, 7, 12, 'How can I help you?', 0, 1, 1, 'seller', '2022-12-29 04:13:09', '2024-05-31 10:16:30'),
(51, 7, 12, 'This is new message', 0, 1, 1, 'customer', '2022-12-29 04:13:43', '2024-05-31 10:16:30'),
(52, 7, 12, 'This is new message', 0, 1, 1, 'customer', '2022-12-29 04:13:56', '2024-05-31 10:16:30'),
(53, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 04:18:05', '2024-05-31 10:16:30'),
(54, 7, 12, 'test 2', 0, 1, 1, 'seller', '2022-12-29 04:18:16', '2024-05-31 10:16:30'),
(55, 7, 12, 'test 3', 0, 1, 1, 'seller', '2022-12-29 04:18:28', '2024-05-31 10:16:30'),
(56, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 04:18:42', '2024-05-31 10:16:30'),
(57, 15, 12, 'tst', 0, 0, 1, 'seller', '2022-12-29 04:19:21', '2022-12-29 15:27:22'),
(58, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:36:46', '2024-05-31 10:16:30'),
(59, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:38:31', '2024-05-31 10:16:30'),
(60, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:39:35', '2024-05-31 10:16:30'),
(61, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:41:40', '2024-05-31 10:16:30'),
(62, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:43:49', '2024-05-31 10:16:30'),
(63, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:44:27', '2024-05-31 10:16:30'),
(64, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:44:55', '2024-05-31 10:16:30'),
(65, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:48:32', '2024-05-31 10:16:30'),
(66, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:49:33', '2024-05-31 10:16:30'),
(67, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:54:45', '2024-05-31 10:16:30'),
(68, 7, 12, 'this is message', 0, 1, 1, 'seller', '2022-12-29 05:56:21', '2024-05-31 10:16:30'),
(69, 7, 12, 'test msg', 0, 1, 1, 'seller', '2022-12-29 05:56:29', '2024-05-31 10:16:30'),
(70, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:56:47', '2024-05-31 10:16:30'),
(71, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:56:59', '2024-05-31 10:16:30'),
(72, 7, 12, 'test 2', 0, 1, 1, 'seller', '2022-12-29 05:58:14', '2024-05-31 10:16:30'),
(73, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:58:25', '2024-05-31 10:16:30'),
(74, 7, 12, 'nice msg', 0, 1, 1, 'seller', '2022-12-29 06:02:37', '2024-05-31 10:16:30'),
(75, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 06:02:54', '2024-05-31 10:16:30'),
(76, 7, 12, 'working', 0, 1, 1, 'seller', '2022-12-29 06:07:03', '2024-05-31 10:16:30'),
(77, 7, 12, 'again working', 0, 1, 1, 'seller', '2022-12-29 06:07:11', '2024-05-31 10:16:30'),
(78, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 06:07:33', '2024-05-31 10:16:30'),
(79, 7, 12, 'hello bro', 0, 1, 1, 'seller', '2022-12-29 06:28:02', '2024-05-31 10:16:30'),
(80, 5, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 06:36:03', '2023-03-20 18:13:32'),
(81, 6, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 06:37:06', '2023-03-20 19:47:53'),
(82, 6, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 06:39:04', '2023-03-20 19:47:53'),
(83, 7, 12, 'hi', 0, 1, 1, 'seller', '2022-12-29 06:39:29', '2024-05-31 10:16:30'),
(84, 9, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 06:41:03', '2023-01-24 12:19:27'),
(85, 6, 12, 'hello', 0, 0, 1, 'seller', '2022-12-29 06:41:47', '2023-03-20 19:47:53'),
(86, 9, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 06:57:59', '2023-01-24 12:19:27'),
(87, 9, 12, 'hi', 0, 0, 1, 'seller', '2022-12-29 07:11:32', '2023-01-24 12:19:27'),
(88, 9, 12, 'hello', 0, 0, 1, 'seller', '2022-12-29 07:11:34', '2023-01-24 12:19:27'),
(89, 7, 12, 'hello', 0, 1, 1, 'seller', '2022-12-29 07:11:53', '2024-05-31 10:16:30'),
(90, 9, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 07:21:22', '2023-01-24 12:19:27'),
(91, 9, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 07:23:18', '2023-01-24 12:19:27'),
(92, 9, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 07:24:19', '2023-01-24 12:19:27'),
(93, 9, 12, 'This is new message 20', 0, 1, 1, 'customer', '2022-12-29 07:26:45', '2023-01-24 12:19:27'),
(94, 9, 12, 'This is new message 20', 0, 1, 1, 'customer', '2022-12-29 07:31:45', '2023-01-24 12:19:27'),
(95, 9, 12, 'This is new message 20', 0, 1, 1, 'customer', '2022-12-29 07:33:30', '2023-01-24 12:19:27'),
(96, 9, 12, 'This is new message 25', 0, 1, 1, 'customer', '2022-12-29 07:34:05', '2023-01-24 12:19:27'),
(97, 9, 12, 'before 26', 0, 0, 1, 'seller', '2022-12-29 07:35:50', '2023-01-24 12:19:27'),
(98, 9, 12, 'This is new message 26', 0, 1, 1, 'customer', '2022-12-29 07:36:05', '2023-01-24 12:19:27'),
(99, 9, 12, 'This is new message 27', 0, 1, 1, 'customer', '2022-12-29 07:40:07', '2023-01-24 12:19:27'),
(100, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 07:41:11', '2023-01-24 12:19:27'),
(101, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 07:43:31', '2023-01-24 12:19:27'),
(102, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 07:43:53', '2023-01-24 12:19:27'),
(103, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 07:49:11', '2023-01-24 12:19:27'),
(104, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 08:46:02', '2023-01-24 12:19:27'),
(105, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 08:46:14', '2023-01-24 12:19:27'),
(106, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 09:08:19', '2023-01-24 12:19:27'),
(107, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 09:12:13', '2023-01-24 12:19:27'),
(108, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 09:13:47', '2023-01-24 12:19:27'),
(109, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 09:16:07', '2023-01-24 12:19:27'),
(110, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 09:16:55', '2023-01-24 12:19:27'),
(111, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 09:17:34', '2023-01-24 12:19:27'),
(112, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 09:20:04', '2023-01-24 12:19:27'),
(113, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 09:24:51', '2023-01-24 12:19:27'),
(114, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 09:34:40', '2023-01-24 12:19:27'),
(115, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 09:36:07', '2023-01-24 12:19:27'),
(116, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:36:38', '2023-01-24 12:19:27'),
(117, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:40:34', '2023-01-24 12:19:27'),
(118, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:45:10', '2023-01-24 12:19:27'),
(119, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:45:37', '2023-01-24 12:19:27'),
(120, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:45:54', '2023-01-24 12:19:27'),
(121, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:46:52', '2023-01-24 12:19:27'),
(122, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:48:02', '2023-01-24 12:19:27'),
(123, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:49:20', '2023-01-24 12:19:27'),
(124, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:49:44', '2023-01-24 12:19:27'),
(125, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:50:01', '2023-01-24 12:19:27'),
(126, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:54:25', '2023-01-24 12:19:27'),
(127, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:55:51', '2023-01-24 12:19:27'),
(128, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:56:33', '2023-01-24 12:19:27'),
(129, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:57:30', '2023-01-24 12:19:27'),
(130, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 09:59:41', '2023-01-24 12:19:27'),
(131, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 10:03:54', '2023-01-24 12:19:27'),
(132, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 10:06:31', '2023-01-24 12:19:27'),
(133, 9, 12, 'This is new message 50', 0, 1, 1, 'customer', '2022-12-29 10:07:17', '2023-01-24 12:19:27'),
(134, 9, 12, 'This is new message 52', 0, 1, 1, 'customer', '2022-12-29 10:08:16', '2023-01-24 12:19:27'),
(135, 9, 12, 'Hi', 0, 0, 1, 'seller', '2022-12-29 10:08:43', '2023-01-24 12:19:27'),
(136, 9, 12, 'hello', 0, 0, 1, 'seller', '2022-12-29 10:08:46', '2023-01-24 12:19:27'),
(137, 9, 12, 'This is new message 53', 0, 1, 1, 'customer', '2022-12-29 10:09:50', '2023-01-24 12:19:27'),
(138, 9, 12, 'h', 0, 0, 1, 'seller', '2022-12-29 10:10:39', '2023-01-24 12:19:27'),
(139, 9, 12, 'hello', 0, 0, 1, 'seller', '2022-12-29 10:10:41', '2023-01-24 12:19:27'),
(140, 9, 12, 'This is new message 53', 0, 1, 1, 'customer', '2022-12-29 10:10:56', '2023-01-24 12:19:27'),
(141, 9, 12, 'This is new message 53', 0, 1, 1, 'customer', '2022-12-29 10:11:38', '2023-01-24 12:19:27'),
(142, 9, 12, 'This is new message 53', 0, 1, 1, 'customer', '2022-12-29 10:12:59', '2023-01-24 12:19:27'),
(143, 9, 12, 'This is new message 53', 0, 1, 1, 'customer', '2022-12-29 10:15:02', '2023-01-24 12:19:27'),
(144, 9, 12, 'This is new message 53', 0, 1, 1, 'customer', '2022-12-29 10:15:48', '2023-01-24 12:19:27'),
(145, 9, 12, 'This is new message 53', 0, 1, 1, 'customer', '2022-12-29 10:16:15', '2023-01-24 12:19:27'),
(146, 9, 12, 'This is new message 55', 0, 1, 1, 'customer', '2022-12-29 10:17:13', '2023-01-24 12:19:27'),
(147, 9, 12, 'hello developer', 0, 0, 1, 'seller', '2022-12-29 10:18:21', '2023-01-24 12:19:27'),
(148, 9, 12, 'This is new message 55', 0, 1, 1, 'customer', '2022-12-29 10:18:35', '2023-01-24 12:19:27'),
(149, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:18:54', '2023-01-24 12:19:27'),
(150, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:23:55', '2023-01-24 12:19:27'),
(151, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:26:04', '2023-01-24 12:19:27'),
(152, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:27:57', '2023-01-24 12:19:27'),
(153, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:35:41', '2023-01-24 12:19:27'),
(154, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:36:03', '2023-01-24 12:19:27'),
(155, 9, 12, 'hello joe', 0, 0, 1, 'seller', '2022-12-29 10:36:19', '2023-01-24 12:19:27'),
(156, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:36:37', '2023-01-24 12:19:27'),
(157, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:38:33', '2023-01-24 12:19:27'),
(158, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:38:54', '2023-01-24 12:19:27'),
(159, 9, 12, 'before check', 0, 0, 1, 'seller', '2022-12-29 10:39:16', '2023-01-24 12:19:27'),
(160, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:40:23', '2023-01-24 12:19:27'),
(161, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:53:21', '2023-01-24 12:19:27'),
(162, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:55:19', '2023-01-24 12:19:27'),
(163, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:55:36', '2023-01-24 12:19:27'),
(164, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:56:47', '2023-01-24 12:19:27'),
(165, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:57:58', '2023-01-24 12:19:27'),
(166, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 10:59:50', '2023-01-24 12:19:27'),
(167, 9, 12, 'hello checkeer', 0, 0, 1, 'seller', '2022-12-29 11:04:21', '2023-01-24 12:19:27'),
(168, 9, 12, 'This is new message 56', 0, 1, 1, 'customer', '2022-12-29 11:05:25', '2023-01-24 12:19:27'),
(169, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:08:01', '2024-05-31 10:16:30'),
(170, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:08:39', '2024-05-31 10:16:30'),
(171, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:09:12', '2024-05-31 10:16:30'),
(172, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:09:41', '2024-05-31 10:16:30'),
(173, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:10:19', '2024-05-31 10:16:30'),
(174, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:10:29', '2024-05-31 10:16:30'),
(175, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:10:47', '2024-05-31 10:16:30'),
(176, 7, 12, 'Hello user', 0, 1, 1, 'seller', '2022-12-29 11:17:09', '2024-05-31 10:16:30'),
(177, 7, 12, 'test msg', 0, 1, 1, 'seller', '2022-12-29 11:17:37', '2024-05-31 10:16:30'),
(178, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:25:59', '2024-05-31 10:16:30'),
(179, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:30:09', '2024-05-31 10:16:30'),
(180, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:41:02', '2024-05-31 10:16:30'),
(181, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:47:27', '2024-05-31 10:16:30'),
(182, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:49:10', '2024-05-31 10:16:30'),
(183, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:49:15', '2024-05-31 10:16:30'),
(184, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:50:09', '2024-05-31 10:16:30'),
(185, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:51:35', '2024-05-31 10:16:30'),
(186, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:51:53', '2024-05-31 10:16:30'),
(187, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:52:20', '2024-05-31 10:16:30'),
(188, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:54:53', '2024-05-31 10:16:30'),
(189, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:55:00', '2024-05-31 10:16:30'),
(190, 7, 12, 'this is nice comment', 0, 1, 1, 'seller', '2022-12-29 11:56:53', '2024-05-31 10:16:30'),
(191, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 11:57:06', '2024-05-31 10:16:30'),
(192, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 12:00:17', '2024-05-31 10:16:30'),
(193, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 12:00:29', '2024-05-31 10:16:30'),
(194, 7, 12, 'after 70', 0, 1, 1, 'seller', '2022-12-29 12:00:44', '2024-05-31 10:16:30'),
(195, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 12:01:06', '2024-05-31 10:16:30'),
(196, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 12:06:54', '2024-05-31 10:16:30'),
(197, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 12:07:42', '2024-05-31 10:16:30'),
(198, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 12:11:08', '2024-05-31 10:16:30'),
(199, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 12:11:29', '2024-05-31 10:16:30'),
(200, 7, 12, 'This is new message 70', 0, 1, 1, 'customer', '2022-12-29 12:11:42', '2024-05-31 10:16:30'),
(201, 7, 12, 'nice product', 0, 1, 1, 'seller', '2022-12-29 12:11:55', '2024-05-31 10:16:30'),
(202, 7, 12, 'This is new message 90', 0, 1, 1, 'customer', '2022-12-29 12:12:07', '2024-05-31 10:16:30'),
(203, 15, 12, 'test msg', 0, 0, 1, 'seller', '2022-12-29 12:14:45', '2022-12-29 15:27:22'),
(204, 7, 12, 'another msg', 0, 1, 1, 'seller', '2022-12-29 12:14:55', '2024-05-31 10:16:30'),
(205, 7, 12, 'This is new message 90', 0, 1, 1, 'customer', '2022-12-29 12:15:10', '2024-05-31 10:16:30'),
(206, 7, 12, 'This is new message 91', 0, 1, 1, 'customer', '2022-12-29 12:15:34', '2024-05-31 10:16:30'),
(207, 7, 12, 'it is available, you can buy it', 0, 1, 1, 'seller', '2022-12-29 12:16:01', '2024-05-31 10:16:30'),
(208, 7, 12, 'How much it?', 0, 1, 1, 'customer', '2022-12-29 12:16:21', '2024-05-31 10:16:30'),
(209, 7, 12, 'How much it?', 0, 1, 1, 'customer', '2022-12-29 12:17:20', '2024-05-31 10:16:30'),
(210, 9, 12, 'hello customer', 0, 0, 1, 'seller', '2022-12-29 12:17:32', '2023-01-24 12:19:27'),
(211, 5, 12, 'are u there ?', 0, 0, 1, 'seller', '2022-12-29 12:17:42', '2023-03-20 18:13:32'),
(212, 7, 12, 'Only 500BDT', 0, 1, 1, 'seller', '2022-12-29 12:17:56', '2024-05-31 10:16:30'),
(213, 7, 12, 'I want to buy 40 piece', 0, 1, 1, 'customer', '2022-12-29 12:18:26', '2024-05-31 10:16:30'),
(214, 7, 12, 'where is ur location ?', 0, 1, 1, 'seller', '2022-12-29 12:19:25', '2024-05-31 10:16:30'),
(215, 7, 12, 'Khansama, dinapur', 0, 1, 1, 'customer', '2022-12-29 12:20:23', '2024-05-31 10:16:30'),
(216, 7, 12, 'ok Let me check', 0, 1, 1, 'seller', '2022-12-29 12:20:37', '2024-05-31 10:16:30'),
(217, 7, 12, 'any update ?', 0, 1, 1, 'customer', '2022-12-29 12:20:57', '2024-05-31 10:16:30'),
(218, 7, 12, 'hellow', 0, 1, 1, 'customer', '2022-12-29 12:21:45', '2024-05-31 10:16:30'),
(219, 7, 12, 'hellow 101', 0, 1, 1, 'customer', '2022-12-29 15:27:09', '2024-05-31 10:16:30'),
(220, 7, 12, 'hellow 101', 0, 1, 1, 'customer', '2022-12-29 15:27:37', '2024-05-31 10:16:30'),
(221, 7, 12, 'hlw 102', 0, 1, 1, 'seller', '2022-12-29 15:28:02', '2024-05-31 10:16:30'),
(222, 7, 12, 'hellow 101', 0, 1, 1, 'customer', '2022-12-29 15:28:14', '2024-05-31 10:16:30'),
(223, 7, 12, 'hellow 103', 0, 1, 1, 'customer', '2022-12-29 15:28:43', '2024-05-31 10:16:30'),
(224, 7, 12, 'hellow 1034', 0, 1, 1, 'customer', '2022-12-29 15:29:01', '2024-05-31 10:16:30'),
(225, 9, 12, 'Hi', 0, 0, 1, 'seller', '2023-01-12 10:06:11', '2023-01-24 12:19:27'),
(226, 9, 12, '55', 0, 0, 1, 'seller', '2023-01-12 10:09:34', '2023-01-24 12:19:27'),
(227, 9, 12, 'Hello', 0, 0, 1, 'seller', '2023-01-12 10:15:05', '2023-01-24 12:19:27'),
(228, 9, 12, 'hi', 0, 0, 1, 'seller', '2023-01-17 03:16:02', '2023-01-24 12:19:27'),
(229, 7, 12, 'this is test msg', 0, 1, 1, 'seller', '2023-01-17 03:16:42', '2024-05-31 10:16:30'),
(230, 7, 12, 'This is new message 56', 0, 1, 1, 'customer', '2023-01-17 04:14:37', '2024-05-31 10:16:30'),
(231, 7, 12, 'This is new message 56', 0, 1, 1, 'customer', '2023-01-17 04:15:05', '2024-05-31 10:16:30'),
(232, 9, 12, 'We will inform about it', 0, 0, 1, 'seller', '2023-01-17 04:15:29', '2023-01-24 12:19:27'),
(233, 7, 12, 'This is new message 57', 0, 1, 1, 'customer', '2023-01-17 04:15:42', '2024-05-31 10:16:30'),
(234, 7, 12, 'ki obostha bhai', 0, 1, 1, 'seller', '2023-01-17 04:16:00', '2024-05-31 10:16:30'),
(235, 5, 12, 'hello bro', 0, 0, 1, 'seller', '2023-01-17 04:16:09', '2023-03-20 18:13:32'),
(236, 7, 12, 'This is new message 57', 0, 1, 1, 'customer', '2023-01-17 04:16:22', '2024-05-31 10:16:30'),
(237, 7, 12, 'This is new message 57', 0, 1, 1, 'customer', '2023-01-17 04:27:40', '2024-05-31 10:16:30'),
(238, 7, 12, 'This is new message 57', 0, 1, 1, 'customer', '2023-01-17 04:32:39', '2024-05-31 10:16:30'),
(239, 9, 12, 'hello mr.', 0, 0, 1, 'seller', '2023-01-17 04:37:35', '2023-01-24 12:19:27'),
(240, 6, 12, 'ki obostha', 0, 0, 1, 'seller', '2023-01-17 04:37:49', '2023-03-20 19:47:53'),
(241, 7, 12, 'This is new message 57', 0, 1, 1, 'customer', '2023-01-17 04:38:06', '2024-05-31 10:16:30'),
(242, 7, 12, 'This is new message 57', 0, 1, 1, 'customer', '2023-01-17 04:44:01', '2024-05-31 10:16:30'),
(243, 7, 12, 'hello bro', 0, 1, 1, 'seller', '2023-01-17 04:44:42', '2024-05-31 10:16:30'),
(244, 7, 12, 'ki bostha bhai', 0, 1, 1, 'customer', '2023-01-17 04:45:08', '2024-05-31 10:16:30'),
(245, 7, 12, 'ki bostha bhai', 0, 1, 1, 'customer', '2023-01-17 04:46:42', '2024-05-31 10:16:30'),
(246, 7, 12, 'kothay ?', 0, 1, 1, 'customer', '2023-01-17 04:47:08', '2024-05-31 10:16:30'),
(247, 7, 12, 'basay', 0, 1, 1, 'seller', '2023-01-17 04:47:15', '2024-05-31 10:16:30'),
(248, 7, 12, 'kothay ?', 14, 1, 1, 'customer', '2023-01-17 04:50:30', '2024-05-31 10:16:30'),
(249, 7, 12, 'kothay ?', 0, 1, 1, 'customer', '2023-01-17 04:53:08', '2024-05-31 10:16:30'),
(250, 7, 12, 'kothay ?', 0, 1, 1, 'customer', '2023-01-17 04:53:39', '2024-05-31 10:16:30'),
(251, 7, 12, 'order er ki obostha ?', 0, 1, 1, 'customer', '2023-01-17 04:54:34', '2024-05-31 10:16:30'),
(252, 7, 12, 'order er ki obostha ?', 0, 1, 1, 'customer', '2023-01-17 04:57:21', '2024-05-31 10:16:30'),
(253, 5, 12, 'vai kothay ?', 0, 0, 1, 'seller', '2023-01-17 05:10:14', '2023-03-20 18:13:32'),
(254, 7, 12, 'hi', 0, 1, 1, 'seller', '2023-03-19 22:29:07', '2024-05-31 10:16:30'),
(255, 7, 12, 'hi', 0, 1, 1, 'seller', '2023-03-20 16:35:04', '2024-05-31 10:16:30'),
(256, 7, 12, 'hello', 0, 1, 1, 'seller', '2023-03-20 16:35:37', '2024-05-31 10:16:30'),
(257, 7, 12, 'ffff', 0, 1, 1, 'seller', '2023-03-20 16:38:33', '2024-05-31 10:16:30'),
(258, 7, 12, 'test', 0, 1, 1, 'seller', '2023-03-20 16:39:06', '2024-05-31 10:16:30'),
(259, 7, 12, 'test2', 0, 1, 1, 'customer', '2023-03-20 16:41:04', '2024-05-31 10:16:30'),
(260, 7, 12, 'hello', 0, 1, 1, 'seller', '2023-03-20 16:41:19', '2024-05-31 10:16:30'),
(261, 7, 12, 'tests', 0, 1, 1, 'seller', '2023-03-20 16:42:43', '2024-05-31 10:16:30'),
(262, 7, 12, 'test3', 0, 1, 1, 'seller', '2023-03-20 16:44:46', '2024-05-31 10:16:30'),
(263, 7, 12, 'testu', 0, 1, 1, 'customer', '2023-03-20 16:46:17', '2024-05-31 10:16:30'),
(264, 7, 12, 'testu', 0, 1, 1, 'customer', '2023-03-20 16:46:18', '2024-05-31 10:16:30'),
(265, 7, 12, 'tests', 0, 1, 1, 'seller', '2023-03-20 16:46:34', '2024-05-31 10:16:30'),
(266, 7, 12, 'tests', 0, 1, 1, 'seller', '2023-03-20 16:47:55', '2024-05-31 10:16:30'),
(267, 7, 12, 'tests2', 0, 1, 1, 'seller', '2023-03-20 16:48:14', '2024-05-31 10:16:30'),
(268, 26, 12, NULL, 37, 1, 1, 'customer', '2023-03-20 16:52:25', '2023-03-20 18:13:35'),
(269, 26, 12, 'hello booorooo...', 0, 1, 1, 'customer', '2023-03-20 16:52:34', '2023-03-20 18:13:35'),
(270, 26, 12, 'hello2', 0, 0, 1, 'seller', '2023-03-20 16:52:48', '2023-03-20 18:13:35'),
(272, 26, 12, NULL, 37, 1, 1, 'customer', '2023-03-20 16:54:16', '2023-03-20 18:13:35'),
(273, 26, 12, 'hee', 0, 0, 1, 'seller', '2023-03-20 16:54:30', '2023-03-20 18:13:35'),
(274, 7, 12, 'test3', 0, 1, 1, 'seller', '2023-03-20 16:56:02', '2024-05-31 10:16:30'),
(275, 26, 12, NULL, 36, 1, 1, 'customer', '2023-03-20 17:00:14', '2023-03-20 18:13:35'),
(276, 26, 12, 'hello', 0, 1, 1, 'customer', '2023-03-20 17:00:24', '2023-03-20 18:13:35'),
(277, 26, 12, 'hi', 0, 0, 1, 'seller', '2023-03-20 17:00:29', '2023-03-20 18:13:35'),
(278, 7, 12, 'test4', 0, 1, 1, 'seller', '2023-03-20 17:03:38', '2024-05-31 10:16:30'),
(280, 7, 12, 'ibrahim vai', 0, 1, 1, 'customer', '2023-03-20 17:26:52', '2024-05-31 10:16:30'),
(284, 7, 12, 'hey', 0, 1, 1, 'customer', '2023-03-20 17:50:16', '2024-05-31 10:16:30'),
(285, 7, 12, 'hello', 0, 1, 1, 'seller', '2023-03-20 17:50:21', '2024-05-31 10:16:30'),
(286, 7, 12, 'he2', 0, 1, 1, 'seller', '2023-03-20 17:50:41', '2024-05-31 10:16:30'),
(287, 7, 12, 'h3', 0, 1, 1, 'customer', '2023-03-20 17:52:06', '2024-05-31 10:16:30'),
(288, 7, 12, 'h4', 0, 1, 1, 'seller', '2023-03-20 17:52:15', '2024-05-31 10:16:30'),
(289, 7, 12, 'h5', 0, 1, 1, 'seller', '2023-03-20 17:54:06', '2024-05-31 10:16:30'),
(290, 7, 12, 'h6', 0, 1, 1, 'customer', '2023-03-20 18:02:01', '2024-05-31 10:16:30'),
(291, 7, 12, 'h7', 0, 1, 1, 'seller', '2023-03-20 18:02:09', '2024-05-31 10:16:30'),
(292, 7, 12, 'h8', 0, 1, 1, 'customer', '2023-03-20 18:03:37', '2024-05-31 10:16:30'),
(293, 7, 12, 'h9', 0, 1, 1, 'seller', '2023-03-20 18:03:43', '2024-05-31 10:16:30'),
(294, 7, 12, 'h10', 0, 1, 1, 'seller', '2023-03-20 18:05:10', '2024-05-31 10:16:30'),
(295, 7, 12, 'h11', 0, 1, 1, 'seller', '2023-03-20 18:06:01', '2024-05-31 10:16:30'),
(296, 7, 12, 'h12', 0, 1, 1, 'seller', '2023-03-20 18:06:59', '2024-05-31 10:16:30'),
(297, 7, 12, 'h13', 0, 1, 1, 'seller', '2023-03-20 18:08:27', '2024-05-31 10:16:30'),
(298, 7, 12, 'h14', 0, 1, 1, 'seller', '2023-03-20 18:08:49', '2024-05-31 10:16:30'),
(299, 7, 12, 'h15', 0, 1, 1, 'seller', '2023-03-20 18:13:53', '2024-05-31 10:16:30'),
(300, 7, 12, 'h16', 0, 1, 1, 'seller', '2023-03-20 18:15:57', '2024-05-31 10:16:30'),
(301, 7, 12, 'h17', 0, 1, 1, 'customer', '2023-03-20 18:16:09', '2024-05-31 10:16:30'),
(302, 7, 12, 'h19', 0, 1, 1, 'seller', '2023-03-20 18:17:28', '2024-05-31 10:16:30'),
(303, 7, 12, 'h20', 0, 1, 1, 'seller', '2023-03-20 18:17:47', '2024-05-31 10:16:30'),
(304, 7, 12, 'h31', 0, 1, 1, 'seller', '2023-03-20 18:18:14', '2024-05-31 10:16:30'),
(305, 7, 12, 'h32', 0, 1, 1, 'customer', '2023-03-20 19:22:46', '2024-05-31 10:16:30'),
(306, 7, 12, 'h42', 0, 1, 1, 'seller', '2023-03-20 19:22:54', '2024-05-31 10:16:30'),
(307, 7, 12, 'h3', 0, 1, 1, 'customer', '2023-03-20 19:40:37', '2024-05-31 10:16:30'),
(308, 7, 12, 'h44', 0, 1, 1, 'customer', '2023-03-20 19:40:49', '2024-05-31 10:16:30'),
(309, 7, 12, 'h45', 0, 1, 1, 'seller', '2023-03-20 19:40:54', '2024-05-31 10:16:30'),
(310, 7, 12, 'ok', 0, 1, 1, 'seller', '2023-03-20 20:08:16', '2024-05-31 10:16:30'),
(311, 7, 12, 'it\'s ok now', 0, 1, 1, 'seller', '2023-03-20 20:08:24', '2024-05-31 10:16:30'),
(312, 7, 12, 'ok', 0, 1, 1, 'seller', '2023-03-20 20:17:46', '2024-05-31 10:16:30'),
(313, 7, 12, 'hello vai', 0, 1, 1, 'seller', '2023-03-20 20:20:17', '2024-05-31 10:16:30'),
(314, 7, 12, 'tik ase?', 0, 1, 1, 'seller', '2023-03-20 20:20:51', '2024-05-31 10:16:30'),
(315, 7, 12, 'hello', 0, 1, 1, 'customer', '2023-03-20 20:22:14', '2024-05-31 10:16:30'),
(316, 7, 12, 'tik', 0, 1, 1, 'customer', '2023-03-20 20:22:46', '2024-05-31 10:16:30'),
(317, 7, 12, 'ha', 0, 1, 1, 'seller', '2023-03-20 20:23:10', '2024-05-31 10:16:30'),
(318, 7, 12, 'again', 0, 1, 1, 'seller', '2023-03-20 20:23:20', '2024-05-31 10:16:30'),
(319, 7, 12, 'now again', 0, 1, 1, 'seller', '2023-03-20 20:23:55', '2024-05-31 10:16:30'),
(320, 7, 12, 'H1', 0, 1, 1, 'seller', '2023-03-20 20:24:40', '2024-05-31 10:16:30'),
(321, 7, 12, 'H2', 0, 1, 1, 'seller', '2023-03-20 20:24:58', '2024-05-31 10:16:30'),
(322, 7, 12, 'H3', 0, 1, 1, 'seller', '2023-03-20 20:25:04', '2024-05-31 10:16:30'),
(323, 7, 9, NULL, 34, 1, 0, 'customer', '2023-04-09 16:33:37', '2024-05-18 02:46:01'),
(324, 7, 12, 'f', 0, 1, 0, 'customer', '2023-04-18 11:57:19', '2024-05-31 10:16:30'),
(325, 7, 8, 'hhh', 0, 1, 0, 'customer', '2023-05-01 11:46:38', '2024-05-31 10:16:29'),
(326, 7, 4, 'hello how are you..??', 0, 1, 0, 'customer', '2024-10-22 07:11:13', '2024-10-22 07:11:13'),
(327, 7, 9, 'can you hear me..??', 0, 1, 0, 'customer', '2024-10-22 07:13:57', '2024-10-22 07:13:57'),
(328, 7, 7, NULL, 39, 1, 0, 'customer', '2024-10-23 01:18:25', '2024-10-23 01:18:25'),
(329, 7, 7, 'let;m', 0, 1, 0, 'customer', '2024-10-23 01:26:24', '2024-10-23 01:26:24'),
(330, 7, 10, 'how are you brother', 0, 1, 0, 'customer', '2024-10-23 06:05:14', '2024-10-23 06:05:14'),
(331, 7, 10, NULL, 35, 1, 0, 'customer', '2024-10-23 06:05:26', '2024-10-23 06:05:26'),
(332, 7, 8, 'hi', 0, 1, 0, 'customer', '2024-10-24 01:29:19', '2024-10-24 01:29:19');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_30_035230_create_admins_table', 2),
(6, '2021_11_30_065435_create_email_configurations_table', 3),
(7, '2021_11_30_065508_create_email_templates_table', 3),
(8, '2021_12_01_035206_create_categories_table', 4),
(9, '2021_12_01_035220_create_sub_categories_table', 4),
(10, '2021_12_01_035231_create_child_categories_table', 4),
(11, '2021_12_01_035735_create_brands_table', 4),
(12, '2021_12_02_055907_create_product_taxes_table', 5),
(13, '2021_12_02_083742_create_return_policies_table', 6),
(14, '2021_12_02_084030_create_product_specification_keys_table', 6),
(15, '2021_12_03_093645_create_products_table', 7),
(16, '2021_12_03_101949_create_product_galleries_table', 7),
(17, '2021_12_04_053018_create_product_specifications_table', 8),
(18, '2021_12_06_045447_create_services_table', 9),
(19, '2021_12_06_054423_create_about_us_table', 10),
(20, '2021_12_06_055028_create_custom_pages_table', 10),
(21, '2021_12_07_030532_create_terms_and_conditions_table', 11),
(22, '2021_12_07_035810_create_blog_categories_table', 12),
(23, '2021_12_07_035822_create_blogs_table', 12),
(24, '2021_12_07_040749_create_popular_posts_table', 12),
(25, '2021_12_07_061613_create_blog_comments_table', 13),
(26, '2021_12_07_081832_create_product_variants_table', 14),
(27, '2021_12_07_081858_create_product_variant_items_table', 14),
(28, '2021_12_08_125540_create_campaigns_table', 15),
(29, '2021_12_08_130025_create_campaign_products_table', 15),
(30, '2021_12_09_095158_create_contact_messages_table', 16),
(31, '2021_12_09_095220_create_subscribers_table', 16),
(32, '2021_12_09_124226_create_settings_table', 17),
(33, '2021_12_11_022207_create_cookie_consents_table', 18),
(34, '2021_12_11_025358_create_google_recaptchas_table', 19),
(35, '2021_12_11_025449_create_facebook_comments_table', 19),
(36, '2021_12_11_025556_create_tawk_chats_table', 19),
(37, '2021_12_11_025618_create_google_analytics_table', 19),
(38, '2021_12_11_025712_create_custom_paginations_table', 19),
(39, '2021_12_11_083503_create_faqs_table', 20),
(40, '2021_12_11_094707_create_currencies_table', 21),
(41, '2021_12_13_085612_create_product_reviews_table', 22),
(42, '2021_12_13_090609_create_product_review_galleries_table', 22),
(43, '2021_12_13_101056_create_error_pages_table', 23),
(44, '2021_12_13_102725_create_maintainance_texts_table', 24),
(45, '2021_12_13_110144_create_subscribe_modals_table', 25),
(46, '2021_12_13_111140_create_announcement_modals_table', 26),
(47, '2021_12_13_132626_create_countries_table', 27),
(48, '2021_12_13_132909_create_country_states_table', 27),
(49, '2021_12_13_132935_create_cities_table', 27),
(50, '2021_12_14_032937_create_social_login_information_table', 28),
(51, '2021_12_14_042928_create_facebook_pixels_table', 29),
(52, '2021_12_14_054908_create_paypal_payments_table', 30),
(53, '2021_12_14_054922_create_stripe_payments_table', 30),
(54, '2021_12_14_054939_create_razorpay_payments_table', 30),
(55, '2021_12_14_055252_create_bank_payments_table', 30),
(56, '2021_12_14_084759_create_vendors_table', 31),
(57, '2021_12_14_090013_create_vendor_social_links_table', 31),
(58, '2021_12_15_095059_create_wholesells_table', 32),
(59, '2021_12_16_071213_create_seller_mail_logs_table', 33),
(60, '2021_12_21_093939_create_mega_menu_categories_table', 34),
(61, '2021_12_21_093958_create_mega_menu_sub_categories_table', 34),
(62, '2021_12_22_034106_create_banner_images_table', 35),
(63, '2021_12_22_044839_create_sliders_table', 36),
(64, '2021_12_22_081311_create_popular_categories_table', 37),
(65, '2021_12_23_021844_create_three_column_categories_table', 38),
(66, '2021_12_23_033230_create_shipping_methods_table', 39),
(67, '2021_12_23_065722_create_paystack_and_mollies_table', 40),
(68, '2021_12_23_085225_create_withdraw_methods_table', 41),
(71, '2021_12_25_172918_create_seller_withdraws_table', 42),
(74, '2021_12_25_200413_create_product_reports_table', 43),
(75, '2021_12_25_200707_create_product_report_images_table', 44),
(79, '2021_12_26_052326_create_billing_addresses_table', 45),
(80, '2021_12_26_053952_create_shipping_addresses_table', 45),
(81, '2021_12_26_054841_create_orders_table', 45),
(82, '2021_12_26_164912_create_order_addresses_table', 45),
(83, '2021_12_26_165705_create_order_products_table', 45),
(84, '2021_12_26_170803_create_order_product_variants_table', 45),
(87, '2021_12_28_163200_create_coupons_table', 46),
(88, '2021_12_28_192057_create_contact_pages_table', 47),
(89, '2021_12_28_200846_create_breadcrumb_images_table', 48),
(90, '2021_12_30_032959_create_flutterwaves_table', 49),
(91, '2021_12_30_034716_create_footers_table', 50),
(92, '2021_12_30_035201_create_footer_links_table', 50),
(93, '2021_12_30_035247_create_footer_social_links_table', 50),
(95, '2021_12_30_061157_create_home_page_one_visibilities_table', 51),
(96, '2022_01_11_103950_create_wishlists_table', 52),
(97, '2022_01_12_070110_create_shop_pages_table', 53),
(99, '2022_01_12_080218_create_seo_settings_table', 54),
(100, '2022_01_17_012111_create_menu_visibilities_table', 55),
(101, '2022_01_17_122016_create_instamojo_payments_table', 56),
(102, '2022_01_29_055523_create_messages_table', 57),
(103, '2022_01_29_122621_create_pusher_credentails_table', 58),
(104, '2022_04_27_083907_create_shopping_carts_table', 59),
(105, '2022_04_27_084235_create_shopping_cart_variants_table', 59),
(106, '2022_06_11_095338_create_testimonials_table', 60),
(107, '2022_06_13_053409_create_flash_sales_table', 61),
(108, '2022_06_13_053644_create_flash_sale_products_table', 62),
(109, '2022_06_14_102451_create_shippings_table', 63),
(112, '2022_06_19_073137_create_addresses_table', 64),
(113, '2022_06_19_093939_create_compare_products_table', 65),
(114, '2022_07_27_101723_create_featured_categories_table', 66),
(116, '2023_01_11_104754_create_twilio_sms_table', 67),
(117, '2023_01_11_112644_create_sms_templates_table', 68),
(118, '2023_01_12_043648_create_biztech_sms_table', 69),
(119, '2023_01_12_090356_create_inventories_table', 70),
(120, '2023_02_12_064832_create_myfatoorah_payments_table', 71),
(121, '2023_02_01_091048_create_delivery_men_table', 72),
(122, '2023_02_15_094731_create_delivery_man_withdraw_methods_table', 72),
(123, '2023_02_16_023738_create_delivery_man_withdraws_table', 72),
(124, '2023_02_16_091215_create_order_amounts_table', 72),
(125, '2023_02_18_110336_create_delivery_man_reviews_table', 72),
(126, '2023_02_20_101257_create_delivery_messages_table', 72),
(129, '2023_10_09_122324_add_tax_to_settings', 73),
(130, '2023_07_17_043209_add_version_number_to_settings', 74),
(131, '2024_01_24_055730_create_multi_currencies_table', 75),
(132, '2024_01_25_041519_add_currency_id_to_paypal_payments_table', 75),
(133, '2024_01_25_041706_add_currency_id_to_stripe_payments_table', 75),
(134, '2024_01_25_041730_add_currency_id_to_razorpay_payments_table', 75),
(135, '2024_01_25_041807_add_currency_id_to_paystack_and_mollies_table', 75),
(136, '2024_01_25_041833_add_currency_id_to_flutterwaves_table', 75),
(137, '2024_01_25_041906_add_currency_id_to_instamojo_payments_table', 75),
(138, '2024_01_25_041954_add_currency_id_to_myfatoorah_payments_table', 75),
(139, '2024_01_25_042239_add_currency_id_to_sslcommerz_payments_table', 75),
(140, '2024_01_25_063603_add_currency_id_to_settings_table', 75),
(141, '2024_09_25_090311_create_shopping_cart_bundle_items_table', 76),
(142, '2024_09_25_092843_add_student_info_users', 77),
(143, '2024_10_02_120143_create_order_bundle_items_table', 78),
(144, '2024_10_14_053128_create_languages_table', 79),
(145, '2024_10_14_091421_add_map_status_to_settings_table', 80),
(146, '2024_10_14_095118_add_per_km_price_range_to_settings_table', 81),
(147, '2024_10_14_101541_add_map_key_to_settings_table', 82),
(148, '2024_10_14_105426_add_latitude_longitude_to_addresses_table', 83),
(149, '2024_10_14_112600_add_latitude_longitude_to_users_admins_delivery_men_tables', 84),
(150, '2024_10_15_075426_add_latitude_longitude_to_orders_table', 85);

-- --------------------------------------------------------

--
-- Table structure for table `multi_currencies`
--

CREATE TABLE `multi_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `currency_icon` varchar(255) NOT NULL,
  `is_default` varchar(255) NOT NULL,
  `currency_rate` double NOT NULL,
  `currency_position` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_currencies`
--

INSERT INTO `multi_currencies` (`id`, `currency_name`, `country_code`, `currency_code`, `currency_icon`, `is_default`, `currency_rate`, `currency_position`, `status`, `created_at`, `updated_at`) VALUES
(1, '$-USD', 'USD', 'USD', '$', 'No', 1, 'right', 1, '2024-02-10 03:32:24', '2024-02-10 03:32:24'),
(2, '₹-INR', 'IN', 'INR', '₹', 'Yes', 1, 'left', 1, '2024-10-24 00:22:15', '2024-10-24 00:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `myfatoorah_payments`
--

CREATE TABLE `myfatoorah_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `account_mode` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `currency_rate` varchar(255) NOT NULL,
  `api_key` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `myfatoorah_payments`
--

INSERT INTO `myfatoorah_payments` (`id`, `status`, `account_mode`, `currency_code`, `currency_rate`, `api_key`, `created_at`, `updated_at`, `currency_id`) VALUES
(1, 0, 'sandbox', 'KWT', '0.31', 'rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL', NULL, '2023-05-04 03:18:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amount` double NOT NULL DEFAULT 0,
  `product_qty` int(11) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0,
  `payment_approval_date` varchar(255) DEFAULT NULL,
  `transection_id` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `coupon_coast` double NOT NULL DEFAULT 0,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `order_approval_date` varchar(255) DEFAULT NULL,
  `order_delivered_date` varchar(255) DEFAULT NULL,
  `order_completed_date` varchar(255) DEFAULT NULL,
  `order_declined_date` varchar(255) DEFAULT NULL,
  `delivery_man_id` int(11) NOT NULL DEFAULT 0,
  `order_request` int(11) NOT NULL DEFAULT 0,
  `order_req_date` date DEFAULT NULL,
  `order_req_accept_date` date DEFAULT NULL,
  `cash_on_delivery` int(11) NOT NULL DEFAULT 0,
  `additional_info` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `total_amount`, `product_qty`, `payment_method`, `payment_status`, `payment_approval_date`, `transection_id`, `shipping_method`, `shipping_cost`, `coupon_coast`, `order_status`, `order_approval_date`, `order_delivered_date`, `order_completed_date`, `order_declined_date`, `delivery_man_id`, `order_request`, `order_req_date`, `order_req_accept_date`, `cash_on_delivery`, `additional_info`, `created_at`, `updated_at`, `latitude`, `longitude`) VALUES
(1, '239063352', 7, 1387.39, 2, 'Cash on Delivery', 0, '2024-10-21', 'cash_on_delivery', '0', 87.393039758423, 0, 3, '2024-10-21', '2024-10-20', '2024-10-22', NULL, 1, 3, '2024-10-21', '2024-10-21', 1, NULL, '2024-10-15 14:09:16', '2024-10-23 00:59:22', 23.6789346, 90.7635890),
(2, '1536310139', 7, 21289.75, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', '0', 20089.748520068, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2024-10-21 10:47:50', '2024-10-21 10:47:50', 23.8175825, 90.3669783),
(3, '1603473976', 7, 18985.34, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', '0', 15985.342697826, 0, 2, '2024-10-21', '2024-10-21', NULL, NULL, 1, 1, '2024-10-21', '2024-10-22', 1, NULL, '2024-10-21 11:03:51', '2024-10-23 01:41:58', 51.5072178, -0.1275862),
(4, '224511026', 7, 28885.34, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', '0', 15985.342697826, 0, 2, NULL, '2024-10-21', NULL, NULL, 1, 2, '2024-10-21', NULL, 1, NULL, '2024-10-22 01:58:54', '2024-10-23 00:25:07', 51.5072178, -0.1275862),
(5, '1542223013', 7, 22491.13, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', '0', 20091.130992278, 0, 2, '2024-10-21', '2024-10-21', NULL, NULL, 1, 1, '2024-10-21', '2024-10-22', 1, NULL, '2024-10-22 02:13:14', '2024-10-23 00:15:18', 23.7509735, 90.3735820),
(6, '1365455502', 7, 12910.72, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', '0', 10.721909331407, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2024-10-23 06:15:16', '2024-10-23 06:15:16', 23.7509735, 90.3735820),
(7, '1665493782', 7, 21299.76, 1, 'Stripe', 1, NULL, 'txn_3QD0oFF56Pb8BOOX1My1oBo5', '0', 20099.755826142, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2024-10-23 06:24:56', '2024-10-23 06:24:56', 23.7820624, 90.4160527),
(8, '1525322809', 7, 5297.8, 1, 'Bank Payment', 0, NULL, 'this is info', '0', 297.79688852164, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2024-10-23 06:29:47', '2024-10-23 06:29:47', 23.8175825, 90.3669783),
(9, '1527589458', 7, 21291.13, 1, 'Paypal', 1, NULL, 'PAYID-M4MMRPY28L879881R3213439', '0', 20091.130992278, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2024-10-23 07:01:53', '2024-10-23 07:01:53', 23.7509735, 90.3735820),
(10, '1028016724', 7, 2372.65, 2, 'Mollie', 1, NULL, 'tr_orL4ePBgRF', '0', 2229.6629623224, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2024-10-23 08:30:35', '2024-10-23 08:30:35', 27.9546524, 80.2135340),
(11, '429980267', 7, 2362.66, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', '0', 2229.6629623224, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2024-10-24 00:12:01', '2024-10-24 00:12:01', 27.9546524, 80.2135340),
(12, '760945783', 7, 134.22, 1, 'Stripe', 1, NULL, 'txn_3QDHZEF56Pb8BOOX0tCWiBXz', '0', 1.2227100094692, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2024-10-24 00:18:32', '2024-10-24 00:18:32', 23.8175825, 90.3669783),
(13, '1309645872', 7, 134.22, 1, 'Razorpay', 1, NULL, 'pay_PCj1ifJKkyP4FY', '0', 1.2227100094692, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2024-10-24 00:23:50', '2024-10-24 00:23:50', 23.8175825, 90.3669783),
(14, '171351738', 7, 134.22, 1, 'Flutterwave', 1, '2024-10-23', '8005519', '0', 1.2227100094692, 0, 1, '2024-10-23', NULL, NULL, NULL, 1, 0, '2024-10-23', NULL, 0, NULL, '2024-10-24 00:26:29', '2024-10-24 02:48:19', 23.8175825, 90.3669783),
(15, '359439184', 7, 151.12, 1, 'Mollie', 1, NULL, 'tr_HCfAMAJmA4', '0', 18.119691934949, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2024-10-24 00:28:27', '2024-10-24 00:28:27', 23.7339483, 90.3929252),
(16, '936995212', 7, 151.12, 1, 'Paystack', 1, NULL, '4303779264', '0', 18.119691934949, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2024-10-24 00:31:31', '2024-10-24 00:31:31', 23.7339483, 90.3929252),
(17, '632728308', 7, 2362.66, 1, 'Bank Payment', 0, NULL, 'ok', '0', 2229.6629623224, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2024-10-24 00:34:46', '2024-10-24 00:34:46', 27.9546524, 80.2135340),
(18, '1192868504', 7, 151.12, 1, 'Instamojo', 1, NULL, NULL, '0', 18.119691934949, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2024-10-24 00:36:02', '2024-10-24 00:36:02', 23.7339483, 90.3929252),
(19, '106275724', 7, 2962.01, 8, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', '0', 2229.6629623224, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2024-10-24 01:31:24', '2024-10-24 01:31:24', 27.9546524, 80.2135340),
(20, '314738097', 7, 2362.66, 1, 'Paypal', 1, NULL, '6PJ07294UF5705543', '0', 2229.6629623224, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2024-10-24 01:37:06', '2024-10-24 01:37:06', 27.9546524, 80.2135340),
(21, '1666470644', 7, 134.22, 1, 'Paypal', 1, NULL, '6CH75119SA9036414', '0', 1.2227100094692, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2024-10-24 01:38:15', '2024-10-24 01:38:15', 23.8175825, 90.3669783),
(23, '1257195876', 7, 2362.66, 1, 'Paypal', 1, '2024-10-23', '08709653LA606210K', '0', 2229.6629623224, 0, 2, NULL, '2024-10-23', NULL, NULL, 1, 0, '2024-10-23', NULL, 0, NULL, '2024-10-24 02:42:50', '2024-10-24 02:45:29', 27.9546524, 80.2135340),
(24, '1606032453', 7, 2389.66, 1, 'Stripe', 1, '2024-10-23', 'txn_3QDJsXF56Pb8BOOX1fh23mwg', '0', 2229.6629623224, 0, 2, '2024-10-23', '2024-10-23', NULL, NULL, 1, 0, '2024-10-23', '2024-10-23', 0, NULL, '2024-10-24 02:46:38', '2024-10-24 03:05:22', 27.9546524, 80.2135340),
(25, '427838663', 7, 208.43, 2, 'Paypal', 1, NULL, '4MB57184RN967005S', NULL, 40, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2024-10-24 03:08:12', '2024-10-24 03:08:12', NULL, NULL),
(26, '1614640682', 119, 200, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', NULL, 40, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2024-10-24 03:24:17', '2024-10-24 03:24:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_addresses`
--

CREATE TABLE `order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_phone` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_country` varchar(11) DEFAULT NULL,
  `billing_state` varchar(191) DEFAULT NULL,
  `billing_city` varchar(191) DEFAULT NULL,
  `billing_address_type` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `shipping_phone` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(191) DEFAULT NULL,
  `shipping_state` varchar(191) DEFAULT NULL,
  `shipping_city` varchar(191) DEFAULT NULL,
  `shipping_address_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_addresses`
--

INSERT INTO `order_addresses` (`id`, `order_id`, `billing_name`, `billing_email`, `billing_phone`, `billing_address`, `billing_country`, `billing_state`, `billing_city`, `billing_address_type`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_country`, `shipping_state`, `shipping_city`, `shipping_address_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'United Stat', 'Florida', 'San Jose', 'office', 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'United State', 'Florida', 'San Jose', 'office', '2024-10-15 14:09:16', '2024-10-15 14:09:16'),
(2, 2, 'Mohammad', 'm.ali@gmail.com', '01788171332', 'Dhaka University, Nilkhet Road, Dhaka, Bangladesh', 'United Kind', 'England', 'London', 'home', 'Mohammad Ali', 'ali.mohammad@gmail.com', '01877716614', 'Mirpur 11', 'India', 'Gujarat', 'Gandhinagar', 'home', '2024-10-21 10:47:50', '2024-10-21 10:47:50'),
(3, 3, 'Mohammad Ali', 'ali.mohammad@gmail.com', '01877716614', 'Mirpur 11', 'India', 'Gujarat', 'Gandhinagar', 'home', 'Enim doloribus lauda', 'rafiqulislamsuvobd@gmail.com', '01642222090', 'London', 'United Kindom', 'England', 'London', 'home', '2024-10-21 11:03:51', '2024-10-21 11:03:51'),
(4, 4, 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', 'Enim doloribus lauda', 'rafiqulislamsuvobd@gmail.com', '01642222090', 'London', 'United Kindom', 'England', 'London', 'home', '2024-10-22 01:58:54', '2024-10-22 01:58:54'),
(5, 5, 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', 'Pichone', 'pichono@gmail.com', '01663458', 'Dhanmondi 32 Road Bridge, Dhanmondi Bridge, Dhaka, Bangladesh', 'India', 'Gujarat', 'Gandhinagar', 'home', '2024-10-22 02:13:15', '2024-10-22 02:13:15'),
(6, 6, 'Mirror', 'mkkj@ghj.con', '012558', 'Gulshan 1, Dhaka, Bangladesh', 'United Kind', 'England', 'London', 'home', 'Pichone', 'pichono@gmail.com', '01663458', 'Dhanmondi 32 Road Bridge, Dhanmondi Bridge, Dhaka, Bangladesh', 'India', 'Gujarat', 'Gandhinagar', 'home', '2024-10-23 06:15:16', '2024-10-23 06:15:16'),
(7, 7, 'Pichone', 'pichono@gmail.com', '01663458', 'Dhanmondi 32 Road Bridge, Dhanmondi Bridge, Dhaka, Bangladesh', 'India', 'Gujarat', 'Gandhinagar', 'home', 'Mirror', 'mkkj@ghj.con', '012558', 'Gulshan 1, Dhaka, Bangladesh', 'United Kindom', 'England', 'London', 'home', '2024-10-23 06:24:56', '2024-10-23 06:24:56'),
(8, 8, 'Mohammad Ali', 'ali.mohammad@gmail.com', '01877716614', 'Mirpur 11', 'India', 'Gujarat', 'Gandhinagar', 'home', 'Mohammad Ali', 'ali.mohammad@gmail.com', '01877716614', 'Mirpur 11', 'India', 'Gujarat', 'Gandhinagar', 'home', '2024-10-23 06:29:47', '2024-10-23 06:29:47'),
(9, 9, 'Pichone', 'pichono@gmail.com', '01663458', 'Dhanmondi 32 Road Bridge, Dhanmondi Bridge, Dhaka, Bangladesh', 'India', 'Gujarat', 'Gandhinagar', 'home', 'Pichone', 'pichono@gmail.com', '01663458', 'Dhanmondi 32 Road Bridge, Dhanmondi Bridge, Dhaka, Bangladesh', 'India', 'Gujarat', 'Gandhinagar', 'home', '2024-10-23 07:01:53', '2024-10-23 07:01:53'),
(10, 10, 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', '2024-10-23 08:30:35', '2024-10-23 08:30:35'),
(11, 11, 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', '2024-10-24 00:12:01', '2024-10-24 00:12:01'),
(12, 12, 'Mohammad Ali', 'ali.mohammad@gmail.com', '01877716614', 'Mirpur 11', 'India', 'Gujarat', 'Gandhinagar', 'home', 'Mohammad Ali', 'ali.mohammad@gmail.com', '01877716614', 'Mirpur 11', 'India', 'Gujarat', 'Gandhinagar', 'home', '2024-10-24 00:18:33', '2024-10-24 00:18:33'),
(13, 13, 'Mohammad Ali', 'ali.mohammad@gmail.com', '01877716614', 'Mirpur 11', 'India', 'Gujarat', 'Gandhinagar', 'home', 'Mohammad Ali', 'ali.mohammad@gmail.com', '01877716614', 'Mirpur 11', 'India', 'Gujarat', 'Gandhinagar', 'home', '2024-10-24 00:23:50', '2024-10-24 00:23:50'),
(14, 14, 'Mohammad Ali', 'ali.mohammad@gmail.com', '01877716614', 'Mirpur 11', 'India', 'Gujarat', 'Gandhinagar', 'home', 'Mohammad Ali', 'ali.mohammad@gmail.com', '01877716614', 'Mirpur 11', 'India', 'Gujarat', 'Gandhinagar', 'home', '2024-10-24 00:26:29', '2024-10-24 00:26:29'),
(15, 15, 'Mohammad Ali', 'ali.mohammad@gmail.com', '01877716614', 'Mirpur 11', 'India', 'Gujarat', 'Gandhinagar', 'home', 'Mohammad', 'm.ali@gmail.com', '01788171332', 'Dhaka University, Nilkhet Road, Dhaka, Bangladesh', 'United Kindom', 'England', 'London', 'home', '2024-10-24 00:28:27', '2024-10-24 00:28:27'),
(16, 16, 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', 'Mohammad', 'm.ali@gmail.com', '01788171332', 'Dhaka University, Nilkhet Road, Dhaka, Bangladesh', 'United Kindom', 'England', 'London', 'home', '2024-10-24 00:31:31', '2024-10-24 00:31:31'),
(17, 17, 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', '2024-10-24 00:34:46', '2024-10-24 00:34:46'),
(18, 18, 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', 'Mohammad', 'm.ali@gmail.com', '01788171332', 'Dhaka University, Nilkhet Road, Dhaka, Bangladesh', 'United Kindom', 'England', 'London', 'home', '2024-10-24 00:36:02', '2024-10-24 00:36:02'),
(19, 19, 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', '2024-10-24 01:31:24', '2024-10-24 01:31:24'),
(20, 20, 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', '2024-10-24 01:37:06', '2024-10-24 01:37:06'),
(21, 21, 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', 'Mohammad Ali', 'ali.mohammad@gmail.com', '01877716614', 'Mirpur 11', 'India', 'Gujarat', 'Gandhinagar', 'home', '2024-10-24 01:38:15', '2024-10-24 01:38:15'),
(23, 23, 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', '2024-10-24 02:42:50', '2024-10-24 02:42:50'),
(24, 24, 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', '2024-10-24 02:46:38', '2024-10-24 02:46:38'),
(25, 25, 'Dolorem Nam perspici Aut assumenda quaera', 'Magna exercitationem', 'Quia officiis omnis', 'Quam at quis volupta', 'India', 'Gujarat', 'Gandhinagar', '1', 'Ibrahim Khalil', 'address1@gmail.com', '123-649-9874', 'California, USA', 'India', 'Punjab', 'Chandigarh', 'home', '2024-10-24 03:08:12', '2024-10-24 03:08:12'),
(26, 26, 'Mohammad', 'mohammad@gmail.com', '0187726621', 'Gulshan 1, Dhaka, Bangladesh', 'United Kind', 'England', 'London', 'home', 'Mohammad', 'mohammad@gmail.com', '0187726621', 'Gulshan 1, Dhaka, Bangladesh', 'United Kindom', 'England', 'London', 'home', '2024-10-24 03:24:17', '2024-10-24 03:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `order_amounts`
--

CREATE TABLE `order_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_bundle_items`
--

CREATE TABLE `order_bundle_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `bundle_product_id` int(11) NOT NULL DEFAULT 0,
  `bundle_product_qty` int(11) NOT NULL DEFAULT 0,
  `bundle_product_variant_id` int(11) NOT NULL DEFAULT 0,
  `bundle_product_variant_item_id` int(11) NOT NULL DEFAULT 0,
  `bundle_product_variant_price` decimal(8,3) NOT NULL DEFAULT 0.000,
  `bundle_product_variant_other_options` text DEFAULT NULL,
  `bundle_product_variant_name` varchar(255) DEFAULT NULL,
  `bundle_product_variant_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `product_name` varchar(255) NOT NULL,
  `unit_price` double NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `seller_id`, `product_name`, `unit_price`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 30, 2, 'JBL headphon max', 650, 2, '2024-10-15 14:09:16', '2024-10-15 14:09:16'),
(2, 2, 35, 5, 'Mini sound box', 1200, 1, '2024-10-21 10:47:50', '2024-10-21 10:47:50'),
(3, 3, 39, 2, 'Symphony', 100, 2, '2024-10-21 11:03:51', '2024-10-21 11:03:51'),
(4, 3, 27, 2, 'Sony camera m1', 2800, 1, '2024-10-21 11:03:51', '2024-10-21 11:03:51'),
(5, 4, 39, 2, 'Symphony', 100, 1, '2024-10-22 01:58:54', '2024-10-22 01:58:54'),
(6, 4, 29, 2, 'Sony playstone pro', 10000, 1, '2024-10-22 01:58:54', '2024-10-22 01:58:54'),
(7, 4, 27, 2, 'Sony camera m1', 2800, 1, '2024-10-22 01:58:54', '2024-10-22 01:58:54'),
(8, 5, 35, 5, 'Mini sound box', 1200, 2, '2024-10-22 02:13:14', '2024-10-22 02:13:14'),
(9, 6, 39, 2, 'Symphony', 100, 1, '2024-10-23 06:15:16', '2024-10-23 06:15:16'),
(10, 6, 29, 2, 'Sony playstone pro', 10000, 1, '2024-10-23 06:15:16', '2024-10-23 06:15:16'),
(11, 6, 27, 2, 'Sony camera m1', 2800, 1, '2024-10-23 06:15:16', '2024-10-23 06:15:16'),
(12, 7, 35, 5, 'Mini sound box', 1200, 1, '2024-10-23 06:24:56', '2024-10-23 06:24:56'),
(13, 8, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2024-10-23 06:29:47', '2024-10-23 06:29:47'),
(14, 9, 35, 5, 'Mini sound box', 1200, 1, '2024-10-23 07:01:53', '2024-10-23 07:01:53'),
(15, 10, 6, 0, 'VISION ELITE CEILING FAN', 9.99, 1, '2024-10-23 08:30:35', '2024-10-23 08:30:35'),
(16, 10, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2024-10-23 08:30:35', '2024-10-23 08:30:35'),
(17, 11, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2024-10-24 00:12:01', '2024-10-24 00:12:01'),
(18, 12, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2024-10-24 00:18:32', '2024-10-24 00:18:32'),
(19, 13, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2024-10-24 00:23:50', '2024-10-24 00:23:50'),
(20, 14, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2024-10-24 00:26:29', '2024-10-24 00:26:29'),
(21, 15, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2024-10-24 00:28:27', '2024-10-24 00:28:27'),
(22, 16, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2024-10-24 00:31:31', '2024-10-24 00:31:31'),
(23, 17, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2024-10-24 00:34:46', '2024-10-24 00:34:46'),
(24, 18, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2024-10-24 00:36:02', '2024-10-24 00:36:02'),
(25, 19, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2024-10-24 01:31:24', '2024-10-24 01:31:24'),
(26, 19, 1, 0, 'Xbox Wireless Game Controller', 89.991, 6, '2024-10-24 01:31:24', '2024-10-24 01:31:24'),
(27, 19, 2, 0, 'FANTECH OCTANE Headset', 59.4, 1, '2024-10-24 01:31:24', '2024-10-24 01:31:24'),
(28, 20, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2024-10-24 01:37:06', '2024-10-24 01:37:06'),
(29, 21, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2024-10-24 01:38:15', '2024-10-24 01:38:15'),
(30, 22, 55, 0, 'Apple Watch Series 7', 160, 13, '2024-10-24 02:18:10', '2024-10-24 02:18:10'),
(31, 23, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2024-10-24 02:42:50', '2024-10-24 02:42:50'),
(32, 24, 55, 0, 'Apple Watch Series 7', 160, 1, '2024-10-24 02:46:38', '2024-10-24 02:46:38'),
(33, 25, 5, 0, 'VISION Rice Cooker', 35.43, 1, '2024-10-24 03:08:12', '2024-10-24 03:08:12'),
(34, 25, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2024-10-24 03:08:12', '2024-10-24 03:08:12'),
(35, 26, 55, 0, 'Apple Watch Series 7', 160, 1, '2024-10-24 03:24:17', '2024-10-24 03:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `order_product_variants`
--

CREATE TABLE `order_product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_name` varchar(255) DEFAULT NULL,
  `variant_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product_variants`
--

INSERT INTO `order_product_variants` (`id`, `order_product_id`, `product_id`, `variant_name`, `variant_value`, `created_at`, `updated_at`) VALUES
(1, 16, 13, 'Size', 'Small', '2024-10-23 08:30:35', '2024-10-23 08:30:35'),
(2, 17, 13, 'Size', 'Small', '2024-10-24 00:12:01', '2024-10-24 00:12:01'),
(3, 18, 13, 'Size', 'Small', '2024-10-24 00:18:32', '2024-10-24 00:18:32'),
(4, 19, 13, 'Size', 'Small', '2024-10-24 00:23:50', '2024-10-24 00:23:50'),
(5, 20, 13, 'Size', 'Small', '2024-10-24 00:26:29', '2024-10-24 00:26:29'),
(6, 21, 13, 'Size', 'Small', '2024-10-24 00:28:27', '2024-10-24 00:28:27'),
(7, 22, 13, 'Size', 'Small', '2024-10-24 00:31:31', '2024-10-24 00:31:31'),
(8, 23, 13, 'Size', 'Small', '2024-10-24 00:34:46', '2024-10-24 00:34:46'),
(9, 24, 13, 'Size', 'Small', '2024-10-24 00:36:02', '2024-10-24 00:36:02'),
(10, 25, 13, 'Size', 'Small', '2024-10-24 01:31:24', '2024-10-24 01:31:24'),
(11, 28, 13, 'Size', 'Small', '2024-10-24 01:37:06', '2024-10-24 01:37:06'),
(12, 29, 13, 'Size', 'Small', '2024-10-24 01:38:15', '2024-10-24 01:38:15'),
(13, 31, 13, 'Size', 'Small', '2024-10-24 02:42:50', '2024-10-24 02:42:50'),
(14, 34, 13, 'Size', 'Small', '2024-10-24 03:08:12', '2024-10-24 03:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymongo_payments`
--

CREATE TABLE `paymongo_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `secret_key` varchar(255) NOT NULL,
  `public_key` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `currency_rate` double NOT NULL DEFAULT 1,
  `country_code` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymongo_payments`
--

INSERT INTO `paymongo_payments` (`id`, `secret_key`, `public_key`, `status`, `currency_rate`, `country_code`, `currency_code`, `image`, `created_at`, `updated_at`) VALUES
(1, 'sk_test_TUwj85sA6XTn7nHzmP23dg36', 'pk_test_z9xACSbhH2EuxVdFaxuY8Waf', 1, 55.07, 'PH', 'PHP', '62c01dbd46dc01656757693.jpg', NULL, '2022-07-03 10:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_payments`
--

CREATE TABLE `paypal_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `account_mode` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `secret_id` text DEFAULT NULL,
  `country_code` varchar(191) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `currency_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paypal_payments`
--

INSERT INTO `paypal_payments` (`id`, `status`, `account_mode`, `client_id`, `secret_id`, `country_code`, `currency_code`, `currency_rate`, `created_at`, `updated_at`, `currency_id`) VALUES
(1, 1, 'sandbox', 'AWlV5x8Lhj9BRF8-TnawXtbNs-zt69mMVXME1BGJUIoDdrAYz8QIeeTBQp0sc2nIL9E529KJZys32Ipy', 'EEvn1J_oIC6alxb-FoF4t8buKwy4uEWHJ4_Jd_wolaSPRMzFHe6GrMrliZAtawDDuE-WKkCKpWGiz0Yn', 'US', 'USD', 1, NULL, '2022-02-07 02:29:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paystack_and_mollies`
--

CREATE TABLE `paystack_and_mollies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mollie_key` varchar(255) DEFAULT NULL,
  `mollie_status` int(11) NOT NULL DEFAULT 0,
  `mollie_currency_rate` double NOT NULL DEFAULT 1,
  `paystack_public_key` varchar(255) DEFAULT NULL,
  `paystack_secret_key` varchar(255) DEFAULT NULL,
  `paystack_currency_rate` double NOT NULL DEFAULT 1,
  `paystack_status` int(11) NOT NULL DEFAULT 0,
  `mollie_country_code` varchar(191) NOT NULL,
  `mollie_currency_code` varchar(191) NOT NULL,
  `paystack_country_code` varchar(191) NOT NULL,
  `paystack_currency_code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paystack_and_mollies`
--

INSERT INTO `paystack_and_mollies` (`id`, `mollie_key`, `mollie_status`, `mollie_currency_rate`, `paystack_public_key`, `paystack_secret_key`, `paystack_currency_rate`, `paystack_status`, `mollie_country_code`, `mollie_currency_code`, `paystack_country_code`, `paystack_currency_code`, `created_at`, `updated_at`, `currency_id`) VALUES
(1, 'test_p9qgUn7Sg22xF3Q8D9heBSVEzrzM5Q', 1, 1.27, 'pk_test_057dfe5dee14eaf9c3b4573df1e3760c02c06e38', 'sk_test_77cb93329abbdc18104466e694c9f720a7d69c97', 417.35, 1, 'CA', 'CAD', 'NG', 'NGN', NULL, '2022-08-25 07:10:34', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 47, 'google-token', '527371a62202b79aea84a92c7f89219f3891602f7ecffae2cb0f57556da3fd3d', '[\"*\"]', NULL, '2023-05-25 07:28:14', '2023-05-25 07:28:14'),
(2, 'App\\Models\\User', 47, 'google-token', 'a65f983802a38fb3e52f39dbf3e9d17a1ca6cd5937207afd2e05e86ab9873ca1', '[\"*\"]', NULL, '2023-05-25 07:35:22', '2023-05-25 07:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `popular_categories`
--

CREATE TABLE `popular_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popular_categories`
--

INSERT INTO `popular_categories` (`id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 3, '2022-09-20 07:14:58', '2022-09-20 07:14:58'),
(2, 1, '2022-09-20 07:15:05', '2022-09-20 07:15:05'),
(3, 2, '2022-09-20 07:15:11', '2022-09-20 07:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `popular_posts`
--

CREATE TABLE `popular_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popular_posts`
--

INSERT INTO `popular_posts` (`id`, `blog_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2022-09-22 10:19:05', '2022-09-22 10:19:05'),
(2, 5, 1, '2022-09-22 10:19:08', '2022-09-22 10:19:08'),
(3, 4, 1, '2022-09-22 10:19:10', '2022-09-22 10:19:10'),
(4, 3, 1, '2022-09-22 10:19:22', '2022-09-22 10:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL DEFAULT 0,
  `child_category_id` int(11) NOT NULL DEFAULT 0,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `weight` varchar(255) NOT NULL DEFAULT '0',
  `sold_qty` int(11) NOT NULL DEFAULT 0,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `seo_title` text NOT NULL,
  `seo_description` text NOT NULL,
  `price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `show_homepage` tinyint(4) NOT NULL DEFAULT 0,
  `is_undefine` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `new_product` tinyint(4) NOT NULL DEFAULT 0,
  `is_top` tinyint(4) NOT NULL DEFAULT 0,
  `is_best` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_specification` int(11) NOT NULL DEFAULT 1,
  `approve_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_bundle_product` varchar(10) NOT NULL DEFAULT 'no',
  `bundle_products` text DEFAULT NULL,
  `bundle_product_offer_type` varchar(10) NOT NULL DEFAULT 'fixed',
  `bundle_product_offer` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `is_bundle_product`, `bundle_products`, `bundle_product_offer_type`, `bundle_product_offer`, `created_at`, `updated_at`) VALUES
(1, 'Xbox Wireless Game Controller', 'Controller', 'xbox-wireless-game-controller-', 'uploads/custom-images/xbox-wireless-game-controller-2022-09-26-12-20-19-1096.png', 0, 3, 0, 0, 4, 90, '222', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'bigshop12345', 'Xbox Wireless Controller', 'Xbox Wireless Controller', 123, 99.99, NULL, 0, 1, 1, 0, 0, 1, 1, 1, 1, 'no', '', 'fixed', 0.00, '2022-09-20 07:22:29', '2024-10-24 01:31:24'),
(2, 'FANTECH OCTANE Headset', 'Headset', 'fantech-octane-headset', 'uploads/custom-images/fantech-octane-headset-2022-09-26-12-53-57-7709.png', 0, 2, 4, 0, 0, 226, '133', 0, 'The FANTECH HG23 OCTANE Price in BD is 2,700‡ß≥ in Today\'s 2022-09-19 Market. This FANTECH HG23 OCTANE 7.1 Over Ear Gaming Headset Manufacturing by FANTECH Comes With Based on 0 reviews.TECH LAND BD Offers you Fantech HG23 OCTANE by 2,700‡ß≥ and its regular price is 3,200‡ß≥ Which is also In Stock Now at our Showroom. Follow us on FACEBOOK For Regular updates & Offer. Subscribe Our YOUTUBE Channel for Product Reviews.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'bigshop1234566', 'FANTECH HG23 OCTANE Headset', 'FANTECH HG23 OCTANE Headset', 88, 66, NULL, 0, 1, 0, 1, 1, 1, 1, 1, 1, 'no', '', 'fixed', 0.00, '2022-09-20 07:32:02', '2024-10-24 01:31:24'),
(3, 'Sony Play Staton 5', 'Playstation', 'sony-play-staton-5', 'uploads/custom-images/sony-play-staton-5-2022-09-26-12-20-52-2324.png', 0, 2, 5, 0, 3, 40, '133', 0, 'Experience lightning-fast loading with an ultra-high speed SSD, deeper immersion with support for haptic feedback1, adaptive triggers1 and 3D Audio*, and an all-new generation of incredible PlayStation games.Experience lightning-fast loading with an ultra-high speed SSD, deeper immersion with support for haptic feedback1, adaptive triggers1 and 3D Audio*, and an all-new generation of incredible PlayStation games.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'bigshop123451', 'Sony Play Staton 5', 'Sony Play Staton 5', 88.88, 67.89, NULL, 0, 1, 0, 1, 1, 1, 1, 1, 1, 'no', '', 'fixed', 0.00, '2022-09-20 07:33:46', '2023-05-02 05:00:45'),
(4, 'Apple MacBook Air 13.3-Inch Retina', 'MacBook', 'apple-macbook-air-133inch-retina', 'uploads/custom-images/apple-macbook-air-133-inch-retina-2022-09-26-12-21-18-4277.png', 0, 1, 2, 2, 3, 26, '133', 0, 'Apple\'s thinnest, lightest notebook, was completely transformed by the Apple M1 chip. CPU speeds up to 3.5x faster. GPU speeds up to 5x faster. Our most advanced Neural Engine for up to 9x faster machine learning. The longest battery life ever in a MacBook Air. And a silent, fanless design. This much power has never been this ready to go. It√¢‚Ç¨‚Ñ¢s here. Our first chip was designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O,', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'bigshop1234515', 'Apple MacBook Air 13.3-Inch Retina', 'Apple MacBook Air 13.3-Inch Retina', 1111, 999, NULL, 0, 1, 1, 0, 1, 0, 1, 1, 1, 'no', '', 'fixed', 0.00, '2022-09-20 07:37:26', '2023-07-05 01:58:46'),
(5, 'VISION Rice Cooker', 'Rice Cooker', 'vision-rice-cooker', 'uploads/custom-images/vision-rice-cooker-2022-09-26-12-48-28-5516.png', 0, 10, 0, 0, 5, 30, '234', 0, '\"Inner Pot: Aluminum inner pot 920g with inner side coating. (Single pot) Power: Drum shaped, 5.6L Ltr. 220V- 50Hz, 1900W Stainless steel lid with plastic handle Magnetic Switch and Thermostat\r\nMS Body and thickness 0.28mm Built-in thermostat maintains heat at a precise and uniform level 19000 W power which is very much enough for cooking rice in 25-30 min\r\nHeating element with coating for easy cleaning and Anti-dirty 1.2mm Actual Non-stick Coating Inner pot, Base Board- Silver Antibacterial action in warm mode\r\nColor: As given picture.\"', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'bigshop123456633', 'VISION Rice Cooker', 'VISION Rice Cooker', 99.88, 35.43, NULL, 0, 1, 0, 1, 0, 1, 1, 1, 1, 'no', '', 'fixed', 0.00, '2022-09-20 07:42:50', '2024-10-24 03:08:12'),
(6, 'VISION ELITE CEILING FAN', 'FAN', 'vision-elite-ceiling-fan', 'uploads/custom-images/vision-elite-ceiling-fan-2022-09-26-12-29-33-2795.png', 0, 10, 0, 0, 2, 17, '21', 0, 'Cool, portable, and waterproof. The vibrant fresh looking JBL Clip 4 delivers surprisingly rich JBL Original Pro Sound in a compact package. The unique oval shape fits easy in your hand. Fully wrapped in colorful fabrics with expressive details inspired by current street fashion, its easy to match your style. The fully integrated carabiner hooks instantly to bags, belts, or buckles, to bring your favorite tunes anywhere. Waterproof, dustproof, and up to 10 hours of playtime, its rugged enough to tag along wherever you explore.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'bigshop1234512', 'VISION ELITE CEILING FAN', 'VISION ELITE CEILING FAN', 11.11, 9.99, NULL, 0, 1, 0, 0, 0, 1, 1, 1, 1, 'no', '', 'fixed', 0.00, '2022-09-20 07:44:22', '2024-10-23 08:30:35'),
(7, 'Samsung Galaxy A52 (8/128 GB)', 'Galaxy A52', 'samsung-galaxy-a52-8128-gb', 'uploads/custom-images/samsung-galaxy-a52-8128-gb-2022-09-26-12-12-12-9319.png', 0, 3, 0, 0, 4, -2, '33', 0, 'Feast your eyes on vibrant details with the FHD+ Super AMOLED display, reaching 800 nits¹ for clarity even in bright daylight. Eye Comfort Shield² lowers blue light, and Real Smooth keeps the view smooth, whether you\'re gaming or scrolling. All on the expansive 6.5-inch Infinity-O Display. Galaxy A52 seen from the front. A scene of a man standing on a beach at sunset with pink and blue colors in the sky expands outside of the boundaries of the display. Text says Brightness 800 nits, Eye Comfort Shield, with the SGS logo and Real Smooth.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><br>', NULL, 'bigshop12993452', 'Samsung Galaxy A52 (8/128 GB)', 'Samsung Galaxy A52 (8/128 GB)', 11.11, 9.99, NULL, 0, 1, 1, 1, 0, 1, 1, 1, 1, 'no', '', 'fixed', 0.00, '2022-09-20 07:46:26', '2024-10-01 22:51:11'),
(8, 'AirPods Pro 2', 'AirPods', 'airpods-pro-2', 'uploads/custom-images/airpods-pro-2-2022-09-26-12-46-05-8429.png', 0, 1, 0, 0, 0, -28, '12', 0, 'Next-level Active Noise Cancellation and Adaptive Transparency reduce more external noise. Spatial Audio takes immersion to a remarkably personal level. Touch control now lets you adjust volume with a Next-level Active Noise Cancellation and Adaptive Transparency reduce more external noise. Spatial Audio takes immersion to a remarkably personal level. Touch control now lets you adjust volume with a Next-level Active Noise Cancellation and Adaptive Transparency reduce more external noise. Spatial Audio takes immersion to a remarkably personal level. Touch control now lets you adjust volume with a', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;\">&nbsp;</span><br></p>', NULL, 'bigshop12345133', 'AirPods Pro 2', 'AirPods Pro 2', 11.11, 9.99, NULL, 0, 1, 1, 0, 0, 1, 1, 1, 1, 'no', '', 'fixed', 0.00, '2022-09-20 07:49:30', '2024-10-01 22:51:11'),
(9, 'Wireless Headphones and Earbuds', 'Headphones', 'wireless-headphones-and-earbuds-', 'uploads/custom-images/wireless-headphones-and-earbuds-2022-09-26-12-29-52-9668.png', 0, 4, 0, 0, 0, 32, '55', 0, 'Testing conducted by Apple in April 2021 using pre-production Beats Studio Buds and charging case units and software paired with iPhone 11 Pro Max units and pre-release software. The playlist consisted of 358 unique audio tracks purchased from the iTunes Store (256 Kbps AAC encoding). Volume was set to 50% and Active Noise Cancelling and Transparency were turned off. Testing consisted of full Beats Studio Buds battery discharge while playing audio until the first Beats Studio Buds stopped playback. With Active Noise Cancelling turned on, listening time was up to 5 hours. Battery life depends on device settings, environment, usage and many other factors.', '<p id=\"footnote-2\" class=\"pdp-sml-body\" style=\"background: 0px 0px; border: 0px none; margin-right: 0px; margin-bottom: 1em; margin-left: 0px; padding: 0px; hyphens: manual; font-feature-settings: &quot;kern&quot;; border-radius: 0px; line-height: 1.5;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;\">&nbsp;</span><br></p>', NULL, 'bigshop1234522', 'Wireless Headphones and Earbuds', 'Wireless Headphones and Earbuds', 33, 11.99, NULL, 0, 1, 1, 0, 0, 1, 1, 1, 1, 'no', '', 'fixed', 0.00, '2022-09-20 07:56:37', '2022-09-26 06:29:53'),
(10, 'PlayStation 4', 'PS console', 'playstation-4', 'uploads/custom-images/playstation-4-2022-09-26-12-43-50-4261.png', 0, 4, 0, 0, 4, 18, '123', 0, 'Join Samurai warriors, hardened survivors and mighty gods in some of the most acclaimed titles ever made, including games created by PlayStation Studios that you can\'t play anywhere else. Join Samurai warriors, hardened survivors and mighty gods in some of the most acclaimed titles ever made, including games created by PlayStation Studios that you can\'t play anywhere else.', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&nbsp;&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify; background-color: transparent;\">&nbsp;</span><br></p>', NULL, 'bigshop123456622', 'PlayStation 4', 'PlayStation 4', 123, 99.88, NULL, 0, 1, 1, 1, 0, 1, 1, 1, 1, 'no', '', 'fixed', 0.00, '2022-09-20 07:58:06', '2023-07-06 01:28:51'),
(11, 'JBL Clip 4 Orange Portable Bluetooth Speaker #JBLCLIP40RG', 'Bluetooth', 'jbl-clip-4-orange-portable-bluetooth-speaker-jblclip40rg', 'uploads/custom-images/jbl-clip-4-orange-portable-bluetooth-speaker-jblclip40rg-2022-09-26-12-42-09-8912.png', 0, 4, 0, 0, 1, 15, '44', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><br>', NULL, 'bigshop123456611', 'JBL Clip 4 Orange Portable Bluetooth Speaker #JBLCLIP40RG', 'JBL Clip 4 Orange Portable Bluetooth Speaker #JBLCLIP40RG', 333, NULL, NULL, 0, 1, 1, 1, 0, 1, 1, 1, 1, 'no', '', 'fixed', 0.00, '2022-09-20 07:59:33', '2024-10-01 22:51:12'),
(12, 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 'Smartwatch', 'kospet-tank-t1-milstd-rugged-waterproof-smartwatch', 'uploads/custom-images/kospet-tank-t1-mil-std-rugged-waterproof-smartwatch-2022-09-26-12-43-45-6665.png', 0, 4, 0, 0, 0, 53, '44', 0, 'The KOSPET TANK T1 is a MIL-STD Rugged Smartwatch ready for adventure. It is an innovative smartwatch that features a 1.32-inch TFT IPS (360*360) Full Touch screen with a protective cover glass padded. It is equipped with a RealTek8762DK CPU and 64KB RAM + 128M ROM. The smartwatch features Bluetooth 5.0 connectivity and it is compatible with Android 5.1 & IOS 10.0 and above. The KOSPET TANK T1 is powered by a 350mAh Polymer battery and it can offer a long battery life.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&nbsp;</p><br>', NULL, 'bigshop123456655', 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 37, NULL, NULL, 0, 1, 1, 0, 0, 0, 1, 1, 1, 'no', '', 'fixed', 0.00, '2022-09-20 08:00:33', '2022-09-26 06:43:45'),
(13, 'JBL Clip 4 Orange Portable Speaker', 'Speaker', 'jbl-clip-4-orange-portable-speaker', 'uploads/custom-images/jbl-clip-4-orange-portable-speaker-2022-09-27-03-24-27-9922.png', 0, 3, 0, 0, 5, 194, '33', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', NULL, 'bigshop12345133', 'JBL Clip 4 Orange Portable Speaker', 'JBL Clip 4 Orange Portable Speaker', 133, NULL, NULL, 0, 1, 1, 1, 0, 1, 1, 1, 1, 'no', '', 'fixed', 0.00, '2022-09-20 08:01:55', '2024-10-24 03:08:12'),
(14, 'Appple macbook pro 2020', 'Apple macbook', 'appple-macbook-pro-2020', 'uploads/custom-images/appple-macbook-pro-2020-2022-09-21-03-15-03-6666.png', 1, 1, 0, 0, 3, 10, '33', 0, 'Excepteur alias est', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'Enim numquam possimu', 'Id minus at blanditi', 'Nesciunt illo quisq', 120000, 100000, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 09:15:03', '2022-09-21 09:34:11'),
(15, 'Sony mini sound box', 'Sony sound', 'sony-mini-sound-box', 'uploads/custom-images/sony-mini-sound-box-2022-09-21-03-16-48-7639.png', 1, 1, 0, 0, 1, 6, '45', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, '25536', 'Sony mini sound box', 'Sony mini sound box', 500, 450, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 09:16:48', '2024-10-14 18:05:17'),
(16, 'Mi Laptop pro', 'Mi Lapotop', 'mi-laptop-pro', 'uploads/custom-images/mi-laptop-pro-2022-09-21-03-18-52-8009.png', 1, 1, 2, 0, 0, 458, '89', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, '4545ouj', 'Mi Laptop pro', 'Mi Laptop pro', 50000, 41000, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 09:18:52', '2022-09-21 09:34:12'),
(17, 'JBL sound box water proof', 'JBL sound', 'jbl-sound-box-water-proof', 'uploads/custom-images/jbl-sound-box-water-proof-2022-09-21-03-20-10-4755.png', 1, 4, 0, 0, 0, 78, '15', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'colorful-cloths', 'JBL sound box water proof', 'JBL sound box water proof', 1200, 1000, NULL, 0, 1, 0, 0, 0, 1, 0, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 09:20:10', '2022-09-21 09:34:12'),
(18, 'Sony joystick SJ pro', 'Sony joystick', 'sony-joystick-sj-pro', 'uploads/custom-images/sony-joystick-sj-pro-2022-09-21-03-25-19-2532.png', 1, 1, 0, 0, 0, 589, '45', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, '255po', 'Sony joystick SJ pro', 'Sony joystick SJ pro', 2000, 1200, NULL, 0, 1, 1, 1, 1, 1, 0, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 09:25:19', '2022-09-21 09:34:13'),
(19, 'Gopor cam v1 pro', 'Gopro cam', 'gopor-cam-v1-pro', 'uploads/custom-images/gopor-cam-v1-pro-2022-09-21-03-26-33-7496.png', 1, 1, 3, 0, 0, 478, '45', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'loiu45', 'Gopor cam v1 pro', 'Gopor cam v1 pro', 30000, 25000, NULL, 0, 1, 1, 1, 1, 1, 0, 1, 1, 'no', '', 'fixed', 0.00, '2022-09-21 09:26:33', '2022-09-21 09:34:14'),
(20, 'HP playstation 11', 'Hp playstation', 'hp-playstation-11', 'uploads/custom-images/hp-playstation-11-2022-09-21-03-28-49-9507.png', 1, 1, 1, 0, 0, 45, '452', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'lki12', 'HP playstation 11', 'HP playstation 11', 10000, 8000, NULL, 0, 1, 0, 1, 1, 0, 0, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 09:28:49', '2022-09-21 09:34:16'),
(21, 'Realme speaker 2 prod', 'Realme speaker', 'realme-speaker-2-prod', 'uploads/custom-images/realme-speaker-2-prod-2022-09-21-03-31-19-6994.png', 1, 4, 0, 0, 0, 15, '2', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, '14]poi', 'Realme speaker 2 prod', 'Realme speaker 2 prod', 1200, 1100, NULL, 0, 1, 0, 1, 1, 0, 0, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 09:31:20', '2022-09-21 09:34:16'),
(22, 'Xioami Joystick pro', 'Xioami Joystick', 'xioami-joystick-pro', 'uploads/custom-images/xioami-joystick-pro-2022-09-21-03-33-43-9999.png', 1, 2, 4, 0, 0, 45, '78', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'kju45', 'Xioami Joystick pro', 'Xioami Joystick pro', 2000, 1450, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 09:33:43', '2022-09-21 09:34:17'),
(23, 'Apple macbook pro', 'Apple macbook', 'apple-macbook-pro', 'uploads/custom-images/apple-macbook-pro-2022-09-21-03-38-33-4014.png', 1, 1, 0, 0, 0, 43, '78', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and</span><br></p>', NULL, 'ujy45', 'Apple macbook pro', 'Apple macbook pro', 120000, 10000, NULL, 0, 1, 1, 1, 1, 1, 0, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 09:38:33', '2024-10-14 18:05:17'),
(25, 'Appple macbook pro 2020', 'Apple macbook', 'appple-pro-2020', 'uploads/custom-images/appple-macbook-pro-2020-2022-09-26-01-26-42-1648.png', 1, 1, 0, 0, 3, 12, '12', 0, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, 'hjht6', 'Appple macbook pro 2020', 'Appple macbook pro 2020', 12000, 10000, NULL, 0, 1, 1, 0, 0, 1, 1, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 10:27:26', '2022-09-26 07:26:43'),
(26, 'Mi Laptop pro', 'Mi Lapotop', 'mi-laptop-pro-x', 'uploads/custom-images/mi-laptop-pro-2022-09-26-01-22-47-3531.png', 1, 4, 0, 0, 1, 27, '87', 0, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'd45gg', 'Mi Laptop pro', 'Mi Laptop pro', 50000, 45000, NULL, 0, 1, 1, 1, 0, 1, 1, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 10:34:41', '2024-10-01 22:51:12'),
(27, 'Sony camera m1', 'Sony camera', 'sony-camera-m1', 'uploads/custom-images/sony-camera-m1-2022-09-26-01-30-24-3959.png', 2, 8, 0, 0, 0, 12, '75', 0, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, 'kjkjh7', 'Sony camera m1', 'Sony camera m1', 3000, 2800, NULL, 0, 1, 1, 0, 0, 1, 1, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 10:40:16', '2024-10-23 06:15:16'),
(29, 'Sony playstone pro', 'Sony playStone', 'sony-playstone-pro', 'uploads/custom-images/sony-playstone-pro-2022-09-26-02-02-31-9575.png', 2, 2, 5, 0, 0, 75, '98', 0, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, 'jhuy67', 'Sony playstone pro', 'Sony playstone pro', 12000, 10000, NULL, 0, 1, 1, 0, 0, 1, 1, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 10:43:08', '2024-10-23 06:15:16'),
(30, 'JBL headphon max', 'JBL headphone', 'jbl-headphon-max', 'uploads/custom-images/jbl-headphon-max-2022-09-26-01-55-56-9123.png', 2, 1, 0, 0, 0, 65, '87', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, 'hjhg67', 'JBL headphon max', 'JBL headphon max', 700, 650, NULL, 0, 1, 1, 0, 1, 0, 0, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 10:43:59', '2024-10-15 14:09:16');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `is_bundle_product`, `bundle_products`, `bundle_product_offer_type`, `bundle_product_offer`, `created_at`, `updated_at`) VALUES
(31, 'Sony joystick v1', 'Sony joystick', 'sony-joystick-v1', 'uploads/custom-images/sony-joystick-v1-2022-09-26-01-52-07-6121.png', 3, 2, 4, 0, 0, 32, '87', 0, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p><br>', NULL, 'kjjhy7', 'Sony joystick v1', 'Sony joystick v1', 1000, 900, NULL, 0, 1, 1, 0, 0, 1, 1, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 10:46:59', '2022-11-23 17:11:45'),
(32, 'Realme mini music', 'Mini music', 'realme-mini-music', 'uploads/custom-images/realme-mini-music-2022-09-26-01-34-10-1954.png', 3, 1, 0, 0, 2, 64, '45', 0, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'kju7', 'Realme mini music', 'Realme mini music', 800, 659, NULL, 0, 1, 1, 1, 0, 1, 1, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 10:48:07', '2022-11-22 17:56:39'),
(33, 'Asus zenbook desktop', 'Asus zenbook', 'asus-zenbook-desktop', 'uploads/custom-images/asus-zenbook-desktop-2022-09-26-12-33-24-3339.png', 4, 10, 0, 0, 6, 0, '87', 0, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'kjhyy78', 'Asus zenbook desktop', 'Asus zenbook desktop', 35000, 33000, NULL, 0, 1, 1, 1, 0, 1, 1, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 10:50:36', '2024-01-13 08:51:15'),
(34, 'Apple air 2022', 'Apple air book', 'apple-air-2022', 'uploads/custom-images/apple-air-2022-2022-09-26-01-48-39-3761.png', 4, 1, 0, 0, 1, 982, '76', 0, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, 'nmjbff45', 'Apple air 2022', 'Apple air 2022', 250000, 150000, NULL, 0, 1, 1, 0, 0, 1, 1, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 10:51:56', '2023-04-10 18:27:45'),
(35, 'Mini sound box', 'Mini music', 'mini-sound-box', 'uploads/custom-images/mini-sound-box-2022-09-26-01-41-16-4226.png', 5, 4, 0, 0, 0, 68, '34', 0, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text.', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', NULL, 'DFH45', 'Mini sound box', 'Mini sound box', 1235, 1200, NULL, 0, 1, 1, 0, 0, 1, 1, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 10:54:12', '2024-10-23 07:01:53'),
(36, 'Sony joystick SJ pro', 'Sony joystick', 'sony-joystick-sj-pro-vlv', 'uploads/custom-images/sony-joystick-sj-pro-2022-09-27-03-39-20-9931.png', 6, 2, 4, 0, 0, 42, '45', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words,', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><br></p>', NULL, 'dfgh6', 'Sony joystick SJ pro', 'Sony joystick SJ pro', 7000, 5000, NULL, 0, 1, 1, 1, 1, 1, 1, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 10:56:12', '2024-10-23 06:29:47'),
(37, 'Apple watch pro', 'Apple watch', 'apple-watch-pro', 'uploads/custom-images/apple-watch-pro-2022-09-26-12-04-40-6657.png', 6, 1, 0, 0, 3, 1382, '12', 0, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words.', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><br></p>', NULL, 'wer56', 'Apple watch pro', 'Apple watch pro', 45000, 40000, NULL, 0, 1, 1, 1, 0, 1, 1, 0, 1, 'no', '', 'fixed', 0.00, '2022-09-21 11:00:41', '2023-11-29 13:33:13'),
(39, 'Symphony', 'mobile phone', 'symphony', 'uploads/custom-images/symphony-phone-2023-01-02-03-37-19-1704.jpeg', 2, 1, 1, 0, 1, 81, '100', 0, 'ok', 'ok', NULL, '2100', 'phone', 'ok', 3000, 100, NULL, 0, 1, 1, 0, 1, 1, 1, 1, 1, 'no', '', 'fixed', 0.00, '2023-01-02 09:37:19', '2024-10-23 06:15:16'),
(47, 'symphony phone', 'symphony', 'symphony-phone-15', 'uploads/custom-images/symphony-phone-2023-01-03-04-22-50-2732.jpeg', 2, 1, 1, 1, 1, 10, '100', 0, 'ok', 'ok', NULL, '2023', 'symphoy phone', 'symphoy phone', 1000, 100, 'phone symphony', 0, 1, 1, 0, 0, 0, 1, 1, 0, 'no', '', 'fixed', 0.00, '2023-01-03 10:22:51', '2023-01-03 10:22:51'),
(48, 'Fresh Pineapple', 'Pineapple', 'pineapple', 'uploads/custom-images/pineapple-2023-04-16-02-58-43-6381.jpg', 6, 9, 0, 0, 0, 12, '24', 0, 'ggggg gfgfgf', 'gdfdf ffdfdf', NULL, NULL, 'pineapple', 'pineapple', 123, 22, NULL, 0, 1, 1, 0, 0, 0, 1, 0, 0, 'no', '', 'fixed', 0.00, '2023-04-16 18:58:43', '2024-10-22 04:04:54'),
(49, 'Mabppappaa', 'mannnnn', 'ssss', 'uploads/custom-images/mabppappaa-2023-04-30-02-30-06-9105.jpg', 6, 3, 0, 0, 0, 344, '43', 0, 'fsfsf', 'sfsfs', NULL, NULL, 'Mabppappaa', 'Mabppappaa', 12, 2, NULL, 0, 1, 1, 0, 0, 0, 0, 1, 0, 'no', '', 'fixed', 0.00, '2023-04-30 08:30:06', '2023-04-30 08:36:51'),
(52, 'Rolex men’s watches', 'Rolex men’s watches', 'rolex-mens-watches', 'uploads/custom-images/rolex-mens-watches-2024-10-23-09-43-37-5443.jpg', 0, 1, 1, 5, 0, 0, '220', 0, 'Moreover, in the 1960s, Rolex introduced the Daytona, a chronograph watch. It became the official timekeeper of the Daytona International Speedway. Indeed, the Daytona was an instant success and remains one of Rolex’s most popular models to this day. In the 1970s, Rolex introduced the Explorer II. The watch designed for explorers and adventurers, featured a 24-hour hand and a rotating bezel.', '<p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246/0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; outline: 0px; overflow-wrap: break-word; color: rgb(107, 124, 147); font-family: &quot;Playfair Display&quot;, Georgia, serif; font-size: 16px;\">During World War II, Rolex continued to innovate and produce watches that were durable and reliable. Furthermore, during the conflict, soldiers and officers from both sides sported Rolex watches. This elevated the brand to a symbol of heroism and bravery. After the war, Rolex expanded its product line and establish itself as a leader in the world of watches.</p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246/0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; outline: 0px; overflow-wrap: break-word; color: rgb(107, 124, 147); font-family: &quot;Playfair Display&quot;, Georgia, serif; font-size: 16px;\">Moreover, in the 1960s, Rolex introduced the Daytona, a chronograph watch. It became the official timekeeper of the Daytona International Speedway. Indeed, the Daytona was an instant success and remains one of Rolex’s most popular models to this day. In the 1970s, Rolex introduced the Explorer II. The watch designed for explorers and adventurers, featured a 24-hour hand and a rotating bezel.</p>', NULL, NULL, 'This is bundle product', 'This is bundle product', 250, 99, NULL, 0, 1, 1, 1, 1, 0, 1, 0, 1, 'no', '[{\"product_id\":\"17\",\"qty\":\"3\"},{\"product_id\":\"16\",\"qty\":\"1\"},{\"product_id\":\"13\",\"qty\":\"1\"}]', 'fixed', 0.00, '2024-09-23 21:00:49', '2024-10-24 01:43:37'),
(53, 'Digital Stainless Steel Rolex Watch, Silver Rainbow', 'Digital Stainless Steel Rolex Watch', 'digital-stainless-steel-rolex-watch-silver-rainbow', 'uploads/custom-images/digital-stainless-steel-rolex-watch-silver-rainbow-2024-10-23-09-41-50-3512.png', 0, 1, 0, 0, 0, 0, '88', 0, 'It is not just a luxury watch brand, it is a symbol of status, success, and longevity. Hans Wilsdorf and Alfred Davis founded Rolex in 1905. The company has since earned worldwide recognition and respect as one of the most iconic brands. The company’s history is rich with innovation and creativity. And its watches have played a significant role in shaping the world of horology.', '<p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246/0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; outline: 0px; overflow-wrap: break-word; color: rgb(107, 124, 147); font-family: &quot;Playfair Display&quot;, Georgia, serif; font-size: 16px;\">It is not just a luxury watch brand, it is a symbol of status, success, and longevity. Hans Wilsdorf and Alfred Davis founded Rolex in 1905. The company has since earned worldwide recognition and respect as one of the most iconic brands. The company’s history is rich with innovation and creativity. And its watches have played a significant role in shaping the world of horology.</p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246/0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; outline: 0px; overflow-wrap: break-word; color: rgb(107, 124, 147); font-family: &quot;Playfair Display&quot;, Georgia, serif; font-size: 16px;\">First, the early years of Rolex saw innovation and a dedication to excellence. In 1910, Rolex became the first wristwatch to receive the Swiss Certificate of Chronometric Precision. And it sets the standard for all other watches to follow. Second, in 1926, Rolex introduced the Oyster case, a waterproof and dust-proof design. This was a major step forward in the development of wristwatches.</p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246/0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; outline: 0px; overflow-wrap: break-word; color: rgb(107, 124, 147); font-family: &quot;Playfair Display&quot;, Georgia, serif; font-size: 16px;\">Furthermore, the Rolex Oyster proved its durability and reliability, making it the preferred watch for explorers and adventurers. Third, in 1927, Rolex sponsored the first successful ascent of Mount Everest. And in 1953, Sir John Hunt, the leader of the expedition, wore a Rolex Oyster on his wrist. In addition, this marked the beginning of a long and proud tradition of Rolex watches accompanying adventurers on their journeys.</p>', NULL, NULL, 'Short Name 2', 'Short Name 2', 299, 100, NULL, 0, 1, 1, 0, 1, 1, 1, 0, 1, 'no', '[{\"product_id\":\"1\",\"qty\":\"2\"}]', 'fixed', 0.00, '2024-09-23 21:03:19', '2024-10-24 01:44:12'),
(54, 'Rolex Watches and Their Role in Pop Culture and History', 'Rolex Watches and Their Role in Pop Culture and History', 'rolex-watches-and-their-role-in-pop-culture-and-history', 'uploads/custom-images/rolex-watches-and-their-role-in-pop-culture-and-history-2024-10-23-10-05-20-5236.png', 0, 2, 4, 0, 0, 0, '300', 0, 'It is a Swiss luxury watch brand, founded in 1905. As a result, Rolex represents success and luxury. Rolex offers a range of models, from iconic Submariner to sporty Daytona and sophisticated Day-Date.', '<p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246/0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; outline: 0px; overflow-wrap: break-word; color: rgb(107, 124, 147); font-family: &quot;Playfair Display&quot;, Georgia, serif; font-size: 16px;\">Rolex is a renowned, luxury watch brand known for quality and history. Furthermore, Rolex watches have been symbols of success and have impacted popular culture and history.</p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246/0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; outline: 0px; overflow-wrap: break-word; color: rgb(107, 124, 147); font-family: &quot;Playfair Display&quot;, Georgia, serif; font-size: 16px;\">It is a Swiss luxury watch brand, founded in 1905. As a result, Rolex represents success and luxury. Rolex offers a range of models, from iconic Submariner to sporty Daytona and sophisticated Day-Date.</p><p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246/0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; outline: 0px; overflow-wrap: break-word; color: rgb(107, 124, 147); font-family: &quot;Playfair Display&quot;, Georgia, serif; font-size: 16px;\">In this blog, we explore Rolex’s history, pop culture impact, and more.</p>', NULL, NULL, 'DirList - Complete Business Directory And Listing Script', 'DirList - Complete Business Directory And Listing Script', 250, 220, NULL, 0, 1, 0, 1, 1, 1, 1, 0, 1, 'yes', '[{\"product_id\":\"1\",\"qty\":\"1\"}]', 'percentage', 5.00, '2024-09-23 21:08:35', '2024-10-24 02:05:21'),
(55, 'Apple Watch Series 7', 'Apple Watch Series 7', 'apple-watch-series-7', 'uploads/custom-images/apple-watch-series-7-2024-10-23-09-36-42-9130.png', 0, 1, 1, 0, 0, 471, '300', 0, 'Move. Exercise. Stand. Track all the ways you\'re active.\r\nActivity rings show your daily activity. Make it your goal to close them every day. To keep you motivated there are awards, personalized coaching, and Activity competitions.', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; line-height: 1.2858;\"><span style=\"font-weight: normal;\">Move. Exercise. Stand.&nbsp;Track all the ways you\'re&nbsp;active.</span></p><p style=\"text-align: center;\"><ul></ul></p><p style=\"margin: 5px 0px 0px; padding: 0px; line-height: 1.4211; max-width: var(--tile-copy-max-width);\">Activity rings show your daily activity. Make it your goal to close them every day. To keep you motivated there are awards, personalized coaching, and Activity&nbsp;competitions.</p>', NULL, NULL, 'This is bundle product 50', 'This is bundle product 50', 410, 160, NULL, 0, 1, 1, 1, 1, 1, 1, 0, 1, 'yes', '[{\"product_id\":\"15\",\"qty\":\"1\"},{\"product_id\":\"12\",\"qty\":\"2\"},{\"product_id\":\"13\",\"qty\":\"1\"}]', 'percentage', 5.00, '2024-09-24 15:59:52', '2024-10-24 03:24:17'),
(56, 'Rolex Watch Drop Amid Rising', 'Rolex Watch Drop Amid Rising', 'rolex-watch-drop-amid-rising', 'uploads/custom-images/rolex-watch-prices-drop-amid-rising-2024-10-23-10-04-42-1316.webp', 0, 1, 0, 0, 3, 0, '320', 0, 'Investors in high-end Swiss watch brands, including Rolex, are witnessing a significant trend: prices in the secondhand market are falling, and supply is increasing.', '<p><span style=\"color: rgb(0, 0, 0); font-family: Varela, sans-serif; font-size: 18px; letter-spacing: 0.45px;\">Morgan Stanley\'s recent report reveals that the WatchCharts Overall Market Index, which monitors 60 luxury Swiss watch models from 10 brands, experienced its ninth consecutive quarterly decline in the second quarter ending June 30. This follows the peak prices reached in the first quarter of 2022 during the pandemic. The second quarter saw a sequential drop of 2.1% and a year-over-year decline of 1.2%.</span></p><p data-mce-fragment=\"1\" style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Varela, sans-serif; font-size: 18px; letter-spacing: 0.45px;\">Morgan Stanley attributes this shift to a decrease in the profitability of flipping Rolex watches. Dealers who purchase new Rolex watches and resell them at higher prices are facing challenges. The increased retail prices for new Rolex watches and the declining prices for gray market watches (new watches sold in the secondary market) are reducing the appeal of flipping.</p><p data-mce-fragment=\"1\" style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Varela, sans-serif; font-size: 18px; letter-spacing: 0.45px;\">Additionally, Morgan Stanley and WatchCharts observed improved wait times for popular Rolex models. Using data from the Rolex community on a subreddit, they found that wait times for models like the Submariner, GMT-Master II, and Explorer have decreased compared to previous years. The analysis excluded the Rolex Daytona chronograph due to limited sample size but highlighted a trend of shorter wait times since 2022 for other popular models.</p><p data-mce-fragment=\"1\" style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Varela, sans-serif; font-size: 18px; letter-spacing: 0.45px;\">The combination of reduced gray market supply and shorter wait times indicates a decrease in speculative purchasing and a potential decline in overall demand from Rolex enthusiasts. Charles Tian, founder and CEO of WatchCharts, noted, \"We think there is generally greater [Rolex] availability on the primary market, and that primary market demand is waning as a result of both decreased speculative purchasing and decreased organic demand.\"</p><p><br></p>', NULL, NULL, 'this is test product by khalil', 'this is test product by khalil', 340, 200, NULL, 0, 1, 1, 1, 1, 1, 1, 0, 1, 'yes', '[]', 'fixed', 0.00, '2024-10-01 21:32:02', '2024-10-24 02:06:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-02-8827.jpg', 1, '2022-09-21 08:40:02', '2022-09-21 08:40:02'),
(7, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-07-9431.jpg', 1, '2022-09-21 08:40:07', '2022-09-21 08:40:07'),
(8, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-12-2258.jpg', 1, '2022-09-21 08:40:12', '2022-09-21 08:40:12'),
(9, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-16-6534.jpg', 1, '2022-09-21 08:40:16', '2022-09-21 08:40:16'),
(10, 11, 'uploads/custom-images/Gallery-2022-09-21-02-43-39-2412.webp', 1, '2022-09-21 08:43:39', '2022-09-21 08:43:39'),
(11, 11, 'uploads/custom-images/Gallery-2022-09-21-02-44-58-3563.jpg', 1, '2022-09-21 08:44:58', '2022-09-21 08:44:58'),
(12, 11, 'uploads/custom-images/Gallery-2022-09-21-02-45-26-2851.jpg', 1, '2022-09-21 08:45:26', '2022-09-21 08:45:26'),
(13, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-25-6622.jpg', 1, '2022-09-21 08:47:25', '2022-09-21 08:47:25'),
(14, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-32-8680.jpg', 1, '2022-09-21 08:47:32', '2022-09-21 08:47:32'),
(15, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-39-2509.jpg', 1, '2022-09-21 08:47:39', '2022-09-21 08:47:39'),
(16, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-44-6550.jpg', 1, '2022-09-21 08:47:44', '2022-09-21 08:47:44'),
(17, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-47-2815.jpg', 1, '2022-09-21 08:47:47', '2022-09-21 08:47:47'),
(18, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-59-9386.jpg', 1, '2022-09-21 08:47:59', '2022-09-21 08:47:59'),
(20, 1, 'uploads/custom-images/Gallery-2022-09-21-02-48-25-9186.jpg', 1, '2022-09-21 08:48:25', '2022-09-21 08:48:25'),
(21, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-41-4757.jpg', 1, '2022-09-21 08:49:41', '2022-09-21 08:49:41'),
(22, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-44-6374.jpg', 1, '2022-09-21 08:49:44', '2022-09-21 08:49:44'),
(23, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-48-9088.jpg', 1, '2022-09-21 08:49:48', '2022-09-21 08:49:48'),
(24, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-53-4805.jpg', 1, '2022-09-21 08:49:53', '2022-09-21 08:49:53'),
(25, 8, 'uploads/custom-images/Gallery-2022-09-21-02-50-49-2476.jpg', 1, '2022-09-21 08:50:49', '2022-09-21 08:50:49'),
(26, 8, 'uploads/custom-images/Gallery-2022-09-21-02-50-49-5940.jpg', 1, '2022-09-21 08:50:49', '2022-09-21 08:50:49'),
(27, 8, 'uploads/custom-images/Gallery-2022-09-21-02-50-49-4084.png', 1, '2022-09-21 08:50:49', '2022-09-21 08:50:49'),
(28, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-5855.png', 1, '2022-09-21 08:51:41', '2022-09-21 08:51:41'),
(29, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-3530.png', 1, '2022-09-21 08:51:41', '2022-09-21 08:51:41'),
(30, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-5453.png', 1, '2022-09-21 08:51:41', '2022-09-21 08:51:41'),
(31, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-6720.png', 1, '2022-09-21 08:51:41', '2022-09-21 08:51:41'),
(32, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-2303.jpg', 1, '2022-09-21 08:52:53', '2022-09-21 08:52:53'),
(33, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-9034.jpg', 1, '2022-09-21 08:52:53', '2022-09-21 08:52:53'),
(34, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-6919.jpg', 1, '2022-09-21 08:52:53', '2022-09-21 08:52:53'),
(35, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-3825.jpg', 1, '2022-09-21 08:52:53', '2022-09-21 08:52:53'),
(36, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-7427.jpg', 1, '2022-09-21 08:53:15', '2022-09-21 08:53:15'),
(37, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-4974.jpg', 1, '2022-09-21 08:53:15', '2022-09-21 08:53:15'),
(38, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-1292.jpg', 1, '2022-09-21 08:53:15', '2022-09-21 08:53:15'),
(39, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-2712.jpg', 1, '2022-09-21 08:53:15', '2022-09-21 08:53:15'),
(40, 3, 'uploads/custom-images/Gallery-2022-09-21-02-54-04-7986.jpg', 1, '2022-09-21 08:54:04', '2022-09-21 08:54:04'),
(41, 3, 'uploads/custom-images/Gallery-2022-09-21-02-54-04-7042.jpg', 1, '2022-09-21 08:54:04', '2022-09-21 08:54:04'),
(44, 47, 'uploads/custom-images/Gallery-2023-01-04-01-08-03-2623.jpg', 1, '2023-01-04 07:08:03', '2023-04-12 06:27:32'),
(46, 47, 'uploads/custom-images/Gallery-2023-04-12-02-27-46-9529.jpg', 1, '2023-04-12 06:27:46', '2023-04-12 06:27:46'),
(54, 49, 'uploads/custom-images/Gallery-2023-04-30-02-46-36-6657.jpg', 0, '2023-04-30 08:46:36', '2023-04-30 08:47:17'),
(55, 49, 'uploads/custom-images/Gallery-2023-04-30-02-46-36-8527.jpg', 1, '2023-04-30 08:46:36', '2023-04-30 08:46:36'),
(56, 49, 'uploads/custom-images/Gallery-2023-04-30-02-46-36-2685.jpg', 1, '2023-04-30 08:46:36', '2023-04-30 08:46:36'),
(57, 49, 'uploads/custom-images/Gallery-2023-04-30-02-46-56-3037.jpg', 1, '2023-04-30 08:46:56', '2023-04-30 08:46:56'),
(58, 49, 'uploads/custom-images/Gallery-2023-04-30-02-47-10-4610.jpg', 1, '2023-04-30 08:47:10', '2023-04-30 08:47:10'),
(59, 48, 'uploads/custom-images/Gallery-2023-05-01-11-52-42-3406.jpg', 0, '2023-05-01 05:52:42', '2023-05-01 05:53:07'),
(60, 48, 'uploads/custom-images/Gallery-2023-05-01-11-52-42-2987.jpg', 1, '2023-05-01 05:52:42', '2023-05-01 05:52:42'),
(61, 48, 'uploads/custom-images/Gallery-2023-05-01-11-52-42-7867.jpg', 1, '2023-05-01 05:52:42', '2023-05-01 05:52:42'),
(62, 48, 'uploads/custom-images/Gallery-2023-05-01-11-52-42-9684.jpg', 1, '2023-05-01 05:52:42', '2023-05-01 05:52:42'),
(63, 48, 'uploads/custom-images/Gallery-2023-05-01-11-52-42-7410.jpg', 1, '2023-05-01 05:52:42', '2023-05-01 05:52:42'),
(64, 48, 'uploads/custom-images/Gallery-2023-05-01-11-53-01-3092.jpg', 1, '2023-05-01 05:53:01', '2023-05-01 05:53:01'),
(65, 48, 'uploads/custom-images/Gallery-2024-10-22-12-04-02-5649.png', 1, '2024-10-22 04:04:02', '2024-10-22 04:04:02'),
(67, 48, 'uploads/custom-images/Gallery-2024-10-22-12-04-02-2901.jpg', 1, '2024-10-22 04:04:02', '2024-10-22 04:04:02'),
(69, 48, 'uploads/custom-images/Gallery-2024-10-22-12-04-02-8504.jpg', 1, '2024-10-22 04:04:02', '2024-10-22 04:04:02'),
(71, 48, 'uploads/custom-images/Gallery-2024-10-22-12-04-03-1502.png', 1, '2024-10-22 04:04:03', '2024-10-23 02:41:56'),
(72, 56, 'uploads/custom-images/Gallery-2024-10-23-10-06-20-6854.png', 1, '2024-10-24 02:06:20', '2024-10-24 02:06:20'),
(73, 56, 'uploads/custom-images/Gallery-2024-10-23-10-06-20-2699.png', 1, '2024-10-24 02:06:21', '2024-10-24 02:06:21'),
(74, 56, 'uploads/custom-images/Gallery-2024-10-23-10-06-21-5335.jpg', 1, '2024-10-24 02:06:21', '2024-10-24 02:06:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_reports`
--

CREATE TABLE `product_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `product_vendor_id` int(11) NOT NULL DEFAULT 0,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `product_vendor_id`, `review`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 13, 4, 0, 'Corrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enim', 4, 1, '2022-09-21 07:36:23', '2022-09-21 07:36:55'),
(2, 7, 4, 0, 'Enim et ducimus fug', 4, 1, '2022-09-21 07:38:38', '2022-09-21 08:26:36'),
(3, 1, 4, 0, 'Nemo ut ad voluptate', 3, 0, '2022-09-21 07:38:46', '2022-09-21 07:38:46'),
(4, 11, 4, 0, 'Laboris qui voluptas', 2, 0, '2022-09-21 07:39:02', '2022-09-21 07:39:02'),
(5, 13, 7, 0, 'dfafds', 5, 0, '2022-09-26 07:40:14', '2022-09-26 07:40:14'),
(7, 13, 5, 0, 'ok', 5, 0, '2022-09-26 15:35:58', '2022-09-26 15:35:58'),
(8, 1, 5, 0, 'gghj', 5, 0, '2022-09-26 16:28:55', '2022-09-26 16:28:55'),
(9, 7, 7, 0, 'The best ever', 0, 1, '2022-11-22 23:22:03', '2022-11-22 23:29:18'),
(10, 37, 7, 6, 'aaa', 5, 0, '2022-11-23 14:29:33', '2022-11-23 14:29:33'),
(11, 34, 7, 4, 'good', 4, 0, '2023-04-18 11:35:37', '2023-04-18 11:35:37'),
(12, 37, 45, 6, 'Good', 5, 0, '2023-05-02 05:08:27', '2023-05-02 05:08:27'),
(13, 3, 45, 0, 'better', 4, 0, '2023-05-02 05:08:55', '2023-05-02 05:08:55'),
(15, 55, 7, 0, 'hh', 1, 0, '2024-10-24 02:47:02', '2024-10-24 02:47:02');

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_specification_key_id` int(11) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specifications`
--

INSERT INTO `product_specifications` (`id`, `product_id`, `product_specification_key_id`, `specification`, `created_at`, `updated_at`) VALUES
(2, 39, 1, 'ok', '2023-01-03 04:33:23', '2023-01-03 04:33:23'),
(3, 47, 1, 'ok', '2023-01-03 10:22:51', '2023-01-03 10:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_specification_keys`
--

CREATE TABLE `product_specification_keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specification_keys`
--

INSERT INTO `product_specification_keys` (`id`, `key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Color', 1, '2022-11-22 01:33:29', '2023-01-03 07:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(12, 13, 'Size', 1, '2023-07-16 02:43:18', '2023-07-16 02:43:18'),
(14, 12, 'Size', 1, '2024-09-23 18:21:54', '2024-09-23 18:21:54'),
(15, 11, 'Size', 1, '2024-09-23 19:21:37', '2024-09-23 19:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_items`
--

CREATE TABLE `product_variant_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `product_variant_name` varchar(191) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `other_options` text DEFAULT NULL,
  `price` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_items`
--

INSERT INTO `product_variant_items` (`id`, `product_variant_id`, `product_variant_name`, `product_id`, `name`, `other_options`, `price`, `status`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 12, 'Size', 13, 'Small', 'Size 20 | Chest 20 | length 20 inches', 0, 1, 0, '2024-09-23 18:09:24', '2024-09-23 18:17:14'),
(2, 12, 'Size', 13, 'Medium', 'Size 20 | Chest 20 | length 20 inches', 5, 1, 0, '2024-09-23 18:12:24', '2024-09-23 18:17:21'),
(4, 12, 'Size', 13, 'Large', 'Size 20 | Chest 24 | length 18 inches', 15, 1, 0, '2024-09-23 18:15:38', '2024-09-23 18:15:38'),
(5, 14, 'Size', 12, 'Small', 'Size 28 | Waist 28 | length 34 inches', 0, 1, 0, '2024-09-23 18:22:19', '2024-09-23 18:22:19'),
(6, 15, 'Size', 11, 'Small', 'Other service', 250, 1, 0, '2024-09-23 19:21:55', '2024-09-23 19:21:55'),
(7, 14, 'Size', 12, 'Medium', 'Other Options', 10, 1, 0, '2024-09-24 17:07:11', '2024-09-24 17:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `pusher_credentails`
--

CREATE TABLE `pusher_credentails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `app_key` varchar(255) NOT NULL,
  `app_secret` varchar(255) NOT NULL,
  `app_cluster` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pusher_credentails`
--

INSERT INTO `pusher_credentails` (`id`, `app_id`, `app_key`, `app_secret`, `app_cluster`, `created_at`, `updated_at`) VALUES
(1, '1569059', 'f3a19752d50b8d5afe04', '3ef27a781572b5ea3b92', 'ap2', NULL, '2023-03-19 09:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_payments`
--

CREATE TABLE `razorpay_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT 1,
  `country_code` varchar(191) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `key` text DEFAULT NULL,
  `secret_key` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `razorpay_payments`
--

INSERT INTO `razorpay_payments` (`id`, `status`, `name`, `currency_rate`, `country_code`, `currency_code`, `description`, `image`, `color`, `key`, `secret_key`, `created_at`, `updated_at`, `currency_id`) VALUES
(1, 1, 'Ecommerce', 74.66, 'IN', 'INR', 'This is description', 'uploads/website-images/razorpay-2021-12-14-06-35-49-6602.png', '#2d15e5', 'rzp_test_K7CipNQYyyMPiS', 'zSBmNMorJrirOrnDrbOd1ALO', NULL, '2024-10-24 00:22:36', 2);

-- --------------------------------------------------------

--
-- Table structure for table `seller_mail_logs`
--

CREATE TABLE `seller_mail_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_withdraws`
--

CREATE TABLE `seller_withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `approved_date` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_withdraws`
--

INSERT INTO `seller_withdraws` (`id`, `seller_id`, `method`, `total_amount`, `withdraw_amount`, `withdraw_charge`, `account_info`, `status`, `approved_date`, `created_at`, `updated_at`) VALUES
(1, 6, 'bkash Payment', 10, 8.2, 1.8, 'ddd', 0, NULL, '2023-04-16 15:37:53', '2023-04-16 15:37:53'),
(2, 6, 'bkash Payment', 12, 9.84, 2.16, 'Dhaka', 1, '2023-04-16', '2023-04-16 18:15:38', '2023-04-16 18:21:41'),
(3, 6, 'bkash Payment', 12, 9.84, 2.16, 'Hell', 0, NULL, '2023-04-30 08:25:08', '2023-04-30 08:25:08'),
(4, 6, 'bkash Payment', 12, 9.84, 2.16, 'Dhaka', 0, NULL, '2023-05-01 05:49:12', '2023-05-01 05:49:12'),
(5, 3, 'bkash Payment', 10, 8.2, 1.8, 'ddd', 0, NULL, '2023-05-01 06:06:14', '2023-05-01 06:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `page_name`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', 'Home - Welcome to ShopO', 'A best ecommerce script', NULL, '2022-11-01 20:49:33'),
(2, 'About Us', 'About Us - Ecommerce', 'About Us', NULL, '2022-02-07 02:39:59'),
(3, 'Contact Us', 'Contact Us - Ecommerce', 'Contact Us', NULL, '2022-01-12 02:21:46'),
(5, 'Seller Page', 'Our Seller - Ecommerce', 'Seller Page', NULL, '2022-02-07 02:40:16'),
(6, 'Blog', 'Blog - Ecommerce', 'Blog', NULL, '2022-02-07 02:40:23'),
(8, 'Flash Deal', 'Flash Deal - Ecommerce', 'Flash Deal', NULL, '2022-02-07 02:40:43'),
(9, 'Shop Page', 'Shop Page - Ecommerce', 'Shop Page', NULL, '2022-02-07 02:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Shipping', 'fas fa-shipping-fast', 'Free Shipping on Payment', 1, '2022-09-20 08:07:40', '2022-09-20 08:07:40'),
(2, 'Return Policy', 'fas fa-chevron-circle-left', '24 Hours Return Policy', 1, '2022-09-20 08:08:44', '2022-09-20 08:08:44'),
(3, 'Secured Payment', 'fab fa-cc-amazon-pay', 'Secure Card Payments', 1, '2022-09-20 08:09:50', '2022-09-20 08:09:50'),
(4, 'Best Quality', 'fas fa-check-circle', 'Best Quality Products', 1, '2022-09-20 08:10:27', '2022-09-22 04:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `maintenance_mode` int(11) NOT NULL DEFAULT 0,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `contact_email` varchar(191) DEFAULT NULL,
  `enable_user_register` int(11) NOT NULL DEFAULT 1,
  `phone_number_required` int(11) NOT NULL DEFAULT 1,
  `default_phone_code` varchar(255) NOT NULL,
  `enable_multivendor` int(11) NOT NULL DEFAULT 1,
  `enable_subscription_notify` int(11) NOT NULL DEFAULT 1,
  `enable_save_contact_message` int(11) NOT NULL DEFAULT 1,
  `text_direction` varchar(255) NOT NULL DEFAULT 'LTR',
  `timezone` varchar(255) DEFAULT NULL,
  `sidebar_lg_header` varchar(255) DEFAULT NULL,
  `sidebar_sm_header` varchar(255) DEFAULT NULL,
  `topbar_phone` varchar(191) DEFAULT NULL,
  `topbar_email` varchar(191) NOT NULL,
  `currency_name` varchar(191) DEFAULT NULL,
  `currency_icon` varchar(191) DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT 1,
  `show_product_progressbar` int(11) NOT NULL DEFAULT 1,
  `theme_one` varchar(191) NOT NULL,
  `theme_two` varchar(191) NOT NULL,
  `seller_condition` longtext DEFAULT NULL,
  `popular_category` varchar(255) NOT NULL DEFAULT 'Popular Category',
  `popular_category_product_qty` int(11) NOT NULL DEFAULT 9,
  `frontend_url` varchar(255) DEFAULT NULL,
  `popular_category_banner` varchar(255) DEFAULT NULL,
  `featured_category_banner` varchar(255) DEFAULT NULL,
  `homepage_section_title` text NOT NULL,
  `empty_cart` varchar(255) DEFAULT NULL,
  `empty_wishlist` varchar(255) DEFAULT NULL,
  `change_password_image` varchar(255) DEFAULT NULL,
  `become_seller_avatar` varchar(255) DEFAULT NULL,
  `become_seller_banner` varchar(255) DEFAULT NULL,
  `login_image` varchar(255) DEFAULT NULL,
  `error_page` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax` double NOT NULL DEFAULT 0,
  `current_version` varchar(255) NOT NULL DEFAULT '3.8',
  `currency_id` int(11) DEFAULT NULL,
  `shipping_charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `map_status` tinyint(1) NOT NULL DEFAULT 0,
  `per_km_price_range` tinyint(1) NOT NULL DEFAULT 0,
  `map_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `maintenance_mode`, `logo`, `favicon`, `contact_email`, `enable_user_register`, `phone_number_required`, `default_phone_code`, `enable_multivendor`, `enable_subscription_notify`, `enable_save_contact_message`, `text_direction`, `timezone`, `sidebar_lg_header`, `sidebar_sm_header`, `topbar_phone`, `topbar_email`, `currency_name`, `currency_icon`, `currency_rate`, `show_product_progressbar`, `theme_one`, `theme_two`, `seller_condition`, `popular_category`, `popular_category_product_qty`, `frontend_url`, `popular_category_banner`, `featured_category_banner`, `homepage_section_title`, `empty_cart`, `empty_wishlist`, `change_password_image`, `become_seller_avatar`, `become_seller_banner`, `login_image`, `error_page`, `created_at`, `updated_at`, `tax`, `current_version`, `currency_id`, `shipping_charge`, `map_status`, `per_km_price_range`, `map_key`) VALUES
(1, 1, 'uploads/website-images/logo-2024-10-23-07-53-11-7233.webp', 'uploads/website-images/favicon-2022-09-20-09-51-23-8334.png', 'admin@quomodosoft.xyz', 1, 1, 'BD', 1, 1, 1, 'ltr', 'America/Los_Angeles', 'ShopO', 'Sp', '123-854-7896', 'contact@gmail.com', NULL, NULL, 85.76, 0, '#ffbb38', '#222222', '<p><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><b>“Terms and Conditions</b>”&nbsp;means these “General Terms and Conditions for the Sale of Products or Services”, together with any modifications or additional provisions specifically stated in Seller’s final quotation or specifically agreed upon by Seller in writing.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">2. Delivery and Shipping Terms.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">(a) For shipments that do not involve export Seller shall deliver Products to Buyer F.O.B. shipping point. For export shipments, Seller shall deliver Products to Buyer EXW Seller’s facility or warehouse (Incoterms 2010). Buyer shall pay all delivery costs and charges or pay Seller’s standard shipping charges plus handling. Partial deliveries are permitted. Seller may deliver Products in advance of the delivery schedule. Delivery times are approximate and are dependent upon prompt receipt by Seller of all information necessary to proceed with the work without interruption. If Products delivered do not correspond in quantity, type or price to those itemized in the shipping invoice or documentation, Buyer shall so notify Seller within ten (10) days after receipt.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">(b) For shipments that do not involve export, title to Products shall pass to Buyer upon delivery in accordance with Section 2(a). For export shipments from a Seller facility or warehouse outside the U.S., title shall pass to Buyer upon delivery in accordance with Section 2(a). For shipments from the U.S. to another country, title shall pass to Buyer immediately after each item departs from the territorial land, seas and overlying airspace of the U.S. The 1982 United Nations Convention of the law of the Sea shall apply to determine the U.S. territorial seas. For all other shipments, title to Products shall pass to Buyer the earlier of (i) the port of export immediately after Products have been cleared for export or (ii) immediately after each item departs from the territorial land, seas and overlying airspace of the sending country. When Buyer arranges the export shipment, Buyer will provide Seller evidence of exportation acceptable to the relevant tax and custom authorities.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">(c) Risk of loss shall pass to Buyer upon delivery pursuant to Section 2(a), except that for export shipments from the U.S., risk of loss shall transfer to Buyer upon title passage.</span><br></p>', 'Popular Category', 9, 'https://shopo-ecom.vercel.app/about', 'uploads/website-images/popular-cat-banner-2022-09-20-01-15-44-7577.jpg', 'uploads/website-images/featured-cat-banner-2022-09-21-02-43-49-4710.jpg', '[{\"key\":\"Trending_Category\",\"default\":\"Trending Category\",\"custom\":\"Trending Category\"},{\"key\":\"Popular_Category\",\"default\":\"Popular Category\",\"custom\":\"Popular Category\"},{\"key\":\"Shop_by_Brand\",\"default\":\"Shop by Brand\",\"custom\":\"Shop by Brand\"},{\"key\":\"Top_Rated_Products\",\"default\":\"Top Rated Products\",\"custom\":\"Top Rated Products\"},{\"key\":\"Best_Seller\",\"default\":\"Best Seller\",\"custom\":\"Best Seller\"},{\"key\":\"Featured_Products\",\"default\":\"Featured Products\",\"custom\":\"Featured Products\"},{\"key\":\"New_Arrivals\",\"default\":\"New Arrivals\",\"custom\":\"New Arrivals\"},{\"key\":\"Best_Products\",\"default\":\"Best Products\",\"custom\":\"Best Products\"}]', 'uploads/website-images/empty_cart-2022-11-17-11-10-20-7795.png', 'uploads/website-images/empty_wishlist-2022-11-17-11-23-16-9350.png', 'uploads/website-images/change_password_image-2022-11-17-11-26-36-3416.png', 'uploads/website-images/become_seller_avatar-2022-11-17-11-38-55-7934.png', 'uploads/website-images/become_seller_banner-2022-11-17-11-41-53-5886.png', 'uploads/website-images/login_image-2022-11-17-11-07-21-2774.png', 'uploads/website-images/error_page-2022-11-17-11-27-36-6180.png', NULL, '2024-10-24 03:06:38', 0, '4.0.0', 1, 33.20, 0, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `shipping_rule` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `shipping_fee` double NOT NULL,
  `condition_from` varchar(255) NOT NULL,
  `condition_to` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `city_id`, `shipping_rule`, `type`, `shipping_fee`, `condition_from`, `condition_to`, `created_at`, `updated_at`) VALUES
(1, 0, 'free shipping', 'base_on_price', 0, '1', '100', '2022-09-21 05:49:45', '2022-09-21 05:49:45'),
(2, 8, 'Product Price (1-2000)', 'base_on_price', 20, '0', '2000', '2022-11-18 02:36:09', '2023-05-02 05:14:07'),
(3, 1, 'Limited Offer', 'base_on_price', 120, '0', '100000', '2023-05-02 05:15:25', '2023-05-02 05:15:25'),
(4, 9, 'weight', 'base_on_weight', 10, '1', '500', '2023-09-25 03:04:53', '2023-09-25 03:04:53'),
(5, 0, 'Shipping Fee', 'base_on_price', 40, '1', '1000000', '2024-02-10 05:52:57', '2024-02-10 05:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `coupon_name` varchar(255) DEFAULT NULL,
  `coupon_price` double NOT NULL,
  `offer_type` int(11) NOT NULL,
  `is_bundle_product` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping_carts`
--

INSERT INTO `shopping_carts` (`id`, `user_id`, `product_id`, `qty`, `coupon_name`, `coupon_price`, `offer_type`, `is_bundle_product`, `created_at`, `updated_at`) VALUES
(39, 7, 55, 1, '', 0, 0, 'no', '2024-10-24 05:39:56', '2024-10-24 05:39:56'),
(40, 7, 37, 1, '', 0, 0, 'no', '2024-10-24 05:40:21', '2024-10-24 05:40:21');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_bundle_items`
--

CREATE TABLE `shopping_cart_bundle_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shopping_cart_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `bundle_product_id` int(11) NOT NULL DEFAULT 0,
  `bundle_product_qty` int(11) NOT NULL DEFAULT 0,
  `bundle_product_variant_id` int(11) NOT NULL DEFAULT 0,
  `bundle_product_variant_item_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_variants`
--

CREATE TABLE `shopping_cart_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shopping_cart_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `variant_item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `other_options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_pages`
--

CREATE TABLE `shop_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header_one` varchar(255) DEFAULT NULL,
  `header_two` varchar(255) DEFAULT NULL,
  `title_one` varchar(255) DEFAULT NULL,
  `title_two` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `filter_price_range` double NOT NULL DEFAULT 10000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_pages`
--

INSERT INTO `shop_pages` (`id`, `header_one`, `header_two`, `title_one`, `title_two`, `banner`, `link`, `button_text`, `status`, `filter_price_range`, `created_at`, `updated_at`) VALUES
(1, 'Up To', '70% Off', 'Women\'s Jeans Collection', 'Fashion For Women\'s', 'uploads/website-images/banner-2022-02-06-04-22-39-1426.jpg', 'product', 'Discover now', 1, 5000, NULL, '2022-09-20 08:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `title_one` varchar(255) DEFAULT NULL,
  `title_two` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `serial` int(11) NOT NULL DEFAULT 0,
  `slider_location` varchar(255) DEFAULT NULL,
  `product_slug` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `badge`, `title_one`, `title_two`, `image`, `status`, `serial`, `slider_location`, `product_slug`, `created_at`, `updated_at`) VALUES
(1, 'New released', 'Apple Wireless', 'Samsung S10+', 'uploads/custom-images/slider-2022-10-27-01-36-28-1252.png', 0, 1, NULL, 'fantech-octane-headset', '2022-09-20 03:55:57', '2022-11-23 07:04:17'),
(2, 'New released', 'Apple', 'Macbook Pro Max', 'uploads/custom-images/slider-2022-10-27-01-36-38-2956.png', 1, 2, NULL, 'jbl-clip-4-orange-portable-speaker', '2022-09-20 03:57:41', '2022-10-27 07:36:38'),
(3, 'New released', 'Headphone', 'JBL Music', 'uploads/custom-images/slider-2022-10-27-01-36-44-4193.png', 1, 3, NULL, 'sony-joystick-v1', '2022-09-20 03:58:20', '2022-10-27 07:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'User Verification', NULL, 'Dear {{user_name}},\r\n\r\nCongratulations! Your Account has been created successfully. Please copy and past and Active your Account. Your OTP code is {{otp_code}}', NULL, '2023-01-11 12:07:47'),
(2, 'Password Reset', NULL, 'Dear {{name}},\r\n\r\nDo you want to reset your password? Please Copy and past this code. Your OTP Code is {{otp_code}}', NULL, '2023-01-12 03:52:23'),
(3, 'Order Successfully', NULL, 'Hi {{user_name}},\r\n\r\nThanks for your new order. Your order id has been submited .\r\nOrder Id : {{order_id}},', NULL, '2023-01-11 11:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `social_login_information`
--

CREATE TABLE `social_login_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_facebook` int(11) NOT NULL DEFAULT 0,
  `facebook_client_id` text DEFAULT NULL,
  `facebook_secret_id` text DEFAULT NULL,
  `is_gmail` int(11) NOT NULL DEFAULT 0,
  `gmail_client_id` text DEFAULT NULL,
  `gmail_secret_id` text DEFAULT NULL,
  `facebook_redirect_url` text DEFAULT NULL,
  `gmail_redirect_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_login_information`
--

INSERT INTO `social_login_information` (`id`, `is_facebook`, `facebook_client_id`, `facebook_secret_id`, `is_gmail`, `gmail_client_id`, `gmail_secret_id`, `facebook_redirect_url`, `gmail_redirect_url`, `created_at`, `updated_at`) VALUES
(1, 0, '343rer', 'fsdfa', 0, '673210704627-g002lb3mstedn57b4geupsfhakcqo316.apps.googleusercontent.com', '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', 'link', 'http://localhost:3000/auth/google', NULL, '2023-05-25 07:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `sslcommerz_payments`
--

CREATE TABLE `sslcommerz_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` text NOT NULL,
  `store_password` text NOT NULL,
  `mode` varchar(255) NOT NULL,
  `currency_rate` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sslcommerz_payments`
--

INSERT INTO `sslcommerz_payments` (`id`, `store_id`, `store_password`, `mode`, `currency_rate`, `country_code`, `currency_code`, `status`, `created_at`, `updated_at`, `currency_id`) VALUES
(1, 'wsus628f03bb09670', 'wsus628f03bb09670@ssl', 'sandbox', '80', 'BD', 'BDT', 1, NULL, '2022-11-03 04:55:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stripe_payments`
--

CREATE TABLE `stripe_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `stripe_key` text DEFAULT NULL,
  `stripe_secret` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_code` varchar(10) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `currency_rate` double NOT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stripe_payments`
--

INSERT INTO `stripe_payments` (`id`, `status`, `stripe_key`, `stripe_secret`, `created_at`, `updated_at`, `country_code`, `currency_code`, `currency_rate`, `currency_id`) VALUES
(1, 1, 'pk_test_51JU61aF56Pb8BOOX5ucAe5DlDwAkCZyffqlKMDUWsAwhKbdtuY71VvIzr0NgFKjq4sOVVaaeeyVXXnNWwu5dKgeq00kMzCBUm5', 'sk_test_51JU61aF56Pb8BOOXlz7jGkzJsCkozuAoRlFJskYGsgunfaHLmcvKLubYRQLCQOuyYHq0mvjoBFLzV7d8F6q8f6Hv00CGwULEEV', NULL, '2022-11-18 02:24:05', 'US', 'USD', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `verified_token` text DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `status`, `verified_token`, `is_verified`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 0, '568771', 0, '2022-09-21 05:03:38', '2022-09-21 05:03:38'),
(2, 'abdur.rohman2003@gmail.com', 0, '458560', 0, '2022-09-21 05:03:47', '2022-09-21 05:03:47'),
(3, 'admin@brandmarrow.com.bd', 0, '298058', 0, '2022-09-21 05:03:59', '2022-09-21 05:03:59'),
(4, 'abdur_rohman2003@yahoo.com', 0, '978651', 0, '2022-09-21 07:06:47', '2022-09-21 07:06:47'),
(5, 'h@h.com', 0, '863244', 0, '2022-09-22 10:18:38', '2022-09-22 10:18:38'),
(6, 'Mollitia rerum omnis', 0, '637112', 0, '2022-09-23 06:01:01', '2022-09-23 06:01:01'),
(7, 'supuhib@mailinator.com', 0, '184076', 0, '2022-09-23 06:01:08', '2022-09-23 06:01:08'),
(8, 'abc@gmail.com', 0, '635442', 0, '2022-10-29 17:11:29', '2022-10-29 17:11:29'),
(9, 'user2@gmail.com', 0, '455377', 0, '2022-10-29 17:15:48', '2022-10-29 17:15:48'),
(10, 'patient@gmail.com', 0, '477354', 0, '2022-10-29 17:18:54', '2022-10-29 17:18:54'),
(11, 'user64@gmail.com', 0, '583716', 0, '2022-10-29 17:25:26', '2022-10-29 17:25:26'),
(12, 'user@gmail.com', 0, '802435', 0, '2022-10-29 19:06:22', '2022-10-29 19:06:22'),
(13, 'samad1122@gmail.com', 0, '733410', 0, '2022-10-31 21:28:20', '2022-10-31 21:28:20'),
(14, 'muhammadhammadkhan17@gamil.com', 0, '418556', 0, '2022-10-31 21:28:39', '2022-10-31 21:28:39'),
(15, 'fazigamingyt1@gmail.com', 0, '475241', 0, '2022-11-20 20:56:35', '2022-11-20 20:56:35'),
(16, 'azmatbukhari879@gmail.com', 0, '753841', 0, '2022-11-22 13:42:37', '2022-11-22 13:42:37'),
(17, 'giugji', 0, '511799', 0, '2023-06-25 19:06:34', '2023-06-25 19:06:34'),
(18, 'alialiyev1555@gmail.com', 0, '340951', 0, '2023-06-25 19:06:53', '2023-06-25 19:06:53'),
(19, 'alialiyev1619985@gmail.com', 0, '426935', 0, '2023-06-25 19:09:13', '2023-06-25 19:09:13'),
(20, 'customer@customer.com', 0, '769831', 0, '2023-06-26 00:43:27', '2023-06-26 00:43:27'),
(21, 'amsyproduction@gmail.com', 0, '597119', 0, '2023-06-26 00:43:37', '2023-06-26 00:43:37'),
(22, 'hjgh', 0, '645597', 0, '2023-06-26 10:34:01', '2023-06-26 10:34:01'),
(23, 'hjgh@sdfds.com', 0, '970559', 0, '2023-06-26 10:34:08', '2023-06-26 10:34:08'),
(24, 'hayat@gmail.com', 0, '707950', 0, '2023-06-26 11:18:42', '2023-06-26 11:18:42'),
(25, 'beheraswarup18@gmail.com', 0, '274290', 0, '2023-06-26 12:58:20', '2023-06-26 12:58:20'),
(26, 'swarup.iplus@gmail.com', 0, '710105', 0, '2023-06-26 12:58:42', '2023-06-26 12:58:42'),
(27, 'arupananda1974@gmail.com', 0, '864716', 0, '2023-06-26 12:58:54', '2023-06-26 12:58:54'),
(28, 'mhndouzed@gmail.com', 0, '881507', 0, '2023-06-26 14:42:09', '2023-06-26 14:42:09'),
(29, 'jonmircha@gmail.com', 0, '608259', 0, '2023-06-26 16:23:05', '2023-06-26 16:23:05'),
(30, 'kityo@gmail.com', 0, '164602', 0, '2023-06-26 16:23:28', '2023-06-26 16:23:28'),
(31, 'yyy@hhh.com', 0, '440159', 0, '2023-06-26 19:13:45', '2023-06-26 19:13:45'),
(32, 'aseel@gmail.com', 0, '883070', 0, '2023-06-26 19:20:21', '2023-06-26 19:20:21'),
(33, 'aseelit77@gmail.com', 0, '232308', 0, '2023-06-26 19:37:41', '2023-06-26 19:37:41'),
(34, 'aseelit4@gmail.com', 0, '645481', 0, '2023-06-26 19:44:21', '2023-06-26 19:44:21'),
(35, 'ghgfg@gm.com', 0, '400293', 0, '2023-06-26 19:58:35', '2023-06-26 19:58:35'),
(36, 'aseelits4@gmail.com', 0, '196886', 0, '2023-06-26 20:02:31', '2023-06-26 20:02:31'),
(37, 'admin@example.com', 0, '178734', 0, '2023-06-26 20:26:54', '2023-06-26 20:26:54'),
(38, 'sdjfbskdbfkds@gmail.com', 0, '802862', 0, '2023-06-26 21:01:56', '2023-06-26 21:01:56'),
(39, 'vuanhcalmdown@gmail.com', 0, '311810', 0, '2023-06-27 02:37:10', '2023-06-27 02:37:10'),
(40, 'ddddd@gmail.com', 0, '639375', 0, '2023-06-27 03:16:37', '2023-06-27 03:16:37'),
(41, 'elevenlogodesigsn@gmail.com', 0, '839939', 0, '2023-06-27 03:17:12', '2023-06-27 03:17:12'),
(42, 'demo@admin.com', 0, '430300', 0, '2023-06-27 05:19:21', '2023-06-27 05:19:21'),
(43, 'test@gmail.com', 0, '262582', 0, '2023-06-27 06:15:27', '2023-06-27 06:15:27'),
(44, 'demo@gmail.com', 0, '283910', 0, '2023-06-27 06:59:15', '2023-06-27 06:59:15'),
(45, 'info@centapost.cor', 0, '564802', 0, '2023-06-27 11:20:53', '2023-06-27 11:20:53'),
(46, 'info@centapost.co', 0, '131494', 0, '2023-06-27 11:21:01', '2023-06-27 11:21:01'),
(47, 'scothlanda@gmail.com', 0, '969428', 0, '2023-06-27 12:29:34', '2023-06-27 12:29:34'),
(48, 'aseeli@gmail.com', 0, '369208', 0, '2023-06-27 15:17:13', '2023-06-27 15:17:13'),
(49, 'skynasir123@gmail.com', 0, '459591', 0, '2023-06-27 17:59:48', '2023-06-27 17:59:48'),
(50, 'tuggfd@gmsil.com', 0, '837923', 0, '2023-06-27 22:07:15', '2023-06-27 22:07:15'),
(51, 'tuggfd@gmail.com', 0, '381001', 0, '2023-06-27 22:07:23', '2023-06-27 22:07:23'),
(52, 'olkoll@gmkl.com', 0, '241822', 0, '2023-06-28 02:26:25', '2023-06-28 02:26:25'),
(53, 'fnnmf', 0, '468617', 0, '2023-06-28 07:03:13', '2023-06-28 07:03:13'),
(54, 'prashantvashisth53@gmail.com', 0, '952346', 0, '2023-06-28 07:06:36', '2023-06-28 07:06:36'),
(55, 'jbi@gmil.cm', 0, '319431', 0, '2023-06-28 07:32:19', '2023-06-28 07:32:19'),
(56, 'kamal.g.030392@gmail.com', 0, '252845', 0, '2023-06-28 07:48:22', '2023-06-28 07:48:22'),
(57, 'admin@admin.com', 0, '583489', 0, '2023-06-28 07:52:01', '2023-06-28 07:52:01'),
(58, 'williansfigueiredo12584@hotmail.com', 0, '777041', 0, '2023-06-28 09:32:02', '2023-06-28 09:32:02'),
(59, 'williansfigueiredo12584@gmail.com', 0, '677985', 0, '2023-06-28 09:32:18', '2023-06-28 09:32:18'),
(60, 'ehmedovr687@gmail.com', 0, '804375', 0, '2023-06-28 10:01:25', '2023-06-28 10:01:25'),
(61, 'teукеt@gmail.com', 0, '669612', 0, '2023-06-28 10:35:41', '2023-06-28 10:35:41'),
(62, 'walami6584@chotunai.com', 0, '709805', 0, '2023-06-28 10:35:45', '2023-06-28 10:35:45'),
(63, 'gvvv', 0, '933085', 0, '2023-06-28 10:44:25', '2023-06-28 10:44:25'),
(64, 'nitikagahlot0001@gmail.com', 0, '863979', 0, '2023-06-28 10:44:40', '2023-06-28 10:44:40'),
(65, 'superadmin@example.com', 0, '470807', 0, '2023-06-28 10:55:14', '2023-06-28 10:55:14'),
(66, 'skooldev@gmail.com', 0, '688652', 0, '2023-06-28 11:33:35', '2023-06-28 11:33:35'),
(67, 'hola2@hola1.com', 0, '841660', 0, '2023-06-28 14:45:40', '2023-06-28 14:45:40'),
(68, 'tt@gg.com', 0, '969954', 0, '2023-06-28 15:19:12', '2023-06-28 15:19:12'),
(69, 'yashvee@gmail.com', 0, '770211', 0, '2023-06-29 06:16:55', '2023-06-29 06:16:55'),
(70, 'sadituddbin@gmail.com', 0, '207622', 0, '2023-06-29 07:30:27', '2023-06-29 07:30:27'),
(71, 'go@gmail.com', 0, '793468', 0, '2023-06-29 08:56:29', '2023-06-29 08:56:29'),
(72, 'AMG50-50@accountant.com', 0, '907451', 0, '2023-06-29 11:50:39', '2023-06-29 11:50:39'),
(73, 'admin@exaple.com', 0, '586508', 0, '2023-06-29 14:16:18', '2023-06-29 14:16:18'),
(74, 'newdev@gmail.com', 0, '150409', 0, '2023-06-29 14:16:34', '2023-06-29 14:16:34'),
(75, 'dafafaf', 0, '108585', 0, '2023-06-29 15:02:11', '2023-06-29 15:02:11'),
(76, 'fredwichstoiskoveuzebe13@yahoo.com', 0, '130748', 0, '2023-06-29 15:02:19', '2023-06-29 15:02:19'),
(77, 'info@hillcrestprime.com', 0, '910068', 0, '2023-06-29 16:17:05', '2023-06-29 16:17:05'),
(78, 'mkk', 0, '990705', 0, '2023-06-29 18:26:00', '2023-06-29 18:26:00'),
(79, 'mkk@gmail.com', 0, '528598', 0, '2023-06-29 18:26:10', '2023-06-29 18:26:10'),
(80, 'dfSDFSD@GMAIL.SSSD', 0, '603072', 0, '2023-06-29 22:15:05', '2023-06-29 22:15:05'),
(81, 'fsdf@adF', 0, '160867', 0, '2023-06-29 22:15:26', '2023-06-29 22:15:26'),
(82, 'sa@gm.com', 0, '357269', 0, '2023-06-30 01:57:20', '2023-06-30 01:57:20'),
(83, 'hhh', 0, '447758', 0, '2023-06-30 01:57:53', '2023-06-30 01:57:53'),
(84, 'gg', 0, '856103', 0, '2023-06-30 03:37:30', '2023-06-30 03:37:30'),
(85, 'gg @df.com', 0, '200827', 0, '2023-06-30 03:37:38', '2023-06-30 03:37:38'),
(86, 'gg@df.com', 0, '840890', 0, '2023-06-30 03:37:50', '2023-06-30 03:37:50'),
(87, 'sdhfxf@.in.in', 0, '491474', 0, '2023-06-30 04:16:25', '2023-06-30 04:16:25'),
(88, 'sdhfxf@in.in', 0, '403584', 0, '2023-06-30 04:16:30', '2023-06-30 04:16:30'),
(89, 'limotech@gmail.com', 0, '972009', 0, '2023-06-30 08:57:04', '2023-06-30 08:57:04'),
(90, 'dinaelsilva@ymail.com', 0, '725645', 0, '2023-06-30 09:49:32', '2023-06-30 09:49:32'),
(91, 'orgonson@gmail.com', 0, '698457', 0, '2023-06-30 15:23:00', '2023-06-30 15:23:00'),
(92, 'orgonsoon@gmail.com', 0, '463146', 0, '2023-06-30 15:23:12', '2023-06-30 15:23:12'),
(93, 'fhdt@gmail.com', 0, '505362', 0, '2023-06-30 16:09:04', '2023-06-30 16:09:04'),
(94, 'wertjh@gmail.com', 0, '440751', 0, '2023-06-30 18:15:14', '2023-06-30 18:15:14'),
(95, 'devwebsombre@gmail.com', 0, '790460', 0, '2023-06-30 18:15:27', '2023-06-30 18:15:27'),
(96, 'atsear@yahoo.fr', 0, '527182', 0, '2023-06-30 18:35:51', '2023-06-30 18:35:51'),
(97, 'test@test.com', 0, '751489', 0, '2023-06-30 21:19:23', '2023-06-30 21:19:23'),
(98, 'qsabioadmi@gmail.com', 0, '675117', 0, '2023-06-30 22:55:40', '2023-06-30 22:55:40'),
(99, 'ravijangid207@gmail.com', 0, '525073', 0, '2023-07-01 04:48:09', '2023-07-01 04:48:09'),
(100, 'test12344ddd@gmail.com', 0, '299362', 0, '2023-07-01 05:01:08', '2023-07-01 05:01:08'),
(101, 'swapnil1234@gmail.com', 0, '676325', 0, '2023-07-01 05:02:10', '2023-07-01 05:02:10'),
(102, 'swapnil.patil@gmail.com', 0, '146843', 0, '2023-07-01 05:02:20', '2023-07-01 05:02:20'),
(103, 'rajpatil417446@gmail.com', 0, '739128', 0, '2023-07-01 05:02:31', '2023-07-01 05:02:31'),
(104, 'rahu@ymail.com', 0, '458771', 0, '2023-07-01 09:38:06', '2023-07-01 09:38:06'),
(105, 'tttttttest@gmail.com', 0, '965678', 0, '2023-07-01 09:46:50', '2023-07-01 09:46:50'),
(106, 'gteryt@sasas.com', 0, '955177', 0, '2023-07-01 12:28:59', '2023-07-01 12:28:59'),
(107, 'uniquedentalapp@gmail.com', 0, '651424', 0, '2023-07-01 13:22:17', '2023-07-01 13:22:17'),
(108, 'adversign@gmail.com', 0, '628491', 0, '2023-07-01 16:09:46', '2023-07-01 16:09:46'),
(109, 'sdshdi', 0, '495540', 0, '2023-07-07 01:36:51', '2023-07-07 01:36:51'),
(110, 'sdshdi@', 0, '766192', 0, '2023-07-07 01:37:00', '2023-07-07 01:37:00'),
(111, 'sdshdi@gg', 0, '917934', 0, '2023-07-07 01:37:06', '2023-07-07 01:37:06'),
(112, 'ohnome1@gmail.com', 0, '393108', 0, '2023-07-07 05:57:41', '2023-07-07 05:57:41'),
(113, 'aditya910230@gmail.com', 0, '660111', 0, '2023-07-07 13:46:28', '2023-07-07 13:46:28'),
(114, 'wasdasd', 0, '901127', 0, '2023-07-13 02:25:05', '2023-07-13 02:25:05'),
(115, 'seller@gmail.com', 0, '483583', 0, '2023-07-20 10:32:08', '2023-07-20 10:32:08'),
(116, 'jokerdkdb@gmail.com', 0, '655260', 0, '2023-07-21 04:48:25', '2023-07-21 04:48:25'),
(117, 'robinsonkoech78@gmail.com', 0, '859682', 0, '2023-07-24 13:24:54', '2023-07-24 13:24:54'),
(118, 'antalpisti2@gmail.com', 0, '907828', 0, '2023-07-25 12:35:47', '2023-07-25 12:35:47'),
(119, 'ojdorreka@gmail.com', 0, '235661', 0, '2023-07-25 12:36:03', '2023-07-25 12:36:03'),
(120, 'new@gmail.com', 0, '622035', 0, '2023-07-26 00:47:23', '2023-07-26 00:47:23'),
(121, 'thuanhtranhsgs@gmail.com', 0, '532457', 0, '2023-07-26 06:43:11', '2023-07-26 06:43:11'),
(122, 'vuanh.capi@gmail.com', 0, '122140', 0, '2023-07-26 06:43:29', '2023-07-26 06:43:29'),
(123, 'robel@gmail.com', 0, '590994', 0, '2023-07-26 18:43:35', '2023-07-26 18:43:35'),
(124, 'hhjj@gmail.com', 0, '942939', 0, '2023-07-26 18:49:31', '2023-07-26 18:49:31'),
(125, 'caca@poo.cake', 0, '128983', 0, '2023-07-26 21:13:03', '2023-07-26 21:13:03'),
(126, 'caca@poo.com', 0, '958202', 0, '2023-07-26 21:13:11', '2023-07-26 21:13:11'),
(127, '888', 0, '756775', 0, '2023-07-27 02:11:29', '2023-07-27 02:11:29'),
(128, 'admin121@gmail.com', 0, '664559', 0, '2023-07-27 02:11:46', '2023-07-27 02:11:46'),
(129, 'a@a.com', 0, '634974', 0, '2023-07-27 03:10:54', '2023-07-27 03:10:54'),
(130, 'b@a.com', 0, '953649', 0, '2023-07-27 03:11:30', '2023-07-27 03:11:30'),
(131, 'admin@admin.com.tr', 0, '916312', 0, '2023-07-27 06:28:42', '2023-07-27 06:28:42'),
(132, 'admin@amentotech.com', 0, '965771', 0, '2023-07-27 06:59:02', '2023-07-27 06:59:02'),
(133, 'MMtechnologieshr@gmail.com', 0, '185953', 0, '2023-07-27 08:00:05', '2023-07-27 08:00:05'),
(134, 'panek44990@sparkroi.com', 0, '475673', 0, '2023-07-27 10:21:03', '2023-07-27 10:21:03'),
(135, 'anjas@gmail.com', 0, '132693', 0, '2023-07-27 11:43:51', '2023-07-27 11:43:51'),
(136, 'deepnvta@gmail.com', 0, '208166', 0, '2023-07-27 11:44:44', '2023-07-27 11:44:44'),
(137, 'Marihot@gmail.com', 0, '144986', 0, '2023-07-27 11:45:34', '2023-07-27 11:45:34'),
(138, 'teste@teste.com', 0, '142709', 0, '2023-07-27 12:37:41', '2023-07-27 12:37:41'),
(139, 'admindoctro@gmail.com', 0, '721727', 0, '2023-07-27 12:39:32', '2023-07-27 12:39:32'),
(140, 'jfijgdhhugjh@jfhfjgkm.ciomm', 0, '473767', 0, '2023-07-27 12:55:09', '2023-07-27 12:55:09'),
(141, 'teste@teste.co', 0, '806909', 0, '2023-07-27 14:40:17', '2023-07-27 14:40:17'),
(142, 's', 0, '434663', 0, '2023-07-27 15:42:59', '2023-07-27 15:42:59'),
(143, 'Sayyedamaan966@gmail.com', 0, '369726', 0, '2023-07-27 15:43:05', '2023-07-27 15:43:05'),
(144, 'shadhinemail@gmail.com', 0, '638834', 0, '2023-07-27 16:05:24', '2023-07-27 16:05:24'),
(145, 'Admin@admi44n.com', 0, '831796', 0, '2023-07-27 16:47:00', '2023-07-27 16:47:00'),
(146, 'admin@galerikerja.com', 0, '775877', 0, '2023-07-27 16:48:54', '2023-07-27 16:48:54'),
(147, 'company@example.com', 0, '280534', 0, '2023-07-27 17:28:56', '2023-07-27 17:28:56'),
(148, 'admin123@gmail.com', 0, '500083', 0, '2023-07-27 19:09:26', '2023-07-27 19:09:26'),
(149, 'admin@nacionalcode.com', 0, '548192', 0, '2023-07-27 20:03:30', '2023-07-27 20:03:30'),
(150, 'm.hanau123456@gmail.com', 0, '300598', 0, '2023-07-27 20:38:22', '2023-07-27 20:38:22'),
(151, 'biuro@velado.pl', 0, '906687', 0, '2023-07-27 23:25:33', '2023-07-27 23:25:33'),
(152, 'bricenop696@gmail.com', 0, '437446', 0, '2023-07-27 23:25:50', '2023-07-27 23:25:50'),
(153, 'ri@gmail.com', 0, '949306', 0, '2023-07-28 00:39:55', '2023-07-28 00:39:55'),
(154, 'admin@cvvv.com', 0, '844018', 0, '2023-07-28 00:46:56', '2023-07-28 00:46:56'),
(155, 'xxxxxa@a.com', 0, '583692', 0, '2023-07-28 03:02:58', '2023-07-28 03:02:58'),
(156, 'a@gmail.com', 0, '801090', 0, '2023-07-28 04:49:54', '2023-07-28 04:49:54'),
(157, 'folk.rusric1@gmail.com', 0, '978751', 0, '2023-07-28 05:32:49', '2023-07-28 05:32:49'),
(158, 'sfsdsdf@dd.com', 0, '928361', 0, '2023-07-28 07:13:41', '2023-07-28 07:13:41'),
(159, 'cc@cc.com', 0, '426958', 0, '2023-07-28 07:15:07', '2023-07-28 07:15:07'),
(160, 'adminhbjhbj@gmail.com', 0, '547688', 0, '2023-07-28 09:18:58', '2023-07-28 09:18:58'),
(161, 'gita918@gmail.com', 0, '196915', 0, '2023-07-28 09:49:52', '2023-07-28 09:49:52'),
(162, 'thebismarcksrs@gmail.com', 0, '345082', 0, '2023-07-28 10:28:34', '2023-07-28 10:28:34'),
(163, 'xifijav898@sportrid.com', 0, '938203', 0, '2023-07-28 10:37:09', '2023-07-28 10:37:09'),
(164, 'amemail@gmail.com', 0, '706367', 0, '2023-07-28 13:51:08', '2023-07-28 13:51:08'),
(165, 'vigneshdreams33@gmail.com', 0, '668375', 0, '2023-07-28 14:10:26', '2023-07-28 14:10:26'),
(166, 'info@petrlizunov.com', 0, '716673', 0, '2023-07-28 14:15:08', '2023-07-28 14:15:08'),
(167, 'info@grupomasmedia.com', 0, '754699', 0, '2023-07-28 14:17:34', '2023-07-28 14:17:34'),
(168, 'ik@live.nl', 0, '414535', 0, '2023-07-28 17:29:35', '2023-07-28 17:29:35'),
(169, 'mostafaelashha@gmail.com', 0, '732096', 0, '2023-07-28 17:35:23', '2023-07-28 17:35:23'),
(170, 'admin@kurdfoodgzh24.com', 0, '325827', 0, '2023-07-28 17:46:48', '2023-07-28 17:46:48'),
(171, 'ggfsg', 0, '597993', 0, '2023-07-28 19:05:19', '2023-07-28 19:05:19'),
(172, 'surajxpert6@gmail.com', 0, '211029', 0, '2023-07-29 05:38:09', '2023-07-29 05:38:09'),
(173, 'surajxperggvya@gmail.com', 0, '720697', 0, '2023-07-29 05:38:49', '2023-07-29 05:38:49'),
(174, 'superggvya@gmail.com', 0, '743671', 0, '2023-07-29 05:38:59', '2023-07-29 05:38:59'),
(175, 'supergvya@gmail.com', 0, '203370', 0, '2023-07-29 05:39:31', '2023-07-29 05:39:31'),
(176, 'surajxfhfhpert6@gmail.com', 0, '335081', 0, '2023-07-29 05:40:07', '2023-07-29 05:40:07'),
(177, 'kzjsnsn@gmail.com', 0, '454589', 0, '2023-07-29 05:45:49', '2023-07-29 05:45:49'),
(178, 'tonyson.nyabote@gm.com', 0, '335922', 0, '2023-07-29 05:51:15', '2023-07-29 05:51:15'),
(179, 'aaadmin@gmail.com', 0, '736342', 0, '2023-07-29 08:19:38', '2023-07-29 08:19:38'),
(180, 'admin@ps.com', 0, '935335', 0, '2023-07-29 20:14:53', '2023-07-29 20:14:53'),
(181, 'admin@codingest.com', 0, '337453', 0, '2023-07-29 20:33:53', '2023-07-29 20:33:53'),
(182, 'vendor@botble.com', 0, '887066', 0, '2023-07-30 01:08:41', '2023-07-30 01:08:41'),
(183, 'cesiwe4836@mliok.com', 0, '741046', 0, '2023-07-30 07:23:39', '2023-07-30 07:23:39'),
(184, 'miemail@gmail.com', 0, '219127', 0, '2023-07-30 07:54:26', '2023-07-30 07:54:26'),
(185, 'emredipdere@outlook.com.tr', 0, '181841', 0, '2023-07-30 08:05:34', '2023-07-30 08:05:34'),
(186, 'jj@gmail.com', 0, '239036', 0, '2023-07-30 09:27:54', '2023-07-30 09:27:54'),
(187, 'canid27480@naymedia.com', 0, '382976', 0, '2023-07-30 09:43:47', '2023-07-30 09:43:47'),
(188, 'fdfdf', 0, '471119', 0, '2023-07-30 13:25:16', '2023-07-30 13:25:16'),
(189, 'fdfdf@sabes.com', 0, '522087', 0, '2023-07-30 13:25:29', '2023-07-30 13:25:29'),
(190, 'asdfgh@gmaikl.com', 0, '805544', 0, '2023-07-30 14:27:12', '2023-07-30 14:27:12'),
(191, 'Peaker075@gmail.com', 0, '564320', 0, '2023-07-30 14:34:44', '2023-07-30 14:34:44'),
(192, 'uu', 0, '130907', 0, '2023-07-30 16:31:01', '2023-07-30 16:31:01'),
(193, 'arfinfaha@gmail.com', 0, '642349', 0, '2023-07-30 16:31:28', '2023-07-30 16:31:28'),
(194, 'admi1n@admin.com', 0, '877141', 0, '2023-07-30 17:08:27', '2023-07-30 17:08:27'),
(195, 'bxbs', 0, '913506', 0, '2023-07-30 19:36:51', '2023-07-30 19:36:51'),
(196, 'imran.vvafr@gmail.com', 0, '277630', 0, '2023-07-30 19:36:59', '2023-07-30 19:36:59'),
(197, 'info@pixelcaption.com', 0, '654786', 0, '2023-07-30 21:11:40', '2023-07-30 21:11:40'),
(198, 'teste@gmail.com', 0, '630478', 0, '2023-07-30 21:22:30', '2023-07-30 21:22:30'),
(199, 'weplaygameengine@gmail.com', 0, '166245', 0, '2023-07-31 04:22:56', '2023-07-31 04:22:56'),
(200, 'pearlcyndy2@gmail.com', 0, '722901', 0, '2023-07-31 06:36:42', '2023-07-31 06:36:42'),
(201, 'vakkibeste@gufum.com', 0, '579041', 0, '2023-07-31 06:48:20', '2023-07-31 06:48:20'),
(202, 'test45@test.com', 0, '697811', 0, '2023-07-31 10:10:10', '2023-07-31 10:10:10'),
(203, 'lauraprado1098@outlook.com', 0, '919223', 0, '2023-07-31 12:30:21', '2023-07-31 12:30:21'),
(204, 'vghjjj@@gmail.com', 0, '861347', 0, '2023-07-31 15:50:41', '2023-07-31 15:50:41'),
(205, 'vghjjj@gmail.com', 0, '446677', 0, '2023-07-31 15:50:54', '2023-07-31 15:50:54'),
(206, 'gantsetseg@gmail.com', 0, '364130', 0, '2023-07-31 16:17:03', '2023-07-31 16:17:03'),
(207, 'ч и чичи', 0, '472831', 0, '2023-07-31 18:36:58', '2023-07-31 18:36:58'),
(208, 'jdjdjdkdk@dmdmd.com', 0, '871479', 0, '2023-07-31 19:18:19', '2023-07-31 19:18:19'),
(209, 'Henrkdjycrispin30@gmail.com', 0, '806956', 0, '2023-07-31 19:19:20', '2023-07-31 19:19:20'),
(210, 'bamd319@gmail.com', 0, '726912', 0, '2023-07-31 23:17:50', '2023-07-31 23:17:50'),
(211, 'info@flexibuy.com.ng', 0, '269374', 0, '2023-08-01 05:21:07', '2023-08-01 05:21:07'),
(212, 'eedris002@gmail.com', 0, '251322', 0, '2023-08-01 05:25:26', '2023-08-01 05:25:26'),
(213, 'hsaf@gm.co', 0, '814436', 0, '2023-08-01 12:47:58', '2023-08-01 12:47:58'),
(214, 'hfhsaf@gm.co', 0, '972507', 0, '2023-08-01 12:48:50', '2023-08-01 12:48:50'),
(215, 'info@egrocer.in', 0, '664338', 0, '2023-08-01 13:23:06', '2023-08-01 13:23:06'),
(216, '2755396@gmail.com', 0, '192873', 0, '2023-08-01 15:08:04', '2023-08-01 15:08:04'),
(217, 'fashionassb@gmail.com', 0, '279164', 0, '2023-08-01 18:52:59', '2023-08-01 18:52:59'),
(218, 'mail@mail.com', 0, '982682', 0, '2023-08-01 21:05:20', '2023-08-01 21:05:20'),
(219, 'mail@1000mail.com', 0, '676477', 0, '2023-08-01 21:05:29', '2023-08-01 21:05:29'),
(220, 'grandesinversionistas@gmail.com', 0, '118881', 0, '2023-08-02 01:09:59', '2023-08-02 01:09:59'),
(221, 'ranjanbiswas05@gmail.com', 0, '260744', 0, '2023-08-02 02:48:08', '2023-08-02 02:48:08'),
(222, 'tg@tg.fr', 0, '308623', 0, '2023-08-02 03:41:41', '2023-08-02 03:41:41'),
(223, 'juwelndp@gmail.com', 0, '927087', 0, '2023-08-02 05:19:06', '2023-08-02 05:19:06'),
(224, 'borytro8@gmail.com', 0, '483525', 0, '2023-08-02 05:55:20', '2023-08-02 05:55:20'),
(225, 'dd@gf.com', 0, '844779', 0, '2023-08-02 05:58:41', '2023-08-02 05:58:41'),
(226, 'john@admin.com', 0, '768097', 0, '2023-08-02 07:42:12', '2023-08-02 07:42:12'),
(227, 'angeondavid@gmail.com', 0, '124604', 0, '2023-08-02 11:49:06', '2023-08-02 11:49:06'),
(228, 'bakitop97@gmail.com', 0, '480141', 0, '2023-08-02 11:52:20', '2023-08-02 11:52:20'),
(229, 'seller1@shopy.com', 0, '368016', 0, '2023-08-02 14:13:08', '2023-08-02 14:13:08'),
(230, 'yes@gmail.com', 0, '699063', 0, '2023-08-02 14:55:48', '2023-08-02 14:55:48'),
(231, 'hidarshoja@gmail.com', 0, '174561', 0, '2023-08-02 15:27:26', '2023-08-02 15:27:26'),
(232, 'tousforma@gmail.com', 0, '513548', 0, '2023-08-02 18:00:37', '2023-08-02 18:00:37'),
(233, 'kfecssy944@tempmail.shop', 0, '835814', 0, '2023-08-11 22:01:19', '2023-08-11 22:01:19'),
(234, 'warrenoluwasanya@gmail.com', 0, '245583', 0, '2023-08-24 21:28:13', '2023-08-24 21:28:13'),
(235, 'admin202@gmail.com', 0, '323771', 0, '2023-08-25 08:12:32', '2023-08-25 08:12:32'),
(236, 'xbtchen23@gmail.com', 0, '108059', 0, '2023-08-25 08:12:48', '2023-08-25 08:12:48'),
(237, 'huu', 0, '469858', 0, '2023-08-26 17:31:59', '2023-08-26 17:31:59'),
(238, 'drrwt', 0, '108364', 0, '2023-08-26 22:26:17', '2023-08-26 22:26:17'),
(239, 'admin@techvill.net', 0, '932622', 0, '2023-08-27 01:01:18', '2023-08-27 01:01:18'),
(240, '1x2betlink@gmail.com', 0, '773744', 0, '2023-08-27 06:10:04', '2023-08-27 06:10:04'),
(241, 'fc', 0, '599806', 0, '2023-08-27 06:34:45', '2023-08-27 06:34:45'),
(242, 'fc@gjt.com', 0, '149493', 0, '2023-08-27 06:34:54', '2023-08-27 06:34:54'),
(243, 'cyz@gmail.com', 0, '876981', 0, '2023-08-27 08:04:14', '2023-08-27 08:04:14'),
(244, 'nnjjs@hhshs.fom', 0, '934962', 0, '2023-08-27 08:06:01', '2023-08-27 08:06:01'),
(245, 'mariuamakter2020@gmail.com', 0, '979369', 0, '2023-08-27 09:36:47', '2023-08-27 09:36:47'),
(246, 'sad', 0, '359940', 0, '2023-08-27 11:59:51', '2023-08-27 11:59:51'),
(247, 'asad@gmail.com', 0, '605092', 0, '2023-08-27 11:59:58', '2023-08-27 11:59:58'),
(248, 'google@gmail.com', 0, '910017', 0, '2023-08-27 12:00:08', '2023-08-27 12:00:08'),
(249, 'nsns@hh.com', 0, '228919', 0, '2023-08-27 12:09:44', '2023-08-27 12:09:44'),
(250, 'jadhav@gmail.com', 0, '146358', 0, '2023-08-27 13:34:51', '2023-08-27 13:34:51'),
(251, 'isharafjon@mail.ru', 0, '204102', 0, '2023-08-27 13:55:31', '2023-08-27 13:55:31'),
(252, 'ad4455min@gmail.com', 0, '209567', 0, '2023-08-27 14:11:19', '2023-08-27 14:11:19'),
(253, 'ad445min@gmail.com', 0, '175726', 0, '2023-08-27 14:11:28', '2023-08-27 14:11:28'),
(254, 'hamedmbarki17@gmail.com', 0, '307940', 0, '2023-08-27 16:54:34', '2023-08-27 16:54:34'),
(255, 'ruth1@h.com', 0, '827787', 0, '2023-08-27 17:03:11', '2023-08-27 17:03:11'),
(256, '9op89098089089', 0, '680615', 0, '2023-08-27 18:02:12', '2023-08-27 18:02:12'),
(257, 'testwe@ig.com.br', 0, '740059', 0, '2023-08-27 18:02:27', '2023-08-27 18:02:27'),
(258, 'hahougfiyu@kbsd.com', 0, '271657', 0, '2023-08-27 19:23:53', '2023-08-27 19:23:53'),
(259, 'RNEIUWBFDB@ED4JR,CO', 0, '705805', 0, '2023-08-28 04:29:18', '2023-08-28 04:29:18'),
(260, 'RNEIUWBFDB@ED4J.,CO', 0, '910530', 0, '2023-08-28 04:29:22', '2023-08-28 04:29:22'),
(261, 'RNEIUWBFDB@ED4.CO', 0, '344889', 0, '2023-08-28 04:29:26', '2023-08-28 04:29:26'),
(262, 'ALI@frtrd.co', 0, '457390', 0, '2023-08-28 04:30:01', '2023-08-28 04:30:01'),
(263, 'bondoguy16@gmail.com', 0, '946737', 0, '2023-08-28 06:21:56', '2023-08-28 06:21:56'),
(264, 'admin@themetags.com', 0, '362004', 0, '2023-08-28 07:08:10', '2023-08-28 07:08:10'),
(265, 'servernoga@gmail.com', 0, '506778', 0, '2023-08-28 07:11:53', '2023-08-28 07:11:53'),
(266, 'contact@lucian.host', 0, '475810', 0, '2023-08-28 07:34:25', '2023-08-28 07:34:25'),
(267, 'gairikumar9@gmail.com', 0, '931737', 0, '2023-08-28 07:36:10', '2023-08-28 07:36:10'),
(268, 'matrixmotorotomotiv@gmail.com', 0, '584788', 0, '2023-08-28 08:22:59', '2023-08-28 08:22:59'),
(269, 'admin12@gmail.com', 0, '205362', 0, '2023-08-28 09:08:56', '2023-08-28 09:08:56'),
(270, 'joebochi@gmail.com', 0, '522563', 0, '2023-08-28 09:24:02', '2023-08-28 09:24:02'),
(271, 'contact@vercel.app', 0, '799360', 0, '2023-08-28 10:09:03', '2023-08-28 10:09:03'),
(272, 'support@vercel.app', 0, '771548', 0, '2023-08-28 10:09:22', '2023-08-28 10:09:22'),
(273, 'sgsggsd', 0, '757076', 0, '2023-08-28 11:14:57', '2023-08-28 11:14:57'),
(274, 'sgsggsd@gdgd.com', 0, '910149', 0, '2023-08-28 11:15:09', '2023-08-28 11:15:09'),
(275, 'ahmet@gmail.com', 0, '652416', 0, '2023-08-28 11:25:31', '2023-08-28 11:25:31'),
(276, 'gustidjojo@gmail.com', 0, '545278', 0, '2023-08-28 13:32:27', '2023-08-28 13:32:27'),
(277, 'demo@sadek.com', 0, '206932', 0, '2023-08-28 13:48:08', '2023-08-28 13:48:08'),
(278, 'admin@admissssn.com', 0, '471693', 0, '2023-08-28 15:03:40', '2023-08-28 15:03:40'),
(279, 'manager@app.com', 0, '544436', 0, '2023-08-28 15:16:41', '2023-08-28 15:16:41'),
(280, 'sadadasd', 0, '522798', 0, '2023-08-28 15:35:03', '2023-08-28 15:35:03'),
(281, 'lojaabjoy@gmail.com', 0, '156890', 0, '2023-08-28 15:35:11', '2023-08-28 15:35:11'),
(282, 'sjdhdg', 0, '346636', 0, '2023-08-28 21:41:43', '2023-08-28 21:41:43'),
(283, 'sjdhdg@sr.com', 0, '903752', 0, '2023-08-28 21:41:52', '2023-08-28 21:41:52'),
(284, 'narendra@aladinntech.in', 0, '739136', 0, '2023-08-29 00:47:39', '2023-08-29 00:47:39'),
(285, 'khushal@gmail.com', 0, '902829', 0, '2023-08-29 03:36:01', '2023-08-29 03:36:01'),
(286, 'khurfshal@gmail.com', 0, '365932', 0, '2023-08-29 03:36:46', '2023-08-29 03:36:46'),
(287, 'fojig85256@xgh6.com', 0, '597707', 0, '2023-08-29 03:37:29', '2023-08-29 03:37:29'),
(288, 'rita.novita027@gmail.com', 0, '205422', 0, '2023-08-29 07:04:32', '2023-08-29 07:04:32'),
(289, 'baxtiyorismatilloyev@gmail.com', 0, '769131', 0, '2023-08-29 07:20:05', '2023-08-29 07:20:05'),
(290, 'baxti@gmail.com', 0, '419282', 0, '2023-08-29 07:21:49', '2023-08-29 07:21:49'),
(291, '123@none.com', 0, '264511', 0, '2023-08-29 07:37:24', '2023-08-29 07:37:24'),
(292, 'coolpartner2004@hotmail.com', 0, '895436', 0, '2023-08-29 08:13:53', '2023-08-29 08:13:53'),
(293, 'demo@demo.com', 0, '366600', 0, '2023-08-29 08:29:21', '2023-08-29 08:29:21'),
(294, 'adityagupta.connect@gmail.com', 0, '659421', 0, '2023-08-29 10:35:46', '2023-08-29 10:35:46'),
(295, 'ygrhr', 0, '187655', 0, '2023-08-29 10:38:35', '2023-08-29 10:38:35'),
(296, 'sajalasfakrobin@gmail.com', 0, '414325', 0, '2023-08-29 11:50:16', '2023-08-29 11:50:16'),
(297, 'test11@gmail.com', 0, '475689', 0, '2023-08-29 12:43:43', '2023-08-29 12:43:43'),
(298, 'rezwan.itm,n,n vn@gmail.com', 0, '777164', 0, '2023-08-29 15:42:04', '2023-08-29 15:42:04'),
(299, 'rezwan.itmnnvn@gmail.com', 0, '671786', 0, '2023-08-29 15:42:16', '2023-08-29 15:42:16'),
(300, 'randomailacco@gmail.com', 0, '249266', 0, '2023-08-29 16:04:28', '2023-08-29 16:04:28'),
(301, 'prcarloshenrique4321@gmail.com', 0, '328810', 0, '2023-08-29 16:37:34', '2023-08-29 16:37:34'),
(302, 'bwpijeiyty@valanides.com', 0, '537144', 0, '2023-08-29 17:23:13', '2023-08-29 17:23:13'),
(303, 'marouanlaziricc@gmail.com', 0, '695842', 0, '2023-08-29 17:24:46', '2023-08-29 17:24:46'),
(304, 'marouanlaziri@gmail.com', 0, '939529', 0, '2023-08-29 17:25:17', '2023-08-29 17:25:17'),
(305, 'shopo', 0, '770916', 0, '2023-08-29 17:28:21', '2023-08-29 17:28:21'),
(306, 'noe.perales@nrm.com.mx', 0, '611934', 0, '2023-08-29 18:58:43', '2023-08-29 18:58:43'),
(307, 'sxsdfsdf@sdfwedf.com', 0, '738879', 0, '2023-08-29 20:50:38', '2023-08-29 20:50:38'),
(308, '01730548930@fgh.com', 0, '923542', 0, '2023-08-30 00:59:49', '2023-08-30 00:59:49'),
(309, 'admin@demo.com', 0, '899724', 0, '2023-08-30 01:25:22', '2023-08-30 01:25:22'),
(310, 'ttaxtel@gmail.com', 0, '612598', 0, '2023-08-30 01:25:42', '2023-08-30 01:25:42'),
(311, 'iqnetingoficial@gmail.com', 0, '111325', 0, '2023-08-30 01:26:28', '2023-08-30 01:26:28'),
(312, 'h', 0, '538189', 0, '2023-08-30 05:04:33', '2023-08-30 05:04:33'),
(313, 'hjs@sheu.com', 0, '787607', 0, '2023-08-30 05:04:44', '2023-08-30 05:04:44'),
(314, 'support@dmarvid.com', 0, '586795', 0, '2023-08-30 05:28:30', '2023-08-30 05:28:30'),
(315, 'pre@admin.com', 0, '962486', 0, '2023-08-30 05:32:07', '2023-08-30 05:32:07'),
(316, 'gdgs', 0, '284751', 0, '2023-08-30 06:39:45', '2023-08-30 06:39:45'),
(317, 'gdgs@gsgs.xhd', 0, '267900', 0, '2023-08-30 06:39:54', '2023-08-30 06:39:54'),
(318, 'eu@gmail.com', 0, '211586', 0, '2023-08-30 15:26:51', '2023-08-30 15:26:51'),
(319, 'cahitmikayilov@gmail.com', 0, '373897', 0, '2023-08-30 16:02:40', '2023-08-30 16:02:40'),
(320, 'hdhe', 0, '522098', 0, '2023-08-30 16:30:01', '2023-08-30 16:30:01'),
(321, 'graf0@gmail.com', 0, '814971', 0, '2023-08-30 16:30:45', '2023-08-30 16:30:45'),
(322, 'anibev3@gmail.com', 0, '869460', 0, '2023-08-30 20:05:25', '2023-08-30 20:05:25'),
(323, 'nekec47320@gienig.com', 0, '136931', 0, '2023-08-31 01:36:32', '2023-08-31 01:36:32'),
(324, 'waneni8971@wlmycn.com', 0, '815042', 0, '2023-08-31 01:37:23', '2023-08-31 01:37:23'),
(325, 'super@happ.com', 0, '430562', 0, '2023-08-31 04:17:13', '2023-08-31 04:17:13'),
(326, 'ph_seylfghg@hotmail.com', 0, '990531', 0, '2023-08-31 06:47:09', '2023-08-31 06:47:09'),
(327, 'narensdwdra@aladinntech.in', 0, '198016', 0, '2023-08-31 09:20:46', '2023-08-31 09:20:46'),
(328, 'rudrakantabganerjee4@gmail.com', 0, '824500', 0, '2023-08-31 09:32:19', '2023-08-31 09:32:19'),
(329, 'admin@hms.com', 0, '301205', 0, '2023-08-31 09:34:19', '2023-08-31 09:34:19'),
(330, 'yeueheje', 0, '965619', 0, '2023-08-31 10:41:58', '2023-08-31 10:41:58'),
(331, 'yeueheje@ggs.com', 0, '853142', 0, '2023-08-31 10:42:06', '2023-08-31 10:42:06'),
(332, 'nsjsksks@shjsjskskskeekjejejejejejejjejejejejejjjjjjjjhejejejjejehdjejdjejejejejejejejedjdnjddj.com', 0, '197823', 0, '2023-08-31 10:42:51', '2023-08-31 10:42:51'),
(333, 'gggg', 0, '126833', 0, '2023-08-31 17:03:18', '2023-08-31 17:03:18'),
(334, 'gggg@gmsil.com', 0, '594046', 0, '2023-08-31 17:03:29', '2023-08-31 17:03:29'),
(335, 'kopidaunbuluh@gmail.com', 0, '243743', 0, '2023-08-31 17:18:29', '2023-08-31 17:18:29'),
(336, 'djabereddinechabou@gmail.com', 0, '898219', 0, '2023-08-31 20:58:40', '2023-08-31 20:58:40'),
(337, 'affdmin@demo.com', 0, '298877', 0, '2023-09-01 06:21:21', '2023-09-01 06:21:21'),
(338, 'anatole@admin.com', 0, '964812', 0, '2023-09-01 06:41:28', '2023-09-01 06:41:28'),
(339, 'vinenassara@gmail.com', 0, '206551', 0, '2023-09-01 06:42:33', '2023-09-01 06:42:33'),
(340, 'adminsadsd@admin.com', 0, '439233', 0, '2023-09-01 07:46:00', '2023-09-01 07:46:00'),
(341, 'costumer@example.com', 0, '771932', 0, '2023-09-01 08:45:05', '2023-09-01 08:45:05'),
(342, 'jgarciacb@gmail.com', 0, '284757', 0, '2023-09-01 09:25:14', '2023-09-01 09:25:14'),
(343, 'j', 0, '237239', 0, '2023-09-01 10:14:15', '2023-09-01 10:14:15'),
(344, 'gg@gmail.com', 0, '343802', 0, '2023-09-01 10:32:40', '2023-09-01 10:32:40'),
(345, 'EMAIL@EMAIL.COM', 0, '232664', 0, '2023-09-01 13:40:05', '2023-09-01 13:40:05'),
(346, 'usdffsdfdfser@gmail.com', 0, '684326', 0, '2023-09-01 13:44:27', '2023-09-01 13:44:27'),
(347, 'zolastudio1@gmail.com', 0, '397566', 0, '2023-09-01 17:03:30', '2023-09-01 17:03:30'),
(348, 'Checman@mail.ri', 0, '725829', 0, '2023-09-01 17:59:08', '2023-09-01 17:59:08'),
(349, 'khajafrln.bd@gmail.com', 0, '601705', 0, '2023-09-01 18:16:36', '2023-09-01 18:16:36'),
(350, 'danicraw982@gmail.com', 0, '582949', 0, '2023-09-01 19:09:50', '2023-09-01 19:09:50'),
(351, 'mec5it157@gmail.com', 0, '311039', 0, '2023-09-01 19:34:29', '2023-09-01 19:34:29'),
(352, 'qdr@df.com', 0, '841103', 0, '2023-09-02 07:05:07', '2023-09-02 07:05:07'),
(353, 'sqdvd@kjkj.com', 0, '451370', 0, '2023-09-02 07:07:03', '2023-09-02 07:07:03'),
(354, 'ncclimited8@gmail.com', 0, '605994', 0, '2023-09-02 09:33:03', '2023-09-02 09:33:03'),
(355, 'uuuuu@gmail.com', 0, '675430', 0, '2023-09-02 09:42:16', '2023-09-02 09:42:16'),
(356, 'hmm@yopmail.com', 0, '753965', 0, '2023-09-02 09:46:27', '2023-09-02 09:46:27'),
(357, 'uhwoskdym@yopmail.com', 0, '697229', 0, '2023-09-02 09:47:01', '2023-09-02 09:47:01'),
(358, 'sample@gmail.co', 0, '588844', 0, '2023-09-02 09:56:45', '2023-09-02 09:56:45'),
(359, 'shayankhaneee52@gmail.com', 0, '430216', 0, '2023-09-02 10:53:37', '2023-09-02 10:53:37'),
(360, 'admin@example.org', 0, '161658', 0, '2023-09-02 11:47:34', '2023-09-02 11:47:34'),
(361, 'tbaissou@gmail.com', 0, '147706', 0, '2023-09-02 12:15:08', '2023-09-02 12:15:08'),
(362, 'Shivkantsaini80@gmail.com', 0, '510251', 0, '2023-09-02 13:26:58', '2023-09-02 13:26:58'),
(363, 'ejemplo@gmail.com', 0, '631726', 0, '2023-09-02 13:50:28', '2023-09-02 13:50:28'),
(364, 'test1234@happ.com', 0, '112120', 0, '2023-09-02 19:14:48', '2023-09-02 19:14:48'),
(365, 'asgifzaman@gmail.com', 0, '388412', 0, '2023-09-06 12:25:39', '2023-09-06 12:25:39'),
(366, 'karthiikeyansekar@gmail.com', 0, '291393', 0, '2023-09-12 04:09:39', '2023-09-12 04:09:39'),
(367, 'lavi9921@gmail.com', 0, '403124', 0, '2023-09-15 15:06:18', '2023-09-15 15:06:18'),
(368, 'Admin@bitmoon.tv', 0, '188188', 0, '2023-09-18 00:09:57', '2023-09-18 00:09:57'),
(369, 'info@nassydigital.com', 0, '542541', 0, '2023-09-23 14:44:01', '2023-09-23 14:44:01'),
(370, 'cutsidi@123231.com', 0, '242284', 0, '2023-09-25 22:30:09', '2023-09-25 22:30:09'),
(371, 'fandapakistan786@gmail.com', 0, '687703', 0, '2023-09-26 04:39:27', '2023-09-26 04:39:27'),
(372, 'fhfghfgh@fghf.com', 0, '383734', 0, '2023-09-26 07:01:26', '2023-09-26 07:01:26'),
(373, 'superadmin@productify.com', 0, '584962', 0, '2023-09-26 07:39:11', '2023-09-26 07:39:11'),
(374, 'kjhkkh@tftr.com', 0, '196126', 0, '2023-09-26 11:49:39', '2023-09-26 11:49:39'),
(375, 'asdasd9@gmail.com', 0, '486412', 0, '2023-09-26 12:22:28', '2023-09-26 12:22:28'),
(376, 'admin@streetfoodwala.in', 0, '712142', 0, '2023-09-26 14:29:29', '2023-09-26 14:29:29'),
(377, 'asd', 0, '966743', 0, '2023-09-26 22:05:33', '2023-09-26 22:05:33'),
(378, 'asd@asd.c', 0, '464314', 0, '2023-09-26 22:05:37', '2023-09-26 22:05:37'),
(379, 'acrivibrasil@gmail.com', 0, '283900', 0, '2023-09-27 03:19:02', '2023-09-27 03:19:02'),
(380, 'sjsj', 0, '131897', 0, '2023-09-27 04:55:48', '2023-09-27 04:55:48'),
(381, 'schsms.@gmaik.com', 0, '656897', 0, '2023-09-27 04:56:02', '2023-09-27 04:56:02'),
(382, 'youth@gmail.com', 0, '841968', 0, '2023-09-27 04:56:24', '2023-09-27 04:56:24'),
(383, 'jralam786@gmail.com', 0, '779474', 0, '2023-09-27 06:26:46', '2023-09-27 06:26:46'),
(384, 'agent@gmail.com', 0, '779823', 0, '2023-09-27 07:42:05', '2023-09-27 07:42:05'),
(385, 'adssds', 0, '221021', 0, '2023-09-27 08:44:53', '2023-09-27 08:44:53'),
(386, 'adssds@gmail.com', 0, '119044', 0, '2023-09-27 08:44:58', '2023-09-27 08:44:58'),
(387, 'yenexel762@bookspre.com', 0, '228799', 0, '2023-09-27 08:48:00', '2023-09-27 08:48:00'),
(388, 'tst', 0, '102961', 0, '2023-09-27 10:43:42', '2023-09-27 10:43:42'),
(389, 'tst@gmail.com', 0, '119532', 0, '2023-09-27 10:44:01', '2023-09-27 10:44:01'),
(390, 'evp@isixfamilyoffice.com', 0, '979315', 0, '2023-09-27 19:55:30', '2023-09-27 19:55:30'),
(391, 'vvv', 0, '425510', 0, '2023-09-28 03:16:47', '2023-09-28 03:16:47'),
(392, 'admin1@gmail.com', 0, '945361', 0, '2023-09-28 04:14:54', '2023-09-28 04:14:54'),
(393, 'riyadvai2112@gmail.com', 0, '905503', 0, '2023-09-28 04:46:30', '2023-09-28 04:46:30'),
(394, 'mm@mm.com', 0, '968816', 0, '2023-09-28 08:19:34', '2023-09-28 08:19:34'),
(395, 'ddd@44.gf', 0, '387246', 0, '2023-09-28 21:16:36', '2023-09-28 21:16:36'),
(396, '123fgh@gmail.com', 0, '664168', 0, '2023-09-29 04:53:25', '2023-09-29 04:53:25'),
(397, 'abcd@gmail.com', 0, '881066', 0, '2023-09-29 05:07:16', '2023-09-29 05:07:16'),
(398, 'xyz@gmail.com', 0, '510573', 0, '2023-09-29 05:07:28', '2023-09-29 05:07:28'),
(399, 'subhasreepsahoo@gmail.com', 0, '338786', 0, '2023-09-29 05:07:49', '2023-09-29 05:07:49'),
(400, 'sadada@gmail.com', 0, '587979', 0, '2023-09-29 06:48:59', '2023-09-29 06:48:59'),
(401, 'chemseddineregainia@gmail.com', 0, '891648', 0, '2023-09-29 07:31:02', '2023-09-29 07:31:02'),
(402, 'peueot@gdos.com', 0, '621803', 0, '2023-09-29 07:31:35', '2023-09-29 07:31:35'),
(403, 'hi', 0, '422087', 0, '2023-09-29 08:07:11', '2023-09-29 08:07:11'),
(404, 'hi@gmail.com', 0, '716071', 0, '2023-09-29 08:07:21', '2023-09-29 08:07:21'),
(405, 'hi@gmail.com', 0, '648218', 0, '2023-09-29 08:07:21', '2023-09-29 08:07:21'),
(406, 'paul@gmal.com', 0, '111196', 0, '2023-09-29 13:32:17', '2023-09-29 13:32:17'),
(407, 'admin0@gmail.com', 0, '722512', 0, '2023-09-29 17:06:46', '2023-09-29 17:06:46'),
(408, 'strinfos237@gmail.com', 0, '607044', 0, '2023-09-29 17:07:09', '2023-09-29 17:07:09'),
(409, 'ddddvcvd@gmail.com', 0, '823916', 0, '2023-09-30 05:28:32', '2023-09-30 05:28:32'),
(410, 'DAYA@GMAIL.COM', 0, '960781', 0, '2023-09-30 06:50:07', '2023-09-30 06:50:07'),
(411, 'abhihost24@gmail.com', 0, '681507', 0, '2023-09-30 07:58:29', '2023-09-30 07:58:29'),
(412, 'vhvhcc@gmail.com', 0, '348715', 0, '2023-09-30 11:13:28', '2023-09-30 11:13:28'),
(413, 'stephe.test2@gmail.com', 0, '305573', 0, '2023-09-30 12:51:35', '2023-09-30 12:51:35'),
(414, 'stephe.test4@gmail.com', 0, '412196', 0, '2023-09-30 12:52:17', '2023-09-30 12:52:17'),
(415, 'ibrahem.hamad@web.de', 0, '990801', 0, '2023-09-30 19:41:57', '2023-09-30 19:41:57'),
(416, 'cyrille.bidongo@gmail.com', 0, '574325', 0, '2023-10-01 01:14:39', '2023-10-01 01:14:39'),
(417, 'asdasasdasd@gmail.com', 0, '921341', 0, '2023-10-01 04:23:43', '2023-10-01 04:23:43'),
(418, 'r5x@hotmail.fr', 0, '641920', 0, '2023-10-01 12:58:09', '2023-10-01 12:58:09'),
(419, 'bamba@gmail.com', 0, '529307', 0, '2023-10-01 20:17:31', '2023-10-01 20:17:31'),
(420, 'tttt@ggjv.com.com', 0, '385449', 0, '2023-10-02 01:55:52', '2023-10-02 01:55:52'),
(421, 'as', 0, '327931', 0, '2023-10-02 03:34:45', '2023-10-02 03:34:45'),
(422, 'ham@ya.com', 0, '975592', 0, '2023-10-02 03:35:40', '2023-10-02 03:35:40'),
(423, 'https://codecanyon.net/item/shopo-multivendor-ecommerce-flutter-app/39965496', 0, '312740', 0, '2023-10-02 06:18:18', '2023-10-02 06:18:18'),
(424, 'abd@yahoo.com', 0, '651200', 0, '2023-10-02 06:18:58', '2023-10-02 06:18:58'),
(425, 'master@masterji.vip', 0, '866112', 0, '2023-10-02 06:48:43', '2023-10-02 06:48:43'),
(426, 'recepozay95@gmail.com', 0, '169195', 0, '2023-10-02 06:51:51', '2023-10-02 06:51:51'),
(427, 'test.restaurant@gmail.com', 0, '964193', 0, '2023-10-02 06:56:48', '2023-10-02 06:56:48'),
(428, 'gdy@bhu', 0, '138335', 0, '2023-10-02 10:31:17', '2023-10-02 10:31:17'),
(429, 'gdy@bhu.com', 0, '921674', 0, '2023-10-02 10:31:27', '2023-10-02 10:31:27'),
(430, 'vbjvbn', 0, '402976', 0, '2023-10-02 12:11:33', '2023-10-02 12:11:33'),
(431, 'vbjvbn@gg.com', 0, '105428', 0, '2023-10-02 12:11:50', '2023-10-02 12:11:50'),
(432, 'fuckoff@gmail.com', 0, '456605', 0, '2023-10-02 13:58:27', '2023-10-02 13:58:27'),
(433, 'tesd@gmail.com', 0, '532618', 0, '2023-10-02 14:09:52', '2023-10-02 14:09:52'),
(434, 'admin@exampl8e.com', 0, '970324', 0, '2023-10-02 14:25:55', '2023-10-02 14:25:55'),
(435, 'vikastanwar.in@gmail.com', 0, '573997', 0, '2023-10-02 14:41:06', '2023-10-02 14:41:06'),
(436, 'asdasda@asd.asd', 0, '944314', 0, '2023-10-02 15:29:08', '2023-10-02 15:29:08'),
(437, 'sales@sensfashion.kz', 0, '623554', 0, '2023-10-03 00:59:42', '2023-10-03 00:59:42'),
(438, 'footballradioindia1@gmail.com', 0, '279305', 0, '2023-10-03 01:18:50', '2023-10-03 01:18:50'),
(439, '9605313028', 0, '565390', 0, '2023-10-03 01:54:50', '2023-10-03 01:54:50'),
(440, 'jhhvhvhv@gf.bugu', 0, '711024', 0, '2023-10-03 07:19:37', '2023-10-03 07:19:37'),
(441, 'ambalalingaswamy@gmail.com', 0, '494005', 0, '2023-10-03 07:49:51', '2023-10-03 07:49:51'),
(442, 'gevalencia16@misena.edu.co', 0, '620359', 0, '2023-10-03 10:07:56', '2023-10-03 10:07:56'),
(443, 'bayramay5253@gmail.com', 0, '337238', 0, '2023-10-03 17:12:21', '2023-10-03 17:12:21'),
(444, 'fgh@g.fr', 0, '342352', 0, '2023-10-03 19:58:46', '2023-10-03 19:58:46'),
(445, 'Mo.saidsemary@gmail.com', 0, '712199', 0, '2023-10-09 16:26:56', '2023-10-09 16:26:56'),
(446, 'deep28032002@gmail.com', 0, '363814', 0, '2023-10-18 03:39:44', '2023-10-18 03:39:44'),
(447, 'admin@foodie.com', 0, '945081', 0, '2023-10-18 13:26:13', '2023-10-18 13:26:13'),
(448, 'info@sgmedia.nl', 0, '983238', 0, '2023-10-26 19:23:06', '2023-10-26 19:23:06'),
(449, 'gopi@gmail.com', 0, '925977', 0, '2023-10-27 03:41:04', '2023-10-27 03:41:04'),
(450, 'maachuda@zhsh.com', 0, '500380', 0, '2023-10-27 03:46:40', '2023-10-27 03:46:40'),
(451, 'gloireilunga703@gmail.com', 0, '286901', 0, '2023-10-27 05:09:11', '2023-10-27 05:09:11'),
(452, 'test8@gmail.com', 0, '238191', 0, '2023-10-27 08:28:49', '2023-10-27 08:28:49'),
(453, 'testabdul8@gmail.com', 0, '877675', 0, '2023-10-27 08:29:13', '2023-10-27 08:29:13'),
(454, 'zerozer494@gmail.com', 0, '429292', 0, '2023-10-27 10:54:35', '2023-10-27 10:54:35'),
(455, 'g@gmail.com', 0, '988293', 0, '2023-10-27 11:42:06', '2023-10-27 11:42:06'),
(456, 'gtf@gmail.com', 0, '989751', 0, '2023-10-27 11:42:44', '2023-10-27 11:42:44'),
(457, 'ahmeedsaiedd@gmail', 0, '634376', 0, '2023-10-27 12:55:02', '2023-10-27 12:55:02'),
(458, 'abosaied224@gmail', 0, '378465', 0, '2023-10-27 12:55:17', '2023-10-27 12:55:17'),
(459, 'abosaied224@gmail.com', 0, '825444', 0, '2023-10-27 12:55:26', '2023-10-27 12:55:26'),
(460, 'sdfg@gmail.com', 0, '130658', 0, '2023-10-27 14:15:49', '2023-10-27 14:15:49'),
(461, 'hhbh', 0, '529009', 0, '2023-10-27 15:17:26', '2023-10-27 15:17:26'),
(462, 'ium005821@gmail.cm', 0, '228016', 0, '2023-10-27 15:18:23', '2023-10-27 15:18:23'),
(463, 'dev@oke.kk', 0, '436196', 0, '2023-10-27 17:18:19', '2023-10-27 17:18:19'),
(464, 'dev@oke.kkkk', 0, '285039', 0, '2023-10-27 17:18:30', '2023-10-27 17:18:30'),
(465, 'h@', 0, '433327', 0, '2023-10-28 01:35:20', '2023-10-28 01:35:20'),
(466, 'h@gmail.com', 0, '200722', 0, '2023-10-28 01:35:24', '2023-10-28 01:35:24'),
(467, 'mahir.koc@gmail.com', 0, '613231', 0, '2023-10-28 02:03:58', '2023-10-28 02:03:58'),
(468, 'jkjjk@kdf.com', 0, '105167', 0, '2023-10-28 04:20:08', '2023-10-28 04:20:08'),
(469, 'darcin.davis@gmail.com', 0, '446737', 0, '2023-10-28 04:46:17', '2023-10-28 04:46:17'),
(470, 'siamahmedm601@gmail.com', 0, '547583', 0, '2023-10-28 05:53:06', '2023-10-28 05:53:06'),
(471, 'easyshop6201@gmail.com', 0, '423199', 0, '2023-10-28 06:04:54', '2023-10-28 06:04:54'),
(472, '@gmail.com', 0, '600517', 0, '2023-10-28 09:09:16', '2023-10-28 09:09:16'),
(473, 'asss@gmail.com', 0, '699156', 0, '2023-10-28 09:09:25', '2023-10-28 09:09:25'),
(474, 'ju', 0, '303877', 0, '2023-10-28 16:03:48', '2023-10-28 16:03:48'),
(475, 'ju@ gmail.con', 0, '909669', 0, '2023-10-28 16:03:57', '2023-10-28 16:03:57'),
(476, 'lolocurte27@goatmail.uk', 0, '360716', 0, '2023-10-28 21:28:47', '2023-10-28 21:28:47'),
(477, 'io@tin.it', 0, '114654', 0, '2023-10-29 06:51:54', '2023-10-29 06:51:54'),
(478, 'y.moustahli@gmail.com', 0, '579965', 0, '2023-10-29 07:03:49', '2023-10-29 07:03:49'),
(479, 'gmail@gmail.com', 0, '412632', 0, '2023-10-29 07:22:11', '2023-10-29 07:22:11'),
(480, 'testtttt@gmail.com', 0, '755420', 0, '2023-10-29 07:52:04', '2023-10-29 07:52:04'),
(481, 'testtttthhhjjkkh@gmail.com', 0, '807247', 0, '2023-10-29 07:52:16', '2023-10-29 07:52:16'),
(482, 'g', 0, '852000', 0, '2023-10-29 08:43:24', '2023-10-29 08:43:24'),
(483, 'alexandererojas520@gmail.com', 0, '877317', 0, '2023-10-29 08:43:31', '2023-10-29 08:43:31'),
(484, 'ririiriririri.ssg', 0, '693476', 0, '2023-10-29 09:16:12', '2023-10-29 09:16:12'),
(485, 'info.piyush1974@gmail.com', 0, '529371', 0, '2023-10-29 14:15:53', '2023-10-29 14:15:53'),
(486, 'jean.osee03@gmail.com', 0, '407128', 0, '2023-10-29 15:28:01', '2023-10-29 15:28:01'),
(487, 'hvhf@gmail.com', 0, '619866', 0, '2023-10-29 15:48:30', '2023-10-29 15:48:30'),
(488, 'uyrett@hmnv.nv', 0, '941459', 0, '2023-10-29 16:02:07', '2023-10-29 16:02:07'),
(489, 'gfff', 0, '150904', 0, '2023-10-30 05:10:10', '2023-10-30 05:10:10'),
(490, 'gfff@gmail.com', 0, '283096', 0, '2023-10-30 05:10:23', '2023-10-30 05:10:23'),
(491, 'rajendramehta.coach@gmail.com', 0, '678191', 0, '2023-10-30 06:14:44', '2023-10-30 06:14:44'),
(492, 't@gmail.com', 0, '126127', 0, '2023-10-30 14:05:18', '2023-10-30 14:05:18'),
(493, 'desirehbd@gmail.com', 0, '196933', 0, '2023-10-30 15:06:02', '2023-10-30 15:06:02'),
(494, 'y.moutahli@gmail.com', 0, '712580', 0, '2023-10-30 17:53:25', '2023-10-30 17:53:25'),
(495, 'skapon1999@gmail.com', 0, '821575', 0, '2023-10-30 18:30:00', '2023-10-30 18:30:00'),
(496, 'skrakibul29199@gmail.com', 0, '778850', 0, '2023-10-30 18:31:30', '2023-10-30 18:31:30'),
(497, 'seydouhxh@icloud.com', 0, '979464', 0, '2023-10-30 18:31:36', '2023-10-30 18:31:36'),
(498, 'skrajibulislam215@gmail.com', 0, '500673', 0, '2023-10-30 18:33:58', '2023-10-30 18:33:58'),
(499, 'staff@example.com', 0, '584701', 0, '2023-10-30 19:14:22', '2023-10-30 19:14:22'),
(500, 'admin@demyyyo.com', 0, '288770', 0, '2023-10-30 23:09:30', '2023-10-30 23:09:30'),
(501, 'hbhh@gmail.com', 0, '795924', 0, '2023-10-30 23:51:41', '2023-10-30 23:51:41'),
(502, 'ruben884@gmail.com', 0, '228663', 0, '2023-10-31 00:42:00', '2023-10-31 00:42:00'),
(503, 'digitalmaldives2@gmail.com', 0, '336335', 0, '2023-10-31 01:17:06', '2023-10-31 01:17:06'),
(504, 'NN@NN.com', 0, '588427', 0, '2023-10-31 01:23:01', '2023-10-31 01:23:01'),
(505, 'nikitajmk555@gmail.com', 0, '292058', 0, '2023-10-31 03:31:00', '2023-10-31 03:31:00'),
(506, 'murat.sancaktar@gmail.com', 0, '214353', 0, '2023-10-31 06:54:18', '2023-10-31 06:54:18'),
(507, 'enochadeoye84@gmail.com', 0, '141134', 0, '2023-10-31 08:26:48', '2023-10-31 08:26:48'),
(508, 'tohamim7777@gmail.com', 0, '695926', 0, '2023-10-31 08:38:41', '2023-10-31 08:38:41'),
(509, 'victory_123@icloud.com', 0, '357712', 0, '2023-10-31 08:41:16', '2023-10-31 08:41:16'),
(510, 'apulinli123@gmail.com', 0, '326066', 0, '2023-10-31 09:01:49', '2023-10-31 09:01:49'),
(511, 'asdsd@sfd.com', 0, '851300', 0, '2023-10-31 15:01:48', '2023-10-31 15:01:48'),
(512, 'adam@phpzag.com', 0, '844228', 0, '2023-10-31 18:47:51', '2023-10-31 18:47:51'),
(513, 'adama@phpzag.com', 0, '479036', 0, '2023-10-31 18:48:01', '2023-10-31 18:48:01'),
(514, 'adamafrzetgdfg@phpzag.com', 0, '907981', 0, '2023-10-31 18:48:08', '2023-10-31 18:48:08'),
(515, 'adamafrzetggdfg@phpzag.com', 0, '146056', 0, '2023-10-31 18:48:30', '2023-10-31 18:48:30'),
(516, 'aasdf@fdgv.com', 0, '161970', 0, '2023-10-31 21:27:14', '2023-10-31 21:27:14'),
(517, 'dsdsdsdsd', 0, '985266', 0, '2023-11-01 02:55:12', '2023-11-01 02:55:12'),
(518, 'admien@gmail.com', 0, '174842', 0, '2023-11-01 04:39:16', '2023-11-01 04:39:16'),
(519, 'directdroma@gmail.com', 0, '520719', 0, '2023-11-01 06:55:18', '2023-11-01 06:55:18'),
(520, 'test2@gmail.com', 0, '298580', 0, '2023-11-01 08:07:36', '2023-11-01 08:07:36'),
(521, 'rafiqooulislsuvfsggdo@gmail.com', 0, '297673', 0, '2023-11-01 08:08:45', '2023-11-01 08:08:45'),
(522, 'marmar@odoo.com', 0, '601958', 0, '2023-11-01 11:16:25', '2023-11-01 11:16:25'),
(523, 'crfffffkfkf@gmail.com', 0, '156341', 0, '2023-11-01 11:48:50', '2023-11-01 11:48:50'),
(524, 'hjhjjj', 0, '920880', 0, '2023-11-01 14:37:21', '2023-11-01 14:37:21'),
(525, 'hjhjjj@gmail.com', 0, '591288', 0, '2023-11-01 14:37:31', '2023-11-01 14:37:31'),
(526, 'admin@email.com', 0, '726510', 0, '2023-11-01 16:36:43', '2023-11-01 16:36:43'),
(527, 'admin@email.comm', 0, '763008', 0, '2023-11-01 16:36:57', '2023-11-01 16:36:57'),
(528, 'emrereyisyt@gmail.com', 0, '800208', 0, '2023-11-01 16:37:50', '2023-11-01 16:37:50'),
(529, 'kerouazhocine@gmail.com', 0, '969260', 0, '2023-11-01 19:53:05', '2023-11-01 19:53:05'),
(530, 'bjh@gmail.com', 0, '567082', 0, '2023-11-02 03:40:28', '2023-11-02 03:40:28'),
(531, 'priyanshu@hostvilla.net', 0, '472470', 0, '2023-11-02 04:15:39', '2023-11-02 04:15:39'),
(532, 'wjehghgr@BABA.COM', 0, '142821', 0, '2023-11-02 11:36:54', '2023-11-02 11:36:54'),
(533, 'INFO@GANDU.COM', 0, '381070', 0, '2023-11-02 11:37:12', '2023-11-02 11:37:12'),
(534, 'seyma@seymakburo.com', 0, '618178', 0, '2023-11-02 11:50:18', '2023-11-02 11:50:18'),
(535, 'sagarpandey0611@gmail.com', 0, '753157', 0, '2023-11-02 12:07:32', '2023-11-02 12:07:32'),
(536, 'uttamnagar@gmail.com', 0, '715433', 0, '2023-11-02 12:07:53', '2023-11-02 12:07:53'),
(537, 'superadmin16@elsecolor.com', 0, '660768', 0, '2023-11-02 13:24:01', '2023-11-02 13:24:01'),
(538, 'lol@lol.be', 0, '199630', 0, '2023-11-02 15:51:04', '2023-11-02 15:51:04'),
(539, 'nihadkeles@gmail.com', 0, '978490', 0, '2023-11-02 16:50:47', '2023-11-02 16:50:47'),
(540, 'ftyhfguu@gmail.com', 0, '692327', 0, '2023-11-02 18:40:49', '2023-11-02 18:40:49'),
(541, 'demgyo@admin.com', 0, '975930', 0, '2023-11-02 19:21:16', '2023-11-02 19:21:16'),
(542, 'admin@hyiprio.com', 0, '714081', 0, '2023-11-03 00:24:13', '2023-11-03 00:24:13'),
(543, 'oneirodigitalbd@gmail.com', 0, '783409', 0, '2023-11-03 03:02:29', '2023-11-03 03:02:29'),
(544, 'aa@aa.a', 0, '201813', 0, '2023-11-03 04:52:50', '2023-11-03 04:52:50'),
(545, 'tomchrist@burinfort.ci', 0, '180735', 0, '2023-11-03 13:12:55', '2023-11-03 13:12:55'),
(546, 'foodlydz@gmail.com', 0, '515763', 0, '2023-11-04 06:14:35', '2023-11-04 06:14:35'),
(547, 'shamo-666@hotmail.com', 0, '561000', 0, '2023-11-04 06:48:31', '2023-11-04 06:48:31'),
(548, 'adasds@gmail.com', 0, '252904', 0, '2023-11-04 07:10:25', '2023-11-04 07:10:25'),
(549, 'اugt@gmial.com', 0, '345347', 0, '2023-11-04 13:24:05', '2023-11-04 13:24:05'),
(550, 'jwjeheehe', 0, '560369', 0, '2023-11-04 17:15:50', '2023-11-04 17:15:50'),
(551, 'userhh@gmail.com', 0, '868618', 0, '2023-11-04 19:42:58', '2023-11-04 19:42:58'),
(552, '0708211309', 0, '456521', 0, '2023-11-05 02:08:10', '2023-11-05 02:08:10'),
(553, 'asfatest741@gmail.com', 0, '216602', 0, '2023-11-08 09:35:10', '2023-11-08 09:35:10'),
(554, 'user@user.com', 0, '373768', 0, '2023-11-25 17:22:37', '2023-11-25 17:22:37'),
(555, 'GERFG@EFE.FF', 0, '796103', 0, '2023-11-25 21:10:16', '2023-11-25 21:10:16'),
(556, 'admin@zomox.in', 0, '472735', 0, '2023-11-26 04:58:07', '2023-11-26 04:58:07'),
(557, 'Flar4on', 0, '926847', 0, '2023-11-26 05:37:35', '2023-11-26 05:37:35'),
(558, 'ik', 0, '726691', 0, '2023-11-26 10:26:55', '2023-11-26 10:26:55'),
(559, 'admin@infyweb.com', 0, '803381', 0, '2023-11-26 11:16:12', '2023-11-26 11:16:12'),
(560, 'amine.08cirta@gmail.com', 0, '305335', 0, '2023-11-26 11:34:49', '2023-11-26 11:34:49'),
(561, 'joeldavid4126@gmail.com', 0, '470582', 0, '2023-11-26 12:45:52', '2023-11-26 12:45:52'),
(562, 'pippo@poppo.com', 0, '276376', 0, '2023-11-26 12:48:28', '2023-11-26 12:48:28'),
(563, 'pippo@poppopop.com', 0, '242599', 0, '2023-11-26 12:48:36', '2023-11-26 12:48:36'),
(564, 'iuuuu', 0, '694280', 0, '2023-11-26 13:06:27', '2023-11-26 13:06:27'),
(565, 'iuuuu@gmail.com', 0, '436613', 0, '2023-11-26 13:06:41', '2023-11-26 13:06:41');
INSERT INTO `subscribers` (`id`, `email`, `status`, `verified_token`, `is_verified`, `created_at`, `updated_at`) VALUES
(566, 'tesr', 0, '677477', 0, '2023-11-26 23:49:51', '2023-11-26 23:49:51'),
(567, 'tesr@gmail.com', 0, '251696', 0, '2023-11-26 23:50:06', '2023-11-26 23:50:06'),
(568, 'bhatsuhail125@gmail.com', 0, '144930', 0, '2023-11-27 04:28:27', '2023-11-27 04:28:27'),
(569, 'agma3c@hotmail.com', 0, '166919', 0, '2023-11-27 06:28:02', '2023-11-27 06:28:02'),
(570, 'subhamjena0001@gmail.com', 0, '895650', 0, '2023-11-27 10:07:09', '2023-11-27 10:07:09'),
(571, 'eodidodiod', 0, '722603', 0, '2023-11-27 12:12:34', '2023-11-27 12:12:34'),
(572, 'odilonalaska@gmail.com', 0, '801332', 0, '2023-11-27 12:12:52', '2023-11-27 12:12:52'),
(573, 'dc@gnail.com', 0, '947992', 0, '2023-11-27 15:31:56', '2023-11-27 15:31:56'),
(574, 'aaasdc@gnail.com', 0, '146803', 0, '2023-11-27 15:32:07', '2023-11-27 15:32:07'),
(575, 'biswajitrajbera@gmail.com', 0, '425484', 0, '2023-11-27 17:35:16', '2023-11-27 17:35:16'),
(576, 'musaabduljnr@gmail.com', 0, '828061', 0, '2023-11-27 21:45:45', '2023-11-27 21:45:45'),
(577, 'rajbhati1978@gmail.com', 0, '379491', 0, '2023-11-28 02:22:48', '2023-11-28 02:22:48'),
(578, 'hfjfkdkkd@gmail.com', 0, '182458', 0, '2023-11-28 07:02:03', '2023-11-28 07:02:03'),
(579, 'seller@example.com', 0, '317338', 0, '2023-11-28 10:23:56', '2023-11-28 10:23:56'),
(580, 'radyodanes2@gmail.com', 0, '802672', 0, '2023-11-28 11:12:18', '2023-11-28 11:12:18'),
(581, 'radyodanejs2@gmail.com', 0, '847992', 0, '2023-11-28 11:12:59', '2023-11-28 11:12:59'),
(582, 'ameramer1319@gmail.com', 0, '137383', 0, '2023-11-28 12:06:14', '2023-11-28 12:06:14'),
(583, 'anfgnonce@vgryroi.fr', 0, '600313', 0, '2023-11-28 14:58:42', '2023-11-28 14:58:42'),
(584, 'sss@ss.ss', 0, '700975', 0, '2023-11-28 16:54:07', '2023-11-28 16:54:07'),
(585, 'test.seller@gmail.com', 0, '683604', 0, '2023-11-29 02:07:50', '2023-11-29 02:07:50'),
(586, 'admin3@admin.com', 0, '488802', 0, '2023-11-29 04:35:56', '2023-11-29 04:35:56'),
(587, 'ad3min@admin.com', 0, '525739', 0, '2023-11-29 04:37:04', '2023-11-29 04:37:04'),
(588, 'oah2010113@gmail.com', 0, '659905', 0, '2023-11-29 04:45:46', '2023-11-29 04:45:46'),
(589, 'alldcsuggmon@gmail.com', 0, '271981', 0, '2023-11-29 06:05:33', '2023-11-29 06:05:33'),
(590, 'dsad', 0, '759263', 0, '2023-11-29 08:30:56', '2023-11-29 08:30:56'),
(591, 'mr.hiren99@gmail.com', 0, '298167', 0, '2023-11-29 10:45:50', '2023-11-29 10:45:50'),
(592, 'muayadmahdi23@gmail.com', 0, '143842', 0, '2023-11-29 11:27:12', '2023-11-29 11:27:12'),
(593, 'muayadmahi23@gmail.com', 0, '604035', 0, '2023-11-29 11:30:51', '2023-11-29 11:30:51'),
(594, 'muayadmahi23@j.com', 0, '227214', 0, '2023-11-29 11:31:21', '2023-11-29 11:31:21'),
(595, 'sdfg', 0, '420349', 0, '2023-11-29 12:41:41', '2023-11-29 12:41:41'),
(596, '57gucfu@gmail.com', 0, '476537', 0, '2023-11-29 13:21:43', '2023-11-29 13:21:43'),
(597, 'xfxtxtxtx@gmail.com', 0, '455281', 0, '2023-11-29 13:24:37', '2023-11-29 13:24:37'),
(598, 'toyorat457@frandin.com', 0, '233762', 0, '2023-11-29 15:17:37', '2023-11-29 15:17:37'),
(599, 'gfdfgfg@gmail.com', 0, '394753', 0, '2023-11-29 15:24:14', '2023-11-29 15:24:14'),
(600, 'us12er@gmail.com', 0, '756508', 0, '2023-11-30 04:26:29', '2023-11-30 04:26:29'),
(601, 'admin@fgcggcgh.com', 0, '815332', 0, '2023-11-30 07:38:12', '2023-11-30 07:38:12'),
(602, 'jj', 0, '520334', 0, '2023-12-01 02:10:46', '2023-12-01 02:10:46'),
(603, 'jj@gam.com', 0, '178167', 0, '2023-12-01 02:10:53', '2023-12-01 02:10:53'),
(604, 'admin@pos.com', 0, '576744', 0, '2023-12-01 02:49:58', '2023-12-01 02:49:58'),
(605, 'admin@p88888os.com', 0, '494701', 0, '2023-12-01 02:50:06', '2023-12-01 02:50:06'),
(606, 'abcdef@gmail.com', 0, '450073', 0, '2023-12-01 03:14:00', '2023-12-01 03:14:00'),
(607, 'abcdef45@gmail.com', 0, '164566', 0, '2023-12-01 03:14:08', '2023-12-01 03:14:08'),
(608, 'duidid@gmail.com', 0, '986654', 0, '2023-12-01 09:58:22', '2023-12-01 09:58:22'),
(609, 'sadasd', 0, '996184', 0, '2023-12-01 20:51:51', '2023-12-01 20:51:51'),
(610, 'carlosc@gmail.com', 0, '850482', 0, '2023-12-01 23:43:02', '2023-12-01 23:43:02'),
(611, 'ggsggs@hsd.n', 0, '843100', 0, '2023-12-02 05:05:32', '2023-12-02 05:05:32'),
(612, 'bdggsed@dd.d', 0, '890232', 0, '2023-12-02 05:10:18', '2023-12-02 05:10:18'),
(613, 'bdggsedhdb@dd.d', 0, '823818', 0, '2023-12-02 05:10:29', '2023-12-02 05:10:29'),
(614, 'compayny@example.com', 0, '788844', 0, '2023-12-02 13:35:50', '2023-12-02 13:35:50'),
(615, 'hello@haseebjanhamraz.com', 0, '280155', 0, '2023-12-02 18:17:35', '2023-12-02 18:17:35'),
(616, 'admin@topzoom.in', 0, '669969', 0, '2023-12-03 01:36:32', '2023-12-03 01:36:32'),
(617, 'kenlah.seller002@gmail.com', 0, '307158', 0, '2023-12-03 05:54:07', '2023-12-03 05:54:07'),
(618, 'rrrr', 0, '671317', 0, '2023-12-03 07:14:08', '2023-12-03 07:14:08'),
(619, 'mail@gmail.com', 0, '255332', 0, '2023-12-03 08:30:04', '2023-12-03 08:30:04'),
(620, 'admin@vrindavanjewellers.com', 0, '355519', 0, '2023-12-03 10:06:14', '2023-12-03 10:06:14'),
(621, 'jio9782411535@gmail.com', 0, '965709', 0, '2023-12-03 10:08:49', '2023-12-03 10:08:49'),
(622, 'raju@gmail.com', 0, '839290', 0, '2023-12-03 10:17:42', '2023-12-03 10:17:42'),
(623, 'raju123@gmail.com', 0, '726202', 0, '2023-12-03 10:17:51', '2023-12-03 10:17:51'),
(624, 'rajubaba123@gmail.com', 0, '292822', 0, '2023-12-03 10:18:06', '2023-12-03 10:18:06'),
(625, '5e5acsd@demo.com', 0, '677030', 0, '2023-12-03 10:25:59', '2023-12-03 10:25:59'),
(626, 'admin31@example.com', 0, '922811', 0, '2023-12-03 20:21:41', '2023-12-03 20:21:41'),
(627, 'admin31ij@example.com', 0, '448385', 0, '2023-12-03 20:21:53', '2023-12-03 20:21:53'),
(628, 'joaoluciano', 0, '492082', 0, '2023-12-03 23:13:21', '2023-12-03 23:13:21'),
(629, 'timon@gmail.com', 0, '994324', 0, '2023-12-04 06:53:58', '2023-12-04 06:53:58'),
(630, 'rwteye', 0, '944702', 0, '2023-12-04 11:24:25', '2023-12-04 11:24:25'),
(631, 'rwteye@gmail.com', 0, '601015', 0, '2023-12-04 11:24:33', '2023-12-04 11:24:33'),
(632, 'pepito@mail.com', 0, '789509', 0, '2023-12-05 04:05:44', '2023-12-05 04:05:44'),
(633, 'asp@gmail.com', 0, '756062', 0, '2023-12-05 09:21:16', '2023-12-05 09:21:16'),
(634, 'abunowmankalim53@gmail.com', 0, '344794', 0, '2023-12-05 13:06:28', '2023-12-05 13:06:28'),
(635, 'sdsds', 0, '186355', 0, '2023-12-05 15:59:48', '2023-12-05 15:59:48'),
(636, 'sdsds@gmsaofm.com,', 0, '887437', 0, '2023-12-05 15:59:58', '2023-12-05 15:59:58'),
(637, 'sdsds@gmail.com', 0, '244922', 0, '2023-12-05 16:00:07', '2023-12-05 16:00:07'),
(638, 'appsmonney@gmail.com', 0, '960624', 0, '2023-12-05 16:00:59', '2023-12-05 16:00:59'),
(639, 'kk', 0, '403650', 0, '2023-12-05 16:35:30', '2023-12-05 16:35:30'),
(640, 'kk@gmail.com', 0, '471467', 0, '2023-12-05 16:35:37', '2023-12-05 16:35:37'),
(641, 'surrrrrpport@zamala.fr', 0, '892606', 0, '2023-12-05 17:38:33', '2023-12-05 17:38:33'),
(642, 'mahmoudkoto444@gmail.com', 0, '237982', 0, '2023-12-11 20:38:42', '2023-12-11 20:38:42'),
(643, 'mahmoudkoto4m44@gmail.com', 0, '383893', 0, '2023-12-11 20:38:53', '2023-12-11 20:38:53'),
(644, 'asdsafadasd', 0, '971025', 0, '2024-01-17 21:32:34', '2024-01-17 21:32:34'),
(645, 'a@a.a', 0, '108586', 0, '2024-01-17 21:32:43', '2024-01-17 21:32:43'),
(646, 'dheebinkd@gmail.com', 0, '460740', 0, '2024-01-18 00:43:02', '2024-01-18 00:43:02'),
(647, 'merlynornopia143@gmail.com', 0, '139159', 0, '2024-01-18 12:46:44', '2024-01-18 12:46:44'),
(648, 'curobcoil@gmail.com', 0, '229635', 0, '2024-01-22 07:28:08', '2024-01-22 07:28:08'),
(649, 'sss@gmail.com', 0, '642791', 0, '2024-01-24 10:45:57', '2024-01-24 10:45:57'),
(650, 'youssefsaker110@gmail.com', 0, '120064', 0, '2024-01-24 10:46:11', '2024-01-24 10:46:11'),
(651, 'mathiasabdisa@gmail.com', 0, '752271', 0, '2024-02-02 05:10:55', '2024-02-02 05:10:55'),
(652, 'yashptl31@gmail.com', 0, '244381', 0, '2024-02-03 04:20:51', '2024-02-03 04:20:51'),
(653, 'admin@xscript.in', 0, '547769', 0, '2024-03-04 09:26:51', '2024-03-04 09:26:51'),
(654, 'psklsabari@gmail.com', 0, '372625', 0, '2024-03-11 12:37:48', '2024-03-11 12:37:48'),
(655, 'atulchoyal161@gma', 0, '820056', 0, '2024-03-13 06:32:22', '2024-03-13 06:32:22'),
(656, 'atulchoyal161@gmail.com', 0, '259836', 0, '2024-03-13 06:32:42', '2024-03-13 06:32:42'),
(657, 'manojgargpkl@gmail.com', 0, '545903', 0, '2024-03-17 07:25:12', '2024-03-17 07:25:12'),
(658, 'gsdeveloper1212@gmail.com', 0, '579642', 0, '2024-03-26 04:09:30', '2024-03-26 04:09:30'),
(659, 'rijus9324@gmail.com', 0, '904953', 0, '2024-04-19 13:05:37', '2024-04-19 13:05:37'),
(660, 'roshanshah.011@gmail.com', 0, '167187', 0, '2024-05-07 15:17:29', '2024-05-07 15:17:29'),
(661, 'usmanmohid@gmail.com', 0, '594657', 0, '2024-05-13 09:57:10', '2024-05-13 09:57:10'),
(662, 'chuckusman@gmail.com', 0, '658037', 0, '2024-05-14 11:52:57', '2024-05-14 11:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mobiles', 'mobiles', 1, '2022-09-20 05:51:21', '2022-09-25 10:58:05'),
(2, 1, 'Monitor', 'monitor', 1, '2022-09-20 05:51:35', '2022-09-20 05:51:35'),
(3, 1, 'camera', 'camera', 1, '2022-09-20 06:02:23', '2022-09-20 06:02:23'),
(4, 2, 'Controller', 'controller', 1, '2022-09-20 07:08:14', '2022-09-20 07:08:14'),
(5, 2, 'PlayStation', 'playstation', 1, '2022-09-20 07:09:17', '2022-09-20 07:09:17'),
(6, 2, 'Need For Speed', 'need-for-speed', 1, '2022-09-20 07:09:31', '2022-09-20 07:09:31'),
(7, 10, 'Desktop', 'desktop', 1, '2022-09-20 07:11:30', '2022-09-20 07:11:30'),
(8, 10, 'Headphone', 'headphone', 1, '2022-09-20 07:11:41', '2022-09-20 07:11:50'),
(9, 10, 'Mouse', 'mouse', 1, '2022-09-20 07:12:00', '2022-09-20 07:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `tawk_chats`
--

CREATE TABLE `tawk_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_link` varchar(255) DEFAULT NULL,
  `widget_id` varchar(255) DEFAULT NULL,
  `property_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tawk_chats`
--

INSERT INTO `tawk_chats` (`id`, `chat_link`, `widget_id`, `property_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'link', '612dc781d6e7610a49b2d444', '1fedd6l9m', 1, NULL, '2022-11-16 01:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `terms_and_conditions`
--

CREATE TABLE `terms_and_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_and_condition` longtext DEFAULT NULL,
  `privacy_policy` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_and_conditions`
--

INSERT INTO `terms_and_conditions` (`id`, `terms_and_condition`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Welcome to&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>!</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">These terms and conditions outline the rules and regulations for the use of&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>\'s Website, located at&nbsp;<span class=\"highlight preview_website_url\" style=\"background: rgb(255, 255, 238);\">Website.com</span>.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">By accessing this website we assume you accept these terms and conditions. Do not continue to use&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;if you do not agree to take all of the terms and conditions stated on this page.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: “Client”, “You” and “Your” refers to you, the person log on this website and compliant to the Company\'s terms and conditions. “The Company”, “Ourselves”, “We”, “Our” and “Us”, refers to our Company. “Party”, “Parties”, or “Us”, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client\'s needs in respect of provision of the Company\'s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Cookies</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We employ the use of cookies. By accessing&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>, you agreed to use cookies in agreement with the&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>\'s Privacy Policy.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">License</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Unless otherwise stated,&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;and/or its licensors own the intellectual property rights for all material on&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>. All intellectual property rights are reserved. You may access this from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;for your own personal use subjected to restrictions set in these terms and conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You must not:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Republish material from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span></li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Sell, rent or sub-license material from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span></li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Reproduce, duplicate or copy material from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span></li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Redistribute content from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span></li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">This Agreement shall begin on the date hereof.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website.&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws,&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You warrant and represent that:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You hereby grant&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Hyperlinking to our Content</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The following organizations may link to our Website without prior written approval:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Government agencies;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Search engines;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">News organizations;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party\'s site.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We may consider and approve other link requests from the following types of organizations:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">commonly-known consumer and/or business information sources;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">dot.com community sites;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">associations or other groups representing charities;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">online directory distributors;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">internet portals;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">accounting, law and consulting firms; and</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">educational institutions and trade associations.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>; and (d) the link is in the context of general resource information.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party\'s site.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Approved organizations may hyperlink to our Website as follows:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">By use of our corporate name; or</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">By use of the uniform resource locator being linked to; or</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party\'s site.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">No use of&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">iFrames</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Content Liability</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Reservation of Rights</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it\'s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Removal of links from our website</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Disclaimer</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">limit or exclude our or your liability for death or personal injury;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">limit any of our or your liabilities in any way that is not permitted under applicable law; or</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">exclude any of our or your liabilities that may not be excluded under applicable law.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', '<h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 20px;\">Privacy Policy for&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span></h2><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">At&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>, accessible at&nbsp;<span class=\"highlight preview_website_url\" style=\"background: rgb(255, 255, 238);\">Website.com</span>, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;and how we use it.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us through email at&nbsp;<span class=\"highlight preview_email_address\" style=\"background: rgb(255, 255, 238);\">Email@Website.com</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">This privacy policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>. This policy is not applicable to any information collected offline or via channels other than this website.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Consent</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Information we collect</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">How we use your information</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We use the information we collect in various ways, including to:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Provide, operate, and maintain our website</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Improve, personalize, and expand our website</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Understand and analyze how you use our website</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Develop new products, services, features, and functionality</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Send you emails</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Find and prevent fraud</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Log Files</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Cookies and Web Beacons</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Like any other website,&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;uses ‘cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">DoubleClick DART Cookie</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Google is one of a third-party vendor on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL –&nbsp;<a href=\"https://policies.google.com/technologies/ads\" target=\"_blank\" rel=\"noopener noreferrer\" style=\"color: rgb(93, 136, 179);\">https://policies.google.com/technologies/ads</a>.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><p style=\"margin: 1em 0px;\">Google</p><p style=\"margin: 1em 0px;\"><a href=\"https://policies.google.com/technologies/ads\" rel=\"noopener noreferrer\" style=\"color: rgb(93, 136, 179);\">https://policies.google.com/technologies/ads</a></p></li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Advertising Partners Privacy Policies</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You may consult this list to find the Privacy Policy for each of the advertising partners of&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Note that&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;has no access to or control over these cookies that are used by third-party advertisers.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Third-Party Privacy Policies</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. You may find a complete list of these Privacy Policies and their links here: Privacy Policy Links.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites. What Are Cookies?</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">CCPA Privacy Policy (Do Not Sell My Personal Information)</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Under the CCPA, among other rights, California consumers have the right to:</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Request that a business delete any personal data about the consumer that a business has collected.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">GDPR Privacy Policy (Data Protection Rights)</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Children\'s Information</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>', '2022-09-20 08:23:13', '2022-09-20 08:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `image`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(2, 'John Doe', 'CEO', 'uploads/custom-images/john-doe-20220922033955.png', '5', 'As a digital marketing agency our team works day in and day out on websites of all kinds. Some of the most common errors we see are websites not optimized for SEO because of old, boring, or out of date website themes or designs.', 1, NULL, '2022-09-22 09:39:55'),
(3, 'Michael', 'CEO', 'uploads/custom-images/ibrahim-khalil-20220922034002.png', '5', 'Almost every imaginable design is possible and customizations are allowed on every level. Some features could make use of better controls. If you know how to operate your mouse, then you are all set to use this pagebuilder.', 1, '2022-07-31 10:57:20', '2022-09-25 09:10:18'),
(5, 'James Robert', 'CEO', 'uploads/custom-images/james-robert-20220925031227.png', '5', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', 1, '2022-09-25 09:12:27', '2022-09-25 09:12:27'),
(6, 'Mary 	Patricia', 'CEO', 'uploads/custom-images/mary-patricia-20220925031348.png', '5', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', 1, '2022-09-25 09:13:48', '2022-09-25 09:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `three_column_categories`
--

CREATE TABLE `three_column_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id_one` int(11) NOT NULL DEFAULT 0,
  `sub_category_id_one` int(11) NOT NULL DEFAULT 0,
  `child_category_id_one` int(11) NOT NULL DEFAULT 0,
  `category_id_two` int(11) NOT NULL DEFAULT 0,
  `sub_category_id_two` int(11) NOT NULL DEFAULT 0,
  `child_category_id_two` int(11) NOT NULL DEFAULT 0,
  `category_id_three` int(11) NOT NULL DEFAULT 0,
  `sub_category_id_three` int(11) NOT NULL DEFAULT 0,
  `child_category_id_three` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `three_column_categories`
--

INSERT INTO `three_column_categories` (`id`, `category_id_one`, `sub_category_id_one`, `child_category_id_one`, `category_id_two`, `sub_category_id_two`, `child_category_id_two`, `category_id_three`, `sub_category_id_three`, `child_category_id_three`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 2, 0, 0, 5, 0, 0, NULL, '2022-02-07 03:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `twilio_sms`
--

CREATE TABLE `twilio_sms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_sid` text NOT NULL,
  `auth_token` text NOT NULL,
  `twilio_phone_number` varchar(255) NOT NULL,
  `enable_register_sms` int(11) NOT NULL DEFAULT 0,
  `enable_reset_pass_sms` int(11) NOT NULL DEFAULT 0,
  `enable_order_confirmation_sms` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `twilio_sms`
--

INSERT INTO `twilio_sms` (`id`, `account_sid`, `auth_token`, `twilio_phone_number`, `enable_register_sms`, `enable_reset_pass_sms`, `enable_order_confirmation_sms`, `created_at`, `updated_at`) VALUES
(1, 'AC3551cb38008dc7c6560db2909d58d01b', '001e56dc322d3eb0be477376f969b79c', '+17266008587', 1, 1, 1, NULL, '2023-01-11 11:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `forget_password_token` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `provider_id` varchar(191) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `provider_avatar` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `country_id` int(11) DEFAULT 0,
  `state_id` int(11) DEFAULT 0,
  `city_id` int(11) DEFAULT 0,
  `zip_code` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `is_vendor` int(11) NOT NULL DEFAULT 0,
  `verify_token` varchar(191) DEFAULT NULL,
  `email_verified` int(11) NOT NULL DEFAULT 0,
  `agree_policy` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(11) NOT NULL DEFAULT 0,
  `school_name` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `admission_number` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`, `school_id`, `school_name`, `father_name`, `mother_name`, `admission_number`, `class_name`, `date_of_birth`, `latitude`, `longitude`) VALUES
(1, 'Abdur1 Rohman1', 'facik91345@pahed.com', NULL, '$2y$10$1fb1W./8xpgma9gJo/nGIu8eGxqoULkt8cKsCBLBcZwQJ/yS81/sW', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-09-20 10:04:42', '2024-05-08 03:44:11', 0, NULL, NULL, NULL, NULL, NULL, NULL, 23.4927518, 89.8866053),
(2, 'John Do', 'meyaj42636@pahed.com', NULL, '$2y$10$PCusAOjlo72nk4dfE9mJl.AQ/i9BBjczfwYqhRxtudDGQzoV4U2Ki', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '846418', 0, 1, '2022-09-21 05:25:34', '2022-09-21 05:25:34', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(3, 'John Do', 'piway67338@geekjun.com', NULL, '$2y$10$MWP/Jt4d1Sz0U6NrOPZcSutWhIuAb3eeV4Erw82YP7ja32Qjl8LQC', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '191269', 0, 1, '2022-09-21 05:26:32', '2022-09-21 05:26:32', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(4, 'Autumn Decker Dean', 'jipof28122@orlydns.com', NULL, '$2y$10$B3aOUPcMKFQUKR9af/taSei07iAEaiT2TaaWaofuM4cMuspsIffH.', 'Ou5C4kwC0iMZ7K2nAP7m2mZulHnXvIhz5j3VAaWNxboVpCbwFcUVPpPP8DXX', NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-09-21 05:33:41', '2022-09-21 05:39:16', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(5, 's s', 'marohman74@gmail.com', NULL, '$2y$10$fLfrcsXAEO4Ppl.RzHEj2ObbdSBKKgy8XC3kPDIjE/Fqp.yRnCqea', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/s-s-2022-09-22-10-19-00-8064.jpg', '+881682825123', 0, 0, 0, NULL, 'qww', 0, NULL, 1, 1, '2022-09-21 05:40:21', '2022-11-21 14:18:05', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(6, 'nayeem', 'mrnayeem75@gmail.com', NULL, '$2y$10$97EjXmtnALzk8asIK7c92exVWTjNqiVZY0i63WLgTpiltIxcej66a', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/nayeem-2022-09-21-10-02-25-6264.jpg', '+88123456789', 4, 7, 10, NULL, 'catsle', 0, NULL, 1, 1, '2022-09-21 06:48:34', '2022-09-21 16:02:25', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(7, 'Amaya Hendrix', 'user@gmail.com', NULL, '$2y$10$P1z8Sadw7fev4VG2ulNJSuHlJM0YinHx2J9v/nEkOYvthiFrhsbFm', '8QcJRogTvu1KexTViSQSJRNaLo518wr15g2be0gdLW8jBYef0V6qkg7AVX8p', '759898', 1, NULL, NULL, NULL, 'uploads/custom-images/amaya-hendrix-2024-06-04-04-09-14-1901.jpg', '+8801310118550', 4, 7, 10, '2100', 'Dhaka,bangladesh', 0, NULL, 1, 1, '2022-09-21 07:08:27', '2024-10-21 21:00:29', 0, NULL, NULL, NULL, NULL, NULL, NULL, 23.7956037, 90.3536548),
(8, 'Harding Rosa', 'fegig12897@ploneix.com', NULL, '$2y$10$8w.MajHg4l9.gGWvq1uBxOFQbgTn3NNMXzHofj8lne9AIsXkbyksq', NULL, NULL, 0, NULL, NULL, NULL, 'uploads/custom-images/harding-rosa-2023-05-01-12-07-37-5950.jpg', '01512345678', 4, 7, 10, '1220', 'Dhaka,bangladesh', 0, NULL, 1, 1, '2022-09-21 07:11:54', '2023-05-01 06:09:02', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(9, 'Nasim Horne', 'wokij22557@geekjun.com', NULL, '$2y$10$fSYHi6.oqhxsPYKZA1aASOA3YbujGYabkkoE/w/G3kKBoSRqzO2TG', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-09-21 07:17:37', '2022-09-21 07:18:01', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(10, 'Xaviera Barnes', 'rokayo4006@pahed.com', NULL, '$2y$10$W0ffeYoOKWHml0SiziQ7uuB0WjbSkf3hbNuuwwmNi5ZFxD/ybSD4W', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/xaviera-barnes-2023-05-01-12-03-11-6549.jpg', '10612675432', 2, 4, 8, '1220', 'Mirpur, Dhaka', 0, NULL, 1, 1, '2022-09-21 07:21:41', '2023-05-01 06:03:35', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(11, 'Kelsey Conrad', 'Habbriyi', NULL, '$2y$10$6mUC3rwW9E42jqilivcw0unRzFcE/BK/6a8GbxpQXF8GIe1Gd8VVW', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '604590', 0, 1, '2022-09-21 07:24:58', '2022-11-21 10:47:07', 0, NULL, NULL, NULL, NULL, NULL, NULL, 23.7956037, 90.3536548),
(12, 'Daniel Paul', 'seller@gmail.com', NULL, '$2y$10$kPbSaze/TgjSDBqfplSQs.lenOmnhlIs7J/RPH31onYQCZHa4GgUm', '3JMC9LEe7f2uwADPTWng91w0LlWpQVZhl9LvAAIWv9KXtPXTxxmefcHoWMz4', NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/kelsey-2023-05-01-11-46-03-3828.jpg', '152-845-8745', 1, 2, 1, '52305', 'Florida City, FL, USA', 0, NULL, 1, 1, '2022-09-21 07:26:08', '2024-10-21 01:37:48', 0, NULL, NULL, NULL, NULL, NULL, NULL, 24.1834882, 88.9569466),
(14, 'Moses Haynes Short', 'cacixi5247@corylan.com', NULL, '$2y$10$SjifGqNkcVvFPhQuDFe8iebZ1KGkDpsRywLbCc3.mGA2rfp.3lO0.', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-10-27 08:33:02', '2022-10-27 08:33:14', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(15, 'Jason Mcneil', 'mehoke2377@sopulit.com', NULL, '$2y$10$Dpk9fNCaMpK4XI4OfdrRVO4cWPXR3DeIj1wg3CLqavI60UZP1Xdti', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2022-11-18 15:13:08', '2022-11-23 01:07:48', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(16, 'Test Test', 'test@gmail.con', NULL, '$2y$10$N35xuiQ2nWwntEwfeTbPHe9eFsskk4C/xx.Z8hc0hhmkbvlo95rEi', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '976621', 0, 1, '2022-11-22 06:16:45', '2022-11-22 06:16:45', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(17, 'suraj c', 's@g.com', NULL, '$2y$10$/ya3vIvGKDW3MDZxFfB39uvYYCJD20fX7jUg52FX6fBks2ZHkVsum', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '522603', 0, 1, '2022-11-23 01:45:44', '2022-11-23 01:45:44', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(25, 'Junaid Siddik', 'junaid123@gmail.com', NULL, '$2y$10$s8nWdFuM6SLU1USA9oMmtOj4x7KF1UzGmwocn.15A3cH.Hg4gybv6', NULL, NULL, 0, NULL, NULL, NULL, NULL, '+8801310118550', 0, 0, 0, NULL, NULL, 0, '104905', 0, 1, '2023-01-12 04:59:32', '2023-01-12 04:59:32', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(26, 'Ali', 'jerame5720@necktai.com', NULL, '$2y$10$OV9i/plzrXLyiRXle7HnW.55us8dKclHn8cgxnw4XJrxD0fLtimHS', NULL, NULL, 1, NULL, NULL, NULL, NULL, '+88001624188877', 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2023-03-20 16:49:34', '2023-03-20 16:49:59', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(28, 'Ali', 'xacasi6022@snowlash.com', NULL, '$2y$10$F9HalbymJhHM2J3Qhu/D6OceBS056YAH6QXnpVUa2L3W5O0AednTa', NULL, NULL, 0, NULL, NULL, NULL, NULL, '+880+8801704782586', 0, 0, 0, NULL, NULL, 0, '878864', 0, 1, '2023-04-18 11:32:04', '2023-04-18 11:32:04', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(45, 'Mohammad', 'ramadiw274@pixiil.com', NULL, '$2y$10$GSCXSIb72ZB11g7IiIvBnO7Jtf1I6KhOh2HOQ9dGrFTzLX/zDZp42', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/mohammad-2023-05-02-11-21-41-9435.jpg', '1624188877', 2, 4, 8, NULL, 'Dhaka', 0, NULL, 1, 1, '2023-05-02 04:33:24', '2023-05-02 05:21:42', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(46, 'Ajay Sarkar', 'potomik996@larland.com', NULL, '$2y$10$3nBhGQpealDJxC3hZT0ch.oEt3BAFYGeHBYuPgARMoziHhIPLTohO', NULL, NULL, 0, NULL, NULL, NULL, NULL, '+8801689091933', 0, 0, 0, NULL, NULL, 0, '952440', 0, 1, '2023-05-02 05:24:27', '2023-05-02 05:24:27', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(47, 'md khalil', 'khalil.cmt.bpi@gmail.com', NULL, NULL, NULL, NULL, 1, '100595042553379016876', 'google', 'https://lh3.googleusercontent.com/a/AAcHTteiJXKj6tWuGycVMt-s8BOw7osSODkDnJ4_ep9NaQ=s96-c', NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-05-25 07:28:14', '2023-05-25 07:28:14', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(48, 'Nayeemul Islam Durjoy', 'nayeem.cse1@gmail.com', NULL, NULL, NULL, NULL, 1, '114048061883945389447', '$request->provider', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-06-22 07:19:24', '2023-06-22 07:19:24', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(49, 'Keos Firebase', 'keos.firebase@gmail.com', NULL, NULL, NULL, NULL, 1, '{113629503722750621202}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-06-23 03:37:43', '2023-06-23 03:37:43', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(50, 'liana rose', 'lianarose9093@gmail.com', NULL, NULL, NULL, NULL, 1, '{113454386723165505530}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-06-23 03:44:32', '2023-06-23 03:44:32', 0, NULL, NULL, NULL, NULL, NULL, NULL, 89.8866053, 89.8866053),
(51, 'vagrancy', 'anas000almamary@gmail.com', NULL, NULL, NULL, NULL, 1, '{107301501247550805797}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-10 11:29:45', '2023-07-10 11:29:45', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Alenas Textiles', 'alenastextiles@gmail.com', NULL, NULL, NULL, NULL, 1, '{105899059940412562904}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-10 20:01:51', '2023-07-10 20:01:51', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Oliver Luiz da Cruz', 'oliverluizd@gmail.com', NULL, NULL, NULL, NULL, 1, '{107905867390473976540}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-11 18:21:00', '2023-07-11 18:21:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'PARTH SURELIYA', 'parthsureliya@gmail.com', NULL, NULL, NULL, NULL, 1, '{101572132407945485408}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-12 08:50:00', '2023-07-12 08:50:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Master Solution', 'mastersolution33@gmail.com', NULL, NULL, NULL, NULL, 1, '{111064781078184180519}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-14 07:38:10', '2023-07-14 07:38:10', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Максим Белоцерковский', 'sergeyharchenko26@gmail.com', NULL, NULL, NULL, NULL, 1, '{112508969680748669765}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-14 16:52:18', '2023-07-14 16:52:18', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Jahnab Borman', 'jahnab90@gmail.com', NULL, NULL, NULL, NULL, 1, '{111219611352084852034}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-15 12:58:43', '2023-07-15 12:58:43', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'جاسر دلي - Jaser Deli', 'jaser11239@gmail.com', NULL, NULL, NULL, NULL, 1, '{104592046523149022754}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-15 21:17:03', '2023-07-15 21:17:03', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'فون كاش', 'kashfwn5@gmail.com', NULL, NULL, NULL, NULL, 1, '{115898126157334586108}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-20 23:01:37', '2023-07-20 23:01:37', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Safitri Yanti', 'safitriyanti068@gmail.com', NULL, NULL, NULL, NULL, 1, '{107045793816869413596}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-24 21:34:16', '2023-07-24 21:34:16', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Flevika Music', 'flevikatz@gmail.com', NULL, NULL, NULL, NULL, 1, '{102153179908728448242}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-25 08:30:38', '2023-07-25 08:30:38', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Kishore Babu Yarlapati', 'kishoresks@gmail.com', NULL, NULL, NULL, NULL, 1, '{102898536098831911379}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-25 13:07:16', '2023-07-25 13:07:16', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'sameh jacobs', 'samehjacobs@gmail.com', NULL, NULL, NULL, NULL, 1, '{115831903726336775399}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-26 14:57:50', '2023-07-26 14:57:50', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'Bodoamat Hutagiuls', 'hutagiulsbodoamat@gmail.com', NULL, NULL, NULL, NULL, 1, '{100641273314736414483}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-27 11:53:28', '2023-07-27 11:53:28', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Admin', 'khand29x@gmail.com', NULL, NULL, NULL, NULL, 1, '{111105083352658244069}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-07-30 11:22:13', '2023-07-30 11:22:13', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'Baki Top', 'bakitop97@gmail.com', NULL, NULL, NULL, NULL, 1, '{111468060368084619183}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-08-02 06:09:20', '2023-08-02 06:09:20', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'Nikita Roy', 'nikitajmk555@gmail.com', NULL, NULL, NULL, NULL, 1, '{104676131867154255990}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-08-02 17:25:52', '2023-08-02 17:25:52', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'Karl fred', 'karlfredk@gmail.com', NULL, NULL, NULL, NULL, 1, '{107559903739396678072}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-08-10 22:49:53', '2023-08-10 22:49:53', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'null', 'miltonmcdaniel.82163@gmail.com', NULL, NULL, NULL, NULL, 1, '{111920542052634680498}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-08-17 06:11:52', '2023-08-17 06:11:52', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Le Win', 'igor.levin49@gmail.com', NULL, NULL, NULL, NULL, 1, '{111680595360465406540}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-08-17 12:25:25', '2023-08-17 12:25:25', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Gaurav Yadav', '269mehta@gmail.com', NULL, NULL, NULL, NULL, 1, '{114378912839937945554}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-08-19 11:58:39', '2023-08-19 11:58:39', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Wender Costha', 'contato.wendercosta@gmail.com', NULL, NULL, NULL, NULL, 1, '{114888677505048233255}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-08-23 11:23:44', '2023-08-23 11:23:44', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Armando Díaz', 'armandodiazjimenez1980@gmail.com', NULL, NULL, NULL, NULL, 1, '{104395641338110617246}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-08-23 21:21:12', '2023-08-23 21:21:12', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Ali Najm', 'alinajim22222@gmail.com', NULL, NULL, NULL, NULL, 1, '{105405614874046876988}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-08-25 04:31:02', '2023-08-25 04:31:02', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Shekhar Work', 'droidmac07@gmail.com', NULL, NULL, NULL, NULL, 1, '{101457470523316303166}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-08-25 08:37:10', '2023-08-25 08:37:10', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Nour', 'dftsxcv@gmail.com', NULL, NULL, NULL, NULL, 1, '{107292987903766442397}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-08-30 09:17:52', '2023-08-30 09:17:52', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Asim Jib', 'asimjib70@gmail.com', NULL, NULL, NULL, NULL, 1, '{100689663526415750709}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-01 09:57:35', '2023-09-01 09:57:35', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Leonid Volynets', 'leonidnvolynets@gmail.com', NULL, NULL, NULL, NULL, 1, '{103923580841881968932}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-01 18:53:53', '2023-09-01 18:53:53', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'null', 'loreegunther.04026@gmail.com', NULL, NULL, NULL, NULL, 1, '{103747837337089901054}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-02 01:59:06', '2023-09-02 01:59:06', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Amir khan', 'amir.khan054@gmail.com', NULL, NULL, NULL, NULL, 1, '{107969206228989563852}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-02 09:43:02', '2023-09-02 09:43:02', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'null', 'chasahern.47847@gmail.com', NULL, NULL, NULL, NULL, 1, '{100986002924693543927}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-03 13:01:49', '2023-09-03 13:01:49', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Vikram Singh', 'vikram.softhunters@gmail.com', NULL, NULL, NULL, NULL, 1, '{115155381007741559369}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-05 03:19:31', '2023-09-05 03:19:31', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Venkat', 'mvenkatpro@gmail.com', NULL, NULL, NULL, NULL, 1, '{102898357472365588267}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-06 07:30:35', '2023-09-06 07:30:35', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Budde Maggidi', 'bummaggidi@gmail.com', NULL, NULL, NULL, NULL, 1, '{113069414429220256978}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-07 15:33:42', '2023-09-07 15:33:42', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'moard alhassan', 'modhas222@gmail.com', NULL, NULL, NULL, NULL, 1, '{115326570575010534389}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-08 14:18:08', '2023-09-08 14:18:08', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Prince George', 'xgieznetworks@gmail.com', NULL, NULL, NULL, NULL, 1, '{101455964167155997952}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-08 17:43:06', '2023-09-08 17:43:06', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Allan Kibet', 'allankibet.mvumuu@gmail.com', NULL, NULL, NULL, NULL, 1, '{100093796764366846151}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-09 07:18:51', '2023-09-09 07:18:51', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'John Mwarabu', 'johnmwarabuchone@gmail.com', NULL, NULL, NULL, NULL, 1, '{115867979578471450859}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-09 09:08:18', '2023-09-09 09:08:18', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Scam mer', 'am.good.scammer@gmail.com', NULL, NULL, NULL, NULL, 1, '{110510650990377701630}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-09 09:21:25', '2023-09-09 09:21:25', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'emmanuel kiptoo', 'emmanukiptoo98@gmail.com', NULL, NULL, NULL, NULL, 1, '{100016712877403330910}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-09 11:35:33', '2023-09-09 11:35:33', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Хусниддин Каюмов', 'husniddinkaumov26@gmail.com', NULL, NULL, NULL, NULL, 1, '{110013393042051681489}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-19 05:43:02', '2023-09-19 05:43:02', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Auxxa App', 'auxxaapp@gmail.com', NULL, NULL, NULL, NULL, 1, '{113452719647687974192}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-19 18:55:34', '2023-09-19 18:55:34', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Master Languages', 'masterlanguages504@gmail.com', NULL, NULL, NULL, NULL, 1, '{106500678483087379576}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-22 17:23:15', '2023-09-22 17:23:15', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'يحيى المتوكل', 'yahya.a1234556@gmail.com', NULL, NULL, NULL, NULL, 1, '{112790037352818072934}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-26 11:08:37', '2023-09-26 11:08:37', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'Ahmed Ahmed said', 'ahmedsaidahmed949@gmail.com', NULL, NULL, NULL, NULL, 1, '{118032450503933383041}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-09-30 03:50:19', '2023-09-30 03:50:19', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'null', 'colinbush.29546@gmail.com', NULL, NULL, NULL, NULL, 1, '{104330707258941990958}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-10-24 06:39:05', '2023-10-24 06:39:05', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Youssouf KONATE', 'youssoufkonate.dev@gmail.com', NULL, NULL, NULL, NULL, 1, '{114805348983363155319}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-11-09 15:18:21', '2023-11-09 15:18:21', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'aarambh', 'aarambhbuy@gmail.com', NULL, NULL, NULL, NULL, 1, '{112263461884843524353}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2023-12-27 09:08:13', '2023-12-27 09:08:13', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Abdulmalek Ba Hamid', 'abdulmalekbahamid@gmail.com', NULL, NULL, NULL, NULL, 1, '{109251877407385321212}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-01-09 00:21:35', '2024-01-09 00:21:35', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'mohamed karam', 'momokaram223@gmail.com', NULL, NULL, NULL, NULL, 1, '{101967901339203417532}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-01-19 14:30:46', '2024-01-19 14:30:46', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Faisal Bugis', 'faisalbugis4@gmail.com', NULL, NULL, NULL, NULL, 1, '{111457633993731897950}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-01-27 05:54:45', '2024-01-27 05:54:45', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'محمود مصطفى', 'mm6803800@gmail.com', NULL, NULL, NULL, NULL, 1, '{108878825652022366698}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-02-05 16:25:29', '2024-02-05 16:25:29', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'يونس yuns', 'yinskjaymywww@gmail.com', NULL, NULL, NULL, NULL, 1, '{103899081826077773406}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-02-10 14:37:31', '2024-02-10 14:37:31', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'قاسم للتقنية', 'mrqaseem11@gmail.com', NULL, NULL, NULL, NULL, 1, '{115818769232044002297}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-02-17 16:12:17', '2024-02-17 16:12:17', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'Bakeel_Alzidy', '776129909za@gmail.com', NULL, NULL, NULL, NULL, 1, '{110912590875510010184}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-02-17 16:31:33', '2024-02-17 16:31:33', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'Super Rankers', 'superrankersltd@gmail.com', NULL, NULL, NULL, NULL, 1, '{105782223427846603772}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-03-03 02:39:04', '2024-03-03 02:39:04', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'نذير النقيب Natheer alnqep', 'engnatheeralnaqep@gmail.com', NULL, NULL, NULL, NULL, 1, '{112655988690827205271}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-03-25 20:57:44', '2024-03-25 20:57:44', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'Ebrahim Thabit', 'ibrahimalhmadi23@gmail.com', NULL, NULL, NULL, NULL, 1, '{102623829234515691949}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-05-03 10:40:22', '2024-05-03 10:40:22', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'Rubel Hasan', NULL, NULL, '$2y$10$wBDcy3uYLNCQICeYaufZpO427G1mbohnylBgkGEctzPhD41UMEa.K', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2024-09-24 20:45:58', '2024-09-24 20:45:58', 0, NULL, 'Junaid Ali', 'Ruma akter', '34393433', 'six', '37541', NULL, NULL),
(112, 'Hasan Ali', NULL, NULL, '$2y$10$kGqO0b/cHXLbjbDP.pMIyePFnIy34Tkye2sYhYqNpi3PqqgqRXrDu', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2024-09-24 20:45:58', '2024-09-24 20:45:58', 0, NULL, 'Abdul Khalek', 'Neha akter', '4343443', 'six', '38389', NULL, NULL),
(113, 'Rubel Hasan', NULL, NULL, '$2y$10$2pIC/P0lfvYTFrT32zXDtOiJmxyQKyuSS2F5a20ZeXVwIIH/0zPkC', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2024-09-24 20:52:06', '2024-09-24 20:52:06', 0, NULL, 'Junaid Ali', 'Ruma akter', '3dfd4393433', 'six', '37166', NULL, NULL),
(114, 'Hasan Ali', NULL, NULL, '$2y$10$jBOyoMs.KXqtuRQ/ED3PKuQqLiHpnEnVmF6bWqgNhfsBkcBiK3aF.', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2024-09-24 20:52:06', '2024-09-24 20:52:06', 0, NULL, 'Abdul Khalek', 'Neha akter', 'dfs4343443', 'six', '37166', NULL, NULL),
(115, 'Rubel Hasan', NULL, NULL, '$2y$10$alC7f.F3b0p0qbbwTI..GOnddVjsRvglxyJ1zd6JCW9DHM0fpqiXq', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2024-09-24 20:56:02', '2024-09-24 20:56:02', 0, NULL, 'Junaid Ali', 'Ruma akter', '3dfd4393433', 'six', '2001-10-02', NULL, NULL),
(116, 'Hasan Ali', NULL, NULL, '$2y$10$DkT5XYhy9psY5cOrXYyc0OfHtp1Ai49Toejwj/hje/fx.zmOtPIWC', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 0, 0, '2024-09-24 20:56:03', '2024-09-24 20:56:03', 0, NULL, 'Abdul Khalek', 'Neha akter', 'dfs4343443', 'six', '2001-10-02', NULL, NULL),
(117, 'Xantha Warren', 'jacix57697@advitize.com', NULL, '$2y$10$zknnGuNLrO8o4FvIQCCSn.TZPROXbUpJmlinTgIpPv75YbMdEJwb6', NULL, NULL, 0, NULL, NULL, NULL, NULL, '+8801792166627', 0, 0, 0, NULL, NULL, 0, '764529', 0, 1, '2024-10-23 01:23:05', '2024-10-23 01:23:05', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'Ali', 'aliofficedev@gmail.com', NULL, NULL, NULL, NULL, 1, '{109639956889208182453}', 'google', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, 1, 0, '2024-10-24 02:01:06', '2024-10-24 02:01:06', 0, NULL, NULL, NULL, NULL, NULL, NULL, 23.7956037, 90.3536548);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amount` double NOT NULL DEFAULT 0,
  `banner_image` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `open_at` varchar(255) DEFAULT NULL,
  `closed_at` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `top_rated` int(11) NOT NULL DEFAULT 0,
  `verified_token` varchar(255) DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `greeting_msg` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `user_id`, `total_amount`, `banner_image`, `logo`, `phone`, `email`, `shop_name`, `slug`, `open_at`, `closed_at`, `address`, `seo_title`, `seo_description`, `status`, `is_featured`, `top_rated`, `verified_token`, `is_verified`, `greeting_msg`, `created_at`, `updated_at`) VALUES
(1, 4, 0, 'uploads/custom-images/seller-banner-2022-09-21-11-58-14-6681.png', 'uploads/custom-images/seller-logo-2022-09-21-11-58-14-9795.png', '01792166627', 'jipof28122@orlydns.com', 'Shopno BD', 'shopno-bd', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Shopno BD', 'Shopno BD', 1, 0, 0, NULL, 0, 'Welcome to Shopno BD', '2022-09-21 05:58:14', '2022-09-21 05:58:32'),
(2, 7, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-10-12-1265.png', 'uploads/custom-images/seller-logo-2022-09-21-01-10-12-2682.png', '01792166627', 'hijigov511@pahed.com', 'Eecoms Shop', 'eecoms-shop', '10.00AM', '10.00AM', 'Dhaka,Bangladesh', 'Eecoms Shop', 'Eecoms Shop', 1, 0, 0, NULL, 0, 'Welcome to Eecoms Shop', '2022-09-21 07:10:12', '2023-01-05 04:34:28'),
(3, 8, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-16-13-9611.png', 'uploads/custom-images/seller-logo-2022-09-21-01-16-13-5847.png', '01792166627', 'fegig12897@ploneix.com', 'Fusion X', 'fusion-x', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Fusion X', 'Fusion X', 0, 0, 0, NULL, 0, 'Welcome to Fusion X', '2022-09-21 07:16:13', '2023-05-01 06:08:28'),
(4, 9, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-19-19-5022.png', 'uploads/custom-images/seller-logo-2022-09-21-01-19-19-3916.png', '01792166627', 'wokij22557@geekjun.com', 'Rikayi Rox', 'rikayi-rox', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Rikayi Rox', 'Rikayi Rox', 1, 0, 0, NULL, 0, 'Welcome to Rikayi Rox', '2022-09-21 07:19:19', '2022-09-21 07:19:24'),
(5, 10, 0, 'uploads/custom-images/seller-banner-2023-05-01-12-04-37-2224.png', 'uploads/custom-images/seller-logo-2022-09-21-01-22-55-6660.png', '01792166627', 'rokayo4006@pahed.com', 'Habbriyi', 'habbriyi', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Habbriyi shop', 'Habbriyi', 1, 0, 0, NULL, 0, 'Welcome to Habbriyi', '2022-09-21 07:22:55', '2023-05-01 06:04:37'),
(6, 12, 0, 'uploads/custom-images/seller-banner-2023-05-01-11-47-59-7349.png', 'uploads/custom-images/seller-logo-2022-09-21-01-30-46-9044.png', '01792166627', 'tofor67338@geekjun.com', 'Rayhans', 'rayhans', '10.10AM', '10.10PM', 'Dhaka,Bangladesh', 'Rayhans Shop', 'Rayhans Shop Updated', 1, 0, 0, NULL, 0, 'Welcome to Rayhans Shop', '2022-09-21 07:30:46', '2024-10-24 04:52:59'),
(8, 7, 0, 'uploads/custom-images/seller-banner-2024-10-14-09-08-23-2445.png', 'uploads/custom-images/seller-logo-2024-10-14-09-08-24-5542.png', '1236-97845', 'shop@gmail.com', 'api test shop name', 'api-test-shop-name', '09:00', '16:00', 'test address', 'api test shop name', 'api test shop name', 0, 0, 0, NULL, 0, 'Welcome to api test shop name', '2024-10-14 15:08:24', '2024-10-14 15:08:24'),
(9, 7, 0, 'uploads/custom-images/seller-banner-2024-10-14-09-10-22-2064.png', 'uploads/custom-images/seller-logo-2024-10-14-09-10-23-4370.png', '1236-97845', 'shop@gmail.com', 'api test shop name', 'api-test-shop-name', '09:00', '16:00', 'test address', 'api test shop name', 'api test shop name', 0, 0, 0, NULL, 0, 'Welcome to api test shop name', '2024-10-14 15:10:23', '2024-10-14 15:10:23'),
(10, 119, 0, 'uploads/custom-images/seller-banner-2024-10-23-10-24-46-4232.jpg', 'uploads/custom-images/seller-logo-2024-10-23-10-24-47-9690.jpg', '02587480', 'check@chec.com', 'check', 'check', '250557', '28 84783900', 'Ahmbffvvbhh', 'check', 'check', 0, 0, 0, NULL, 0, 'Welcome to check', '2024-10-24 02:24:47', '2024-10-24 02:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_social_links`
--

CREATE TABLE `vendor_social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_social_links`
--

INSERT INTO `vendor_social_links` (`id`, `vendor_id`, `icon`, `link`, `created_at`, `updated_at`) VALUES
(4, 5, '()', '()', '2023-05-01 06:04:37', '2023-05-01 06:04:37'),
(7, 6, '()', '()', '2024-10-24 04:52:59', '2024-10-24 04:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 5, 4, '2022-09-21 17:31:07', '2022-09-21 17:31:07'),
(51, 45, 34, '2023-05-02 04:37:41', '2023-05-02 04:37:41'),
(52, 45, 3, '2023-05-02 04:40:10', '2023-05-02 04:40:10'),
(53, 45, 7, '2023-05-02 04:42:18', '2023-05-02 04:42:18'),
(54, 45, 2, '2023-05-02 04:45:19', '2023-05-02 04:45:19'),
(107, 53, 39, '2023-07-11 18:21:41', '2023-07-11 18:21:41'),
(175, 69, 11, '2023-08-17 06:13:07', '2023-08-17 06:13:07'),
(176, 69, 12, '2023-08-17 06:13:09', '2023-08-17 06:13:09'),
(177, 69, 10, '2023-08-17 06:13:44', '2023-08-17 06:13:44'),
(178, 69, 9, '2023-08-17 06:13:45', '2023-08-17 06:13:45'),
(179, 69, 26, '2023-08-17 06:15:12', '2023-08-17 06:15:12'),
(186, 74, 26, '2023-08-25 04:35:41', '2023-08-25 04:35:41'),
(190, 75, 39, '2023-08-26 02:20:30', '2023-08-26 02:20:30'),
(191, 75, 37, '2023-08-26 02:20:32', '2023-08-26 02:20:32'),
(207, 88, 35, '2023-09-09 09:08:59', '2023-09-09 09:08:59'),
(210, 88, 33, '2023-09-09 16:59:54', '2023-09-09 16:59:54'),
(218, 65, 8, '2023-09-27 09:34:47', '2023-09-27 09:34:47'),
(264, 96, 12, '2023-10-24 06:40:19', '2023-10-24 06:40:19'),
(311, 12, 31, '2023-11-28 20:23:46', '2023-11-28 20:23:46'),
(312, 12, 10, '2023-11-28 20:28:07', '2023-11-28 20:28:07'),
(364, 12, 25, '2024-01-28 11:10:18', '2024-01-28 11:10:18'),
(382, 100, 37, '2024-02-20 21:23:11', '2024-02-20 21:23:11'),
(387, 12, 7, '2024-02-23 12:13:39', '2024-02-23 12:13:39'),
(406, 107, 37, '2024-03-25 20:58:46', '2024-03-25 20:58:46'),
(454, 108, 39, '2024-05-03 10:43:42', '2024-05-03 10:43:42'),
(455, 108, 37, '2024-05-03 10:43:44', '2024-05-03 10:43:44'),
(463, 108, 27, '2024-05-16 19:44:14', '2024-05-16 19:44:14'),
(478, 7, 35, '2024-10-22 21:17:33', '2024-10-22 21:17:33'),
(479, 7, 33, '2024-10-22 21:17:34', '2024-10-22 21:17:34'),
(480, 7, 13, '2024-10-23 01:30:52', '2024-10-23 01:30:52'),
(481, 7, 56, '2024-10-23 01:30:57', '2024-10-23 01:30:57'),
(482, 7, 1, '2024-10-24 01:25:16', '2024-10-24 01:25:16'),
(483, 7, 52, '2024-10-24 02:50:11', '2024-10-24 02:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `min_amount` double NOT NULL DEFAULT 0,
  `max_amount` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `name`, `min_amount`, `max_amount`, `withdraw_charge`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bkash Payment', 10, 2000, 18, '<p>bKash Mobile Number</p><p>Amount</p>', 1, '2023-04-16 15:37:32', '2023-04-16 15:37:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `announcement_modals`
--
ALTER TABLE `announcement_modals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_payments`
--
ALTER TABLE `bank_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biztech_sms`
--
ALTER TABLE `biztech_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breadcrumb_images`
--
ALTER TABLE `breadcrumb_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compare_products`
--
ALTER TABLE `compare_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_pages`
--
ALTER TABLE `contact_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_consents`
--
ALTER TABLE `cookie_consents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_states`
--
ALTER TABLE `country_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_countries`
--
ALTER TABLE `currency_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_paginations`
--
ALTER TABLE `custom_paginations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man_reviews`
--
ALTER TABLE `delivery_man_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man_withdraws`
--
ALTER TABLE `delivery_man_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man_withdraw_methods`
--
ALTER TABLE `delivery_man_withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_men_email_unique` (`email`);

--
-- Indexes for table `delivery_messages`
--
ALTER TABLE `delivery_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_configurations`
--
ALTER TABLE `email_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `error_pages`
--
ALTER TABLE `error_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook_comments`
--
ALTER TABLE `facebook_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook_pixels`
--
ALTER TABLE `facebook_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_categories`
--
ALTER TABLE `featured_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flutterwaves`
--
ALTER TABLE `flutterwaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_links`
--
ALTER TABLE `footer_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_social_links`
--
ALTER TABLE `footer_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_analytics`
--
ALTER TABLE `google_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_recaptchas`
--
ALTER TABLE `google_recaptchas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_one_visibilities`
--
ALTER TABLE `home_page_one_visibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instamojo_payments`
--
ALTER TABLE `instamojo_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintainance_texts`
--
ALTER TABLE `maintainance_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mega_menu_categories`
--
ALTER TABLE `mega_menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mega_menu_sub_categories`
--
ALTER TABLE `mega_menu_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_visibilities`
--
ALTER TABLE `menu_visibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_currencies`
--
ALTER TABLE `multi_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myfatoorah_payments`
--
ALTER TABLE `myfatoorah_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_amounts`
--
ALTER TABLE `order_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_bundle_items`
--
ALTER TABLE `order_bundle_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product_variants`
--
ALTER TABLE `order_product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paymongo_payments`
--
ALTER TABLE `paymongo_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_payments`
--
ALTER TABLE `paypal_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paystack_and_mollies`
--
ALTER TABLE `paystack_and_mollies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `popular_categories`
--
ALTER TABLE `popular_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popular_posts`
--
ALTER TABLE `popular_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reports`
--
ALTER TABLE `product_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specification_keys`
--
ALTER TABLE `product_specification_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variant_items`
--
ALTER TABLE `product_variant_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pusher_credentails`
--
ALTER TABLE `pusher_credentails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpay_payments`
--
ALTER TABLE `razorpay_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_mail_logs`
--
ALTER TABLE `seller_mail_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_withdraws`
--
ALTER TABLE `seller_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_cart_bundle_items`
--
ALTER TABLE `shopping_cart_bundle_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_cart_variants`
--
ALTER TABLE `shopping_cart_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_pages`
--
ALTER TABLE `shop_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_login_information`
--
ALTER TABLE `social_login_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sslcommerz_payments`
--
ALTER TABLE `sslcommerz_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tawk_chats`
--
ALTER TABLE `tawk_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `three_column_categories`
--
ALTER TABLE `three_column_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twilio_sms`
--
ALTER TABLE `twilio_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_social_links`
--
ALTER TABLE `vendor_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `announcement_modals`
--
ALTER TABLE `announcement_modals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_payments`
--
ALTER TABLE `bank_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `biztech_sms`
--
ALTER TABLE `biztech_sms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `breadcrumb_images`
--
ALTER TABLE `breadcrumb_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `compare_products`
--
ALTER TABLE `compare_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `contact_pages`
--
ALTER TABLE `contact_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cookie_consents`
--
ALTER TABLE `cookie_consents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `country_states`
--
ALTER TABLE `country_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `currency_countries`
--
ALTER TABLE `currency_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_paginations`
--
ALTER TABLE `custom_paginations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delivery_man_reviews`
--
ALTER TABLE `delivery_man_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_man_withdraws`
--
ALTER TABLE `delivery_man_withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `delivery_man_withdraw_methods`
--
ALTER TABLE `delivery_man_withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_messages`
--
ALTER TABLE `delivery_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_configurations`
--
ALTER TABLE `email_configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `error_pages`
--
ALTER TABLE `error_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facebook_comments`
--
ALTER TABLE `facebook_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facebook_pixels`
--
ALTER TABLE `facebook_pixels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `featured_categories`
--
ALTER TABLE `featured_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `flutterwaves`
--
ALTER TABLE `flutterwaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer_links`
--
ALTER TABLE `footer_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `footer_social_links`
--
ALTER TABLE `footer_social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `google_analytics`
--
ALTER TABLE `google_analytics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `google_recaptchas`
--
ALTER TABLE `google_recaptchas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_page_one_visibilities`
--
ALTER TABLE `home_page_one_visibilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `instamojo_payments`
--
ALTER TABLE `instamojo_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `maintainance_texts`
--
ALTER TABLE `maintainance_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mega_menu_categories`
--
ALTER TABLE `mega_menu_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mega_menu_sub_categories`
--
ALTER TABLE `mega_menu_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu_visibilities`
--
ALTER TABLE `menu_visibilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `multi_currencies`
--
ALTER TABLE `multi_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myfatoorah_payments`
--
ALTER TABLE `myfatoorah_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_addresses`
--
ALTER TABLE `order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_amounts`
--
ALTER TABLE `order_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_bundle_items`
--
ALTER TABLE `order_bundle_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `order_product_variants`
--
ALTER TABLE `order_product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `paymongo_payments`
--
ALTER TABLE `paymongo_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paypal_payments`
--
ALTER TABLE `paypal_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paystack_and_mollies`
--
ALTER TABLE `paystack_and_mollies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `popular_categories`
--
ALTER TABLE `popular_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `popular_posts`
--
ALTER TABLE `popular_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `product_reports`
--
ALTER TABLE `product_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_specification_keys`
--
ALTER TABLE `product_specification_keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_variant_items`
--
ALTER TABLE `product_variant_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pusher_credentails`
--
ALTER TABLE `pusher_credentails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `razorpay_payments`
--
ALTER TABLE `razorpay_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seller_mail_logs`
--
ALTER TABLE `seller_mail_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_withdraws`
--
ALTER TABLE `seller_withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `shopping_cart_bundle_items`
--
ALTER TABLE `shopping_cart_bundle_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_cart_variants`
--
ALTER TABLE `shopping_cart_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `shop_pages`
--
ALTER TABLE `shop_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_login_information`
--
ALTER TABLE `social_login_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sslcommerz_payments`
--
ALTER TABLE `sslcommerz_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=663;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tawk_chats`
--
ALTER TABLE `tawk_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `three_column_categories`
--
ALTER TABLE `three_column_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `twilio_sms`
--
ALTER TABLE `twilio_sms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vendor_social_links`
--
ALTER TABLE `vendor_social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
