-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 02:59 AM
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
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '11111', 'Sales Account', 1000, 1000, 'this is first account', 1, 1, '2018-12-18 02:58:02', '2019-01-20 09:59:06'),
(3, '21211', 'Sa', NULL, 0, NULL, 0, 1, '2018-12-18 02:58:56', '2019-01-20 09:59:06'),
(5, 'bank-1', 'zuhair', 100000, 100000, NULL, NULL, 1, '2022-11-28 05:58:18', '2022-11-28 05:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adjustments`
--

INSERT INTO `adjustments` (`id`, `reference_no`, `warehouse_id`, `document`, `total_qty`, `item`, `note`, `created_at`, `updated_at`) VALUES
(13, 'adr-20230401-093050', 1, NULL, 3, 1, NULL, '2023-04-01 15:30:50', '2023-04-01 15:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) NOT NULL,
  `checkout` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `date`, `employee_id`, `user_id`, `checkin`, `checkout`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, '2019-01-02', 1, 1, '10:00am', '6:30pm', 1, NULL, '2019-01-02 03:30:50', '2019-01-02 03:30:50'),
(3, '2019-01-02', 3, 1, '10:15am', '6:30pm', 0, NULL, '2019-01-02 03:57:12', '2019-01-02 03:57:12'),
(6, '2020-02-03', 1, 1, '11:30am', '6:00pm', 0, NULL, '2020-02-03 09:57:30', '2020-02-03 09:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE `billers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) NOT NULL,
  `vat_number` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'yousuf', 'aks.jpg', 'aks', '31123', 'yousuf@kds.com', '442343324', 'halishahar', 'chittagong', NULL, NULL, 'sdgs', 1, '2018-05-12 21:49:30', '2019-03-02 05:20:38'),
(2, 'tariq', NULL, 'big tree', NULL, 'tariq@bigtree.com', '321312', 'khulshi', 'chittagong', NULL, NULL, NULL, 1, '2018-05-12 21:57:54', '2018-06-15 00:07:11'),
(3, 'test', NULL, 'test', NULL, 'test@test.com', '3211', 'erewrwqre', 'afsf', NULL, NULL, NULL, 0, '2018-05-30 02:38:58', '2018-05-30 02:39:57'),
(5, 'modon', 'mogaTel.jpg', 'mogaTel', '', 'modon@gmail.com', '32321', 'nasirabad', 'chittagong', '', '', 'bd', 1, '2018-09-01 03:59:54', '2018-10-07 02:35:51'),
(6, 'a', NULL, 'a', NULL, 'a@a.com', 'q', 'q', 'q', NULL, NULL, NULL, 0, '2018-10-07 02:33:39', '2018-10-07 02:34:18'),
(7, 'a', NULL, 'a', NULL, 'a@a.com', 'a', 'a', 'a', NULL, NULL, NULL, 0, '2018-10-07 02:34:36', '2018-10-07 02:36:07'),
(8, 'MAA B FROZEN', 'x.png', 'MAA B FROZEN', NULL, 'maabfrozen@techniel.com', '0244766506', 'ACCRA', 'ACCRA', NULL, NULL, 'GHANA', 1, '2019-03-18 11:02:42', '2023-11-28 09:45:06'),
(22, 'asdad345', NULL, 'ssdfsfs', NULL, 'ashfaqdev.php@gmail.com', '5353453', 'dsdsa', 'SFSDFSDF', NULL, NULL, NULL, 0, '2023-05-03 06:21:51', '2023-05-06 10:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'HP', 'HP.jpg', 1, '2018-05-12 09:06:14', '2019-03-02 05:32:21'),
(4, 'samsung', 'samsung.jpg', 1, '2018-05-12 09:08:41', '2018-07-04 03:38:37'),
(5, 'Apple', 'Apple.jpg', 1, '2018-08-31 23:34:49', '2018-12-06 03:05:38'),
(6, 'jjjj', '20201019093419.jpg', 0, '2020-10-19 15:33:52', '2020-10-19 15:35:58'),
(7, 'Lotto', NULL, 1, '2020-11-16 04:13:41', '2020-11-16 04:13:41'),
(8, 'cocacola', NULL, 0, '2022-01-12 13:26:22', '2022-01-12 13:26:30'),
(9, 'pepsi', '20220112072659.jpg', 0, '2022-01-12 13:26:59', '2022-01-12 13:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `cash_registers`
--

CREATE TABLE `cash_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_registers`
--

INSERT INTO `cash_registers` (`id`, `cash_in_hand`, `user_id`, `warehouse_id`, `status`, `created_at`, `updated_at`) VALUES
(10, 195, 42, 1, 0, '2023-11-26 09:55:45', '2024-01-24 15:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(9, 'Food', NULL, NULL, 1, '2018-06-25 01:21:40', '2018-09-03 03:41:28'),
(10, 'Electricals', NULL, NULL, 1, '2024-05-02 15:56:37', '2024-05-02 15:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `amount`, `minimum_amount`, `quantity`, `used`, `expired_date`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'sonar bangla', 'percentage', 20, 0, 100, 4, '2020-11-19', 1, 1, '2018-10-25 22:38:50', '2020-11-18 00:52:39'),
(2, 'i love bangladesh', 'fixed', 200, 1000, 50, 1, '2018-12-31', 1, 1, '2018-10-27 02:59:26', '2019-03-02 05:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', 1, '2020-11-01 00:22:58', '2023-04-02 09:51:28'),
(2, 'Euro', 'Euro', 0.92, '2020-11-01 01:29:12', '2023-04-02 09:51:13'),
(3, 'Ghana Cedi', 'GHS', 1, '2023-05-10 15:34:19', '2023-05-10 15:34:19');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone_number` varchar(191) NOT NULL,
  `tax_no` varchar(191) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `points` double DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `user_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `points`, `deposit`, `expense`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 22, 'dhiman', 'lioncoders', 'dhiman@gmail.com', '+8801111111101', NULL, 'kajir deuri', 'chittagong', NULL, NULL, 'bd', 11, 190, 20, 1, '2018-05-12 10:00:48', '2021-08-08 14:39:20'),
(2, 2, NULL, 'moinul', 'lioncoders', NULL, '+8801200000001', NULL, 'jamalkhan', 'chittagong', NULL, NULL, 'bd', NULL, 100, 20, 1, '2018-05-12 10:04:51', '2019-02-22 05:38:08'),
(3, 3, NULL, 'tariq', 'big tree', NULL, '3424', NULL, 'khulshi', 'chittagong', NULL, NULL, 'bd', NULL, NULL, NULL, 1, '2018-05-12 10:07:52', '2019-03-02 05:54:07'),
(4, 1, NULL, 'test', NULL, NULL, '4234', NULL, 'frwerw', 'qwerwqr', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-05-30 01:35:28', '2018-05-30 01:37:38'),
(8, 1, NULL, 'anwar', 'smart it', 'anwar@smartit.com', '32321', NULL, 'nasirabad', 'chittagong', NULL, NULL, 'bd', NULL, NULL, NULL, 0, '2018-09-01 03:26:13', '2018-09-01 03:29:55'),
(11, 1, NULL, 'walk-in-customer', NULL, NULL, '01923000001', '11111', 'mohammadpur', 'dhaka', NULL, NULL, NULL, 2880, NULL, 0, 1, '2018-09-02 01:30:54', '2024-05-02 23:48:05'),
(15, 1, NULL, 's', NULL, NULL, '2', NULL, 's', '3e', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-11-05 04:00:39', '2018-11-08 03:37:08'),
(16, 1, NULL, 'asas', NULL, NULL, '2121', NULL, 'dasd', 'asdd', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-12-01 00:07:53', '2018-12-03 21:55:46'),
(17, 1, NULL, 'sadman', NULL, NULL, '312312', NULL, 'khulshi', 'ctg', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-06-22 09:45:35', '2020-06-22 09:45:51'),
(19, 1, 19, 'Ashfaq', 'Digital image', 'shakalaka@gmail.com', '1212', '999', 'Andorkillah', 'Chittagong', 'Chittagong', '1234', 'Bangladesh', 6, NULL, NULL, 1, '2020-11-09 00:07:16', '2021-10-14 09:58:20'),
(21, 1, 21, 'Modon Miya', 'modon company', 'modon@gmail.com', '2222', NULL, 'kuril road', 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-11-13 07:12:11', '2020-11-13 07:12:11'),
(25, 1, 28, 'Imran miya', NULL, 'imran@gmail.com', '01923000001', NULL, 'kljkj', 'hhjhh', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-02-04 06:26:47', '2021-02-04 06:26:47'),
(35, 1, NULL, 'Debu', NULL, NULL, '32423', NULL, 'dsfs', 'fsdfs', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-03-13 10:11:21', '2023-03-13 10:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `percentage` varchar(191) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'general', '0', 1, '2018-05-12 08:09:36', '2019-03-02 06:01:35'),
(2, 'distributor', '-10', 1, '2018-05-12 08:12:14', '2019-03-02 06:02:12'),
(3, 'reseller', '5', 1, '2018-05-12 08:12:26', '2018-05-30 01:18:14'),
(4, 'test', '12', 0, '2018-05-30 01:17:16', '2018-05-30 01:17:57'),
(5, 'test', '0', 0, '2018-08-03 09:10:27', '2018-08-03 09:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `belongs_to` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `default_value` text DEFAULT NULL,
  `option_value` text DEFAULT NULL,
  `grid_value` int(11) NOT NULL,
  `is_table` tinyint(1) NOT NULL,
  `is_invoice` tinyint(1) NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_disable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` text NOT NULL,
  `delivered_by` varchar(191) DEFAULT NULL,
  `recieved_by` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `note` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `reference_no`, `sale_id`, `user_id`, `address`, `delivered_by`, `recieved_by`, `file`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dr-20180808-044431', 1, 1, 'kajir deuri chittagong bd', 'abul', 'dhiman', NULL, 'Instrument 1', '3', '2018-08-08 10:44:55', '2020-09-26 12:25:39'),
(2, 'dr-20181106-105936', 88, 1, 'mohammadpur dhaka', NULL, NULL, NULL, NULL, '2', '2018-11-06 04:59:43', '2018-11-06 05:10:38'),
(3, 'dr-20181106-111321', 79, 1, 'mohammadpur dhaka', 'Harun', 'Amjad', NULL, NULL, '3', '2018-11-06 05:13:25', '2020-09-26 13:22:11'),
(5, 'dr-20211218-113624', 354, 1, 'mohammadpur dhaka', NULL, NULL, NULL, NULL, '2', '2021-12-18 05:36:30', '2021-12-18 05:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Sale', 1, '2018-12-27 05:16:47', '2018-12-27 10:40:23'),
(2, 'xyz', 1, '2018-12-27 10:28:47', '2018-12-27 10:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `amount`, `customer_id`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 90, 1, 1, 'first deposit', '2018-08-25 22:48:23', '2018-08-26 01:18:55'),
(3, 100, 2, 1, NULL, '2018-08-26 00:53:16', '2018-08-26 21:42:39'),
(4, 50, 1, 1, NULL, '2018-09-04 22:56:19', '2018-09-04 22:56:19'),
(5, 50, 1, 1, NULL, '2018-09-10 00:08:40', '2018-09-10 00:08:40'),
(6, 100, 41, 1, NULL, '2023-04-29 06:39:32', '2023-04-29 06:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `applicable_for` varchar(191) NOT NULL,
  `product_list` longtext DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_till` date NOT NULL,
  `type` varchar(191) NOT NULL,
  `value` double NOT NULL,
  `minimum_qty` double NOT NULL,
  `maximum_qty` double NOT NULL,
  `days` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `name`, `applicable_for`, `product_list`, `valid_from`, `valid_till`, `type`, `value`, `minimum_qty`, `maximum_qty`, `days`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '10% discount', 'Specific', '5,3', '2022-02-03', '2022-12-31', 'percentage', 10, 2, 3, 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', 1, '2022-02-03 13:02:17', '2022-04-23 12:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `discount_plans`
--

CREATE TABLE `discount_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_plans`
--

INSERT INTO `discount_plans` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'VIP plan', 1, '2022-02-03 12:58:12', '2022-02-03 12:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `discount_plan_customers`
--

CREATE TABLE `discount_plan_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_plan_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_plan_customers`
--

INSERT INTO `discount_plan_customers` (`id`, `discount_plan_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-02-03 12:58:12', '2022-02-03 12:58:12'),
(2, 1, 19, '2022-02-03 12:58:12', '2022-02-03 12:58:12'),
(3, 1, 3, '2022-12-06 12:07:17', '2022-12-06 12:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `discount_plan_discounts`
--

CREATE TABLE `discount_plan_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_id` int(11) NOT NULL,
  `discount_plan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_plan_discounts`
--

INSERT INTO `discount_plan_discounts` (`id`, `discount_id`, `discount_plan_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-02-03 13:02:17', '2022-02-03 13:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `dso_alerts`
--

CREATE TABLE `dso_alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_info` longtext NOT NULL,
  `number_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dso_alerts`
--

INSERT INTO `dso_alerts` (`id`, `product_info`, `number_of_products`, `created_at`, `updated_at`) VALUES
(1, '[{\"name\":\"Baby doll\",\"code\":\"31261512\"}]', 1, '2022-05-28 05:27:46', '2022-05-28 05:27:46');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone_number`, `department_id`, `user_id`, `image`, `address`, `city`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'john', 'john@gmail.com', '10001', 2, 12, 'johngmailcom.jpg', 'GEC', 'chittagong', 'Bangladesh', 1, '2018-12-30 00:48:37', '2019-03-02 06:50:23'),
(3, 'tests', 'test@test.com', '111', 1, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-30 22:20:51', '2019-01-03 00:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(191) NOT NULL,
  `site_logo` varchar(191) DEFAULT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `currency` varchar(191) NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `staff_access` varchar(191) NOT NULL,
  `date_format` varchar(191) NOT NULL,
  `developed_by` varchar(191) DEFAULT NULL,
  `invoice_format` varchar(191) DEFAULT NULL,
  `decimal` int(11) DEFAULT 2,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) NOT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `is_rtl`, `currency`, `package_id`, `staff_access`, `date_format`, `developed_by`, `invoice_format`, `decimal`, `state`, `theme`, `created_at`, `updated_at`, `currency_position`, `expiry_date`) VALUES
(1, 'MAA B FROZEN-POS', '20220905125905.png', 0, '3', NULL, 'own', 'd-m-Y', 'TechNiel', 'standard', 2, 1, 'default.css', '2018-07-06 06:13:11', '2023-05-10 15:35:11', 'prefix', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_no` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_cards`
--

INSERT INTO `gift_cards` (`id`, `card_no`, `amount`, `expense`, `customer_id`, `user_id`, `expired_date`, `created_by`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '3571097513020486', 1400, 450, 1, NULL, '2020-12-31', 1, 0, '2018-08-18 01:57:40', '2023-11-23 11:49:02'),
(2, '0452297501931931', 500, 100, 2, NULL, '2021-12-31', 1, 0, '2018-08-18 02:46:43', '2023-11-23 11:48:55'),
(3, '123', 13123, 0, 1, NULL, '2018-08-19', 1, 0, '2018-08-18 22:38:21', '2018-08-18 22:38:28'),
(4, '1862381252690499', 100, 0, NULL, 1, '2018-10-04', 1, 0, '2018-09-30 00:16:28', '2018-09-30 00:17:21'),
(5, '2300813717254199', 143, 0, NULL, 1, '2018-10-04', 1, 0, '2018-09-30 00:18:49', '2018-09-30 00:20:20'),
(6, '8327019475026421', 1, 0, 1, NULL, '2018-10-07', 1, 0, '2018-10-07 03:12:41', '2018-10-07 03:12:55'),
(7, '2063379780590151', 1, 0, 1, NULL, '2018-10-23', 1, 0, '2018-10-23 00:23:22', '2018-10-23 00:23:39'),
(8, '1305142989798205', 250, 250, 11, NULL, '2024-05-04', 1, 1, '2024-05-02 16:38:10', '2024-05-02 16:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_recharges`
--

CREATE TABLE `gift_card_recharges` (
  `id` int(10) UNSIGNED NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_card_recharges`
--

INSERT INTO `gift_card_recharges` (`id`, `gift_card_id`, `amount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 100, 1, '2018-08-24 23:08:29', '2018-08-24 23:08:29'),
(2, 1, 200, 1, '2018-08-24 23:08:50', '2018-08-24 23:08:50'),
(3, 1, 100, 1, '2018-09-04 23:50:41', '2018-09-04 23:50:41'),
(4, 1, 50, 1, '2018-09-04 23:51:38', '2018-09-04 23:51:38'),
(5, 1, 50, 1, '2018-09-04 23:53:36', '2018-09-04 23:53:36'),
(6, 2, 50, 1, '2018-09-04 23:54:34', '2018-09-04 23:54:34'),
(7, 5, 10, 1, '2018-09-30 00:19:48', '2018-09-30 00:19:48'),
(8, 5, 10, 1, '2018-09-30 00:20:04', '2018-09-30 00:20:04'),
(9, 2, 100, 1, '2018-10-07 03:13:05', '2018-10-07 03:13:05'),
(10, 1, 200, 1, '2018-10-07 03:13:39', '2018-10-07 03:13:39'),
(11, 1, 300, 1, '2018-10-23 00:22:49', '2018-10-23 00:22:49'),
(12, 2, 130, 1, '2021-02-11 07:36:01', '2021-02-11 07:36:01'),
(13, 8, 200, 1, '2024-05-02 16:38:46', '2024-05-02 16:38:46');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_settings`
--

CREATE TABLE `hrm_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkin` varchar(191) NOT NULL,
  `checkout` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_settings`
--

INSERT INTO `hrm_settings` (`id`, `checkin`, `checkout`, `created_at`, `updated_at`) VALUES
(1, '10:00am', '6:00pm', '2019-01-02 02:20:08', '2019-01-02 04:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en', '2018-07-07 22:59:17', '2019-12-24 17:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `mail_settings`
--

CREATE TABLE `mail_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver` varchar(191) NOT NULL,
  `host` varchar(191) NOT NULL,
  `port` varchar(191) NOT NULL,
  `from_address` varchar(191) NOT NULL,
  `from_name` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `encryption` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_17_060412_create_categories_table', 1),
(4, '2018_02_20_035727_create_brands_table', 1),
(5, '2018_02_25_100635_create_suppliers_table', 1),
(6, '2018_02_27_101619_create_warehouse_table', 1),
(7, '2018_03_03_040448_create_units_table', 1),
(8, '2018_03_04_041317_create_taxes_table', 1),
(9, '2018_03_10_061915_create_customer_groups_table', 1),
(10, '2018_03_10_090534_create_customers_table', 1),
(11, '2018_03_11_095547_create_billers_table', 1),
(12, '2018_04_05_054401_create_products_table', 1),
(13, '2018_04_06_133606_create_purchases_table', 1),
(14, '2018_04_06_154600_create_product_purchases_table', 1),
(15, '2018_04_06_154915_create_product_warhouse_table', 1),
(16, '2018_04_10_085927_create_sales_table', 1),
(17, '2018_04_10_090133_create_product_sales_table', 1),
(18, '2018_04_10_090254_create_payments_table', 1),
(19, '2018_04_10_090341_create_payment_with_cheque_table', 1),
(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1),
(21, '2018_04_13_121436_create_quotation_table', 1),
(22, '2018_04_13_122324_create_product_quotation_table', 1),
(23, '2018_04_14_121802_create_transfers_table', 1),
(24, '2018_04_14_121913_create_product_transfer_table', 1),
(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 2),
(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 3),
(27, '2018_05_20_054532_create_adjustments_table', 4),
(28, '2018_05_20_054859_create_product_adjustments_table', 4),
(29, '2018_05_21_163419_create_returns_table', 5),
(30, '2018_05_21_163443_create_product_returns_table', 5),
(31, '2018_06_02_050905_create_roles_table', 6),
(32, '2018_06_02_073430_add_columns_to_users_table', 7),
(33, '2018_06_03_053738_create_permission_tables', 8),
(36, '2018_06_21_063736_create_pos_setting_table', 9),
(37, '2018_06_21_094155_add_user_id_to_sales_table', 10),
(38, '2018_06_21_101529_add_user_id_to_purchases_table', 11),
(39, '2018_06_21_103512_add_user_id_to_transfers_table', 12),
(40, '2018_06_23_061058_add_user_id_to_quotations_table', 13),
(41, '2018_06_23_082427_add_is_deleted_to_users_table', 14),
(42, '2018_06_25_043308_change_email_to_users_table', 15),
(43, '2018_07_06_115449_create_general_settings_table', 16),
(44, '2018_07_08_043944_create_languages_table', 17),
(45, '2018_07_11_102144_add_user_id_to_returns_table', 18),
(46, '2018_07_11_102334_add_user_id_to_payments_table', 18),
(47, '2018_07_22_130541_add_digital_to_products_table', 19),
(49, '2018_07_24_154250_create_deliveries_table', 20),
(50, '2018_08_16_053336_create_expense_categories_table', 21),
(51, '2018_08_17_115415_create_expenses_table', 22),
(55, '2018_08_18_050418_create_gift_cards_table', 23),
(56, '2018_08_19_063119_create_payment_with_gift_card_table', 24),
(57, '2018_08_25_042333_create_gift_card_recharges_table', 25),
(58, '2018_08_25_101354_add_deposit_expense_to_customers_table', 26),
(59, '2018_08_26_043801_create_deposits_table', 27),
(60, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 28),
(61, '2018_09_09_092713_create_payment_with_paypal_table', 29),
(62, '2018_09_10_051254_add_currency_to_general_settings_table', 30),
(63, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 31),
(65, '2018_10_26_034927_create_coupons_table', 32),
(66, '2018_10_27_090857_add_coupon_to_sales_table', 33),
(67, '2018_11_07_070155_add_currency_position_to_general_settings_table', 34),
(68, '2018_11_19_094650_add_combo_to_products_table', 35),
(69, '2018_12_09_043712_create_accounts_table', 36),
(70, '2018_12_17_112253_add_is_default_to_accounts_table', 37),
(71, '2018_12_19_103941_add_account_id_to_payments_table', 38),
(72, '2018_12_20_065900_add_account_id_to_expenses_table', 39),
(73, '2018_12_20_082753_add_account_id_to_returns_table', 40),
(74, '2018_12_26_064330_create_return_purchases_table', 41),
(75, '2018_12_26_144210_create_purchase_product_return_table', 42),
(76, '2018_12_26_144708_create_purchase_product_return_table', 43),
(77, '2018_12_27_110018_create_departments_table', 44),
(78, '2018_12_30_054844_create_employees_table', 45),
(79, '2018_12_31_125210_create_payrolls_table', 46),
(80, '2018_12_31_150446_add_department_id_to_employees_table', 47),
(81, '2019_01_01_062708_add_user_id_to_expenses_table', 48),
(82, '2019_01_02_075644_create_hrm_settings_table', 49),
(83, '2019_01_02_090334_create_attendances_table', 50),
(84, '2019_01_27_160956_add_three_columns_to_general_settings_table', 51),
(85, '2019_02_15_183303_create_stock_counts_table', 52),
(86, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 53),
(87, '2019_04_13_101707_add_tax_no_to_customers_table', 54),
(89, '2019_10_14_111455_create_holidays_table', 55),
(90, '2019_11_13_145619_add_is_variant_to_products_table', 56),
(91, '2019_11_13_150206_create_product_variants_table', 57),
(92, '2019_11_13_153828_create_variants_table', 57),
(93, '2019_11_25_134041_add_qty_to_product_variants_table', 58),
(94, '2019_11_25_134922_add_variant_id_to_product_purchases_table', 58),
(95, '2019_11_25_145341_add_variant_id_to_product_warehouse_table', 58),
(96, '2019_11_29_182201_add_variant_id_to_product_sales_table', 59),
(97, '2019_12_04_121311_add_variant_id_to_product_quotation_table', 60),
(98, '2019_12_05_123802_add_variant_id_to_product_transfer_table', 61),
(100, '2019_12_08_114954_add_variant_id_to_product_returns_table', 62),
(101, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 63),
(102, '2020_02_28_103340_create_money_transfers_table', 64),
(103, '2020_07_01_193151_add_image_to_categories_table', 65),
(105, '2020_09_26_130426_add_user_id_to_deliveries_table', 66),
(107, '2020_10_11_125457_create_cash_registers_table', 67),
(108, '2020_10_13_155019_add_cash_register_id_to_sales_table', 68),
(109, '2020_10_13_172624_add_cash_register_id_to_returns_table', 69),
(110, '2020_10_17_212338_add_cash_register_id_to_payments_table', 70),
(111, '2020_10_18_124200_add_cash_register_id_to_expenses_table', 71),
(112, '2020_10_21_121632_add_developed_by_to_general_settings_table', 72),
(113, '2019_08_19_000000_create_failed_jobs_table', 73),
(114, '2020_10_30_135557_create_notifications_table', 73),
(115, '2020_11_01_044954_create_currencies_table', 74),
(116, '2020_11_01_140736_add_price_to_product_warehouse_table', 75),
(117, '2020_11_02_050633_add_is_diff_price_to_products_table', 76),
(118, '2020_11_09_055222_add_user_id_to_customers_table', 77),
(119, '2020_11_17_054806_add_invoice_format_to_general_settings_table', 78),
(120, '2021_02_10_074859_add_variant_id_to_product_adjustments_table', 79),
(121, '2021_03_07_093606_create_product_batches_table', 80),
(122, '2021_03_07_093759_add_product_batch_id_to_product_warehouse_table', 80),
(123, '2021_03_07_093900_add_product_batch_id_to_product_purchases_table', 80),
(124, '2021_03_11_132603_add_product_batch_id_to_product_sales_table', 81),
(127, '2021_03_25_125421_add_is_batch_to_products_table', 82),
(128, '2021_05_19_120127_add_product_batch_id_to_product_returns_table', 82),
(130, '2021_05_22_105611_add_product_batch_id_to_purchase_product_return_table', 83),
(131, '2021_05_23_124848_add_product_batch_id_to_product_transfer_table', 84),
(132, '2021_05_26_153106_add_product_batch_id_to_product_quotation_table', 85),
(133, '2021_06_08_213007_create_reward_point_settings_table', 86),
(134, '2021_06_16_104155_add_points_to_customers_table', 87),
(135, '2021_06_17_101057_add_used_points_to_payments_table', 88),
(136, '2021_07_06_132716_add_variant_list_to_products_table', 89),
(137, '2021_09_27_161141_add_is_imei_to_products_table', 90),
(138, '2021_09_28_170052_add_imei_number_to_product_warehouse_table', 91),
(139, '2021_09_28_170126_add_imei_number_to_product_purchases_table', 91),
(140, '2021_10_03_170652_add_imei_number_to_product_sales_table', 92),
(141, '2021_10_10_145214_add_imei_number_to_product_returns_table', 93),
(142, '2021_10_11_104504_add_imei_number_to_product_transfer_table', 94),
(143, '2021_10_12_160107_add_imei_number_to_purchase_product_return_table', 95),
(144, '2021_10_12_205146_add_is_rtl_to_general_settings_table', 96),
(145, '2021_10_23_142451_add_is_approve_to_payments_table', 97),
(146, '2022_01_13_191242_create_discount_plans_table', 97),
(147, '2022_01_14_174318_create_discount_plan_customers_table', 97),
(148, '2022_01_14_202439_create_discounts_table', 98),
(149, '2022_01_16_153506_create_discount_plan_discounts_table', 98),
(150, '2022_02_05_174210_add_order_discount_type_and_value_to_sales_table', 99),
(154, '2022_05_26_195506_add_daily_sale_objective_to_products_table', 100),
(155, '2022_05_28_104209_create_dso_alerts_table', 101),
(156, '2022_06_01_112100_add_is_embeded_to_products_table', 102),
(157, '2022_06_14_130505_add_sale_id_to_returns_table', 103),
(159, '2022_07_19_115504_add_variant_data_to_products_table', 104),
(160, '2022_07_25_194300_add_additional_cost_to_product_variants_table', 104),
(161, '2022_09_04_195610_add_purchase_id_to_return_purchases_table', 105),
(162, '2023_01_18_123842_alter_table_pos_setting', 106),
(164, '2023_01_18_125040_alter_table_general_settings', 107),
(165, '2023_01_18_133701_alter_table_pos_setting', 108),
(166, '2023_01_25_145309_add_expiry_date_to_general_settings_table', 109),
(167, '2023_02_23_125656_alter_table_sales', 110),
(168, '2023_02_26_124100_add_package_id_to_general_settings_table', 111),
(169, '2023_03_04_120325_create_custom_fields_table', 111),
(170, '2023_03_22_174352_add_currency_id_and_exchange_rate_to_returns_table', 112),
(171, '2023_03_27_114320_add_currency_id_and_exchange_rate_to_purchases_table', 113),
(172, '2023_03_27_132747_add_currency_id_and_exchange_rate_to_return_purchases_table', 114),
(173, '2023_04_25_150236_create_mail_settings_table', 115);

-- --------------------------------------------------------

--
-- Table structure for table `money_transfers`
--

CREATE TABLE `money_transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `money_transfers`
--

INSERT INTO `money_transfers` (`id`, `reference_no`, `from_account_id`, `to_account_id`, `amount`, `created_at`, `updated_at`) VALUES
(2, 'mtr-20200228-071852', 1, 3, 100, '2020-02-28 13:18:52', '2020-02-28 13:18:52'),
(3, 'mtr-20221128-120014', 5, 1, 10000, '2022-11-28 06:00:14', '2022-11-28 06:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('55018eeb-b30f-4ddd-a2d3-2e69d8293e64', 'App\\Notifications\\SendNotification', 'App\\User', 9, '{\"sender_id\":\"1\",\"receiver_id\":\"9\",\"reminder_date\":\"2023-04-04\",\"document_name\":null,\"message\":\"first reminder\"}', '2023-04-04 06:04:41', '2023-04-04 06:03:50', '2023-04-04 06:04:41'),
('9bf0de38-65d8-462d-b7e2-58ca84f88e57', 'App\\Notifications\\SendNotification', 'App\\User', 9, '{\"sender_id\":\"1\",\"receiver_id\":\"9\",\"reminder_date\":\"2023-04-05\",\"document_name\":null,\"message\":\"second reminder\"}', NULL, '2023-04-04 06:05:33', '2023-04-04 06:05:33'),
('d0623880-4199-459c-af55-3bc1464cbe71', 'App\\Notifications\\SendNotification', 'App\\User', 9, '{\"sender_id\":\"1\",\"receiver_id\":\"9\",\"document_name\":\"20220523012859.jpg\",\"message\":\"hjhjhh\"}', '2022-05-23 09:50:47', '2022-05-23 07:29:00', '2022-05-23 09:50:47'),
('ea3e6ccc-a25a-44b7-8e43-b0ab09204ee6', 'App\\Notifications\\SendNotification', 'App\\User', 9, '{\"sender_id\":\"1\",\"receiver_id\":\"9\",\"document_name\":null,\"message\":\"hello\"}', '2022-05-23 10:24:31', '2022-05-23 10:24:06', '2022-05-23 10:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_reference` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `used_points` double DEFAULT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) NOT NULL,
  `payment_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_reference`, `user_id`, `purchase_id`, `sale_id`, `cash_register_id`, `account_id`, `amount`, `used_points`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES
(33, 'spr-20180809-055453', 1, NULL, 2, NULL, 1, 1000, NULL, 0, 'Cash', NULL, '2018-08-08 23:54:53', '2018-08-08 23:54:53'),
(34, 'spr-20180809-055553', 1, NULL, 2, NULL, 1, 1200, NULL, 0, 'Cheque', NULL, '2018-08-08 23:55:53', '2018-08-08 23:56:36'),
(35, 'spr-20180809-063214', 1, NULL, 3, NULL, 1, 897, NULL, 0, 'Cheque', NULL, '2018-08-09 00:32:14', '2018-08-09 00:32:14'),
(36, 'spr-20180825-034836', 1, NULL, 4, NULL, 1, 100, NULL, 0, 'Gift Card', '100 bucks paid...', '2018-08-24 21:48:36', '2018-08-25 00:57:35'),
(39, 'spr-20180825-083634', 1, NULL, 4, NULL, 1, 200, NULL, 0, 'Gift Card', NULL, '2018-08-25 02:36:34', '2018-08-25 02:36:34'),
(41, 'spr-20180826-094836', 1, NULL, 6, NULL, 1, 20, NULL, 0, 'Deposit', '20 bucks paid', '2018-08-26 03:48:36', '2018-08-26 21:42:13'),
(42, 'spr-20180827-073545', 1, NULL, 7, NULL, 1, 880, NULL, 0, 'Cash', NULL, '2018-08-27 01:35:45', '2018-08-27 01:35:45'),
(43, 'ppr-20180830-071637', 1, 13, NULL, NULL, 1, 100, NULL, 0, 'Cash', '100 bucks paid...', '2018-08-30 01:16:37', '2018-08-30 01:16:37'),
(44, 'ppr-20180830-090718', 1, 13, NULL, NULL, 1, 200, NULL, 0, 'Cheque', NULL, '2018-08-30 03:07:18', '2018-08-30 03:07:18'),
(46, 'spr-20180902-053954', 1, NULL, 8, NULL, 1, 3529.8, NULL, 0, 'Cash', 'fully paid', '2018-09-01 23:39:54', '2018-09-01 23:39:54'),
(49, 'spr-20180903-033314', 1, NULL, 9, NULL, 1, 20, NULL, 0, 'Deposit', 'fully paid', '2018-09-02 21:33:14', '2018-09-02 21:33:14'),
(50, 'spr-20180903-050138', 1, NULL, 10, NULL, 1, 200, NULL, 0, 'Gift Card', '50 bucks due...', '2018-09-02 23:01:38', '2018-09-09 21:40:28'),
(51, 'spr-20180903-100821', 1, NULL, 11, NULL, 1, 5500, NULL, 0, 'Cheque', NULL, '2018-09-03 04:08:21', '2018-09-03 04:08:21'),
(53, 'ppr-20180903-101524', 1, 16, NULL, NULL, 1, 1750, NULL, 0, 'Cheque', NULL, '2018-09-03 04:15:24', '2018-10-06 01:09:20'),
(78, 'spr-20180926-092105', 1, NULL, 31, NULL, 1, 560, NULL, 0, 'Cash', NULL, '2018-09-26 03:21:05', '2018-09-26 03:21:05'),
(79, 'spr-20181006-065017', 1, NULL, 30, NULL, 1, 100, NULL, 0, 'Cheque', NULL, '2018-10-06 00:50:17', '2018-10-06 00:51:55'),
(80, 'spr-20181006-065222', 1, NULL, 30, NULL, 1, 20, NULL, 0, 'Cash', NULL, '2018-10-06 00:52:22', '2018-10-06 00:52:22'),
(82, 'ppr-20181006-070935', 1, 16, NULL, NULL, 1, 1600, NULL, 0, 'Cash', NULL, '2018-10-06 01:09:35', '2018-10-06 01:09:35'),
(83, 'spr-20181010-041636', 1, NULL, 41, NULL, 1, 461, NULL, 0, 'Cash', NULL, '2018-10-09 22:16:36', '2018-10-09 22:16:36'),
(84, 'spr-20181010-053456', 1, NULL, 42, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2018-10-09 23:34:56', '2018-10-09 23:34:56'),
(91, 'spr-20181021-065338', 1, NULL, 55, NULL, 1, 250, NULL, 0, 'Cash', NULL, '2018-10-21 00:53:38', '2018-10-21 00:53:38'),
(92, 'spr-20181021-082618', 1, NULL, 57, NULL, 1, 575.2, NULL, 0, 'Cash', NULL, '2018-10-21 02:26:18', '2018-10-21 02:26:18'),
(93, 'spr-20181022-032730', 1, NULL, 58, NULL, 1, 1220, NULL, 0, 'Cash', NULL, '2018-10-22 09:27:30', '2018-10-22 09:27:30'),
(104, 'spr-20181023-071548', 11, NULL, 73, NULL, 1, 5500, NULL, 0, 'Cash', NULL, '2018-10-23 01:15:48', '2018-10-23 01:15:48'),
(105, 'spr-20181023-071648', 1, NULL, 74, NULL, 1, 2320, NULL, 0, 'Cash', NULL, '2018-10-23 01:16:48', '2018-10-23 01:16:48'),
(126, 'spr-20181101-050033', 1, NULL, 75, NULL, 1, 7678, NULL, 0, 'Cash', NULL, '2018-10-31 23:00:33', '2018-10-31 23:00:33'),
(127, 'spr-20181101-050130', 1, NULL, 76, NULL, 1, 1424, NULL, 0, 'Cash', NULL, '2018-10-31 23:01:30', '2018-11-08 03:44:51'),
(129, 'spr-20181105-091523', 1, NULL, 79, NULL, 1, 14454, NULL, 0, 'Cash', NULL, '2018-11-05 03:15:23', '2018-11-05 03:15:23'),
(130, 'spr-20181105-092002', 1, NULL, 80, NULL, 1, 2500, NULL, 0, 'Cash', NULL, '2018-11-05 03:20:02', '2018-11-05 03:20:02'),
(131, 'ppr-20181105-092128', 1, 24, NULL, NULL, 1, 15950, NULL, 0, 'Cash', NULL, '2018-11-05 03:21:28', '2018-11-05 03:21:28'),
(137, 'spr-20181105-095952', 1, NULL, 86, NULL, 1, 1100, NULL, 0, 'Cash', NULL, '2018-11-05 03:59:52', '2018-11-05 03:59:52'),
(138, 'spr-20181105-100310', 1, NULL, 88, NULL, 1, 1100, NULL, 0, 'Cash', NULL, '2018-11-05 04:03:10', '2018-11-05 04:03:10'),
(139, 'spr-20181126-020534', 1, NULL, 94, NULL, 1, 120, NULL, 0, 'Cash', NULL, '2018-11-26 08:05:34', '2018-11-26 08:05:34'),
(140, 'spr-20181128-071515', 1, NULL, 96, NULL, 1, 132, NULL, 0, 'Cash', NULL, '2018-11-28 01:15:15', '2018-11-28 01:15:15'),
(141, 'spr-20181201-060524', 1, NULL, 97, NULL, 1, 200, NULL, 300, 'Cash', NULL, '2018-12-01 00:05:24', '2018-12-04 00:21:05'),
(148, 'ppr-20181204-065932', 1, 23, NULL, NULL, 1, 500, NULL, 500, 'Cash', NULL, '2018-12-04 00:59:32', '2018-12-04 00:59:44'),
(149, 'ppr-20181205-053443', 1, 25, NULL, NULL, 1, 4450, NULL, 550, 'Cash', NULL, '2018-12-04 23:34:43', '2018-12-04 23:34:43'),
(150, 'spr-20181205-053608', 1, NULL, 98, NULL, 1, 800, NULL, 200, 'Cash', NULL, '2018-12-04 23:36:08', '2018-12-04 23:36:08'),
(151, 'spr-20181205-053724', 1, NULL, 99, NULL, 1, 800, NULL, 0, 'Cash', NULL, '2018-12-04 23:37:24', '2018-12-04 23:37:24'),
(152, 'spr-20181208-062032', 1, NULL, 101, NULL, 1, 100, NULL, 400, 'Cash', NULL, '2018-12-08 00:20:32', '2018-12-11 03:19:39'),
(157, 'ppr-20181220-063439', 1, 27, NULL, NULL, 1, 10, NULL, 0, 'Cash', NULL, '2018-12-20 00:34:39', '2018-12-20 00:35:01'),
(159, 'spr-20181224-045832', 1, NULL, 103, NULL, 1, 120, NULL, 0, 'Cash', NULL, '2018-12-23 22:58:32', '2018-12-23 22:58:32'),
(160, 'spr-20190101-054544', 1, NULL, 105, NULL, 1, 21, NULL, 0, 'Cash', NULL, '2018-12-31 23:45:44', '2018-12-31 23:45:44'),
(161, 'spr-20190101-091040', 1, NULL, 106, NULL, 1, 860, NULL, 0, 'Cash', NULL, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(162, 'spr-20190103-065627', 1, NULL, 107, NULL, 1, 5040, NULL, 960, 'Cash', NULL, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(163, 'spr-20190120-035824', 1, NULL, 108, NULL, 1, 120, NULL, 0, 'Cash', NULL, '2019-01-20 09:58:24', '2019-01-20 09:58:24'),
(164, 'ppr-20190129-100302', 9, 36, NULL, NULL, 1, 650, NULL, 350, 'Cash', NULL, '2019-01-29 04:03:02', '2019-01-29 04:03:02'),
(165, 'ppr-20190129-100324', 9, 34, NULL, NULL, 1, 2860, NULL, 140, 'Cash', NULL, '2019-01-29 04:03:24', '2019-01-29 04:03:24'),
(166, 'spr-20190129-101451', 9, NULL, 109, NULL, 1, 540, NULL, 460, 'Cash', NULL, '2019-01-29 04:14:51', '2019-01-29 04:14:51'),
(167, 'spr-20190129-115048', 9, NULL, 110, NULL, 1, 1700, NULL, 300, 'Cash', NULL, '2019-01-29 05:50:48', '2019-01-29 05:50:48'),
(168, 'spr-20190131-110839', 9, NULL, 111, NULL, 1, 271, NULL, 0, 'Cash', NULL, '2019-01-31 05:08:39', '2019-01-31 05:08:39'),
(169, 'spr-20190202-104045', 1, NULL, 112, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2019-02-02 04:40:45', '2019-02-02 04:40:45'),
(170, 'spr-20190202-114117', 1, NULL, 113, NULL, 1, 350, NULL, 0, 'Cash', NULL, '2019-02-02 05:41:17', '2019-02-02 05:41:17'),
(171, 'spr-20190205-030454', 1, NULL, 114, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2019-02-05 09:04:54', '2019-02-05 09:04:54'),
(176, 'ppr-20190207-125418', 1, 35, NULL, NULL, 1, 50, NULL, 50, 'Cash', NULL, '2019-02-07 06:54:18', '2019-02-07 07:05:23'),
(178, 'ppr-20190207-010640', 1, 35, NULL, NULL, 1, 50, NULL, 50, 'Cheque', NULL, '2019-02-07 07:06:40', '2019-02-07 07:07:04'),
(179, 'spr-20190207-010915', 1, NULL, 120, NULL, 1, 50, NULL, 50, 'Cash', NULL, '2019-02-07 07:09:15', '2019-02-07 07:09:15'),
(180, 'spr-20190209-104816', 1, NULL, 121, NULL, 1, 1272, NULL, 728, 'Cash', NULL, '2019-02-09 04:48:16', '2019-02-09 04:48:16'),
(181, 'ppr-20190209-104940', 1, 38, NULL, NULL, 1, 1660, NULL, 0, 'Cash', NULL, '2019-02-09 04:49:40', '2019-02-09 04:49:40'),
(182, 'ppr-20190209-104959', 1, 39, NULL, NULL, 1, 973.5, NULL, 0, 'Cash', NULL, '2019-02-09 04:49:59', '2019-02-09 04:49:59'),
(183, 'spr-20190219-023214', 1, NULL, 123, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2019-02-19 08:32:14', '2019-02-19 08:32:14'),
(189, 'spr-20190303-104010', 1, NULL, 127, NULL, 1, 2500, NULL, 0, 'Cash', NULL, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(190, 'ppr-20190303-104046', 1, 40, NULL, NULL, 1, 100, NULL, 0, 'Cash', NULL, '2019-03-03 04:40:46', '2019-03-03 04:40:46'),
(191, 'ppr-20190303-104222', 1, 37, NULL, NULL, 1, 4000, NULL, 0, 'Cash', NULL, '2019-03-03 04:42:22', '2019-03-03 04:42:22'),
(192, 'ppr-20190303-104414', 1, 41, NULL, NULL, 1, 1000, NULL, 0, 'Cash', NULL, '2019-03-03 04:44:14', '2019-03-03 04:44:14'),
(193, 'spr-20190404-095555', 1, NULL, 128, NULL, 1, 560, NULL, 0, 'Cash', NULL, '2019-04-04 03:55:55', '2019-04-04 03:55:55'),
(194, 'ppr-20190404-095910', 1, 42, NULL, NULL, 1, 300, NULL, 200, 'Cash', NULL, '2019-04-04 03:59:10', '2019-04-13 10:52:38'),
(195, 'spr-20190404-095937', 1, NULL, 129, NULL, 1, 120, NULL, 0, 'Cash', NULL, '2019-04-04 03:59:37', '2019-04-04 03:59:37'),
(196, 'spr-20190421-122124', 1, NULL, 130, NULL, 1, 586, NULL, 0, 'Cash', NULL, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(197, 'spr-20190528-103229', 1, NULL, 131, NULL, 1, 2890, NULL, 0, 'Cash', NULL, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(198, 'ppr-20190613-101351', 1, 37, NULL, NULL, 1, 2390, NULL, 0, 'Cash', NULL, '2019-06-13 04:13:51', '2019-06-13 04:13:51'),
(199, 'spr-20190613-101637', 1, NULL, 132, NULL, 1, 840, NULL, 0, 'Cash', NULL, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(200, 'ppr-20190613-101713', 1, 43, NULL, NULL, 1, 1000, NULL, 0, 'Cash', NULL, '2019-06-13 04:17:13', '2019-06-13 04:17:13'),
(201, 'spr-20190613-101752', 1, NULL, 133, NULL, 1, 2700, NULL, 0, 'Cash', NULL, '2019-06-13 04:17:52', '2019-06-13 04:17:52'),
(202, 'ppr-20191019-032925', 1, 43, NULL, NULL, 1, 3290, NULL, 710, 'Cash', NULL, '2019-10-19 09:29:25', '2019-10-19 09:29:25'),
(203, 'spr-20191019-033028', 1, NULL, 134, NULL, 1, 2940, NULL, 60, 'Cash', NULL, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(205, 'spr-20191103-114044', 1, NULL, 139, NULL, 1, 488, NULL, 12, 'Cash', NULL, '2019-11-03 05:40:44', '2019-11-03 05:40:44'),
(206, 'ppr-20191103-114222', 1, 46, NULL, NULL, 1, 200, NULL, 0, 'Cash', NULL, '2019-11-03 05:42:22', '2019-11-03 05:42:22'),
(211, 'spr-20191109-074131', 1, NULL, 144, NULL, 1, 1220, NULL, 0, 'Cash', NULL, '2019-11-09 13:41:31', '2019-11-09 13:41:31'),
(216, 'ppr-20191111-103911', 1, 49, NULL, NULL, 1, 5000, NULL, 0, 'Cheque', NULL, '2019-11-11 04:39:11', '2019-11-11 04:39:11'),
(217, 'spr-20191111-104008', 1, NULL, 147, NULL, 1, 2220, NULL, 780, 'Cash', NULL, '2019-11-11 04:40:08', '2019-11-11 04:40:08'),
(222, 'spr-20191203-115128', 1, NULL, 163, NULL, 1, 3, NULL, 0, 'Cash', NULL, '2019-12-03 05:51:28', '2019-12-03 05:51:28'),
(227, 'ppr-20191204-111124', 1, 57, NULL, NULL, 1, 220, NULL, 280, 'Cash', NULL, '2019-12-04 17:11:24', '2019-12-04 17:11:24'),
(228, 'spr-20191205-092712', 1, NULL, 173, NULL, 1, 621, NULL, 0, 'Cash', NULL, '2019-12-05 03:27:12', '2019-12-05 03:27:12'),
(239, 'spr-20191222-104058', 1, NULL, 187, NULL, 1, 288, NULL, 212, 'Cash', NULL, '2019-12-22 04:40:58', '2019-12-22 04:40:58'),
(241, 'spr-20191223-125946', 1, NULL, 190, NULL, 1, 1100, NULL, 400, 'Cash', NULL, '2019-12-23 06:59:46', '2019-12-23 06:59:46'),
(244, 'ppr-20200101-010750', 1, 61, NULL, NULL, 1, 60, NULL, 0, 'Cash', NULL, '2020-01-01 07:07:50', '2020-01-01 07:07:50'),
(246, 'spr-20200101-022028', 1, NULL, 193, NULL, 1, 1100, NULL, 400, 'Cash', NULL, '2020-01-01 08:20:28', '2020-01-01 08:20:28'),
(247, 'ppr-20200101-022131', 1, 59, NULL, NULL, 1, 6, NULL, 0, 'Cash', NULL, '2020-01-01 08:21:31', '2020-01-01 08:21:31'),
(248, 'ppr-20200101-022137', 1, 58, NULL, NULL, 1, 4, NULL, 0, 'Cash', NULL, '2020-01-01 08:21:37', '2020-01-01 08:21:37'),
(249, 'ppr-20200101-022144', 1, 56, NULL, NULL, 1, 2, NULL, 0, 'Cash', NULL, '2020-01-01 08:21:44', '2020-01-01 08:21:44'),
(250, 'ppr-20200101-022152', 1, 55, NULL, NULL, 1, 4, NULL, 0, 'Cash', NULL, '2020-01-01 08:21:52', '2020-01-01 08:21:52'),
(251, 'ppr-20200101-022225', 1, 49, NULL, NULL, 1, 2000, NULL, 0, 'Cash', NULL, '2020-01-01 08:22:25', '2020-01-01 08:22:25'),
(252, 'spr-20200102-043947', 1, NULL, 194, NULL, 1, 892, NULL, 108, 'Cash', NULL, '2020-01-02 10:39:47', '2020-01-02 10:39:47'),
(258, 'spr-20200203-035256', 1, NULL, 201, NULL, 1, 120, NULL, 880, 'Cash', NULL, '2020-02-03 09:52:56', '2020-02-03 09:52:56'),
(259, 'spr-20200204-105853', 1, NULL, 202, NULL, 1, 1400, NULL, 100, 'Cash', NULL, '2020-02-04 16:58:53', '2020-02-04 16:58:53'),
(260, 'ppr-20200204-110050', 1, 67, NULL, NULL, 1, 300, NULL, 0, 'Cash', NULL, '2020-02-04 17:00:50', '2020-02-04 17:00:50'),
(261, 'spr-20200302-115414', 1, NULL, 203, NULL, 1, 350, NULL, 150, 'Cash', NULL, '2020-03-02 05:54:14', '2020-03-02 05:54:14'),
(262, 'spr-20200302-115741', 1, NULL, 204, NULL, 1, 40, NULL, 10, 'Cash', NULL, '2020-03-02 05:57:41', '2020-03-02 05:57:41'),
(263, 'ppr-20200302-115811', 1, 70, NULL, NULL, 1, 50, NULL, 0, 'Cash', NULL, '2020-03-02 05:58:11', '2020-03-02 05:58:11'),
(264, 'ppr-20200302-115820', 1, 69, NULL, NULL, 1, 50, NULL, 0, 'Cash', NULL, '2020-03-02 05:58:20', '2020-03-02 05:58:20'),
(265, 'spr-20200311-044642', 1, NULL, 205, NULL, 1, 352, NULL, 148, 'Cash', NULL, '2020-03-11 10:46:42', '2020-03-11 10:46:42'),
(266, 'ppr-20200406-073823', 1, 71, NULL, NULL, 1, 2000, NULL, 1000, 'Cash', 'First Payment', '2020-04-06 13:38:23', '2020-04-06 13:38:55'),
(267, 'spr-20200406-074024', 1, NULL, 207, NULL, 1, 500, NULL, 500, 'Cash', NULL, '2020-04-06 13:40:24', '2020-04-06 13:40:24'),
(268, 'spr-20200406-074201', 1, NULL, 207, NULL, 1, 144, NULL, 56, 'Cash', NULL, '2020-04-06 13:42:01', '2020-04-06 13:42:01'),
(269, 'spr-20200506-105950', 1, NULL, 208, NULL, 1, 1540, NULL, 460, 'Cash', NULL, '2020-05-06 16:59:50', '2020-05-06 16:59:50'),
(270, 'spr-20200609-124248', 1, NULL, 209, NULL, 1, 1220, NULL, 780, 'Cash', NULL, '2020-06-09 06:42:48', '2020-06-09 06:42:48'),
(273, 'spr-20200703-063914', 1, NULL, 212, NULL, 1, 2585, NULL, 415, 'Cash', NULL, '2020-07-03 12:39:14', '2020-07-03 12:39:14'),
(274, 'spr-20200712-095153', 1, NULL, 213, NULL, 1, 13, NULL, 37, 'Cash', NULL, '2020-07-12 15:51:53', '2020-07-12 15:51:53'),
(276, 'spr-20200727-083808', 1, NULL, 217, NULL, 1, 385, NULL, 0, 'Cash', NULL, '2020-07-27 14:38:08', '2020-07-27 14:38:08'),
(277, 'spr-20200727-084024', 1, NULL, 218, NULL, 1, 385, NULL, 0, 'Cash', NULL, '2020-07-27 14:40:24', '2020-07-27 14:40:24'),
(278, 'spr-20200727-084645', 1, NULL, 219, NULL, 1, 385, NULL, 0, 'Cash', NULL, '2020-07-27 14:46:45', '2020-07-27 14:46:45'),
(279, 'spr-20200812-062806', 1, NULL, 220, NULL, 1, 760, NULL, 240, 'Cash', NULL, '2020-08-12 12:28:06', '2020-08-12 12:28:06'),
(280, 'ppr-20200812-062853', 1, 62, NULL, NULL, 1, 1650, NULL, 0, 'Cash', NULL, '2020-08-12 12:28:53', '2020-08-12 12:28:53'),
(281, 'spr-20200812-063035', 1, NULL, 221, NULL, 1, 1100, NULL, 0, 'Cash', NULL, '2020-08-12 12:30:35', '2020-08-12 12:30:35'),
(282, 'spr-20200816-100426', 1, NULL, 222, NULL, 1, 23000, NULL, 2000, 'Cash', NULL, '2020-08-16 16:04:26', '2020-08-16 16:04:26'),
(283, 'spr-20200816-100523', 1, NULL, 223, NULL, 1, 300, NULL, 200, 'Cash', NULL, '2020-08-16 16:05:23', '2020-08-16 16:05:23'),
(284, 'spr-20200816-100632', 1, NULL, 223, NULL, 1, 100, NULL, 0, 'Cash', NULL, '2020-08-16 16:06:32', '2020-08-16 16:06:32'),
(285, 'spr-20200816-100735', 1, NULL, 223, NULL, 1, 40, NULL, 0, 'Cash', NULL, '2020-08-16 16:07:35', '2020-08-16 16:07:35'),
(290, 'spr-20201017-092854', 9, NULL, 230, 2, 1, 200, NULL, 0, 'Cash', NULL, '2020-10-17 15:28:54', '2020-10-18 04:48:54'),
(291, 'spr-20201018-105138', 9, NULL, 230, 2, 1, 50, NULL, 0, 'Cash', NULL, '2020-10-18 04:51:38', '2020-10-18 04:51:38'),
(292, 'spr-20201018-111333', 9, NULL, 231, 2, 1, 100, NULL, 0, 'Cash', NULL, '2020-10-18 05:13:33', '2020-10-18 05:13:33'),
(293, 'spr-20201018-111426', 9, NULL, 231, 2, 1, 50, NULL, 0, 'Gift Card', NULL, '2020-10-18 05:14:26', '2020-10-18 05:14:26'),
(294, 'spr-20201018-111651', 9, NULL, 231, 2, 1, 50, NULL, 0, 'Credit Card', NULL, '2020-10-18 05:16:51', '2020-10-18 05:16:51'),
(295, 'spr-20201018-111724', 9, NULL, 231, 2, 1, 50, NULL, 0, 'Cheque', NULL, '2020-10-18 05:17:24', '2020-10-18 05:17:24'),
(296, 'spr-20201022-013018', 9, NULL, 232, 2, 1, 100, NULL, 0, 'Cash', NULL, '2020-10-22 07:30:18', '2020-10-22 07:30:18'),
(297, 'spr-20201022-015606', 1, NULL, 233, 3, 1, 250, NULL, 0, 'Cash', NULL, '2020-10-22 07:56:06', '2020-10-22 07:56:06'),
(298, 'spr-20201024-070508', 1, NULL, 234, 4, 1, 11500, NULL, 0, 'Cash', NULL, '2020-10-24 01:05:08', '2020-10-24 01:05:08'),
(299, 'spr-20201024-070753', 1, NULL, 235, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-10-24 01:07:53', '2020-10-24 01:07:53'),
(300, 'spr-20201024-034619', 1, NULL, 237, 4, 1, 61900, NULL, 0, 'Cash', NULL, '2020-10-24 09:46:19', '2020-10-24 09:46:19'),
(302, 'spr-20201027-054004', 1, NULL, 239, 3, 1, 2, NULL, 0, 'Cash', NULL, '2020-10-26 23:40:04', '2020-10-26 23:40:04'),
(303, 'spr-20201027-054207', 1, NULL, 240, 3, 1, 6, NULL, 0, 'Cash', NULL, '2020-10-26 23:42:07', '2020-10-26 23:42:07'),
(304, 'spr-20201027-063202', 1, NULL, 241, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-10-27 00:32:02', '2020-10-27 00:32:02'),
(305, 'spr-20201029-073033', 1, NULL, 242, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-10-29 01:30:33', '2020-10-29 01:30:33'),
(306, 'spr-20201101-072115', 1, NULL, 243, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-11-01 01:21:15', '2020-11-01 01:21:15'),
(307, 'spr-20201101-074225', 1, NULL, 245, 3, 1, 1130, NULL, 0, 'Cash', NULL, '2020-11-01 01:42:25', '2020-11-01 01:42:25'),
(308, 'spr-20201101-075019', 1, NULL, 246, 4, 1, 440, NULL, 0, 'Cash', NULL, '2020-11-01 01:50:19', '2020-11-01 01:50:19'),
(310, 'spr-20201106-013042', 1, NULL, 250, 4, 1, 378.4, NULL, 0, 'Cash', NULL, '2020-11-06 07:30:42', '2020-11-06 07:30:42'),
(311, 'spr-20201109-011527', 1, NULL, 251, 4, 1, 500, NULL, 0, 'Cash', NULL, '2020-11-09 07:15:27', '2020-11-09 07:15:27'),
(312, 'spr-20201111-055902', 1, NULL, 252, 3, 1, 229.5, NULL, 0, 'Cash', NULL, '2020-11-10 23:59:02', '2020-11-10 23:59:02'),
(313, 'spr-20201114-064739', 1, NULL, 253, 4, 1, 10242.5, NULL, 0, 'Cash', NULL, '2020-11-14 00:47:39', '2020-11-14 00:47:39'),
(316, 'spr-20201117-064751', 1, NULL, 256, 4, 1, 715, NULL, 0, 'Cash', NULL, '2020-11-17 00:47:51', '2020-11-17 00:47:51'),
(317, 'spr-20201117-070920', 1, NULL, 257, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-11-17 01:09:20', '2020-11-17 01:09:20'),
(320, 'ppr-20201118-062036', 1, 90, NULL, NULL, 1, 33000, NULL, 0, 'Cash', NULL, '2020-11-18 00:20:36', '2020-11-18 00:20:36'),
(321, 'spr-20201118-065242', 1, NULL, 258, 4, 1, 27200, NULL, 0, 'Cash', NULL, '2020-11-18 00:52:42', '2020-11-18 00:52:42'),
(324, 'spr-20201208-094000', 1, NULL, 263, 4, 1, 300, NULL, 200, 'Cash', NULL, '2020-12-08 03:40:00', '2020-12-08 03:40:00'),
(325, 'spr-20210106-022350', 1, NULL, 263, 4, 1, 50, NULL, 0, 'Cash', NULL, '2021-01-06 08:23:50', '2021-01-06 08:23:50'),
(330, 'spr-20210111-021625', 1, NULL, 271, 3, 1, 1274, NULL, 0, 'Cash', NULL, '2021-01-11 08:16:25', '2021-01-11 08:16:25'),
(332, 'spr-20210113-070243', 1, NULL, 274, 4, 1, 1556, NULL, 0, 'Cash', NULL, '2021-01-13 01:02:43', '2021-01-13 01:02:43'),
(333, 'spr-20210201-023748', 1, NULL, 275, 4, 1, 484, NULL, 0, 'Cash', NULL, '2021-02-01 08:37:48', '2021-02-01 08:37:48'),
(335, 'spr-20210216-070948', 1, NULL, 277, 4, 1, 15156, NULL, 0, 'Cash', NULL, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(336, 'spr-20210217-073238', 1, NULL, 278, 4, 1, 26949.9, NULL, 0, 'Cash', NULL, '2021-02-17 01:32:38', '2021-02-17 01:32:38'),
(338, 'spr-20210524-074506', 1, NULL, 290, 3, 1, 250, NULL, 0, 'Cash', NULL, '2021-05-24 13:45:06', '2021-05-24 13:45:06'),
(339, 'spr-20210524-074647', 1, NULL, 290, 3, 1, -130, NULL, 0, 'Cash', NULL, '2021-05-24 13:46:47', '2021-05-24 13:46:47'),
(341, 'spr-20210601-123530', 1, NULL, 294, 4, 1, 440, NULL, 0, 'Cash', NULL, '2021-06-01 06:35:30', '2021-06-01 06:35:30'),
(342, 'spr-20210601-032209', 1, NULL, 295, 3, 1, 2, NULL, 0, 'Cash', NULL, '2021-06-01 09:22:09', '2021-06-01 09:22:09'),
(343, 'spr-20210601-034624', 1, NULL, 296, 3, 1, 2, NULL, 0, 'Cash', NULL, '2021-06-01 09:46:24', '2021-06-01 09:46:24'),
(344, 'spr-20210601-074150', 9, NULL, 297, 2, 1, 250, NULL, 0, 'Cash', NULL, '2021-06-01 13:41:50', '2021-06-01 13:41:50'),
(345, 'spr-20210601-075547', 9, NULL, 298, 2, 1, 2, NULL, 0, 'Cash', NULL, '2021-06-01 13:55:47', '2021-06-01 13:55:47'),
(346, 'spr-20210616-105325', 1, NULL, 299, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-06-16 04:53:25', '2021-06-16 04:53:25'),
(347, 'spr-20210616-111044', 1, NULL, 300, 4, 1, 440, NULL, 0, 'Cash', NULL, '2021-06-16 05:10:44', '2021-06-16 05:10:44'),
(348, 'spr-20210616-111120', 1, NULL, 301, 4, 1, 2200, NULL, 0, 'Cash', NULL, '2021-06-16 05:11:20', '2021-06-16 05:11:20'),
(349, 'spr-20210616-080543', 1, NULL, 303, 4, 1, 440, 2, 0, 'Points', NULL, '2021-06-16 14:05:43', '2021-06-16 14:05:43'),
(351, 'spr-20210616-082851', 1, NULL, 305, 4, 1, 440, NULL, 0, 'Cash', NULL, '2021-06-16 14:28:51', '2021-06-16 14:28:51'),
(352, 'spr-20210617-115553', 1, NULL, 306, 3, 1, 1100, 4, 0, 'Points', NULL, '2021-06-17 05:55:53', '2021-06-17 05:55:53'),
(353, 'spr-20210617-121359', 1, NULL, 304, 4, 1, 440, 2, 0, 'Points', NULL, '2021-06-17 06:13:59', '2021-06-17 06:13:59'),
(354, 'spr-20210617-030013', 1, NULL, 307, 3, 1, 100, NULL, 0, 'Cash', NULL, '2021-06-17 09:00:13', '2021-06-17 09:00:13'),
(355, 'ppr-20210618-082857', 1, 115, NULL, NULL, 1, 101, NULL, 0, 'Cash', NULL, '2021-06-18 14:28:57', '2021-06-18 14:28:57'),
(356, 'spr-20210618-083127', 1, NULL, 308, 4, 1, 1608, NULL, 392, 'Cash', NULL, '2021-06-18 14:31:27', '2021-06-18 14:31:27'),
(357, 'spr-20210618-083254', 1, NULL, 309, 3, 1, 2, NULL, 0, 'Cash', NULL, '2021-06-18 14:32:54', '2021-06-18 14:32:54'),
(358, 'ppr-20210619-104903', 1, 116, NULL, NULL, 1, 101, NULL, 0, 'Cash', NULL, '2021-06-19 04:49:03', '2021-06-19 04:49:03'),
(359, 'spr-20210619-105121', 1, NULL, 310, 4, 1, 958, NULL, 42, 'Cash', NULL, '2021-06-19 04:51:21', '2021-06-19 04:51:21'),
(360, 'spr-20210619-110231', 1, NULL, 312, 4, 1, 440, 2, 0, 'Points', NULL, '2021-06-19 05:02:31', '2021-06-19 05:02:31'),
(361, 'spr-20210619-110638', 1, NULL, 313, 4, 1, 250, 1, 0, 'Points', NULL, '2021-06-19 05:06:38', '2021-06-19 05:06:38'),
(362, 'spr-20210627-124247', 1, NULL, 314, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-06-27 06:42:47', '2021-06-27 06:42:47'),
(364, 'spr-20210707-103455', 1, NULL, 317, 4, 1, 18, NULL, 0, 'Cash', NULL, '2021-07-07 04:34:55', '2021-07-07 04:34:55'),
(367, 'spr-20210814-092805', 1, NULL, 325, 4, 1, 1250, NULL, 0, 'Cash', NULL, '2021-08-14 15:28:05', '2021-08-14 15:28:05'),
(371, 'spr-20210921-010722', 1, NULL, 333, 4, 1, 2, NULL, 0, 'Cash', NULL, '2021-09-21 07:07:22', '2021-09-21 07:07:22'),
(372, 'spr-20210921-035020', 1, NULL, 334, 4, 1, 120, NULL, 0, 'Cash', NULL, '2021-09-21 09:50:20', '2021-09-21 09:50:20'),
(373, 'spr-20210923-024704', 1, NULL, 335, 4, 1, 11, NULL, 0, 'Cash', NULL, '2021-09-23 08:47:04', '2021-09-23 08:47:04'),
(374, 'spr-20211003-051829', 1, NULL, 336, 4, 1, 1220, NULL, 0, 'Cash', NULL, '2021-10-03 11:18:29', '2021-10-03 11:18:29'),
(376, 'spr-20211003-054404', 1, NULL, 338, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-10-03 11:44:04', '2021-10-03 11:44:04'),
(378, 'spr-20211007-025229', 1, NULL, 340, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-10-07 08:52:29', '2021-10-07 08:52:29'),
(379, 'spr-20211007-033840', 1, NULL, 341, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-10-07 09:38:40', '2021-10-07 09:38:40'),
(384, 'spr-20211014-035825', 1, NULL, 348, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-10-14 09:58:25', '2021-10-14 09:58:25'),
(385, 'spr-20211020-011209', 1, NULL, 349, 4, 1, 102, NULL, 0, 'Cash', NULL, '2021-10-20 07:12:09', '2021-10-20 07:12:09'),
(386, 'spr-20211114-013929', 1, NULL, 353, 4, 1, 374, NULL, 0, 'Cash', NULL, '2021-11-14 07:39:29', '2021-11-14 07:39:29'),
(387, 'spr-20211124-062858', 1, NULL, 355, 4, 1, 3161, NULL, 0, 'Cash', NULL, '2021-11-24 12:28:58', '2021-11-24 12:28:58'),
(388, 'spr-20211207-070932', 1, NULL, 356, 4, 1, 573, NULL, 0, 'Cash', NULL, '2021-12-07 13:09:32', '2021-12-07 13:09:32'),
(391, 'spr-20211222-070313', 1, NULL, 360, 4, 1, 24, NULL, 0, 'Cash', NULL, '2021-12-22 13:03:13', '2021-12-22 13:03:13'),
(393, 'spr-20220203-035948', 1, NULL, 362, 4, 1, 8.5, NULL, 0, 'Cash', NULL, '2022-02-03 09:59:48', '2022-02-03 09:59:48'),
(394, 'spr-20220203-070602', 1, NULL, 363, 4, 1, 466, NULL, 34, 'Cash', NULL, '2022-02-03 13:06:02', '2022-02-03 13:06:02'),
(395, 'spr-20220205-054526', 1, NULL, 364, 4, 1, 396, NULL, 0, 'Cash', NULL, '2022-02-05 11:45:26', '2022-02-05 11:45:26'),
(396, 'spr-20220205-054616', 1, NULL, 365, 4, 1, 240, NULL, 0, 'Cash', NULL, '2022-02-05 11:46:16', '2022-02-05 11:46:16'),
(403, 'spr-20220227-115905', 1, NULL, 377, 4, 1, 500, 2, 0, 'Points', NULL, '2022-02-27 05:59:05', '2022-02-27 05:59:05'),
(405, 'spr-20220309-115901', 1, NULL, 379, 4, 1, 1790, NULL, 0, 'Cash', NULL, '2022-03-09 05:59:01', '2022-03-09 05:59:01'),
(406, 'spr-20220311-091529', 1, NULL, 377, 4, 1, 10, NULL, 0, 'Cheque', 'cheque payment', '2022-03-11 15:15:29', '2022-03-11 15:15:29'),
(408, 'payment-101', 1, NULL, 377, 4, 1, 11, NULL, 0, 'Cash', NULL, '2022-03-12 13:12:38', '2022-03-12 13:43:28'),
(409, 'spr-20220312-082027', 1, NULL, 380, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2022-03-12 14:20:27', '2022-03-12 14:20:27'),
(410, 'spr-20220312-082452', 1, NULL, 381, NULL, 1, 250, NULL, 0, 'Cash', NULL, '2022-03-12 14:24:52', '2022-03-12 14:24:52'),
(411, 'spr-20220312-082622', 1, NULL, 381, NULL, 1, 100, NULL, 0, 'Cash', NULL, '2022-03-12 14:26:22', '2022-03-12 14:26:22'),
(412, 'spr-20220424-110144', 1, NULL, 382, 6, 1, 1225, NULL, 775, 'Cash', NULL, '2022-04-24 05:01:44', '2022-04-24 05:01:44'),
(413, 'ppr-20220516-112315', 1, 146, NULL, NULL, 1, 5500, NULL, 0, 'Cash', NULL, '2022-05-16 05:23:15', '2022-05-16 05:23:15'),
(414, 'spr-20220516-112427', 1, NULL, 383, 6, 1, 3300, NULL, 700, 'Cash', NULL, '2022-05-16 05:24:27', '2022-05-16 05:24:27'),
(416, 'spr-20220526-090112', 1, NULL, 385, 6, 1, 370, NULL, 0, 'Cash', NULL, '2022-05-26 15:01:12', '2022-05-26 15:01:12'),
(417, 'spr-20220531-122028', 1, NULL, 386, 6, 1, 440, NULL, 0, 'Cash', NULL, '2022-05-31 06:20:28', '2022-05-31 06:20:28'),
(427, 'spr-20220606-051413', 1, NULL, 397, 6, 1, 2320, NULL, 0, 'Cash', NULL, '2022-06-06 11:14:13', '2022-06-06 11:14:13'),
(429, 'spr-20220611-064206', 1, NULL, 1, NULL, 1, 380, NULL, 0, 'Cash', 'Paid by bank cheque', '2022-06-11 12:42:06', '2022-06-11 12:42:06'),
(430, 'spr-20220611-064206', 1, NULL, 4, NULL, 1, 580, NULL, 0, 'Cash', 'Paid by bank cheque', '2022-06-11 12:42:06', '2022-06-11 12:42:06'),
(431, 'spr-20220611-064207', 1, NULL, 29, NULL, 1, 40, NULL, 0, 'Cash', 'Paid by bank cheque', '2022-06-11 12:42:07', '2022-06-11 12:42:07'),
(432, 'spr-20220611-064655', 1, NULL, 29, NULL, 1, 92, NULL, 0, 'Cash', NULL, '2022-06-11 12:46:55', '2022-06-11 12:46:55'),
(433, 'spr-20220611-064655', 1, NULL, 37, NULL, 1, 208, NULL, 0, 'Cash', NULL, '2022-06-11 12:46:55', '2022-06-11 12:46:55'),
(434, 'spr-20220611-065042', 1, NULL, 37, NULL, 1, 42, NULL, 0, 'Cash', NULL, '2022-06-11 12:50:42', '2022-06-11 12:50:42'),
(435, 'spr-20220611-065042', 1, NULL, 43, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2022-06-11 12:50:42', '2022-06-11 12:50:42'),
(436, 'spr-20220611-065042', 1, NULL, 104, NULL, 1, 18, NULL, 0, 'Cash', NULL, '2022-06-11 12:50:42', '2022-06-11 12:50:42'),
(437, 'spr-20220611-065205', 1, NULL, 104, NULL, 1, 100, NULL, 0, 'Cash', NULL, '2022-06-11 12:52:05', '2022-06-11 12:52:05'),
(438, 'spr-20220614-110245', 1, NULL, 10, 6, 1, 50, NULL, 0, 'Cash', NULL, '2022-06-14 05:02:45', '2022-06-14 05:02:45'),
(439, 'spr-20220614-110245', 1, NULL, 30, 6, 1, 320, NULL, 0, 'Cash', NULL, '2022-06-14 05:02:45', '2022-06-14 05:02:45'),
(440, 'spr-20220614-110245', 1, NULL, 32, 6, 1, 130, NULL, 0, 'Cash', NULL, '2022-06-14 05:02:45', '2022-06-14 05:02:45'),
(441, 'spr-20220614-115719', 1, NULL, 400, 6, 1, 3300, NULL, 0, 'Cash', NULL, '2022-06-14 05:57:19', '2022-06-14 05:57:19'),
(444, 'spr-20220614-050144', 1, NULL, 403, 6, 1, 111, NULL, 0, 'Cash', NULL, '2022-06-14 11:01:44', '2022-06-14 11:01:44'),
(445, 'spr-20220615-102330', 1, NULL, 404, 6, 1, 300, NULL, 0, 'Cash', NULL, '2022-06-15 04:23:30', '2022-06-15 04:23:30'),
(448, 'spr-20220809-115444', 1, NULL, 409, NULL, 1, 591, NULL, 0, 'Cash', NULL, '2022-08-09 05:54:44', '2022-08-09 05:54:44'),
(449, 'spr-20220825-013137', 1, NULL, 410, 6, 1, 120, NULL, 0, 'Cash', NULL, '2022-08-25 07:31:37', '2022-08-25 07:31:37'),
(450, 'ppr-20220831-044029', 1, 14, NULL, NULL, 1, 100, NULL, 0, 'Cash', 'First automated payment', '2022-08-31 10:40:29', '2022-08-31 10:40:29'),
(451, 'spr-20220901-123619', 1, NULL, 411, 6, 1, 690, NULL, 0, 'Cash', NULL, '2022-09-01 06:36:19', '2022-09-01 06:36:19'),
(452, 'spr-20220904-035525', 1, NULL, 400, 6, 1, -1100, NULL, 0, 'Cash', 'payment to customer for returned products.', '2022-09-04 09:55:25', '2022-09-04 09:55:25'),
(453, 'ppr-20220911-010840', 1, 162, NULL, NULL, 1, 10000, NULL, 0, 'Cash', 'This is the first payment for iphone 14.', '2022-09-11 07:08:40', '2022-09-11 07:08:40'),
(454, 'spr-20220911-011826', 1, NULL, 413, NULL, 1, 1210, NULL, 40, 'Cash', NULL, '2022-09-11 07:18:26', '2022-09-11 07:18:26'),
(455, 'spr-20220915-085900', 1, NULL, 414, 6, 1, 440, NULL, 0, 'Cash', NULL, '2022-09-15 14:59:00', '2022-09-15 14:59:00'),
(456, 'ppr-20220915-085956', 1, 162, NULL, NULL, 1, 100, NULL, 0, 'Cash', NULL, '2022-09-15 14:59:56', '2022-09-15 14:59:56'),
(457, 'spr-20221002-081636', 1, NULL, 415, 6, 1, 560, NULL, 0, 'Cash', NULL, '2022-10-02 14:16:36', '2022-10-02 14:16:36'),
(458, 'ppr-20221018-020939', 1, 162, NULL, NULL, 1, 1000, NULL, 0, 'Cash', NULL, '2022-10-18 08:09:39', '2022-10-18 08:09:39'),
(465, 'spr-20221124-055716', 1, NULL, 421, 6, 1, 1250, NULL, 0, 'Cash', NULL, '2022-11-24 11:57:16', '2022-11-24 11:57:16'),
(466, 'spr-20221124-062601', 9, NULL, 422, 2, 1, 144, NULL, 0, 'Cash', NULL, '2022-11-24 12:26:01', '2022-11-24 12:26:01'),
(467, 'spr-20221124-062653', 9, NULL, 423, 2, 1, 250, NULL, 0, 'Cash', NULL, '2022-11-24 12:26:53', '2022-11-24 12:26:53'),
(468, 'spr-20221211-025325', 1, NULL, 424, 6, 1, 286, NULL, 0, 'Cash', NULL, '2022-12-11 08:53:25', '2022-12-11 08:53:25'),
(469, 'ppr-20221211-025429', 1, 164, NULL, NULL, 1, 90, NULL, 0, 'Cash', NULL, '2022-12-11 08:54:29', '2022-12-11 08:54:29'),
(470, 'spr-20230111-123925', 1, NULL, 426, 6, 1, 144, NULL, 0, 'Cash', NULL, '2023-01-10 18:39:25', '2023-01-10 18:39:25'),
(471, 'spr-20230111-124000', 1, NULL, 427, 6, 1, 144, NULL, 0, 'Cash', NULL, '2023-01-10 18:40:00', '2023-01-10 18:40:00'),
(472, 'spr-20230118-042810', 1, NULL, 428, 6, 1, 544, NULL, 0, 'Cash', NULL, '2023-01-18 10:28:10', '2023-01-18 10:28:10'),
(473, 'spr-20230121-032002', 1, NULL, 429, 6, 1, 350, NULL, 0, 'Credit Card', 'hbhb', '2023-01-21 09:20:02', '2023-01-21 09:20:02'),
(474, 'spr-20230121-070440', 1, NULL, 430, 6, 1, 350, NULL, 0, 'Credit Card', 'paid by credit card', '2023-01-21 13:04:40', '2023-01-21 13:04:40'),
(475, 'spr-20230121-071710', 1, NULL, 431, 6, 1, 350, NULL, 0, 'Credit Card', 'paid by credit card', '2023-01-21 13:17:10', '2023-01-21 13:17:10'),
(476, 'spr-20230121-071843', 1, NULL, 432, 6, 1, 350, NULL, 0, 'Cash', 'paid by credit card', '2023-01-21 13:18:43', '2023-01-21 13:18:43'),
(477, 'spr-20230222-030251', 1, NULL, 433, 6, 1, 400, NULL, 0, 'Cash', NULL, '2023-02-22 09:02:51', '2023-02-22 09:02:51'),
(478, 'spr-20230223-045811', 1, NULL, 434, 6, 1, 144, NULL, 0, 'Cash', NULL, '2023-02-23 10:58:11', '2023-02-23 10:58:11'),
(479, 'spr-20230224-011142', 1, NULL, 435, 6, 1, 794, NULL, 0, 'Cash', NULL, '2023-02-23 19:11:42', '2023-02-23 19:11:42'),
(480, 'spr-20230224-011448', 1, NULL, 436, 6, 1, 794, NULL, 0, 'Credit Card', NULL, '2023-02-23 19:14:48', '2023-02-23 19:14:48'),
(481, 'spr-20230224-011503', 1, NULL, 437, 6, 1, 794, NULL, 0, 'Cash', NULL, '2023-02-23 19:15:03', '2023-02-23 19:15:03'),
(482, 'spr-20230224-115203', 1, NULL, 438, 6, 1, 816, NULL, 0, 'Cash', NULL, '2023-02-24 05:52:03', '2023-02-24 05:52:03'),
(487, 'spr-20230313-053110', 1, NULL, 455, 6, 1, 360, NULL, 0, 'Cash', NULL, '2023-03-13 11:31:10', '2023-03-13 11:31:10'),
(488, 'spr-20230323-053359', 1, NULL, 458, 6, 1, 99, NULL, 0, 'Cash', NULL, '2023-03-23 11:33:59', '2023-03-23 11:33:59'),
(489, 'spr-20230327-110818', 1, NULL, 460, 6, 1, 709, NULL, 0, 'Cash', NULL, '2023-03-27 05:08:18', '2023-03-27 05:08:18'),
(491, 'spr-20230405-013919', 1, NULL, 462, 6, 1, 538, NULL, 0, 'Cash', NULL, '2023-04-05 07:39:19', '2023-04-05 07:39:19'),
(492, 'ppr-20230405-014016', 1, 171, NULL, NULL, 1, 288, NULL, 0, 'Cash', NULL, '2023-04-05 07:40:16', '2023-04-05 07:40:16'),
(493, 'ppr-20230405-014053', 1, 173, NULL, NULL, 1, 400, NULL, 0, 'Cash', NULL, '2023-04-05 07:40:53', '2023-04-05 07:40:53'),
(499, 'spr-20230506-040646', 1, NULL, 469, 6, 1, 1700, NULL, 0, 'Cash', NULL, '2023-05-06 10:06:46', '2023-05-06 10:06:46'),
(501, 'spr-20230510-040444', 41, NULL, 471, 9, 1, 264, NULL, 36, 'Cash', NULL, '2023-05-10 16:04:44', '2023-05-10 16:04:44'),
(502, 'spr-20231126-100801', 42, NULL, 472, 10, 1, 185, NULL, 0, 'Cash', NULL, '2023-11-26 10:08:01', '2023-11-26 10:08:01'),
(503, 'spr-20231129-073439', 42, NULL, 473, 10, 1, 195, NULL, 0, 'Cash', NULL, '2023-11-29 07:34:39', '2023-11-29 07:34:39'),
(504, 'spr-20231208-060727', 42, NULL, 474, 10, 1, 7465, NULL, 0, 'Cash', NULL, '2023-12-08 18:07:27', '2023-12-08 18:07:27'),
(505, 'spr-20231211-124128', 42, NULL, 475, 10, 1, 2290, NULL, 0, 'Cash', NULL, '2023-12-11 12:41:28', '2023-12-11 12:41:28'),
(506, 'spr-20231211-124303', 42, NULL, 476, 10, 1, 550, NULL, 0, 'Cash', NULL, '2023-12-11 12:43:03', '2023-12-11 12:43:03'),
(507, 'spr-20231219-022539', 42, NULL, 477, 10, 1, 190, NULL, 0, 'Cash', NULL, '2023-12-19 14:25:39', '2023-12-19 14:25:39'),
(508, 'spr-20231220-062412', 42, NULL, 478, 10, 1, 190, NULL, 0, 'Cash', NULL, '2023-12-20 06:24:12', '2023-12-20 06:24:12'),
(509, 'spr-20231220-072804', 42, NULL, 479, 10, 1, 630, NULL, 0, 'Cash', NULL, '2023-12-20 07:28:04', '2023-12-20 07:28:04'),
(510, 'spr-20231220-095257', 42, NULL, 480, 10, 1, 540, NULL, 0, 'Cash', NULL, '2023-12-20 09:52:57', '2023-12-20 09:52:57'),
(511, 'spr-20231220-095501', 42, NULL, 481, 10, 1, 380, NULL, 0, 'Cash', NULL, '2023-12-20 09:55:01', '2023-12-20 09:55:01'),
(512, 'spr-20231220-114924', 42, NULL, 482, 10, 1, 880, NULL, 0, 'Cash', NULL, '2023-12-20 11:49:24', '2023-12-20 11:49:24'),
(513, 'spr-20231220-123239', 42, NULL, 483, 10, 1, 380, NULL, 0, 'Cash', NULL, '2023-12-20 12:32:39', '2023-12-20 12:32:39'),
(514, 'spr-20231220-034454', 42, NULL, 484, 10, 1, 13500, NULL, 0, 'Cash', NULL, '2023-12-20 15:44:54', '2023-12-20 15:44:54'),
(515, 'spr-20231220-034549', 42, NULL, 485, 10, 1, 1890, NULL, 0, 'Cash', NULL, '2023-12-20 15:45:49', '2023-12-20 15:45:49'),
(516, 'spr-20231220-035412', 42, NULL, 486, 10, 1, 270, NULL, 0, 'Cash', NULL, '2023-12-20 15:54:12', '2023-12-20 15:54:12'),
(517, 'spr-20231221-062231', 42, NULL, 487, 10, 1, 890, NULL, 0, 'Cash', NULL, '2023-12-21 06:22:31', '2023-12-21 06:22:31'),
(518, 'spr-20231221-064538', 42, NULL, 488, 10, 1, 290, NULL, 0, 'Cash', NULL, '2023-12-21 06:45:38', '2023-12-21 06:45:38'),
(519, 'spr-20231221-080329', 42, NULL, 489, 10, 1, 62720, NULL, 0, 'Cash', NULL, '2023-12-21 08:03:29', '2023-12-21 08:03:29'),
(520, 'spr-20231221-105954', 42, NULL, 490, 10, 1, 1755, NULL, 0, 'Cash', NULL, '2023-12-21 10:59:54', '2023-12-21 10:59:54'),
(521, 'spr-20231221-110207', 42, NULL, 491, 10, 1, 780, NULL, 0, 'Cash', NULL, '2023-12-21 11:02:07', '2023-12-21 11:02:07'),
(522, 'spr-20231221-125202', 42, NULL, 492, 10, 1, 270, NULL, 0, 'Cash', NULL, '2023-12-21 12:52:02', '2023-12-21 12:52:02'),
(523, 'spr-20231221-024314', 42, NULL, 493, 10, 1, 270, NULL, 0, 'Cash', NULL, '2023-12-21 14:43:14', '2023-12-21 14:43:14'),
(524, 'spr-20231221-042847', 42, NULL, 494, 10, 1, 270, NULL, 0, 'Cash', NULL, '2023-12-21 16:28:47', '2023-12-21 16:28:47'),
(525, 'spr-20231221-054124', 42, NULL, 495, 10, 1, 190, NULL, 0, 'Cash', NULL, '2023-12-21 17:41:24', '2023-12-21 17:41:24'),
(526, 'spr-20231222-055508', 42, NULL, 496, 10, 1, 3100, NULL, 0, 'Cash', NULL, '2023-12-22 05:55:08', '2023-12-22 05:55:08'),
(527, 'spr-20231222-064838', 42, NULL, 497, 10, 1, 17580, NULL, 0, 'Cash', NULL, '2023-12-22 18:48:38', '2023-12-22 18:48:38'),
(528, 'spr-20231225-062209', 42, NULL, 498, 10, 1, 21525, NULL, 0, 'Cash', NULL, '2023-12-25 06:22:09', '2023-12-25 06:22:09'),
(529, 'spr-20231225-045134', 42, NULL, 499, 10, 1, 101830, NULL, 0, 'Cash', NULL, '2023-12-25 16:51:34', '2023-12-25 16:51:34'),
(530, 'spr-20231226-045306', 42, NULL, 500, 10, 1, 13720, NULL, 0, 'Cash', NULL, '2023-12-26 16:53:06', '2023-12-26 16:53:06'),
(531, 'spr-20231226-045627', 42, NULL, 501, 10, 1, 8410, NULL, 0, 'Cash', NULL, '2023-12-26 16:56:27', '2023-12-26 16:56:27'),
(532, 'spr-20231226-050344', 42, NULL, 502, 10, 1, 23500, NULL, 0, 'Cash', NULL, '2023-12-26 17:03:44', '2023-12-26 17:03:44'),
(533, 'spr-20231228-061322', 42, NULL, 503, 10, 1, 10885, NULL, 0, 'Cash', NULL, '2023-12-28 06:13:22', '2023-12-28 06:13:22'),
(534, 'spr-20231229-055920', 42, NULL, 504, 10, 1, 20400, NULL, 0, 'Cash', NULL, '2023-12-29 05:59:20', '2023-12-29 05:59:20'),
(535, 'spr-20240102-060357', 42, NULL, 505, 10, 1, 212125, NULL, 0, 'Cash', NULL, '2024-01-02 06:03:57', '2024-01-02 06:03:57'),
(536, 'spr-20240102-062039', 42, NULL, 506, 10, 1, 66150, NULL, 0, 'Cash', NULL, '2024-01-02 06:20:39', '2024-01-02 06:20:39'),
(537, 'spr-20240102-062852', 42, NULL, 507, 10, 1, 16345, NULL, 0, 'Cash', NULL, '2024-01-02 06:28:52', '2024-01-02 06:28:52'),
(538, 'spr-20240114-125912', 42, NULL, 508, 10, 1, 16345, NULL, 0, 'Cash', NULL, '2024-01-14 12:59:12', '2024-01-14 12:59:12'),
(539, 'spr-20240115-053603', 42, NULL, 509, 10, 1, 250, NULL, 0, 'Cash', NULL, '2024-01-15 05:36:03', '2024-01-15 05:36:03'),
(540, 'spr-20240115-060056', 42, NULL, 510, 10, 1, 620, NULL, 0, 'Cash', NULL, '2024-01-15 06:00:56', '2024-01-15 06:00:56'),
(541, 'spr-20240115-060814', 42, NULL, 511, 10, 1, 1300, NULL, 0, 'Cash', NULL, '2024-01-15 06:08:14', '2024-01-15 06:08:14'),
(542, 'spr-20240116-102525', 42, NULL, 512, 10, 1, 9095, NULL, 0, 'Cash', NULL, '2024-01-16 10:25:25', '2024-01-16 10:25:25'),
(543, 'spr-20240117-061000', 42, NULL, 513, 10, 1, 2780, NULL, 0, 'Cash', NULL, '2024-01-17 06:10:00', '2024-01-17 06:10:00'),
(544, 'spr-20240117-061214', 42, NULL, 514, 10, 1, 580, NULL, 0, 'Cash', NULL, '2024-01-17 06:12:14', '2024-01-17 06:12:14'),
(545, 'spr-20240117-062200', 42, NULL, 515, 10, 1, 310, NULL, 0, 'Cash', NULL, '2024-01-17 06:22:00', '2024-01-17 06:22:00'),
(546, 'spr-20240117-063712', 42, NULL, 516, 10, 1, 2580, NULL, 0, 'Cash', NULL, '2024-01-17 06:37:12', '2024-01-17 06:37:12'),
(547, 'spr-20240117-064259', 42, NULL, 517, 10, 1, 870, NULL, 0, 'Cash', NULL, '2024-01-17 06:42:59', '2024-01-17 06:42:59'),
(548, 'spr-20240117-070439', 42, NULL, 518, 10, 1, 290, NULL, 0, 'Cash', NULL, '2024-01-17 07:04:39', '2024-01-17 07:04:39'),
(549, 'spr-20240117-081543', 42, NULL, 519, 10, 1, 300, NULL, 0, 'Cash', NULL, '2024-01-17 08:15:43', '2024-01-17 08:15:43'),
(550, 'spr-20240117-083439', 42, NULL, 520, 10, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-17 08:34:39', '2024-01-17 08:34:39'),
(551, 'spr-20240117-083848', 42, NULL, 521, 10, 1, 530, NULL, 0, 'Cash', NULL, '2024-01-17 08:38:48', '2024-01-17 08:38:48'),
(552, 'spr-20240117-084350', 42, NULL, 522, 10, 1, 500, NULL, 0, 'Cash', NULL, '2024-01-17 08:43:50', '2024-01-17 08:43:50'),
(553, 'spr-20240117-105440', 42, NULL, 523, 10, 1, 500, NULL, 0, 'Cash', NULL, '2024-01-17 10:54:40', '2024-01-17 10:54:40'),
(554, 'spr-20240117-111951', 42, NULL, 524, 10, 1, 1120, NULL, 0, 'Cash', NULL, '2024-01-17 11:19:51', '2024-01-17 11:19:51'),
(555, 'spr-20240117-032647', 42, NULL, 525, 10, 1, 900, NULL, 0, 'Cash', NULL, '2024-01-17 15:26:47', '2024-01-17 15:26:47'),
(556, 'spr-20240117-034159', 42, NULL, 526, 10, 1, 550, NULL, 0, 'Cash', NULL, '2024-01-17 15:41:59', '2024-01-17 15:41:59'),
(557, 'spr-20240117-034220', 42, NULL, 527, 10, 1, 580, NULL, 0, 'Cash', NULL, '2024-01-17 15:42:20', '2024-01-17 15:42:20'),
(558, 'spr-20240117-045022', 42, NULL, 528, 10, 1, 250, NULL, 0, 'Cash', NULL, '2024-01-17 16:50:22', '2024-01-17 16:50:22'),
(559, 'spr-20240117-051213', 42, NULL, 529, 10, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-17 17:12:13', '2024-01-17 17:12:13'),
(560, 'spr-20240117-051623', 42, NULL, 530, 10, 1, 260, NULL, 0, 'Cash', NULL, '2024-01-17 17:16:23', '2024-01-17 17:16:23'),
(561, 'spr-20240117-052650', 42, NULL, 531, 10, 1, 540, NULL, 0, 'Cash', NULL, '2024-01-17 17:26:50', '2024-01-17 17:26:50'),
(562, 'spr-20240118-052441', 42, NULL, 532, 10, 1, 550, NULL, 0, 'Cash', NULL, '2024-01-18 05:24:41', '2024-01-18 05:24:41'),
(563, 'spr-20240118-052912', 42, NULL, 533, 10, 1, 580, NULL, 0, 'Cash', NULL, '2024-01-18 05:29:12', '2024-01-18 05:29:12'),
(564, 'spr-20240118-055438', 42, NULL, 534, 10, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-18 05:54:38', '2024-01-18 05:54:38'),
(565, 'spr-20240118-061456', 42, NULL, 535, 10, 1, 500, NULL, 0, 'Cash', NULL, '2024-01-18 06:14:56', '2024-01-18 06:14:56'),
(566, 'spr-20240118-064012', 42, NULL, 536, 10, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-18 06:40:12', '2024-01-18 06:40:12'),
(567, 'spr-20240118-071557', 42, NULL, 537, 10, 1, 300, NULL, 0, 'Cash', NULL, '2024-01-18 07:15:57', '2024-01-18 07:15:57'),
(568, 'spr-20240118-074322', 42, NULL, 538, 10, 1, 500, NULL, 0, 'Cash', NULL, '2024-01-18 07:43:22', '2024-01-18 07:43:22'),
(569, 'spr-20240118-090104', 42, NULL, 539, 10, 1, 560, NULL, 0, 'Cash', NULL, '2024-01-18 09:01:04', '2024-01-18 09:01:04'),
(570, 'spr-20240118-095233', 42, NULL, 540, 10, 1, 2500, NULL, 0, 'Cash', NULL, '2024-01-18 09:52:33', '2024-01-18 09:52:33'),
(571, 'spr-20240118-101725', 42, NULL, 541, 10, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-18 10:17:25', '2024-01-18 10:17:25'),
(572, 'spr-20240118-114237', 42, NULL, 542, 10, 1, 780, NULL, 0, 'Cash', NULL, '2024-01-18 11:42:37', '2024-01-18 11:42:37'),
(573, 'spr-20240118-114401', 42, NULL, 543, 10, 1, 2200, NULL, 0, 'Cash', NULL, '2024-01-18 11:44:01', '2024-01-18 11:44:01'),
(574, 'spr-20240118-121240', 42, NULL, 544, 10, 1, 1380, NULL, 0, 'Cash', NULL, '2024-01-18 12:12:40', '2024-01-18 12:12:40'),
(575, 'spr-20240118-015709', 42, NULL, 545, 10, 1, 250, NULL, 0, 'Cash', NULL, '2024-01-18 13:57:09', '2024-01-18 13:57:09'),
(576, 'spr-20240118-020634', 42, NULL, 546, 10, 1, 580, NULL, 0, 'Cash', NULL, '2024-01-18 14:06:34', '2024-01-18 14:06:34'),
(577, 'spr-20240118-022318', 42, NULL, 547, 10, 1, 2760, NULL, 0, 'Cash', NULL, '2024-01-18 14:23:18', '2024-01-18 14:23:18'),
(578, 'spr-20240118-024816', 42, NULL, 548, 10, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-18 14:48:16', '2024-01-18 14:48:16'),
(579, 'spr-20240118-043708', 42, NULL, 549, 10, 1, 860, NULL, 0, 'Cash', NULL, '2024-01-18 16:37:08', '2024-01-18 16:37:08'),
(580, 'spr-20240118-055911', 42, NULL, 550, 10, 1, 570, NULL, 0, 'Cash', NULL, '2024-01-18 17:59:11', '2024-01-18 17:59:11'),
(581, 'spr-20240119-071426', 42, NULL, 551, 10, 1, 320, NULL, 0, 'Cash', NULL, '2024-01-19 07:14:26', '2024-01-19 07:14:26'),
(582, 'spr-20240119-071521', 42, NULL, 552, 10, 1, 1400, NULL, 0, 'Cash', NULL, '2024-01-19 07:15:21', '2024-01-19 07:15:21'),
(583, 'spr-20240119-080727', 42, NULL, 553, 10, 1, 750, NULL, 0, 'Cash', NULL, '2024-01-19 08:07:27', '2024-01-19 08:07:27'),
(584, 'spr-20240119-093254', 42, NULL, 554, 10, 1, 1550, NULL, 0, 'Cash', NULL, '2024-01-19 09:32:54', '2024-01-19 09:32:54'),
(585, 'spr-20240119-094106', 42, NULL, 555, 10, 1, 1120, NULL, 0, 'Cash', NULL, '2024-01-19 09:41:06', '2024-01-19 09:41:06'),
(586, 'spr-20240119-100537', 42, NULL, 556, 10, 1, 1400, NULL, 0, 'Cash', NULL, '2024-01-19 10:05:37', '2024-01-19 10:05:37'),
(587, 'spr-20240119-100958', 42, NULL, 557, 10, 1, 600, NULL, 0, 'Cash', NULL, '2024-01-19 10:09:58', '2024-01-19 10:09:58'),
(588, 'spr-20240119-104553', 42, NULL, 558, 10, 1, 380, NULL, 0, 'Cash', NULL, '2024-01-19 10:45:53', '2024-01-19 10:45:53'),
(589, 'spr-20240119-104755', 42, NULL, 559, 10, 1, 450, NULL, 0, 'Cash', NULL, '2024-01-19 10:47:55', '2024-01-19 10:47:55'),
(590, 'spr-20240119-105445', 42, NULL, 560, 10, 1, 290, NULL, 0, 'Cash', NULL, '2024-01-19 10:54:45', '2024-01-19 10:54:45'),
(591, 'spr-20240119-110135', 42, NULL, 561, 10, 1, 310, NULL, 0, 'Cash', NULL, '2024-01-19 11:01:35', '2024-01-19 11:01:35'),
(592, 'spr-20240119-112700', 42, NULL, 562, 10, 1, 190, NULL, 0, 'Cash', NULL, '2024-01-19 11:27:00', '2024-01-19 11:27:00'),
(593, 'spr-20240119-121714', 42, NULL, 563, 10, 1, 190, NULL, 0, 'Cash', NULL, '2024-01-19 12:17:14', '2024-01-19 12:17:14'),
(594, 'spr-20240119-032218', 42, NULL, 564, 10, 1, 550, NULL, 0, 'Cash', NULL, '2024-01-19 15:22:18', '2024-01-19 15:22:18'),
(595, 'spr-20240120-052831', 42, NULL, 565, 10, 1, 2860, NULL, 0, 'Cash', NULL, '2024-01-20 05:28:31', '2024-01-20 05:28:31'),
(596, 'spr-20240120-053436', 42, NULL, 566, 10, 1, 470, NULL, 0, 'Cash', NULL, '2024-01-20 05:34:36', '2024-01-20 05:34:36'),
(597, 'spr-20240120-053541', 42, NULL, 567, 10, 1, 550, NULL, 0, 'Cash', NULL, '2024-01-20 05:35:41', '2024-01-20 05:35:41'),
(598, 'spr-20240120-055231', 42, NULL, 568, 10, 1, 1770, NULL, 0, 'Cash', NULL, '2024-01-20 05:52:31', '2024-01-20 05:52:31'),
(599, 'spr-20240120-061249', 42, NULL, 569, 10, 1, 460, NULL, 0, 'Cash', NULL, '2024-01-20 06:12:49', '2024-01-20 06:12:49'),
(600, 'spr-20240120-061738', 42, NULL, 570, 10, 1, 780, NULL, 0, 'Cash', NULL, '2024-01-20 06:17:38', '2024-01-20 06:17:38'),
(601, 'spr-20240120-062405', 42, NULL, 571, 10, 1, 380, NULL, 0, 'Cash', NULL, '2024-01-20 06:24:05', '2024-01-20 06:24:05'),
(602, 'spr-20240120-065132', 42, NULL, 572, 10, 1, 500, NULL, 0, 'Cash', NULL, '2024-01-20 06:51:32', '2024-01-20 06:51:32'),
(603, 'spr-20240120-065313', 42, NULL, 573, 10, 1, 500, NULL, 0, 'Cash', NULL, '2024-01-20 06:53:13', '2024-01-20 06:53:13'),
(604, 'spr-20240120-072426', 42, NULL, 574, 10, 1, 290, NULL, 0, 'Cash', NULL, '2024-01-20 07:24:26', '2024-01-20 07:24:26'),
(605, 'spr-20240120-075353', 42, NULL, 575, 10, 1, 640, NULL, 0, 'Cash', NULL, '2024-01-20 07:53:53', '2024-01-20 07:53:53'),
(606, 'spr-20240120-081921', 42, NULL, 576, 10, 1, 250, NULL, 0, 'Cash', NULL, '2024-01-20 08:19:21', '2024-01-20 08:19:21'),
(607, 'spr-20240120-082144', 42, NULL, 577, 10, 1, 1280, NULL, 0, 'Cash', NULL, '2024-01-20 08:21:44', '2024-01-20 08:21:44'),
(608, 'spr-20240120-083506', 42, NULL, 578, 10, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-20 08:35:06', '2024-01-20 08:35:06'),
(609, 'spr-20240120-084537', 42, NULL, 579, 10, 1, 590, NULL, 0, 'Cash', NULL, '2024-01-20 08:45:37', '2024-01-20 08:45:37'),
(610, 'spr-20240120-103445', 42, NULL, 580, 10, 1, 190, NULL, 0, 'Cash', NULL, '2024-01-20 10:34:45', '2024-01-20 10:34:45'),
(611, 'spr-20240120-103952', 42, NULL, 581, 10, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-20 10:39:52', '2024-01-20 10:39:52'),
(612, 'spr-20240120-104751', 42, NULL, 582, 10, 1, 4480, NULL, 0, 'Cash', NULL, '2024-01-20 10:47:51', '2024-01-20 10:47:51'),
(613, 'spr-20240120-111218', 42, NULL, 583, 10, 1, 250, NULL, 0, 'Cash', NULL, '2024-01-20 11:12:18', '2024-01-20 11:12:18'),
(614, 'spr-20240120-115141', 42, NULL, 584, 10, 1, 640, NULL, 0, 'Cash', NULL, '2024-01-20 11:51:41', '2024-01-20 11:51:41'),
(615, 'spr-20240120-122906', 42, NULL, 585, 10, 1, 250, NULL, 0, 'Cash', NULL, '2024-01-20 12:29:06', '2024-01-20 12:29:06'),
(616, 'spr-20240120-125548', 42, NULL, 586, 10, 1, 190, NULL, 0, 'Cash', NULL, '2024-01-20 12:55:48', '2024-01-20 12:55:48'),
(617, 'spr-20240120-022457', 42, NULL, 587, 10, 1, 2120, NULL, 0, 'Cash', NULL, '2024-01-20 14:24:57', '2024-01-20 14:24:57'),
(618, 'spr-20240120-025859', 42, NULL, 588, 10, 1, 460, NULL, 0, 'Cash', NULL, '2024-01-20 14:58:59', '2024-01-20 14:58:59'),
(619, 'spr-20240120-025942', 42, NULL, 589, 10, 1, 1600, NULL, 0, 'Cash', NULL, '2024-01-20 14:59:42', '2024-01-20 14:59:42'),
(620, 'spr-20240120-035411', 42, NULL, 590, 10, 1, 320, NULL, 0, 'Cash', NULL, '2024-01-20 15:54:11', '2024-01-20 15:54:11'),
(621, 'spr-20240120-040004', 42, NULL, 591, 10, 1, 250, NULL, 0, 'Cash', NULL, '2024-01-20 16:00:04', '2024-01-20 16:00:04'),
(622, 'spr-20240120-052836', 42, NULL, 592, 10, 1, 1370, NULL, 0, 'Cash', NULL, '2024-01-20 17:28:36', '2024-01-20 17:28:36'),
(623, 'spr-20240122-053440', 42, NULL, 593, 10, 1, 2230, NULL, 0, 'Cash', NULL, '2024-01-22 05:34:40', '2024-01-22 05:34:40'),
(624, 'spr-20240122-053853', 42, NULL, 594, 10, 1, 500, NULL, 0, 'Cash', NULL, '2024-01-22 05:38:53', '2024-01-22 05:38:53'),
(625, 'spr-20240122-055325', 42, NULL, 595, 10, 1, 3530, NULL, 0, 'Cash', NULL, '2024-01-22 05:53:25', '2024-01-22 05:53:25'),
(626, 'spr-20240122-055442', 42, NULL, 596, 10, 1, 320, NULL, 0, 'Cash', NULL, '2024-01-22 05:54:42', '2024-01-22 05:54:42'),
(627, 'spr-20240122-060317', 42, NULL, 597, 10, 1, 320, NULL, 0, 'Cash', NULL, '2024-01-22 06:03:17', '2024-01-22 06:03:17'),
(628, 'spr-20240122-062328', 42, NULL, 598, 10, 1, 870, NULL, 0, 'Cash', NULL, '2024-01-22 06:23:28', '2024-01-22 06:23:28'),
(629, 'spr-20240122-063844', 42, NULL, 599, 10, 1, 620, NULL, 0, 'Cash', NULL, '2024-01-22 06:38:44', '2024-01-22 06:38:44'),
(630, 'spr-20240122-065302', 42, NULL, 600, 10, 1, 820, NULL, 0, 'Cash', NULL, '2024-01-22 06:53:02', '2024-01-22 06:53:02'),
(631, 'spr-20240122-065506', 42, NULL, 601, 10, 1, 760, NULL, 0, 'Cash', NULL, '2024-01-22 06:55:06', '2024-01-22 06:55:06'),
(632, 'spr-20240122-071903', 42, NULL, 602, 10, 1, 320, NULL, 0, 'Cash', NULL, '2024-01-22 07:19:03', '2024-01-22 07:19:03'),
(633, 'spr-20240122-075114', 42, NULL, 603, 10, 1, 1880, NULL, 0, 'Cash', NULL, '2024-01-22 07:51:14', '2024-01-22 07:51:14'),
(634, 'spr-20240122-075353', 42, NULL, 604, 10, 1, 610, NULL, 0, 'Cash', NULL, '2024-01-22 07:53:53', '2024-01-22 07:53:53'),
(635, 'spr-20240122-082241', 42, NULL, 605, 10, 1, 1120, NULL, 0, 'Cash', NULL, '2024-01-22 08:22:41', '2024-01-22 08:22:41'),
(636, 'spr-20240122-095524', 42, NULL, 606, 10, 1, 380, NULL, 0, 'Cash', NULL, '2024-01-22 09:55:24', '2024-01-22 09:55:24'),
(637, 'spr-20240122-103437', 42, NULL, 607, 10, 1, 1370, NULL, 0, 'Cash', NULL, '2024-01-22 10:34:37', '2024-01-22 10:34:37'),
(638, 'spr-20240122-103513', 42, NULL, 608, 10, 1, 320, NULL, 0, 'Cash', NULL, '2024-01-22 10:35:13', '2024-01-22 10:35:13'),
(639, 'spr-20240122-104924', 42, NULL, 609, 10, 1, 320, NULL, 0, 'Cash', NULL, '2024-01-22 10:49:24', '2024-01-22 10:49:24'),
(640, 'spr-20240122-113106', 42, NULL, 610, 10, 1, 600, NULL, 0, 'Cash', NULL, '2024-01-22 11:31:06', '2024-01-22 11:31:06');
INSERT INTO `payments` (`id`, `payment_reference`, `user_id`, `purchase_id`, `sale_id`, `cash_register_id`, `account_id`, `amount`, `used_points`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES
(641, 'spr-20240122-114014', 42, NULL, 611, 10, 1, 1960, NULL, 0, 'Cash', NULL, '2024-01-22 11:40:14', '2024-01-22 11:40:14'),
(642, 'spr-20240122-120238', 42, NULL, 612, 10, 1, 250, NULL, 0, 'Cash', NULL, '2024-01-22 12:02:38', '2024-01-22 12:02:38'),
(643, 'spr-20240122-120725', 42, NULL, 613, 10, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-22 12:07:25', '2024-01-22 12:07:25'),
(644, 'spr-20240122-124823', 42, NULL, 614, 10, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-22 12:48:23', '2024-01-22 12:48:23'),
(645, 'spr-20240122-020346', 42, NULL, 615, 10, 1, 3530, NULL, 0, 'Cash', NULL, '2024-01-22 14:03:46', '2024-01-22 14:03:46'),
(646, 'spr-20240122-030348', 42, NULL, 616, 10, 1, 190, NULL, 0, 'Cash', NULL, '2024-01-22 15:03:48', '2024-01-22 15:03:48'),
(647, 'spr-20240122-042205', 42, NULL, 617, 10, 1, 190, NULL, 0, 'Cash', NULL, '2024-01-22 16:22:05', '2024-01-22 16:22:05'),
(648, 'spr-20240122-054917', 42, NULL, 618, 10, 1, 1720, NULL, 0, 'Cash', NULL, '2024-01-22 17:49:17', '2024-01-22 17:49:17'),
(649, 'spr-20240123-054059', 42, NULL, 619, 10, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-23 05:40:59', '2024-01-23 05:40:59'),
(650, 'spr-20240123-062917', 42, NULL, 620, 10, 1, 510, NULL, 0, 'Cash', NULL, '2024-01-23 06:29:17', '2024-01-23 06:29:17'),
(651, 'spr-20240123-065458', 42, NULL, 621, 10, 1, 760, NULL, 0, 'Cash', NULL, '2024-01-23 06:54:58', '2024-01-23 06:54:58'),
(652, 'spr-20240123-073132', 42, NULL, 622, 10, 1, 500, NULL, 0, 'Cash', NULL, '2024-01-23 07:31:32', '2024-01-23 07:31:32'),
(653, 'spr-20240123-073257', 42, NULL, 623, 10, 1, 300, NULL, 0, 'Cash', NULL, '2024-01-23 07:32:57', '2024-01-23 07:32:57'),
(654, 'spr-20240123-075820', 42, NULL, 624, 10, 1, 560, NULL, 0, 'Cash', NULL, '2024-01-23 07:58:20', '2024-01-23 07:58:20'),
(655, 'spr-20240123-080152', 42, NULL, 625, 10, 1, 600, NULL, 0, 'Cash', NULL, '2024-01-23 08:01:52', '2024-01-23 08:01:52'),
(656, 'spr-20240123-085504', 42, NULL, 626, 10, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-23 08:55:04', '2024-01-23 08:55:04'),
(657, 'spr-20240123-102125', 42, NULL, 627, 10, 1, 1060, NULL, 0, 'Cash', NULL, '2024-01-23 10:21:25', '2024-01-23 10:21:25'),
(658, 'spr-20240123-104642', 42, NULL, 628, 10, 1, 300, NULL, 0, 'Cash', NULL, '2024-01-23 10:46:42', '2024-01-23 10:46:42'),
(659, 'spr-20240123-110230', 42, NULL, 629, 10, 1, 750, NULL, 0, 'Cash', NULL, '2024-01-23 11:02:30', '2024-01-23 11:02:30'),
(660, 'spr-20240123-123656', 42, NULL, 630, 10, 1, 190, NULL, 0, 'Cash', NULL, '2024-01-23 12:36:56', '2024-01-23 12:36:56'),
(661, 'spr-20240123-014057', 42, NULL, 631, 10, 1, 1900, NULL, 0, 'Cash', NULL, '2024-01-23 13:40:57', '2024-01-23 13:40:57'),
(662, 'spr-20240123-030253', 42, NULL, 632, 10, 1, 190, NULL, 0, 'Cash', NULL, '2024-01-23 15:02:53', '2024-01-23 15:02:53'),
(663, 'spr-20240123-034458', 42, NULL, 633, 10, 1, 510, NULL, 0, 'Cash', NULL, '2024-01-23 15:44:58', '2024-01-23 15:44:58'),
(664, 'spr-20240123-041004', 42, NULL, 634, 10, 1, 880, NULL, 0, 'Cash', NULL, '2024-01-23 16:10:04', '2024-01-23 16:10:04'),
(665, 'spr-20240123-044806', 42, NULL, 635, 10, 1, 580, NULL, 0, 'Cash', NULL, '2024-01-23 16:48:06', '2024-01-23 16:48:06'),
(666, 'spr-20240124-054335', 42, NULL, 636, 10, 1, 1120, NULL, 0, 'Cash', NULL, '2024-01-24 05:43:35', '2024-01-24 05:43:35'),
(667, 'spr-20240124-055035', 42, NULL, 637, 10, 1, 580, NULL, 0, 'Cash', NULL, '2024-01-24 05:50:35', '2024-01-24 05:50:35'),
(668, 'spr-20240124-065239', 42, NULL, 638, 10, 1, 620, NULL, 0, 'Cash', NULL, '2024-01-24 06:52:39', '2024-01-24 06:52:39'),
(669, 'spr-20240124-084916', 42, NULL, 639, 10, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-24 08:49:16', '2024-01-24 08:49:16'),
(670, 'spr-20240124-085644', 42, NULL, 640, 10, 1, 290, NULL, 0, 'Cash', NULL, '2024-01-24 08:56:44', '2024-01-24 08:56:44'),
(671, 'spr-20240124-092527', 42, NULL, 641, 10, 1, 18780, NULL, 0, 'Cash', NULL, '2024-01-24 09:25:27', '2024-01-24 09:25:27'),
(672, 'spr-20240124-092640', 42, NULL, 642, 10, 1, 250, NULL, 0, 'Cash', NULL, '2024-01-24 09:26:40', '2024-01-24 09:26:40'),
(673, 'spr-20240124-101227', 42, NULL, 643, 10, 1, 610, NULL, 0, 'Cash', NULL, '2024-01-24 10:12:27', '2024-01-24 10:12:27'),
(674, 'spr-20240124-102005', 42, NULL, 644, 10, 1, 940, NULL, 0, 'Cash', NULL, '2024-01-24 10:20:05', '2024-01-24 10:20:05'),
(675, 'spr-20240124-102350', 42, NULL, 645, 10, 1, 190, NULL, 0, 'Cash', NULL, '2024-01-24 10:23:50', '2024-01-24 10:23:50'),
(676, 'spr-20240124-102947', 42, NULL, 646, 10, 1, 740, NULL, 0, 'Cash', NULL, '2024-01-24 10:29:47', '2024-01-24 10:29:47'),
(677, 'spr-20240124-125401', 42, NULL, 647, 10, 1, 1340, NULL, 0, 'Cash', NULL, '2024-01-24 12:54:01', '2024-01-24 12:54:01'),
(678, 'spr-20240124-012433', 42, NULL, 648, 10, 1, 1300, NULL, 0, 'Cash', NULL, '2024-01-24 13:24:33', '2024-01-24 13:24:33'),
(679, 'spr-20240124-033539', 42, NULL, 649, 10, 1, 270, NULL, 0, 'Cash', NULL, '2024-01-24 15:35:39', '2024-01-24 15:35:39'),
(680, 'spr-20240124-033713', 42, NULL, 650, 10, 1, 490, NULL, 0, 'Cash', NULL, '2024-01-24 15:37:13', '2024-01-24 15:37:13'),
(681, 'spr-20240124-041623', 42, NULL, 651, NULL, 1, 850, NULL, 0, 'Cash', NULL, '2024-01-24 16:16:23', '2024-01-24 16:16:23'),
(682, 'spr-20240124-041653', 42, NULL, 652, NULL, 1, 290, NULL, 0, 'Cash', NULL, '2024-01-24 16:16:53', '2024-01-24 16:16:53'),
(683, 'spr-20240124-043547', 42, NULL, 653, NULL, 1, 780, NULL, 0, 'Cash', NULL, '2024-01-24 16:35:47', '2024-01-24 16:35:47'),
(684, 'spr-20240124-045759', 42, NULL, 654, NULL, 1, 250, NULL, 0, 'Cash', NULL, '2024-01-24 16:57:59', '2024-01-24 16:57:59'),
(685, 'spr-20240124-054622', 42, NULL, 655, NULL, 1, 1600, NULL, 0, 'Cash', NULL, '2024-01-24 17:46:22', '2024-01-24 17:46:22'),
(686, 'spr-20240125-054256', 42, NULL, 656, NULL, 1, 500, NULL, 0, 'Cash', NULL, '2024-01-25 05:42:56', '2024-01-25 05:42:56'),
(687, 'spr-20240125-054609', 42, NULL, 657, NULL, 1, 2000, NULL, 0, 'Cash', NULL, '2024-01-25 05:46:09', '2024-01-25 05:46:09'),
(688, 'spr-20240125-060518', 42, NULL, 658, NULL, 1, 3760, NULL, 0, 'Cash', NULL, '2024-01-25 06:05:18', '2024-01-25 06:05:18'),
(689, 'spr-20240125-060647', 42, NULL, 659, NULL, 1, 1600, NULL, 0, 'Cash', NULL, '2024-01-25 06:06:47', '2024-01-25 06:06:47'),
(690, 'spr-20240125-061358', 42, NULL, 660, NULL, 1, 1760, NULL, 0, 'Cash', NULL, '2024-01-25 06:13:58', '2024-01-25 06:13:58'),
(691, 'spr-20240125-064935', 42, NULL, 661, NULL, 1, 1960, NULL, 0, 'Cash', NULL, '2024-01-25 06:49:35', '2024-01-25 06:49:35'),
(692, 'spr-20240125-065728', 42, NULL, 662, NULL, 1, 2500, NULL, 0, 'Cash', NULL, '2024-01-25 06:57:28', '2024-01-25 06:57:28'),
(693, 'spr-20240125-065830', 42, NULL, 663, NULL, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-25 06:58:30', '2024-01-25 06:58:30'),
(694, 'spr-20240125-071858', 42, NULL, 664, NULL, 1, 260, NULL, 0, 'Cash', NULL, '2024-01-25 07:18:58', '2024-01-25 07:18:58'),
(695, 'spr-20240125-091408', 42, NULL, 665, NULL, 1, 1600, NULL, 0, 'Cash', NULL, '2024-01-25 09:14:08', '2024-01-25 09:14:08'),
(696, 'spr-20240125-093849', 42, NULL, 666, NULL, 1, 1400, NULL, 0, 'Cash', NULL, '2024-01-25 09:38:49', '2024-01-25 09:38:49'),
(697, 'spr-20240125-105520', 42, NULL, 667, NULL, 1, 2800, NULL, 0, 'Cash', NULL, '2024-01-25 10:55:20', '2024-01-25 10:55:20'),
(698, 'spr-20240125-105650', 42, NULL, 668, NULL, 1, 250, NULL, 0, 'Cash', NULL, '2024-01-25 10:56:50', '2024-01-25 10:56:50'),
(699, 'spr-20240125-111147', 42, NULL, 669, NULL, 1, 290, NULL, 0, 'Cash', NULL, '2024-01-25 11:11:47', '2024-01-25 11:11:47'),
(700, 'spr-20240125-112429', 42, NULL, 670, NULL, 1, 1600, NULL, 0, 'Cash', NULL, '2024-01-25 11:24:29', '2024-01-25 11:24:29'),
(701, 'spr-20240125-113731', 42, NULL, 671, NULL, 1, 250, NULL, 0, 'Cash', NULL, '2024-01-25 11:37:31', '2024-01-25 11:37:31'),
(702, 'spr-20240125-113750', 42, NULL, 672, NULL, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-25 11:37:50', '2024-01-25 11:37:50'),
(703, 'spr-20240125-034304', 42, NULL, 673, NULL, 1, 380, NULL, 0, 'Cash', NULL, '2024-01-25 15:43:04', '2024-01-25 15:43:04'),
(704, 'spr-20240125-034339', 42, NULL, 674, NULL, 1, 550, NULL, 0, 'Cash', NULL, '2024-01-25 15:43:39', '2024-01-25 15:43:39'),
(705, 'spr-20240125-065935', 42, NULL, 675, NULL, 1, 1410, NULL, 0, 'Cash', NULL, '2024-01-25 18:59:35', '2024-01-25 18:59:35'),
(706, 'spr-20240126-061146', 42, NULL, 676, NULL, 1, 1650, NULL, 0, 'Cash', NULL, '2024-01-26 06:11:46', '2024-01-26 06:11:46'),
(707, 'spr-20240126-062439', 42, NULL, 677, NULL, 1, 1960, NULL, 0, 'Cash', NULL, '2024-01-26 06:24:39', '2024-01-26 06:24:39'),
(708, 'spr-20240126-082345', 42, NULL, 678, NULL, 1, 3000, NULL, 0, 'Cash', NULL, '2024-01-26 08:23:45', '2024-01-26 08:23:45'),
(709, 'spr-20240126-082445', 42, NULL, 679, NULL, 1, 3000, NULL, 0, 'Cash', NULL, '2024-01-26 08:24:45', '2024-01-26 08:24:45'),
(710, 'spr-20240126-092240', 42, NULL, 680, NULL, 1, 5900, NULL, 0, 'Cash', NULL, '2024-01-26 09:22:40', '2024-01-26 09:22:40'),
(711, 'spr-20240126-092719', 42, NULL, 681, NULL, 1, 4360, NULL, 0, 'Cash', NULL, '2024-01-26 09:27:19', '2024-01-26 09:27:19'),
(712, 'spr-20240126-093410', 42, NULL, 682, NULL, 1, 630, NULL, 0, 'Cash', NULL, '2024-01-26 09:34:10', '2024-01-26 09:34:10'),
(713, 'spr-20240126-103725', 42, NULL, 683, NULL, 1, 950, NULL, 0, 'Cash', NULL, '2024-01-26 10:37:25', '2024-01-26 10:37:25'),
(714, 'spr-20240126-110627', 42, NULL, 684, NULL, 1, 760, NULL, 0, 'Cash', NULL, '2024-01-26 11:06:27', '2024-01-26 11:06:27'),
(715, 'spr-20240126-110740', 42, NULL, 685, NULL, 1, 1120, NULL, 0, 'Cash', NULL, '2024-01-26 11:07:40', '2024-01-26 11:07:40'),
(716, 'spr-20240126-113536', 42, NULL, 686, NULL, 1, 320, NULL, 0, 'Cash', NULL, '2024-01-26 11:35:36', '2024-01-26 11:35:36'),
(717, 'spr-20240126-015841', 42, NULL, 687, NULL, 1, 1600, NULL, 0, 'Cash', NULL, '2024-01-26 13:58:41', '2024-01-26 13:58:41'),
(718, 'spr-20240126-022023', 42, NULL, 688, NULL, 1, 1600, NULL, 0, 'Cash', NULL, '2024-01-26 14:20:23', '2024-01-26 14:20:23'),
(719, 'spr-20240126-022215', 42, NULL, 689, NULL, 1, 920, NULL, 0, 'Cash', NULL, '2024-01-26 14:22:15', '2024-01-26 14:22:15'),
(720, 'spr-20240126-022651', 42, NULL, 690, NULL, 1, 320, NULL, 0, 'Cash', NULL, '2024-01-26 14:26:51', '2024-01-26 14:26:51'),
(721, 'spr-20240126-031042', 42, NULL, 691, NULL, 1, 750, NULL, 0, 'Cash', NULL, '2024-01-26 15:10:42', '2024-01-26 15:10:42'),
(722, 'spr-20240126-042602', 42, NULL, 692, NULL, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-26 16:26:02', '2024-01-26 16:26:02'),
(723, 'spr-20240126-052025', 42, NULL, 693, NULL, 1, 570, NULL, 0, 'Cash', NULL, '2024-01-26 17:20:25', '2024-01-26 17:20:25'),
(724, 'spr-20240127-012718', 42, NULL, 694, NULL, 1, 500, NULL, 0, 'Cash', NULL, '2024-01-27 13:27:18', '2024-01-27 13:27:18'),
(725, 'spr-20240127-013836', 42, NULL, 695, NULL, 1, 13640, NULL, 0, 'Cash', NULL, '2024-01-27 13:38:36', '2024-01-27 13:38:36'),
(726, 'spr-20240127-014303', 42, NULL, 696, NULL, 1, 3000, NULL, 0, 'Cash', NULL, '2024-01-27 13:43:03', '2024-01-27 13:43:03'),
(727, 'spr-20240127-014725', 42, NULL, 697, NULL, 1, 190, NULL, 0, 'Cash', NULL, '2024-01-27 13:47:25', '2024-01-27 13:47:25'),
(728, 'spr-20240127-020427', 42, NULL, 698, NULL, 1, 280, NULL, 0, 'Cash', NULL, '2024-01-27 14:04:27', '2024-01-27 14:04:27'),
(729, 'spr-20240127-022453', 42, NULL, 699, NULL, 1, 370, NULL, 0, 'Cash', NULL, '2024-01-27 14:24:53', '2024-01-27 14:24:53'),
(730, 'spr-20240127-052112', 42, NULL, 700, NULL, 1, 1480, NULL, 0, 'Cash', NULL, '2024-01-27 17:21:12', '2024-01-27 17:21:12'),
(731, 'spr-20240127-053040', 42, NULL, 701, NULL, 1, 250, NULL, 0, 'Cash', NULL, '2024-01-27 17:30:40', '2024-01-27 17:30:40'),
(732, 'ppr-20240502-042957', 1, 73, NULL, NULL, 1, 4040, NULL, 0, 'Cash', NULL, '2024-05-02 16:29:57', '2024-05-02 16:29:57'),
(733, 'ppr-20240502-043108', 1, 74, NULL, NULL, 1, 4040, NULL, 0, 'Cash', NULL, '2024-05-02 16:31:08', '2024-05-02 16:31:08'),
(734, 'spr-20240502-044647', 1, NULL, 702, NULL, 1, 250, NULL, 480, 'Gift Card', NULL, '2024-05-02 16:46:47', '2024-05-02 16:46:47'),
(735, 'spr-20240502-044920', 1, NULL, 703, NULL, 1, 540, NULL, 0, 'Cash', NULL, '2024-05-02 16:49:20', '2024-05-02 16:49:20'),
(736, 'spr-20240502-114806', 1, NULL, 704, NULL, 1, 1350, NULL, 0, 'Cash', NULL, '2024-05-02 23:48:06', '2024-05-02 23:48:06'),
(737, 'spr-20240502-115602', 1, NULL, 705, NULL, 1, 833.6, NULL, 0, 'Cash', NULL, '2024-05-02 23:56:02', '2024-05-02 23:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_cheque`
--

CREATE TABLE `payment_with_cheque` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_cheque`
--

INSERT INTO `payment_with_cheque` (`id`, `payment_id`, `cheque_no`, `created_at`, `updated_at`) VALUES
(1, 19, '23425235235', '2018-07-01 03:09:48', '2018-07-01 03:09:48'),
(2, 24, '3123123123', '2018-07-10 01:21:32', '2018-07-10 01:21:32'),
(3, 31, '767867678', '2018-08-08 10:36:22', '2018-08-08 10:36:22'),
(4, 34, '3123412', '2018-08-08 23:55:54', '2018-08-08 23:55:54'),
(5, 35, '7765', '2018-08-09 00:32:14', '2018-08-09 00:32:14'),
(6, 44, '3124142412', '2018-08-30 03:07:18', '2018-08-30 03:07:18'),
(7, 51, '6576764646', '2018-09-03 04:08:21', '2018-09-03 04:08:21'),
(8, 53, '111111111', '2018-09-03 04:15:24', '2018-09-03 04:15:24'),
(9, 79, '1111', '2018-10-06 00:51:55', '2018-10-06 00:51:55'),
(10, 147, '221133', '2018-12-04 00:58:35', '2018-12-04 00:58:35'),
(11, 175, '1111', '2019-02-07 06:38:23', '2019-02-07 06:38:23'),
(12, 176, '1111', '2019-02-07 06:54:59', '2019-02-07 06:54:59'),
(13, 178, '420', '2019-02-07 07:07:04', '2019-02-07 07:07:04'),
(14, 216, '12344321', '2019-11-11 04:39:11', '2019-11-11 04:39:11'),
(15, 295, '111122222', '2020-10-18 05:17:24', '2020-10-18 05:17:24'),
(16, 406, '13123123', '2022-03-11 15:15:29', '2022-03-11 15:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_credit_card`
--

CREATE TABLE `payment_with_credit_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) DEFAULT NULL,
  `charge_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_credit_card`
--

INSERT INTO `payment_with_credit_card` (`id`, `payment_id`, `customer_id`, `customer_stripe_id`, `charge_id`, `created_at`, `updated_at`) VALUES
(4, 294, 1, 'cus_IDw8z9yJZn4qH3', 'ch_1HdUGJKwOmA8HLXePiqphlky', '2020-10-18 05:16:55', '2020-10-18 05:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_gift_card`
--

CREATE TABLE `payment_with_gift_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_gift_card`
--

INSERT INTO `payment_with_gift_card` (`id`, `payment_id`, `gift_card_id`, `created_at`, `updated_at`) VALUES
(1, 36, 2, '2018-08-24 21:48:36', '2018-08-25 00:57:35'),
(4, 39, 1, '2018-08-25 02:36:34', '2018-08-25 02:36:34'),
(6, 50, 1, '2018-09-02 23:01:38', '2018-09-02 23:01:38'),
(8, 293, 1, '2020-10-18 05:14:26', '2020-10-18 05:14:26'),
(9, 734, 8, '2024-05-02 16:46:47', '2024-05-02 16:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_paypal`
--

CREATE TABLE `payment_with_paypal` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `reference_no`, `employee_id`, `account_id`, `user_id`, `amount`, `paying_method`, `note`, `created_at`, `updated_at`) VALUES
(8, 'payroll-20190101-055231', 1, 1, 1, 100, '0', NULL, '2018-12-31 23:52:31', '2018-12-31 23:52:31'),
(9, 'payroll-20191204-113802', 1, 1, 1, 10000, '0', NULL, '2019-12-04 17:38:02', '2019-12-04 17:38:02'),
(10, 'payroll-20210619-123706', 1, 1, 1, 200, '0', NULL, '2021-06-19 06:37:06', '2021-06-19 06:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'products-edit', 'web', '2018-06-03 01:00:09', '2018-06-03 01:00:09'),
(5, 'products-delete', 'web', '2018-06-03 22:54:22', '2018-06-03 22:54:22'),
(6, 'products-add', 'web', '2018-06-04 00:34:14', '2018-06-04 00:34:14'),
(7, 'products-index', 'web', '2018-06-04 03:34:27', '2018-06-04 03:34:27'),
(8, 'purchases-index', 'web', '2018-06-04 08:03:19', '2018-06-04 08:03:19'),
(9, 'purchases-add', 'web', '2018-06-04 08:12:25', '2018-06-04 08:12:25'),
(10, 'purchases-edit', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(11, 'purchases-delete', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(12, 'sales-index', 'web', '2018-06-04 10:49:08', '2018-06-04 10:49:08'),
(13, 'sales-add', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(14, 'sales-edit', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(15, 'sales-delete', 'web', '2018-06-04 10:49:53', '2018-06-04 10:49:53'),
(16, 'quotes-index', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(17, 'quotes-add', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(18, 'quotes-edit', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(19, 'quotes-delete', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(20, 'transfers-index', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(21, 'transfers-add', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(22, 'transfers-edit', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(23, 'transfers-delete', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(24, 'returns-index', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(25, 'returns-add', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(26, 'returns-edit', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(27, 'returns-delete', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(28, 'customers-index', 'web', '2018-06-04 23:15:54', '2018-06-04 23:15:54'),
(29, 'customers-add', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(30, 'customers-edit', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(31, 'customers-delete', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(32, 'suppliers-index', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(33, 'suppliers-add', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(34, 'suppliers-edit', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(35, 'suppliers-delete', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(36, 'product-report', 'web', '2018-06-24 23:05:33', '2018-06-24 23:05:33'),
(37, 'purchase-report', 'web', '2018-06-24 23:24:56', '2018-06-24 23:24:56'),
(38, 'sale-report', 'web', '2018-06-24 23:33:13', '2018-06-24 23:33:13'),
(39, 'customer-report', 'web', '2018-06-24 23:36:51', '2018-06-24 23:36:51'),
(40, 'due-report', 'web', '2018-06-24 23:39:52', '2018-06-24 23:39:52'),
(41, 'users-index', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(42, 'users-add', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(43, 'users-edit', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(44, 'users-delete', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(45, 'profit-loss', 'web', '2018-07-14 21:50:05', '2018-07-14 21:50:05'),
(46, 'best-seller', 'web', '2018-07-14 22:01:38', '2018-07-14 22:01:38'),
(47, 'daily-sale', 'web', '2018-07-14 22:24:21', '2018-07-14 22:24:21'),
(48, 'monthly-sale', 'web', '2018-07-14 22:30:41', '2018-07-14 22:30:41'),
(49, 'daily-purchase', 'web', '2018-07-14 22:36:46', '2018-07-14 22:36:46'),
(50, 'monthly-purchase', 'web', '2018-07-14 22:48:17', '2018-07-14 22:48:17'),
(51, 'payment-report', 'web', '2018-07-14 23:10:41', '2018-07-14 23:10:41'),
(52, 'warehouse-stock-report', 'web', '2018-07-14 23:16:55', '2018-07-14 23:16:55'),
(53, 'product-qty-alert', 'web', '2018-07-14 23:33:21', '2018-07-14 23:33:21'),
(54, 'supplier-report', 'web', '2018-07-30 03:00:01', '2018-07-30 03:00:01'),
(55, 'expenses-index', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(56, 'expenses-add', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(57, 'expenses-edit', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(58, 'expenses-delete', 'web', '2018-09-05 01:07:11', '2018-09-05 01:07:11'),
(59, 'general_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(60, 'mail_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(61, 'pos_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(62, 'hrm_setting', 'web', '2019-01-02 10:30:23', '2019-01-02 10:30:23'),
(63, 'purchase-return-index', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(64, 'purchase-return-add', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(65, 'purchase-return-edit', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(66, 'purchase-return-delete', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(67, 'account-index', 'web', '2019-01-02 22:06:13', '2019-01-02 22:06:13'),
(68, 'balance-sheet', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(69, 'account-statement', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(70, 'department', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(71, 'attendance', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(72, 'payroll', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(73, 'employees-index', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(74, 'employees-add', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(75, 'employees-edit', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(76, 'employees-delete', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(77, 'user-report', 'web', '2019-01-16 06:48:18', '2019-01-16 06:48:18'),
(78, 'stock_count', 'web', '2019-02-17 10:32:01', '2019-02-17 10:32:01'),
(79, 'adjustment', 'web', '2019-02-17 10:32:02', '2019-02-17 10:32:02'),
(80, 'sms_setting', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(81, 'create_sms', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(82, 'print_barcode', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(83, 'empty_database', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(84, 'customer_group', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(85, 'unit', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(86, 'tax', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(87, 'gift_card', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(88, 'coupon', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(89, 'holiday', 'web', '2019-10-19 08:57:15', '2019-10-19 08:57:15'),
(90, 'warehouse-report', 'web', '2019-10-22 06:00:23', '2019-10-22 06:00:23'),
(91, 'warehouse', 'web', '2020-02-26 06:47:32', '2020-02-26 06:47:32'),
(92, 'brand', 'web', '2020-02-26 06:59:59', '2020-02-26 06:59:59'),
(93, 'billers-index', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(94, 'billers-add', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(95, 'billers-edit', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(96, 'billers-delete', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(97, 'money-transfer', 'web', '2020-03-02 05:41:48', '2020-03-02 05:41:48'),
(98, 'category', 'web', '2020-07-13 12:13:16', '2020-07-13 12:13:16'),
(99, 'delivery', 'web', '2020-07-13 12:13:16', '2020-07-13 12:13:16'),
(100, 'send_notification', 'web', '2020-10-31 06:21:31', '2020-10-31 06:21:31'),
(101, 'today_sale', 'web', '2020-10-31 06:57:04', '2020-10-31 06:57:04'),
(102, 'today_profit', 'web', '2020-10-31 06:57:04', '2020-10-31 06:57:04'),
(103, 'currency', 'web', '2020-11-09 00:23:11', '2020-11-09 00:23:11'),
(104, 'backup_database', 'web', '2020-11-15 00:16:55', '2020-11-15 00:16:55'),
(105, 'reward_point_setting', 'web', '2021-06-27 04:34:42', '2021-06-27 04:34:42'),
(106, 'revenue_profit_summary', 'web', '2022-02-08 13:57:21', '2022-02-08 13:57:21'),
(107, 'cash_flow', 'web', '2022-02-08 13:57:22', '2022-02-08 13:57:22'),
(108, 'monthly_summary', 'web', '2022-02-08 13:57:22', '2022-02-08 13:57:22'),
(109, 'yearly_report', 'web', '2022-02-08 13:57:22', '2022-02-08 13:57:22'),
(110, 'discount_plan', 'web', '2022-02-16 09:12:26', '2022-02-16 09:12:26'),
(111, 'discount', 'web', '2022-02-16 09:12:38', '2022-02-16 09:12:38'),
(112, 'product-expiry-report', 'web', '2022-03-30 05:39:20', '2022-03-30 05:39:20'),
(113, 'purchase-payment-index', 'web', '2022-06-05 14:12:27', '2022-06-05 14:12:27'),
(114, 'purchase-payment-add', 'web', '2022-06-05 14:12:28', '2022-06-05 14:12:28'),
(115, 'purchase-payment-edit', 'web', '2022-06-05 14:12:28', '2022-06-05 14:12:28'),
(116, 'purchase-payment-delete', 'web', '2022-06-05 14:12:28', '2022-06-05 14:12:28'),
(117, 'sale-payment-index', 'web', '2022-06-05 14:12:28', '2022-06-05 14:12:28'),
(118, 'sale-payment-add', 'web', '2022-06-05 14:12:28', '2022-06-05 14:12:28'),
(119, 'sale-payment-edit', 'web', '2022-06-05 14:12:28', '2022-06-05 14:12:28'),
(120, 'sale-payment-delete', 'web', '2022-06-05 14:12:28', '2022-06-05 14:12:28'),
(121, 'all_notification', 'web', '2022-06-05 14:12:29', '2022-06-05 14:12:29'),
(122, 'sale-report-chart', 'web', '2022-06-05 14:12:29', '2022-06-05 14:12:29'),
(123, 'dso-report', 'web', '2022-06-05 14:12:29', '2022-06-05 14:12:29'),
(124, 'product_history', 'web', '2022-08-25 14:04:05', '2022-08-25 14:04:05'),
(125, 'supplier-due-report', 'web', '2022-08-31 09:46:33', '2022-08-31 09:46:33'),
(126, 'custom_field', 'web', '2023-05-02 07:41:35', '2023-05-02 07:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `pos_setting`
--

CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) DEFAULT NULL,
  `stripe_secret_key` varchar(191) DEFAULT NULL,
  `paypal_live_api_username` varchar(191) DEFAULT NULL,
  `paypal_live_api_password` varchar(191) DEFAULT NULL,
  `paypal_live_api_secret` varchar(191) DEFAULT NULL,
  `payment_options` text DEFAULT NULL,
  `invoice_option` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_setting`
--

INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `paypal_live_api_username`, `paypal_live_api_password`, `paypal_live_api_secret`, `payment_options`, `invoice_option`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 8, 3, 0, 'pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB', 'sk_test_TtQQaawhEYRwa3mU9CzttrEy', 'admin', 'admin', 'bkbkh', 'cash,card,cheque,gift_card,deposit,paypal', 'A4', '2018-09-02 03:17:04', '2023-11-23 15:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `barcode_symbology` varchar(191) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `daily_sale_objective` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) DEFAULT NULL,
  `starting_date` varchar(200) DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `is_embeded` tinyint(1) DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `is_imei` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) DEFAULT NULL,
  `variant_list` varchar(191) DEFAULT NULL,
  `qty_list` varchar(191) DEFAULT NULL,
  `price_list` varchar(191) DEFAULT NULL,
  `product_details` text DEFAULT NULL,
  `variant_option` text DEFAULT NULL,
  `variant_value` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `daily_sale_objective`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_embeded`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `variant_option`, `variant_value`, `is_active`, `created_at`, `updated_at`) VALUES
(91, 'Back', '19828063', 'standard', 'C128', NULL, 9, 7, 7, 7, 180, 190, 28, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-11-26 09:48:28', '2024-05-02 16:46:46'),
(92, 'Wing', '12294045', 'standard', 'C128', NULL, 9, 7, 7, 7, 300, 320, 91, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2023-11-26 11:27:59', '2024-01-18 12:25:58'),
(93, 'Layer', '11063571', 'standard', 'C128', NULL, 9, 7, 7, 7, 270, 290, 92, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2023-11-26 11:36:01', '2024-01-18 13:54:57'),
(94, 'Tripe', '66549810', 'standard', 'C128', NULL, 9, 7, 7, 7, 250, 260, 51, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-11-26 11:37:57', '2024-01-27 13:38:35'),
(95, 'Tripe (ICC)', '69601071', 'standard', 'C128', NULL, 9, 7, 7, 7, 250, 270, 16, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-11-26 12:37:14', '2024-01-22 05:34:39'),
(96, 'Sinew', '49022681', 'standard', 'C128', NULL, 9, 7, 7, 7, 270, 280, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-11-26 12:45:10', '2023-11-26 12:45:10'),
(97, 'Sinew (ICC)', '17930685', 'standard', 'C128', NULL, 9, 7, 7, 7, 360, 370, 114, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-11-26 12:53:36', '2024-01-27 14:24:53'),
(98, 'Sinew (VERON)', '61504175', 'standard', 'C128', NULL, 9, 7, 7, 7, 290, 300, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-11-26 13:00:40', '2023-11-26 13:00:40'),
(99, 'Brazil', '81426106', 'standard', 'C128', NULL, 9, 7, 7, 7, 270, 280, 794, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-11-26 13:15:21', '2024-01-27 13:43:03'),
(100, 'Mountaire', '26800153', 'standard', 'C128', NULL, 9, 7, 7, 7, 270, 280, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-11-26 13:17:30', '2024-01-26 06:24:38'),
(101, 'Block Gizzard', '60212692', 'standard', 'C128', NULL, 9, 7, 7, 7, 240, 250, 558, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-12-08 17:22:23', '2024-01-27 17:30:40'),
(102, 'Nat sausage', '92974073', 'standard', 'C128', NULL, 9, 7, 7, 7, 270, 280, 904, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-12-08 17:27:16', '2024-05-02 23:48:06'),
(103, 'Mountaire Drumstick', '96851212', 'standard', 'C128', NULL, 9, 7, 7, 7, 270, 280, 37, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-12-11 12:36:23', '2024-01-27 13:38:35'),
(104, 'Hake 20KG', '01940820', 'standard', 'C128', NULL, 9, 7, 7, 7, 490, 500, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-12-19 20:43:04', '2023-12-21 08:03:28'),
(105, 'Hake 30KG', '36639012', 'standard', 'C128', NULL, 9, 7, 7, 7, 930, 950, 0, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-12-19 20:57:51', '2023-12-21 08:03:28'),
(106, 'Minu', '74395691', 'standard', 'C128', NULL, 9, 7, 7, 7, 420, 430, 152, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-12-19 21:00:05', '2024-01-27 17:21:12'),
(107, 'Holland', '84291306', 'standard', 'C128', NULL, 9, 7, 7, 7, 290, 300, 47, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-12-19 21:03:12', '2024-01-27 13:38:35'),
(108, 'Yellow Tail', '18410258', 'standard', 'C128', NULL, 9, 1, 1, 1, 280, 290, 166, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-12-19 21:15:03', '2024-01-25 15:43:39'),
(109, 'Drumstick', '43809493', 'standard', 'C128', NULL, 9, 1, 1, 1, 300, 305, 700, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-12-20 15:11:02', '2024-01-27 13:34:48'),
(110, 'Local Salmon 20KG', '82220167', 'standard', 'C128', NULL, 9, 1, 1, 1, 570, 580, 37, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-12-21 06:47:52', '2024-01-26 10:37:25'),
(111, 'Throat', '21452688', 'standard', 'C128', NULL, 9, 1, 1, 1, 240, 250, 101, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2023-12-21 07:01:42', '2024-01-19 08:14:22'),
(112, 'Abidjan Salmon 15KG', '69581062', 'standard', 'C128', NULL, 9, 1, 1, 1, 530, 540, 1, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-12-21 17:06:10', '2024-05-02 16:49:20'),
(113, 'Kpanla 10KG', '29136278', 'standard', 'C128', NULL, 9, 1, 1, 1, 290, 300, 279, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 0, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2023-12-21 17:07:14', '2024-01-27 17:21:11'),
(114, 'Doux', '86953258', 'standard', 'C128', NULL, 9, 1, 1, 1, 290, 300, 392, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2023-12-22 06:50:10', '2024-01-18 12:25:31'),
(115, 'Pack Gizzard', '09128592', 'standard', 'C128', NULL, 9, 7, 7, 7, 260, 270, 287, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, '2024-01-17 05:58:08', '2024-01-24 05:56:50'),
(116, 'Hake 10KG', '72816201', 'standard', 'C128', NULL, 9, 7, 7, 7, 310, 320, 50, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2024-01-17 06:06:44', '2024-05-02 23:56:02'),
(117, 'Wings', '02457934', 'standard', 'C128', NULL, 9, 7, 7, 7, 310, 320, 11, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2024-01-18 12:27:20', '2024-01-27 13:38:35'),
(118, 'Doux', '50050193', 'standard', 'C128', NULL, 9, 7, 7, 7, 290, 300, 74, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2024-01-18 12:28:11', '2024-05-02 23:48:05'),
(119, 'Layer', '02410587', 'standard', 'C128', NULL, 9, 7, 7, 7, 280, 290, 564, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2024-01-18 13:55:48', '2024-01-27 13:38:35'),
(120, 'Block Gizzard 15KG', '62708703', 'standard', 'C128', NULL, 9, 7, 7, 7, 340, 350, 70, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2024-01-18 13:59:57', '2024-01-18 14:00:27'),
(121, 'Throat', '29935836', 'standard', 'C128', NULL, 9, 7, 7, 7, 240, 250, 64, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2024-01-19 08:15:29', '2024-01-27 17:21:12'),
(122, 'Pack Gizzard', '35003182', 'standard', 'C128', NULL, 9, 7, 7, 7, 260, 270, 43, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2024-01-24 05:57:59', '2024-01-27 13:38:34'),
(123, 'Golden', '36237432', 'standard', 'C128', NULL, 9, 7, 7, 7, 290, 300, 170, 50, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, 1, '2024-01-27 13:32:11', '2024-01-27 13:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_adjustments`
--

CREATE TABLE `product_adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_adjustments`
--

INSERT INTO `product_adjustments` (`id`, `adjustment_id`, `product_id`, `variant_id`, `qty`, `action`, `created_at`, `updated_at`) VALUES
(16, 13, 5, NULL, 3, '-', '2023-04-01 15:30:50', '2023-04-01 15:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `product_batches`
--

CREATE TABLE `product_batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(191) NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_batches`
--

INSERT INTO `product_batches` (`id`, `product_id`, `batch_no`, `expired_date`, `qty`, `created_at`, `updated_at`) VALUES
(1, 71, '1001', '2023-05-31', 13, '2021-03-07 08:14:05', '2022-05-14 08:50:17'),
(2, 71, '1002', '2023-05-31', 6, '2021-03-07 08:55:06', '2021-06-18 14:32:54'),
(3, 71, '1003', '2023-09-30', 2, '2021-03-09 09:42:13', '2021-09-21 09:49:37'),
(4, 22, '10001', '2021-11-30', 1, '2021-10-20 07:47:09', '2021-10-20 07:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_purchases`
--

CREATE TABLE `product_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_purchases`
--

INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(59, 12, 4, NULL, NULL, NULL, 200, 200, 1, 1, 0, 0, 0, 200, '2018-08-08 23:48:36', '2018-08-08 23:48:36'),
(60, 12, 5, NULL, NULL, NULL, 100, 100, 1, 100, 0, 0, 0, 10000, '2018-08-08 23:48:36', '2018-08-08 23:48:36'),
(66, 13, 2, NULL, NULL, NULL, 100, 100, 3, 166.96, 0, 15, 2504.35, 19200, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(67, 13, 3, NULL, NULL, NULL, 100, 100, 1, 200, 0, 0, 0, 20000, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(68, 13, 1, NULL, NULL, NULL, 150, 150, 1, 320, 0, 10, 4800, 52800, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(69, 13, 10, NULL, NULL, NULL, 60, 60, 7, 10, 0, 0, 0, 600, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(70, 14, 1, NULL, NULL, NULL, 100, 100, 1, 320, 0, 10, 3200, 35200, '2018-08-09 07:23:48', '2018-08-09 07:23:48'),
(71, 14, 2, NULL, NULL, NULL, 50, 50, 3, 166.96, 0, 15, 1252.17, 9600, '2018-08-09 07:23:48', '2018-08-09 07:23:48'),
(72, 14, 3, NULL, NULL, NULL, 100, 100, 1, 200, 0, 0, 0, 20000, '2018-08-09 07:23:49', '2018-08-09 07:23:49'),
(73, 14, 5, NULL, NULL, NULL, 100, 100, 1, 100, 0, 0, 0, 10000, '2018-08-09 07:23:49', '2018-08-09 07:23:49'),
(74, 14, 10, NULL, NULL, NULL, 50, 50, 7, 10, 0, 0, 0, 500, '2018-08-09 07:23:49', '2018-08-09 07:23:49'),
(76, 15, 22, NULL, NULL, NULL, 20, 20, 1, 800, 0, 10, 1600, 17600, '2018-09-03 04:06:46', '2018-09-03 04:06:46'),
(87, 16, 22, NULL, NULL, NULL, 20, 20, 1, 800, 0, 10, 1600, 17600, '2018-09-20 09:09:12', '2018-09-20 09:09:12'),
(89, 18, 4, NULL, NULL, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2018-10-22 10:26:25', '2018-10-22 10:26:25'),
(90, 19, 4, NULL, NULL, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2018-10-22 10:26:52', '2018-10-22 10:26:52'),
(91, 20, 25, NULL, NULL, NULL, 15, 15, 1, 500, 0, 10, 750, 8250, '2018-10-23 01:14:21', '2018-10-23 01:14:21'),
(93, 21, 25, NULL, NULL, NULL, 15, 15, 1, 500, 0, 10, 750, 8250, '2018-10-23 01:14:58', '2018-10-23 01:14:58'),
(94, 22, 22, NULL, NULL, NULL, 5, 5, 1, 800, 0, 10, 400, 4400, '2018-10-31 22:59:03', '2018-10-31 22:59:03'),
(96, 23, 22, NULL, NULL, NULL, 5, 5, 1, 800, 0, 10, 400, 4400, '2018-11-03 03:23:52', '2018-11-03 03:23:52'),
(97, 24, 22, NULL, NULL, NULL, 15, 15, 1, 800, 0, 10, 1200, 13200, '2018-11-05 03:18:19', '2018-11-05 03:18:19'),
(98, 24, 25, NULL, NULL, NULL, 5, 5, 1, 500, 0, 10, 250, 2750, '2018-11-05 03:18:19', '2018-11-05 03:18:19'),
(99, 25, 31, NULL, NULL, NULL, 15, 15, 1, 250, 0, 0, 0, 3750, '2018-12-04 23:34:30', '2018-12-04 23:34:30'),
(100, 25, 30, NULL, NULL, NULL, 15, 15, 1, 50, 0, 0, 0, 750, '2018-12-04 23:34:30', '2018-12-04 23:34:30'),
(101, 26, 31, NULL, NULL, NULL, 15, 15, 1, 250, 0, 0, 0, 3750, '2018-12-04 23:35:08', '2018-12-04 23:35:08'),
(102, 26, 30, NULL, NULL, NULL, 15, 15, 1, 50, 0, 0, 0, 750, '2018-12-04 23:35:08', '2018-12-04 23:35:08'),
(104, 27, 32, NULL, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2018-12-18 23:57:41', '2018-12-18 23:57:41'),
(112, 33, 33, NULL, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2018-12-24 03:04:21', '2018-12-24 03:04:21'),
(113, 34, 25, NULL, NULL, NULL, 2, 2, 1, 500, 0, 10, 100, 1100, '2019-01-03 01:01:24', '2019-01-03 01:01:24'),
(114, 34, 22, NULL, NULL, NULL, 2, 2, 1, 800, 0, 10, 160, 1760, '2019-01-03 01:01:24', '2019-01-03 01:01:24'),
(115, 35, 31, NULL, NULL, NULL, 2, 2, 1, 250, 0, 0, 0, 500, '2019-01-29 03:54:48', '2019-01-29 03:54:48'),
(116, 35, 30, NULL, NULL, NULL, 2, 2, 1, 50, 0, 0, 0, 100, '2019-01-29 03:54:48', '2019-01-29 03:54:48'),
(117, 36, 30, NULL, NULL, NULL, 3, 3, 1, 50, 0, 0, 0, 150, '2019-01-29 03:55:58', '2019-01-29 03:55:58'),
(118, 36, 31, NULL, NULL, NULL, 2, 2, 1, 250, 0, 0, 0, 500, '2019-01-29 03:55:58', '2019-01-29 03:55:58'),
(121, 39, 1, NULL, NULL, NULL, 2, 2, 1, 315, 10, 10, 63, 693, '2019-02-09 04:44:13', '2019-02-09 04:44:13'),
(122, 39, 2, NULL, NULL, NULL, 1, 1, 3, 192, 0, 0, 0, 192, '2019-02-09 04:44:13', '2019-02-09 04:44:13'),
(123, 38, 32, NULL, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2019-02-09 04:45:24', '2019-02-09 04:45:24'),
(124, 38, 25, NULL, NULL, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2019-02-09 04:45:24', '2019-02-09 04:45:24'),
(125, 37, 33, NULL, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2019-02-09 04:46:22', '2019-02-09 04:46:22'),
(126, 37, 25, NULL, NULL, NULL, 2, 2, 1, 500, 0, 10, 100, 1100, '2019-02-09 04:46:23', '2019-02-09 04:46:23'),
(127, 37, 22, NULL, NULL, NULL, 6, 6, 1, 800, 0, 10, 480, 5280, '2019-02-09 04:46:23', '2019-02-09 04:46:23'),
(128, 40, 33, NULL, NULL, NULL, 10, 10, 1, 10, 0, 0, 0, 100, '2019-03-03 04:39:17', '2019-03-03 04:39:17'),
(129, 41, 33, NULL, NULL, NULL, 5, 5, 1, 10, 0, 0, 0, 50, '2019-03-03 04:43:58', '2019-03-03 04:43:58'),
(130, 41, 1, NULL, NULL, NULL, 10, 10, 1, 320, 0, 10, 320, 3520, '2019-03-03 04:43:59', '2019-03-03 04:43:59'),
(133, 42, 30, NULL, NULL, NULL, 1, 1, 1, 50, 0, 0, 0, 50, '2019-04-13 13:50:08', '2019-04-13 13:50:08'),
(134, 42, 31, NULL, NULL, NULL, 1, 1, 1, 250, 0, 0, 0, 250, '2019-04-13 13:50:08', '2019-04-13 13:50:08'),
(135, 43, 25, NULL, NULL, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2019-06-13 04:16:00', '2019-06-13 04:16:00'),
(136, 43, 22, NULL, NULL, NULL, 3, 3, 1, 800, 0, 10, 240, 2640, '2019-06-13 04:16:01', '2019-06-13 04:16:01'),
(137, 44, 25, NULL, NULL, NULL, 1, 1, 1, 500, 0, 10, 50, 550, '2019-10-19 09:31:19', '2019-10-19 09:31:19'),
(138, 44, 22, NULL, NULL, NULL, 1, 1, 1, 800, 0, 10, 80, 880, '2019-10-19 09:31:20', '2019-10-19 09:31:20'),
(140, 46, 33, NULL, NULL, NULL, 10, 10, 1, 10, 0, 0, 0, 100, '2019-11-03 05:39:49', '2019-11-03 05:39:49'),
(141, 46, 32, NULL, NULL, NULL, 10, 10, 1, 5, 0, 0, 0, 50, '2019-11-03 05:39:49', '2019-11-03 05:39:49'),
(142, 47, 1, NULL, NULL, NULL, 2, 2, 1, 315, 10, 10, 63, 693, '2019-11-09 05:25:10', '2019-11-09 05:25:10'),
(143, 47, 2, NULL, NULL, NULL, 1, 1, 3, 192, 0, 0, 0, 192, '2019-11-09 05:25:10', '2019-11-09 05:25:10'),
(144, 48, 4, NULL, NULL, NULL, 100, 100, 1, 1, 0, 0, 0, 100, '2019-11-10 13:02:21', '2019-11-10 13:02:21'),
(149, 49, 22, NULL, NULL, NULL, 10, 10, 1, 800, 0, 10, 800, 8800, '2019-11-11 04:28:59', '2019-11-11 04:28:59'),
(158, 55, 48, NULL, 3, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-11-27 16:28:35', '2019-11-27 16:28:35'),
(159, 55, 48, NULL, 2, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-11-27 16:28:35', '2019-11-27 16:28:35'),
(161, 57, 3, NULL, NULL, NULL, 1, 1, 1, 200, 0, 0, 0, 200, '2019-12-04 17:07:49', '2019-12-04 17:07:49'),
(162, 58, 48, NULL, 2, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-05 04:21:10', '2019-12-05 04:21:10'),
(163, 58, 48, NULL, 3, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-05 04:21:10', '2019-12-05 04:21:10'),
(169, 59, 48, NULL, 3, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 10:22:29', '2019-12-21 10:22:29'),
(170, 59, 48, NULL, 2, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 10:22:29', '2019-12-21 10:22:29'),
(171, 59, 48, NULL, 5, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 10:22:29', '2019-12-21 10:22:29'),
(174, 56, 48, NULL, 2, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 13:27:16', '2019-12-21 13:27:16'),
(178, 61, 48, NULL, 3, NULL, 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 07:06:31', '2020-01-01 07:06:31'),
(179, 61, 48, NULL, 2, NULL, 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 07:06:31', '2020-01-01 07:06:31'),
(180, 61, 48, NULL, 5, NULL, 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 07:06:31', '2020-01-01 07:06:31'),
(181, 62, 25, NULL, NULL, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2020-01-01 08:24:02', '2020-01-01 08:24:02'),
(209, 67, 31, NULL, NULL, NULL, 1, 1, 1, 250, 0, 0, 0, 250, '2020-02-04 17:00:41', '2020-02-04 17:00:41'),
(210, 67, 30, NULL, NULL, NULL, 1, 1, 1, 50, 0, 0, 0, 50, '2020-02-04 17:00:41', '2020-02-04 17:00:41'),
(212, 69, 4, NULL, NULL, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2020-03-02 05:55:10', '2020-03-02 05:55:10'),
(213, 70, 4, NULL, NULL, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2020-03-02 05:56:03', '2020-03-02 05:56:03'),
(214, 71, 25, NULL, NULL, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2020-04-06 13:35:12', '2020-04-06 13:35:12'),
(215, 71, 31, NULL, NULL, NULL, 5, 5, 1, 250, 0, 0, 0, 1250, '2020-04-06 13:35:12', '2020-04-06 13:35:12'),
(216, 71, 30, NULL, NULL, NULL, 3, 3, 1, 50, 0, 0, 0, 150, '2020-04-06 13:35:12', '2020-04-06 13:35:12'),
(217, 72, 61, NULL, NULL, NULL, 10, 10, 1, 2500, 5000, 15, 3750, 28750, '2020-08-16 16:02:07', '2020-08-16 16:02:07'),
(219, 73, 62, NULL, 12, NULL, 2, 2, 1, 1, 0, 0, 0, 2, '2020-09-27 09:07:44', '2020-09-27 09:07:44'),
(221, 74, 61, NULL, NULL, NULL, 11, 11, 1, 3000, 0, 15, 4950, 37950, '2020-10-24 01:03:16', '2020-10-24 01:03:16'),
(222, 74, 22, NULL, NULL, NULL, 4, 4, 1, 800, 0, 10, 320, 3520, '2020-10-24 01:03:16', '2020-10-24 01:03:16'),
(232, 83, 60, NULL, 9, NULL, 2, 2, 1, 1, 0, 0, 0, 2, '2020-10-26 22:56:11', '2020-10-26 22:56:11'),
(233, 84, 60, NULL, 9, NULL, 2, 2, 1, 2, 0, 0, 0, 4, '2020-10-26 22:56:58', '2020-10-26 22:56:58'),
(234, 85, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2020-11-02 03:29:52', '2020-11-02 03:29:52'),
(239, 87, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2020-11-02 05:20:34', '2020-11-02 05:20:34'),
(242, 89, 62, NULL, 12, NULL, 1, 1, 1, 1, 0, 0, 0, 1, '2020-11-16 09:01:45', '2020-11-16 09:01:45'),
(243, 89, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2020-11-16 09:01:45', '2020-11-16 09:01:45'),
(244, 90, 61, NULL, NULL, NULL, 10, 10, 1, 3000, 0, 15, 4500, 34500, '2020-11-18 00:15:44', '2020-11-18 00:15:44'),
(271, 98, 71, 1, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2021-03-07 08:14:05', '2021-03-07 08:14:05'),
(281, 100, 71, 1, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2021-03-09 09:45:19', '2021-03-09 09:45:19'),
(282, 99, 71, 2, NULL, NULL, 5, 5, 1, 1, 0, 0, 0, 5, '2021-03-09 09:46:50', '2021-03-09 09:46:50'),
(283, 102, 71, 1, NULL, NULL, 5, 5, 1, 1, 0, 0, 0, 5, '2021-03-11 03:47:53', '2021-03-11 03:47:53'),
(295, 105, 71, 1, NULL, NULL, 1, 1, 1, 1, 0, 0, 0, 1, '2021-04-09 15:53:48', '2021-04-09 15:53:48'),
(296, 105, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-04-09 15:53:48', '2021-04-09 15:53:48'),
(297, 106, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2021-05-24 13:18:54', '2021-05-24 13:18:54'),
(309, 113, 3, NULL, NULL, NULL, 1, 1, 1, 200, 0, 0, 0, 200, '2021-05-30 07:41:19', '2021-05-30 07:41:19'),
(310, 113, 71, 1, NULL, NULL, 1, 1, 1, 1, 0, 0, 0, 1, '2021-05-30 07:41:19', '2021-05-30 07:41:19'),
(311, 114, 71, 3, NULL, NULL, 3, 3, 1, 1.5, 0, 0, 0, 4.5, '2021-06-01 09:21:27', '2021-06-01 09:21:27'),
(312, 115, 71, 1, NULL, NULL, 1, 1, 1, 1, 0, 0, 0, 1, '2021-06-18 14:28:36', '2021-06-18 14:28:36'),
(313, 115, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-06-18 14:28:36', '2021-06-18 14:28:36'),
(314, 116, 71, 1, NULL, NULL, 1, 1, 1, 1, 0, 0, 0, 1, '2021-06-19 04:48:22', '2021-06-19 04:48:22'),
(315, 116, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-06-19 04:48:22', '2021-06-19 04:48:22'),
(316, 117, 72, NULL, NULL, NULL, 5, 5, 1, 2, 0, 0, 0, 10, '2021-07-06 07:10:42', '2021-07-06 07:10:42'),
(317, 118, 72, NULL, NULL, NULL, 5, 5, 1, 2, 0, 0, 0, 10, '2021-07-06 07:11:07', '2021-07-06 07:11:07'),
(324, 121, 71, 3, NULL, NULL, 1, 1, 1, 1, 0, 0, 0, 1, '2021-09-21 09:49:38', '2021-09-21 09:49:38'),
(325, 121, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-09-21 09:49:38', '2021-09-21 09:49:38'),
(328, 123, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-10-03 07:04:53', '2021-10-03 07:04:53'),
(329, 123, 22, NULL, NULL, '11101', 1, 1, 1, 800, 0, 10, 80, 880, '2021-10-03 07:04:53', '2021-10-03 07:04:53'),
(330, 124, 48, NULL, 2, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2021-10-03 07:06:21', '2021-10-03 07:06:21'),
(331, 124, 22, NULL, NULL, '11102', 1, 1, 1, 800, 0, 10, 80, 880, '2021-10-03 07:06:21', '2021-10-03 07:06:21'),
(345, 128, 22, NULL, NULL, NULL, 10, 5, 1, 800, 0, 10, 800, 8800, '2021-10-20 07:45:25', '2021-10-20 07:45:25'),
(346, 129, 22, 4, NULL, NULL, 1, 1, 1, 800, 0, 10, 80, 880, '2021-10-20 07:47:09', '2021-10-20 07:47:09'),
(356, 131, 3, NULL, NULL, NULL, 3, 3, 1, 200, 0, 0, 0, 600, '2021-11-29 07:29:18', '2021-11-29 07:29:18'),
(357, 131, 1, NULL, NULL, NULL, 2, 2, 1, 320, 0, 10, 64, 704, '2021-11-29 07:29:18', '2021-11-29 07:29:18'),
(363, 132, 22, NULL, NULL, '11103', 1, 1, 1, 800, 0, 10, 80, 880, '2021-12-07 13:01:11', '2021-12-07 13:01:11'),
(364, 132, 48, NULL, 5, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2021-12-07 13:01:11', '2021-12-07 13:01:11'),
(365, 132, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-12-07 13:01:11', '2021-12-07 13:01:11'),
(366, 133, 5, NULL, NULL, NULL, 2, 2, 1, 100, 0, 0, 0, 200, '2022-02-20 15:31:02', '2022-02-20 15:31:02'),
(368, 134, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2022-03-11 16:01:52', '2022-03-11 16:01:52'),
(369, 135, 3, NULL, NULL, NULL, 1, 1, 1, 200, 0, 0, 0, 200, '2022-03-11 16:02:15', '2022-03-11 16:02:15'),
(370, 136, 2, NULL, NULL, NULL, 1, 1, 3, 166.96, 0, 15, 25.04, 192, '2022-03-27 05:07:27', '2022-03-27 05:07:27'),
(371, 136, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2022-03-27 05:07:27', '2022-03-27 05:07:27'),
(385, 144, 2, NULL, NULL, NULL, 10, 10, 1, 6.96, 0, 15, 10.4, 80, '2022-03-31 08:05:49', '2022-03-31 08:05:49'),
(386, 144, 25, NULL, NULL, NULL, 10, 10, 1, 500, 0, 10, 500, 5500, '2022-03-31 08:05:49', '2022-03-31 08:05:49'),
(387, 144, 72, NULL, NULL, NULL, 10, 10, 1, 2, 0, 0, 0, 20, '2022-03-31 08:05:49', '2022-03-31 08:05:49'),
(388, 145, 72, NULL, NULL, NULL, 10, 10, 1, 2, 0, 0, 0, 20, '2022-04-24 05:00:38', '2022-04-24 05:00:38'),
(389, 145, 25, NULL, NULL, NULL, 1, 1, 1, 500, 0, 10, 50, 550, '2022-04-24 05:00:38', '2022-04-24 05:00:38'),
(390, 146, 25, NULL, NULL, NULL, 10, 10, 1, 500, 0, 10, 500, 5500, '2022-05-16 05:21:00', '2022-05-16 05:21:00'),
(391, 147, 25, NULL, NULL, NULL, 10, 10, 1, 500, 0, 10, 500, 5500, '2022-05-31 06:23:57', '2022-05-31 06:23:57'),
(392, 147, 1, NULL, NULL, NULL, 10, 10, 1, 320, 0, 10, 320, 3520, '2022-05-31 06:23:57', '2022-05-31 06:23:57'),
(395, 148, 79, NULL, NULL, NULL, 12, 12, 7, 12, 0, 0, 0, 144, '2022-06-05 06:26:35', '2022-06-05 06:26:35'),
(396, 150, 2, NULL, NULL, NULL, 1, 1, 3, 347.83, 0, 15, 52.17, 400, '2022-06-07 10:38:46', '2022-06-07 10:38:46'),
(400, 153, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2022-07-17 04:52:12', '2022-07-17 04:52:12'),
(401, 153, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2022-07-17 04:52:12', '2022-07-17 04:52:12'),
(402, 154, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2022-07-17 04:52:57', '2022-07-17 04:52:57'),
(403, 154, 5, NULL, NULL, NULL, 2, 2, 1, 100, 0, 0, 0, 200, '2022-07-17 04:52:57', '2022-07-17 04:52:57'),
(404, 155, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2022-07-17 04:53:44', '2022-07-17 04:53:44'),
(416, 158, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2022-08-08 15:13:57', '2022-08-08 15:13:57'),
(417, 158, 48, NULL, 5, NULL, 1, 1, 1, 12, 0, 0, 0, 12, '2022-08-08 15:13:57', '2022-08-08 15:13:57'),
(418, 158, 87, NULL, 30, NULL, 1, 1, 1, 13, 0, 0, 0, 13, '2022-08-08 15:13:57', '2022-08-08 15:13:57'),
(419, 158, 87, NULL, 22, NULL, 1, 1, 1, 12, 0, 0, 0, 12, '2022-08-08 15:13:57', '2022-08-08 15:13:57'),
(420, 158, 48, NULL, 2, NULL, 1, 1, 1, 7, 0, 0, 0, 7, '2022-08-08 15:13:57', '2022-08-08 15:13:57'),
(425, 161, 25, NULL, NULL, NULL, 1, 1, 1, 500, 0, 10, 50, 550, '2022-09-04 14:01:09', '2022-09-04 14:01:09'),
(426, 161, 3, NULL, NULL, NULL, 1, 1, 1, 200, 0, 0, 0, 200, '2022-09-04 14:01:10', '2022-09-04 14:01:10'),
(427, 161, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2022-09-04 14:01:10', '2022-09-04 14:01:10'),
(428, 162, 90, NULL, 35, NULL, 10, 10, 1, 550, 0, 10, 550, 6050, '2022-09-11 07:04:41', '2022-09-11 07:04:41'),
(429, 162, 90, NULL, 34, NULL, 10, 10, 1, 500, 0, 10, 500, 5500, '2022-09-11 07:04:41', '2022-09-11 07:04:41'),
(430, 162, 90, NULL, 33, NULL, 10, 10, 1, 500, 0, 10, 500, 5500, '2022-09-11 07:04:41', '2022-09-11 07:04:41'),
(431, 163, 1, NULL, NULL, NULL, 1, 1, 1, 290.91, 0, 10, 29.09, 320, '2022-11-20 06:20:35', '2022-11-20 06:20:35'),
(432, 164, 3, NULL, NULL, NULL, 1, 1, 1, 190, 0, 0, 0, 190, '2022-11-24 10:37:10', '2022-11-24 10:37:10'),
(433, 165, 3, NULL, NULL, NULL, 1, 1, 1, 200, 0, 0, 0, 200, '2022-12-11 08:54:54', '2022-12-11 08:54:54'),
(439, 171, 1, NULL, NULL, NULL, 1, 1, 1, 261.82, 0, 10, 26.18, 288, '2023-03-27 06:10:54', '2023-03-27 06:10:54'),
(441, 172, 5, NULL, NULL, NULL, 2, 2, 1, 90, 0, 0, 0, 180, '2023-03-27 06:21:35', '2023-03-27 06:21:35'),
(442, 172, 1, NULL, NULL, NULL, 2, 2, 1, 261.82, 0, 10, 52.36, 576, '2023-03-27 06:21:35', '2023-03-27 06:21:35'),
(443, 173, 3, NULL, NULL, NULL, 2, 2, 1, 200, 0, 0, 0, 400, '2023-04-05 07:40:44', '2023-04-05 07:40:44'),
(457, 8, 104, NULL, NULL, NULL, 50, 50, 7, 490, 0, 0, 0, 24500, '2023-12-19 20:51:58', '2023-12-19 20:51:58'),
(458, 9, 105, NULL, NULL, NULL, 38, 38, 7, 930, 0, 0, 0, 35340, '2023-12-19 20:58:37', '2023-12-19 20:58:37'),
(459, 10, 106, NULL, NULL, NULL, 50, 50, 7, 430, 0, 0, 0, 21500, '2023-12-19 21:00:45', '2023-12-19 21:00:45'),
(460, 11, 107, NULL, NULL, NULL, 150, 150, 7, 290, 0, 0, 0, 43500, '2023-12-19 21:05:10', '2023-12-19 21:05:10'),
(461, 12, 102, NULL, NULL, NULL, 131, 131, 7, 265, 0, 0, 0, 34715, '2023-12-19 21:06:14', '2023-12-19 21:06:14'),
(462, 13, 102, NULL, NULL, NULL, 8, 8, 7, 260, 0, 0, 0, 2080, '2023-12-19 21:11:04', '2023-12-19 21:11:04'),
(463, 14, 108, NULL, NULL, NULL, 3, 3, 1, 280, 0, 0, 0, 840, '2023-12-19 21:15:33', '2023-12-19 21:15:33'),
(464, 15, 91, NULL, NULL, NULL, 22, 22, 7, 180, 0, 0, 0, 3960, '2023-12-19 21:17:57', '2023-12-19 21:17:57'),
(465, 16, 92, NULL, NULL, NULL, 9, 9, 7, 300, 0, 0, 0, 2700, '2023-12-19 21:18:53', '2023-12-19 21:18:53'),
(466, 17, 100, NULL, NULL, NULL, 36, 36, 7, 260, 0, 0, 0, 9360, '2023-12-19 21:20:43', '2023-12-19 21:20:43'),
(467, 18, 100, NULL, NULL, NULL, 2, 2, 7, 260, 0, 0, 0, 520, '2023-12-19 21:21:35', '2023-12-19 21:21:35'),
(468, 19, 101, NULL, NULL, NULL, 512, 512, 7, 250, 0, 0, 0, 128000, '2023-12-19 21:24:41', '2023-12-19 21:24:41'),
(469, 20, 99, NULL, NULL, NULL, 71, 71, 7, 260, 0, 0, 0, 18460, '2023-12-19 21:26:02', '2023-12-19 21:26:02'),
(470, 21, 94, NULL, NULL, NULL, 14, 14, 7, 250, 0, 0, 0, 3500, '2023-12-19 21:26:48', '2023-12-19 21:26:48'),
(471, 22, 109, NULL, NULL, NULL, 60, 60, 1, 300, 0, 0, 0, 18000, '2023-12-20 15:11:41', '2023-12-20 15:11:41'),
(472, 23, 91, NULL, NULL, NULL, 100, 100, 7, 180, 0, 0, 0, 18000, '2023-12-20 19:11:06', '2023-12-20 19:11:06'),
(473, 24, 99, NULL, NULL, NULL, 100, 100, 7, 260, 0, 0, 0, 26000, '2023-12-20 19:12:19', '2023-12-20 19:12:19'),
(474, 25, 110, NULL, NULL, NULL, 2, 2, 1, 570, 0, 0, 0, 1140, '2023-12-21 06:48:31', '2023-12-21 06:48:31'),
(475, 26, 111, NULL, NULL, NULL, 69, 69, 1, 240, 0, 0, 0, 16560, '2023-12-21 07:03:04', '2023-12-21 07:03:04'),
(476, 27, 112, NULL, NULL, NULL, 3, 3, 1, 530, 0, 0, 0, 1590, '2023-12-21 17:07:48', '2023-12-21 17:07:48'),
(477, 28, 113, NULL, NULL, NULL, 22, 22, 1, 300, 0, 0, 0, 6600, '2023-12-21 17:08:23', '2023-12-21 17:08:23'),
(478, 29, 97, NULL, NULL, NULL, 102, 102, 7, 350, 0, 0, 0, 35700, '2023-12-21 17:40:54', '2023-12-21 17:40:54'),
(479, 30, 95, NULL, NULL, NULL, 2, 2, 7, 250, 0, 0, 0, 500, '2023-12-22 05:58:56', '2023-12-22 05:58:56'),
(481, 31, 114, NULL, NULL, NULL, 42, 42, 1, 290, 0, 0, 0, 12180, '2023-12-22 18:56:35', '2023-12-22 18:56:35'),
(482, 32, 114, NULL, NULL, NULL, 2, 2, 1, 290, 0, 0, 0, 580, '2023-12-22 18:57:29', '2023-12-22 18:57:29'),
(483, 33, 109, NULL, NULL, NULL, 499, 499, 1, 300, 0, 0, 0, 149700, '2023-12-25 05:47:54', '2023-12-25 05:47:54'),
(484, 34, 113, NULL, NULL, NULL, 160, 160, 1, 300, 0, 0, 0, 48000, '2023-12-25 05:48:28', '2023-12-25 05:48:28'),
(485, 35, 110, NULL, NULL, NULL, 50, 50, 1, 570, 0, 0, 0, 28500, '2023-12-25 05:49:01', '2023-12-25 05:49:01'),
(486, 36, 93, NULL, NULL, NULL, 250, 250, 7, 270, 0, 0, 0, 67500, '2023-12-25 05:49:29', '2023-12-25 05:49:29'),
(487, 37, 92, NULL, NULL, NULL, 210, 210, 7, 300, 0, 0, 0, 63000, '2023-12-25 05:59:07', '2023-12-25 05:59:07'),
(488, 38, 93, NULL, NULL, NULL, 100, 100, 7, 270, 0, 0, 0, 27000, '2023-12-25 05:59:55', '2023-12-25 05:59:55'),
(489, 39, 93, NULL, NULL, NULL, 50, 50, 7, 270, 0, 0, 0, 13500, '2023-12-25 06:07:57', '2023-12-25 06:07:57'),
(490, 40, 113, NULL, NULL, NULL, 250, 250, 1, 300, 0, 0, 0, 75000, '2023-12-29 05:50:53', '2023-12-29 05:50:53'),
(491, 41, 114, NULL, NULL, NULL, 450, 450, 1, 290, 0, 0, 0, 130500, '2023-12-29 05:51:43', '2023-12-29 05:51:43'),
(492, 42, 95, NULL, NULL, NULL, 100, 100, 7, 250, 0, 0, 0, 25000, '2023-12-29 05:52:26', '2023-12-29 05:52:26'),
(493, 43, 101, NULL, NULL, NULL, 136, 136, 7, 240, 0, 0, 0, 32640, '2024-01-02 05:56:36', '2024-01-02 05:56:36'),
(494, 44, 102, NULL, NULL, NULL, 105, 105, 7, 260, 0, 0, 0, 27300, '2024-01-02 05:57:35', '2024-01-02 05:57:35'),
(495, 45, 112, NULL, NULL, NULL, 2, 2, 1, 530, 0, 0, 0, 1060, '2024-01-02 05:58:06', '2024-01-02 05:58:06'),
(496, 46, 99, NULL, NULL, NULL, 837, 837, 7, 260, 0, 0, 0, 217620, '2024-01-02 05:58:40', '2024-01-02 05:58:40'),
(497, 47, 94, NULL, NULL, NULL, 100, 100, 7, 250, 0, 0, 0, 25000, '2024-01-15 06:07:44', '2024-01-15 06:07:44'),
(498, 48, 115, NULL, NULL, NULL, 300, 300, 7, 260, 0, 0, 0, 78000, '2024-01-17 05:58:54', '2024-01-17 05:58:54'),
(499, 49, 116, NULL, NULL, NULL, 90, 90, 7, 310, 0, 0, 0, 27900, '2024-01-17 06:08:39', '2024-01-17 06:08:39'),
(500, 50, 109, NULL, NULL, NULL, 630, 630, 1, 300, 0, 0, 0, 189000, '2024-01-17 06:25:40', '2024-01-17 06:25:40'),
(501, 51, 108, NULL, NULL, NULL, 170, 170, 1, 280, 0, 0, 0, 47600, '2024-01-17 16:32:47', '2024-01-17 16:32:47'),
(502, 52, 111, NULL, NULL, NULL, 100, 100, 1, 240, 0, 0, 0, 24000, '2024-01-18 06:12:09', '2024-01-18 06:12:09'),
(503, 53, 118, NULL, NULL, NULL, 6, 6, 7, 290, 0, 0, 0, 1740, '2024-01-18 12:28:42', '2024-01-18 12:28:42'),
(504, 54, 117, NULL, NULL, NULL, 77, 77, 7, 310, 0, 0, 0, 23870, '2024-01-18 12:29:15', '2024-01-18 12:29:15'),
(505, 55, 119, NULL, NULL, NULL, 47, 47, 7, 280, 0, 0, 0, 13160, '2024-01-18 13:56:23', '2024-01-18 13:56:23'),
(506, 56, 120, NULL, NULL, NULL, 70, 70, 7, 340, 0, 0, 0, 23800, '2024-01-18 14:00:27', '2024-01-18 14:00:27'),
(507, 57, 91, NULL, NULL, NULL, 100, 100, 7, 180, 0, 0, 0, 18000, '2024-01-19 05:17:31', '2024-01-19 05:17:31'),
(508, 58, 119, NULL, NULL, NULL, 100, 100, 7, 280, 0, 0, 0, 28000, '2024-01-19 05:18:24', '2024-01-19 05:18:24'),
(509, 59, 102, NULL, NULL, NULL, 900, 900, 7, 270, 0, 0, 0, 243000, '2024-01-19 07:22:15', '2024-01-19 07:22:15'),
(510, 60, 121, NULL, NULL, NULL, 48, 48, 7, 240, 0, 0, 0, 11520, '2024-01-19 08:20:05', '2024-01-19 08:20:05'),
(511, 61, 100, NULL, NULL, NULL, 14, 14, 7, 270, 0, 0, 0, 3780, '2024-01-19 10:04:44', '2024-01-19 10:04:44'),
(512, 62, 100, NULL, NULL, NULL, 1, 1, 7, 270, 0, 0, 0, 270, '2024-01-19 10:06:46', '2024-01-19 10:06:46'),
(513, 63, 107, NULL, NULL, NULL, 50, 50, 7, 290, 0, 0, 0, 14500, '2024-01-20 08:45:15', '2024-01-20 08:45:15'),
(514, 64, 118, NULL, NULL, NULL, 100, 100, 7, 290, 0, 0, 0, 29000, '2024-01-20 10:37:19', '2024-01-20 10:37:19'),
(515, 65, 119, NULL, NULL, NULL, 450, 450, 7, 280, 0, 0, 0, 126000, '2024-01-23 10:32:21', '2024-01-23 10:32:21'),
(516, 66, 122, NULL, NULL, NULL, 55, 55, 7, 260, 0, 0, 0, 14300, '2024-01-24 05:58:32', '2024-01-24 05:58:32'),
(517, 67, 97, NULL, NULL, NULL, 50, 50, 7, 350, 0, 0, 0, 17500, '2024-01-24 05:59:15', '2024-01-24 05:59:15'),
(518, 68, 103, NULL, NULL, NULL, 50, 50, 7, 270, 0, 0, 0, 13500, '2024-01-24 15:54:38', '2024-01-24 15:54:38'),
(519, 69, 100, NULL, NULL, NULL, 9, 9, 7, 270, 0, 0, 0, 2430, '2024-01-25 10:54:58', '2024-01-25 10:54:58'),
(520, 70, 106, NULL, NULL, NULL, 150, 150, 7, 430, 0, 0, 0, 64500, '2024-01-27 13:28:52', '2024-01-27 13:28:52'),
(521, 71, 121, NULL, NULL, NULL, 60, 60, 7, 240, 0, 0, 0, 14400, '2024-01-27 13:29:30', '2024-01-27 13:29:30'),
(522, 72, 123, NULL, NULL, NULL, 170, 170, 7, 290, 0, 0, 0, 49300, '2024-01-27 13:33:00', '2024-01-27 13:33:00'),
(523, 75, 99, NULL, NULL, NULL, 5, 0, 7, 270, 0, 0, 0, 1350, '2024-05-02 16:27:45', '2024-05-02 16:27:45'),
(524, 75, 94, NULL, NULL, NULL, 10, 0, 7, 250, 0, 0, 0, 2500, '2024-05-02 16:27:45', '2024-05-02 16:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `product_quotation`
--

CREATE TABLE `product_quotation` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_returns`
--

CREATE TABLE `product_returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sales`
--

INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(752, 472, 91, NULL, NULL, NULL, 1, 7, 185, 0, 0, 0, 185, '2023-11-26 10:08:01', '2023-11-26 10:08:01'),
(753, 473, 91, NULL, NULL, NULL, 1, 7, 195, 0, 0, 0, 195, '2023-11-29 07:34:39', '2023-11-29 07:34:39'),
(754, 474, 102, NULL, NULL, NULL, 8, 7, 275, 0, 0, 0, 2200, '2023-12-08 18:07:27', '2023-12-08 18:07:27'),
(755, 474, 101, NULL, NULL, NULL, 12, 7, 260, 0, 0, 0, 3120, '2023-12-08 18:07:27', '2023-12-08 18:07:27'),
(756, 474, 91, NULL, NULL, NULL, 11, 7, 195, 0, 0, 0, 2145, '2023-12-08 18:07:27', '2023-12-08 18:07:27'),
(757, 475, 100, NULL, NULL, NULL, 3, 7, 270, 0, 0, 0, 810, '2023-12-11 12:41:28', '2023-12-11 12:41:28'),
(758, 475, 103, NULL, NULL, NULL, 3, 7, 280, 0, 0, 0, 840, '2023-12-11 12:41:28', '2023-12-11 12:41:28'),
(759, 475, 92, NULL, NULL, NULL, 2, 7, 320, 0, 0, 0, 640, '2023-12-11 12:41:28', '2023-12-11 12:41:28'),
(760, 476, 100, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2023-12-11 12:43:02', '2023-12-11 12:43:02'),
(761, 476, 103, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2023-12-11 12:43:03', '2023-12-11 12:43:03'),
(762, 477, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2023-12-19 14:25:39', '2023-12-19 14:25:39'),
(763, 478, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2023-12-20 06:24:12', '2023-12-20 06:24:12'),
(764, 479, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2023-12-20 07:28:04', '2023-12-20 07:28:04'),
(765, 479, 106, NULL, NULL, NULL, 1, 7, 440, 0, 0, 0, 440, '2023-12-20 07:28:04', '2023-12-20 07:28:04'),
(766, 480, 102, NULL, NULL, NULL, 2, 7, 270, 0, 0, 0, 540, '2023-12-20 09:52:57', '2023-12-20 09:52:57'),
(767, 481, 91, NULL, NULL, NULL, 2, 7, 190, 0, 0, 0, 380, '2023-12-20 09:55:01', '2023-12-20 09:55:01'),
(768, 482, 106, NULL, NULL, NULL, 2, 7, 440, 0, 0, 0, 880, '2023-12-20 11:49:24', '2023-12-20 11:49:24'),
(769, 483, 91, NULL, NULL, NULL, 2, 7, 190, 0, 0, 0, 380, '2023-12-20 12:32:39', '2023-12-20 12:32:39'),
(770, 484, 102, NULL, NULL, NULL, 50, 7, 270, 0, 0, 0, 13500, '2023-12-20 15:44:54', '2023-12-20 15:44:54'),
(771, 485, 100, NULL, NULL, NULL, 7, 7, 270, 0, 0, 0, 1890, '2023-12-20 15:45:49', '2023-12-20 15:45:49'),
(772, 486, 102, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2023-12-20 15:54:12', '2023-12-20 15:54:12'),
(773, 487, 92, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2023-12-21 06:22:31', '2023-12-21 06:22:31'),
(774, 487, 91, NULL, NULL, NULL, 3, 7, 190, 0, 0, 0, 570, '2023-12-21 06:22:31', '2023-12-21 06:22:31'),
(775, 488, 108, NULL, NULL, NULL, 1, 1, 290, 0, 0, 0, 290, '2023-12-21 06:45:38', '2023-12-21 06:45:38'),
(776, 489, 102, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2023-12-21 08:03:28', '2023-12-21 08:03:28'),
(777, 489, 105, NULL, NULL, NULL, 38, 7, 950, 0, 0, 0, 36100, '2023-12-21 08:03:28', '2023-12-21 08:03:28'),
(778, 489, 104, NULL, NULL, NULL, 50, 7, 500, 0, 0, 0, 25000, '2023-12-21 08:03:28', '2023-12-21 08:03:28'),
(779, 489, 99, NULL, NULL, NULL, 5, 7, 270, 0, 0, 0, 1350, '2023-12-21 08:03:29', '2023-12-21 08:03:29'),
(780, 490, 109, NULL, NULL, NULL, 3, 1, 315, 0, 0, 0, 945, '2023-12-21 10:59:53', '2023-12-21 10:59:53'),
(781, 490, 100, NULL, NULL, NULL, 3, 7, 270, 0, 0, 0, 810, '2023-12-21 10:59:54', '2023-12-21 10:59:54'),
(782, 491, 94, NULL, NULL, NULL, 3, 7, 260, 0, 0, 0, 780, '2023-12-21 11:02:06', '2023-12-21 11:02:06'),
(783, 492, 102, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2023-12-21 12:52:02', '2023-12-21 12:52:02'),
(784, 493, 99, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2023-12-21 14:43:14', '2023-12-21 14:43:14'),
(785, 494, 100, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2023-12-21 16:28:47', '2023-12-21 16:28:47'),
(786, 495, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2023-12-21 17:41:24', '2023-12-21 17:41:24'),
(787, 496, 113, NULL, NULL, NULL, 10, 1, 310, 0, 0, 0, 3100, '2023-12-22 05:55:08', '2023-12-22 05:55:08'),
(788, 497, 100, NULL, NULL, NULL, 4, 7, 270, 0, 0, 0, 1080, '2023-12-22 18:48:37', '2023-12-22 18:48:37'),
(789, 497, 106, NULL, NULL, NULL, 21, 7, 440, 0, 0, 0, 9240, '2023-12-22 18:48:38', '2023-12-22 18:48:38'),
(790, 497, 109, NULL, NULL, NULL, 2, 1, 315, 0, 0, 0, 630, '2023-12-22 18:48:38', '2023-12-22 18:48:38'),
(791, 497, 102, NULL, NULL, NULL, 6, 7, 270, 0, 0, 0, 1620, '2023-12-22 18:48:38', '2023-12-22 18:48:38'),
(792, 497, 114, NULL, NULL, NULL, 2, 1, 300, 0, 0, 0, 600, '2023-12-22 18:48:38', '2023-12-22 18:48:38'),
(793, 497, 107, NULL, NULL, NULL, 3, 7, 300, 0, 0, 0, 900, '2023-12-22 18:48:38', '2023-12-22 18:48:38'),
(794, 497, 94, NULL, NULL, NULL, 4, 7, 260, 0, 0, 0, 1040, '2023-12-22 18:48:38', '2023-12-22 18:48:38'),
(795, 497, 95, NULL, NULL, NULL, 2, 7, 270, 0, 0, 0, 540, '2023-12-22 18:48:38', '2023-12-22 18:48:38'),
(796, 497, 91, NULL, NULL, NULL, 3, 7, 190, 0, 0, 0, 570, '2023-12-22 18:48:38', '2023-12-22 18:48:38'),
(797, 497, 92, NULL, NULL, NULL, 2, 7, 320, 0, 0, 0, 640, '2023-12-22 18:48:38', '2023-12-22 18:48:38'),
(798, 497, 97, NULL, NULL, NULL, 2, 7, 360, 0, 0, 0, 720, '2023-12-22 18:48:38', '2023-12-22 18:48:38'),
(799, 498, 100, NULL, NULL, NULL, 9, 7, 270, 0, 0, 0, 2430, '2023-12-25 06:22:07', '2023-12-25 06:22:07'),
(800, 498, 106, NULL, NULL, NULL, 1, 7, 440, 0, 0, 0, 440, '2023-12-25 06:22:08', '2023-12-25 06:22:08'),
(801, 498, 109, NULL, NULL, NULL, 11, 1, 315, 0, 0, 0, 3465, '2023-12-25 06:22:08', '2023-12-25 06:22:08'),
(802, 498, 108, NULL, NULL, NULL, 1, 1, 290, 0, 0, 0, 290, '2023-12-25 06:22:08', '2023-12-25 06:22:08'),
(803, 498, 102, NULL, NULL, NULL, 10, 7, 270, 0, 0, 0, 2700, '2023-12-25 06:22:08', '2023-12-25 06:22:08'),
(804, 498, 114, NULL, NULL, NULL, 12, 1, 300, 0, 0, 0, 3600, '2023-12-25 06:22:08', '2023-12-25 06:22:08'),
(805, 498, 113, NULL, NULL, NULL, 2, 1, 310, 0, 0, 0, 620, '2023-12-25 06:22:08', '2023-12-25 06:22:08'),
(806, 498, 107, NULL, NULL, NULL, 2, 7, 300, 0, 0, 0, 600, '2023-12-25 06:22:08', '2023-12-25 06:22:08'),
(807, 498, 94, NULL, NULL, NULL, 2, 7, 260, 0, 0, 0, 520, '2023-12-25 06:22:08', '2023-12-25 06:22:08'),
(808, 498, 99, NULL, NULL, NULL, 17, 7, 270, 0, 0, 0, 4590, '2023-12-25 06:22:08', '2023-12-25 06:22:08'),
(809, 498, 91, NULL, NULL, NULL, 5, 7, 190, 0, 0, 0, 950, '2023-12-25 06:22:09', '2023-12-25 06:22:09'),
(810, 498, 92, NULL, NULL, NULL, 3, 7, 320, 0, 0, 0, 960, '2023-12-25 06:22:09', '2023-12-25 06:22:09'),
(811, 498, 97, NULL, NULL, NULL, 1, 7, 360, 0, 0, 0, 360, '2023-12-25 06:22:09', '2023-12-25 06:22:09'),
(812, 499, 114, NULL, NULL, NULL, 10, 1, 300, 0, 0, 0, 3000, '2023-12-25 16:51:33', '2023-12-25 16:51:33'),
(813, 499, 102, NULL, NULL, NULL, 40, 7, 270, 0, 0, 0, 10800, '2023-12-25 16:51:33', '2023-12-25 16:51:33'),
(814, 499, 99, NULL, NULL, NULL, 70, 7, 270, 0, 0, 0, 18900, '2023-12-25 16:51:33', '2023-12-25 16:51:33'),
(815, 499, 109, NULL, NULL, NULL, 150, 1, 315, 0, 0, 0, 47250, '2023-12-25 16:51:33', '2023-12-25 16:51:33'),
(816, 499, 113, NULL, NULL, NULL, 50, 1, 310, 0, 0, 0, 15500, '2023-12-25 16:51:33', '2023-12-25 16:51:33'),
(817, 499, 110, NULL, NULL, NULL, 11, 1, 580, 0, 0, 0, 6380, '2023-12-25 16:51:34', '2023-12-25 16:51:34'),
(818, 500, 106, NULL, NULL, NULL, 1, 7, 440, 0, 0, 0, 440, '2023-12-26 16:53:04', '2023-12-26 16:53:04'),
(819, 500, 111, NULL, NULL, NULL, 10, 1, 250, 0, 0, 0, 2500, '2023-12-26 16:53:04', '2023-12-26 16:53:04'),
(820, 500, 112, NULL, NULL, NULL, 2, 1, 540, 0, 0, 0, 1080, '2023-12-26 16:53:04', '2023-12-26 16:53:04'),
(821, 500, 107, NULL, NULL, NULL, 16, 7, 300, 0, 0, 0, 4800, '2023-12-26 16:53:04', '2023-12-26 16:53:04'),
(822, 500, 108, NULL, NULL, NULL, 1, 1, 290, 0, 0, 0, 290, '2023-12-26 16:53:05', '2023-12-26 16:53:05'),
(823, 500, 102, NULL, NULL, NULL, 2, 7, 270, 0, 0, 0, 540, '2023-12-26 16:53:05', '2023-12-26 16:53:05'),
(824, 500, 114, NULL, NULL, NULL, 4, 1, 300, 0, 0, 0, 1200, '2023-12-26 16:53:05', '2023-12-26 16:53:05'),
(825, 500, 110, NULL, NULL, NULL, 1, 1, 580, 0, 0, 0, 580, '2023-12-26 16:53:05', '2023-12-26 16:53:05'),
(826, 500, 113, NULL, NULL, NULL, 1, 1, 310, 0, 0, 0, 310, '2023-12-26 16:53:05', '2023-12-26 16:53:05'),
(827, 500, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2023-12-26 16:53:05', '2023-12-26 16:53:05'),
(828, 500, 91, NULL, NULL, NULL, 4, 7, 190, 0, 0, 0, 760, '2023-12-26 16:53:06', '2023-12-26 16:53:06'),
(829, 500, 92, NULL, NULL, NULL, 3, 7, 320, 0, 0, 0, 960, '2023-12-26 16:53:06', '2023-12-26 16:53:06'),
(830, 501, 102, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2023-12-26 16:56:26', '2023-12-26 16:56:26'),
(831, 501, 114, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2023-12-26 16:56:26', '2023-12-26 16:56:26'),
(832, 501, 113, NULL, NULL, NULL, 1, 1, 310, 0, 0, 0, 310, '2023-12-26 16:56:27', '2023-12-26 16:56:27'),
(833, 501, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2023-12-26 16:56:27', '2023-12-26 16:56:27'),
(834, 501, 99, NULL, NULL, NULL, 20, 7, 270, 0, 0, 0, 5400, '2023-12-26 16:56:27', '2023-12-26 16:56:27'),
(835, 501, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2023-12-26 16:56:27', '2023-12-26 16:56:27'),
(836, 501, 92, NULL, NULL, NULL, 3, 7, 320, 0, 0, 0, 960, '2023-12-26 16:56:27', '2023-12-26 16:56:27'),
(837, 501, 97, NULL, NULL, NULL, 2, 7, 360, 0, 0, 0, 720, '2023-12-26 16:56:27', '2023-12-26 16:56:27'),
(838, 502, 113, NULL, NULL, NULL, 10, 1, 310, 0, 0, 0, 3100, '2023-12-26 17:03:43', '2023-12-26 17:03:43'),
(839, 502, 99, NULL, NULL, NULL, 20, 7, 270, 0, 0, 0, 5400, '2023-12-26 17:03:43', '2023-12-26 17:03:43'),
(840, 502, 107, NULL, NULL, NULL, 50, 7, 300, 0, 0, 0, 15000, '2023-12-26 17:03:44', '2023-12-26 17:03:44'),
(841, 503, 109, NULL, NULL, NULL, 3, 1, 315, 0, 0, 0, 945, '2023-12-28 06:13:21', '2023-12-28 06:13:21'),
(842, 503, 102, NULL, NULL, NULL, 11, 7, 270, 0, 0, 0, 2970, '2023-12-28 06:13:21', '2023-12-28 06:13:21'),
(843, 503, 114, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2023-12-28 06:13:22', '2023-12-28 06:13:22'),
(844, 503, 110, NULL, NULL, NULL, 1, 1, 580, 0, 0, 0, 580, '2023-12-28 06:13:22', '2023-12-28 06:13:22'),
(845, 503, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2023-12-28 06:13:22', '2023-12-28 06:13:22'),
(846, 503, 99, NULL, NULL, NULL, 15, 7, 270, 0, 0, 0, 4050, '2023-12-28 06:13:22', '2023-12-28 06:13:22'),
(847, 503, 91, NULL, NULL, NULL, 2, 7, 190, 0, 0, 0, 380, '2023-12-28 06:13:22', '2023-12-28 06:13:22'),
(848, 503, 92, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2023-12-28 06:13:22', '2023-12-28 06:13:22'),
(849, 503, 97, NULL, NULL, NULL, 3, 7, 360, 0, 0, 0, 1080, '2023-12-28 06:13:22', '2023-12-28 06:13:22'),
(850, 504, 100, NULL, NULL, NULL, 2, 7, 270, 0, 0, 0, 540, '2023-12-29 05:59:19', '2023-12-29 05:59:19'),
(851, 504, 114, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2023-12-29 05:59:19', '2023-12-29 05:59:19'),
(852, 504, 102, NULL, NULL, NULL, 4, 7, 270, 0, 0, 0, 1080, '2023-12-29 05:59:19', '2023-12-29 05:59:19'),
(853, 504, 95, NULL, NULL, NULL, 2, 7, 270, 0, 0, 0, 540, '2023-12-29 05:59:19', '2023-12-29 05:59:19'),
(854, 504, 99, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2023-12-29 05:59:19', '2023-12-29 05:59:19'),
(855, 504, 97, NULL, NULL, NULL, 3, 7, 360, 0, 0, 0, 1080, '2023-12-29 05:59:19', '2023-12-29 05:59:19'),
(856, 504, 91, NULL, NULL, NULL, 41, 7, 190, 0, 0, 0, 7790, '2023-12-29 05:59:20', '2023-12-29 05:59:20'),
(857, 504, 106, NULL, NULL, NULL, 20, 7, 440, 0, 0, 0, 8800, '2023-12-29 05:59:20', '2023-12-29 05:59:20'),
(858, 505, 92, NULL, NULL, NULL, 47, 7, 320, 0, 0, 0, 15040, '2024-01-02 06:03:55', '2024-01-02 06:03:55'),
(859, 505, 100, NULL, NULL, NULL, 4, 7, 270, 0, 0, 0, 1080, '2024-01-02 06:03:55', '2024-01-02 06:03:55'),
(860, 505, 114, NULL, NULL, NULL, 54, 1, 300, 0, 0, 0, 16200, '2024-01-02 06:03:55', '2024-01-02 06:03:55'),
(861, 505, 93, NULL, NULL, NULL, 178, 7, 290, 0, 0, 0, 51620, '2024-01-02 06:03:56', '2024-01-02 06:03:56'),
(862, 505, 113, NULL, NULL, NULL, 72, 1, 310, 0, 0, 0, 22320, '2024-01-02 06:03:56', '2024-01-02 06:03:56'),
(863, 505, 106, NULL, NULL, NULL, 1, 7, 440, 0, 0, 0, 440, '2024-01-02 06:03:56', '2024-01-02 06:03:56'),
(864, 505, 91, NULL, NULL, NULL, 34, 7, 190, 0, 0, 0, 6460, '2024-01-02 06:03:57', '2024-01-02 06:03:57'),
(865, 505, 94, NULL, NULL, NULL, 2, 7, 260, 0, 0, 0, 520, '2024-01-02 06:03:57', '2024-01-02 06:03:57'),
(866, 505, 95, NULL, NULL, NULL, 54, 7, 270, 0, 0, 0, 14580, '2024-01-02 06:03:57', '2024-01-02 06:03:57'),
(867, 505, 109, NULL, NULL, NULL, 191, 1, 315, 0, 0, 0, 60165, '2024-01-02 06:03:57', '2024-01-02 06:03:57'),
(868, 505, 107, NULL, NULL, NULL, 79, 7, 300, 0, 0, 0, 23700, '2024-01-02 06:03:57', '2024-01-02 06:03:57'),
(869, 506, 92, NULL, NULL, NULL, 50, 7, 320, 0, 0, 0, 16000, '2024-01-02 06:20:39', '2024-01-02 06:20:39'),
(870, 506, 93, NULL, NULL, NULL, 100, 7, 290, 0, 0, 0, 29000, '2024-01-02 06:20:39', '2024-01-02 06:20:39'),
(871, 506, 109, NULL, NULL, NULL, 50, 1, 315, 0, 0, 0, 15750, '2024-01-02 06:20:39', '2024-01-02 06:20:39'),
(872, 506, 95, NULL, NULL, NULL, 20, 7, 270, 0, 0, 0, 5400, '2024-01-02 06:20:39', '2024-01-02 06:20:39'),
(873, 507, 111, NULL, NULL, NULL, 17, 1, 250, 0, 0, 0, 4250, '2024-01-02 06:28:50', '2024-01-02 06:28:50'),
(874, 507, 109, NULL, NULL, NULL, 1, 1, 315, 0, 0, 0, 315, '2024-01-02 06:28:50', '2024-01-02 06:28:50'),
(875, 507, 102, NULL, NULL, NULL, 7, 7, 270, 0, 0, 0, 1890, '2024-01-02 06:28:51', '2024-01-02 06:28:51'),
(876, 507, 114, NULL, NULL, NULL, 4, 1, 300, 0, 0, 0, 1200, '2024-01-02 06:28:51', '2024-01-02 06:28:51'),
(877, 507, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-02 06:28:51', '2024-01-02 06:28:51'),
(878, 507, 95, NULL, NULL, NULL, 3, 7, 270, 0, 0, 0, 810, '2024-01-02 06:28:51', '2024-01-02 06:28:51'),
(879, 507, 93, NULL, NULL, NULL, 10, 7, 290, 0, 0, 0, 2900, '2024-01-02 06:28:51', '2024-01-02 06:28:51'),
(880, 507, 91, NULL, NULL, NULL, 3, 7, 190, 0, 0, 0, 570, '2024-01-02 06:28:51', '2024-01-02 06:28:51'),
(881, 507, 92, NULL, NULL, NULL, 4, 7, 320, 0, 0, 0, 1280, '2024-01-02 06:28:52', '2024-01-02 06:28:52'),
(882, 507, 97, NULL, NULL, NULL, 8, 7, 360, 0, 0, 0, 2880, '2024-01-02 06:28:52', '2024-01-02 06:28:52'),
(883, 508, 111, NULL, NULL, NULL, 17, 1, 250, 0, 0, 0, 4250, '2024-01-14 12:59:11', '2024-01-14 12:59:11'),
(884, 508, 109, NULL, NULL, NULL, 1, 1, 315, 0, 0, 0, 315, '2024-01-14 12:59:11', '2024-01-14 12:59:11'),
(885, 508, 102, NULL, NULL, NULL, 7, 7, 270, 0, 0, 0, 1890, '2024-01-14 12:59:11', '2024-01-14 12:59:11'),
(886, 508, 114, NULL, NULL, NULL, 4, 1, 300, 0, 0, 0, 1200, '2024-01-14 12:59:11', '2024-01-14 12:59:11'),
(887, 508, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-14 12:59:12', '2024-01-14 12:59:12'),
(888, 508, 95, NULL, NULL, NULL, 3, 7, 270, 0, 0, 0, 810, '2024-01-14 12:59:12', '2024-01-14 12:59:12'),
(889, 508, 93, NULL, NULL, NULL, 10, 7, 290, 0, 0, 0, 2900, '2024-01-14 12:59:12', '2024-01-14 12:59:12'),
(890, 508, 91, NULL, NULL, NULL, 3, 7, 190, 0, 0, 0, 570, '2024-01-14 12:59:12', '2024-01-14 12:59:12'),
(891, 508, 92, NULL, NULL, NULL, 4, 7, 320, 0, 0, 0, 1280, '2024-01-14 12:59:12', '2024-01-14 12:59:12'),
(892, 508, 97, NULL, NULL, NULL, 8, 7, 360, 0, 0, 0, 2880, '2024-01-14 12:59:12', '2024-01-14 12:59:12'),
(893, 509, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-15 05:36:03', '2024-01-15 05:36:03'),
(894, 510, 109, NULL, NULL, NULL, 2, 1, 310, 0, 0, 0, 620, '2024-01-15 06:00:56', '2024-01-15 06:00:56'),
(895, 511, 94, NULL, NULL, NULL, 5, 7, 260, 0, 0, 0, 1300, '2024-01-15 06:08:14', '2024-01-15 06:08:14'),
(896, 512, 109, NULL, NULL, NULL, 15, 1, 315, 0, 0, 0, 4725, '2024-01-16 10:25:25', '2024-01-16 10:25:25'),
(897, 512, 92, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-16 10:25:25', '2024-01-16 10:25:25'),
(898, 512, 114, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2024-01-16 10:25:25', '2024-01-16 10:25:25'),
(899, 512, 101, NULL, NULL, NULL, 15, 7, 250, 0, 0, 0, 3750, '2024-01-16 10:25:25', '2024-01-16 10:25:25'),
(900, 513, 116, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-17 06:10:00', '2024-01-17 06:10:00'),
(901, 513, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-17 06:10:00', '2024-01-17 06:10:00'),
(902, 513, 113, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2024-01-17 06:10:00', '2024-01-17 06:10:00'),
(903, 513, 92, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-17 06:10:00', '2024-01-17 06:10:00'),
(904, 513, 115, NULL, NULL, NULL, 2, 7, 270, 0, 0, 0, 540, '2024-01-17 06:10:00', '2024-01-17 06:10:00'),
(905, 513, 95, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-17 06:10:00', '2024-01-17 06:10:00'),
(906, 513, 111, NULL, NULL, NULL, 3, 1, 250, 0, 0, 0, 750, '2024-01-17 06:10:00', '2024-01-17 06:10:00'),
(907, 514, 110, NULL, NULL, NULL, 1, 1, 580, 0, 0, 0, 580, '2024-01-17 06:12:14', '2024-01-17 06:12:14'),
(908, 515, 109, NULL, NULL, NULL, 1, 1, 310, 0, 0, 0, 310, '2024-01-17 06:22:00', '2024-01-17 06:22:00'),
(909, 516, 115, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-17 06:37:11', '2024-01-17 06:37:11'),
(910, 516, 93, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-17 06:37:11', '2024-01-17 06:37:11'),
(911, 516, 92, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-17 06:37:12', '2024-01-17 06:37:12'),
(912, 516, 109, NULL, NULL, NULL, 2, 1, 310, 0, 0, 0, 620, '2024-01-17 06:37:12', '2024-01-17 06:37:12'),
(913, 516, 94, NULL, NULL, NULL, 2, 7, 260, 0, 0, 0, 520, '2024-01-17 06:37:12', '2024-01-17 06:37:12'),
(914, 516, 102, NULL, NULL, NULL, 2, 7, 280, 0, 0, 0, 560, '2024-01-17 06:37:12', '2024-01-17 06:37:12'),
(915, 517, 93, NULL, NULL, NULL, 3, 7, 290, 0, 0, 0, 870, '2024-01-17 06:42:59', '2024-01-17 06:42:59'),
(916, 518, 93, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-17 07:04:39', '2024-01-17 07:04:39'),
(917, 519, 114, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2024-01-17 08:15:43', '2024-01-17 08:15:43'),
(918, 520, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-17 08:34:39', '2024-01-17 08:34:39'),
(919, 521, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-17 08:38:48', '2024-01-17 08:38:48'),
(920, 521, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-17 08:38:48', '2024-01-17 08:38:48'),
(921, 522, 111, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2024-01-17 08:43:50', '2024-01-17 08:43:50'),
(922, 523, 111, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2024-01-17 10:54:40', '2024-01-17 10:54:40'),
(923, 524, 102, NULL, NULL, NULL, 4, 7, 280, 0, 0, 0, 1120, '2024-01-17 11:19:51', '2024-01-17 11:19:51'),
(924, 525, 113, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2024-01-17 15:26:47', '2024-01-17 15:26:47'),
(925, 525, 114, NULL, NULL, NULL, 2, 1, 300, 0, 0, 0, 600, '2024-01-17 15:26:47', '2024-01-17 15:26:47'),
(926, 526, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-17 15:41:59', '2024-01-17 15:41:59'),
(927, 526, 93, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-17 15:41:59', '2024-01-17 15:41:59'),
(928, 527, 93, NULL, NULL, NULL, 2, 7, 290, 0, 0, 0, 580, '2024-01-17 15:42:20', '2024-01-17 15:42:20'),
(929, 528, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-17 16:50:22', '2024-01-17 16:50:22'),
(930, 529, 99, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-17 17:12:13', '2024-01-17 17:12:13'),
(931, 530, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-17 17:16:23', '2024-01-17 17:16:23'),
(932, 531, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-17 17:26:50', '2024-01-17 17:26:50'),
(933, 531, 108, NULL, NULL, NULL, 1, 1, 290, 0, 0, 0, 290, '2024-01-17 17:26:50', '2024-01-17 17:26:50'),
(934, 532, 93, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-18 05:24:41', '2024-01-18 05:24:41'),
(935, 532, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-18 05:24:41', '2024-01-18 05:24:41'),
(936, 533, 108, NULL, NULL, NULL, 1, 1, 290, 0, 0, 0, 290, '2024-01-18 05:29:12', '2024-01-18 05:29:12'),
(937, 533, 93, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-18 05:29:12', '2024-01-18 05:29:12'),
(938, 534, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-18 05:54:38', '2024-01-18 05:54:38'),
(939, 535, 111, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2024-01-18 06:14:56', '2024-01-18 06:14:56'),
(940, 536, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-18 06:40:11', '2024-01-18 06:40:11'),
(941, 537, 114, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2024-01-18 07:15:57', '2024-01-18 07:15:57'),
(942, 538, 111, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2024-01-18 07:43:22', '2024-01-18 07:43:22'),
(943, 539, 102, NULL, NULL, NULL, 2, 7, 280, 0, 0, 0, 560, '2024-01-18 09:01:04', '2024-01-18 09:01:04'),
(944, 540, 111, NULL, NULL, NULL, 10, 1, 250, 0, 0, 0, 2500, '2024-01-18 09:52:33', '2024-01-18 09:52:33'),
(945, 541, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-18 10:17:25', '2024-01-18 10:17:25'),
(946, 542, 94, NULL, NULL, NULL, 3, 7, 260, 0, 0, 0, 780, '2024-01-18 11:42:37', '2024-01-18 11:42:37'),
(947, 543, 114, NULL, NULL, NULL, 2, 1, 300, 0, 0, 0, 600, '2024-01-18 11:44:01', '2024-01-18 11:44:01'),
(948, 543, 92, NULL, NULL, NULL, 5, 7, 320, 0, 0, 0, 1600, '2024-01-18 11:44:01', '2024-01-18 11:44:01'),
(949, 544, 109, NULL, NULL, NULL, 1, 1, 310, 0, 0, 0, 310, '2024-01-18 12:12:40', '2024-01-18 12:12:40'),
(950, 544, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-18 12:12:40', '2024-01-18 12:12:40'),
(951, 544, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-18 12:12:40', '2024-01-18 12:12:40'),
(952, 544, 114, NULL, NULL, NULL, 2, 1, 300, 0, 0, 0, 600, '2024-01-18 12:12:40', '2024-01-18 12:12:40'),
(953, 545, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-18 13:57:09', '2024-01-18 13:57:09'),
(954, 546, 119, NULL, NULL, NULL, 2, 7, 290, 0, 0, 0, 580, '2024-01-18 14:06:34', '2024-01-18 14:06:34'),
(955, 547, 102, NULL, NULL, NULL, 2, 7, 280, 0, 0, 0, 560, '2024-01-18 14:23:18', '2024-01-18 14:23:18'),
(956, 547, 116, NULL, NULL, NULL, 3, 7, 320, 0, 0, 0, 960, '2024-01-18 14:23:18', '2024-01-18 14:23:18'),
(957, 547, 109, NULL, NULL, NULL, 4, 1, 310, 0, 0, 0, 1240, '2024-01-18 14:23:18', '2024-01-18 14:23:18'),
(958, 548, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-18 14:48:16', '2024-01-18 14:48:16'),
(959, 549, 119, NULL, NULL, NULL, 2, 7, 290, 0, 0, 0, 580, '2024-01-18 16:37:08', '2024-01-18 16:37:08'),
(960, 549, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-18 16:37:08', '2024-01-18 16:37:08'),
(961, 550, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-18 17:59:11', '2024-01-18 17:59:11'),
(962, 550, 99, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-18 17:59:11', '2024-01-18 17:59:11'),
(963, 551, 116, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-19 07:14:26', '2024-01-19 07:14:26'),
(964, 552, 102, NULL, NULL, NULL, 5, 7, 280, 0, 0, 0, 1400, '2024-01-19 07:15:21', '2024-01-19 07:15:21'),
(965, 553, 111, NULL, NULL, NULL, 3, 1, 250, 0, 0, 0, 750, '2024-01-19 08:07:27', '2024-01-19 08:07:27'),
(966, 554, 109, NULL, NULL, NULL, 5, 1, 310, 0, 0, 0, 1550, '2024-01-19 09:32:54', '2024-01-19 09:32:54'),
(967, 555, 102, NULL, NULL, NULL, 4, 7, 280, 0, 0, 0, 1120, '2024-01-19 09:41:06', '2024-01-19 09:41:06'),
(968, 556, 100, NULL, NULL, NULL, 5, 7, 280, 0, 0, 0, 1400, '2024-01-19 10:05:37', '2024-01-19 10:05:37'),
(969, 557, 118, NULL, NULL, NULL, 2, 7, 300, 0, 0, 0, 600, '2024-01-19 10:09:58', '2024-01-19 10:09:58'),
(970, 558, 91, NULL, NULL, NULL, 2, 7, 190, 0, 0, 0, 380, '2024-01-19 10:45:53', '2024-01-19 10:45:53'),
(971, 559, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-19 10:47:54', '2024-01-19 10:47:54'),
(972, 559, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-19 10:47:55', '2024-01-19 10:47:55'),
(973, 560, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-19 10:54:45', '2024-01-19 10:54:45'),
(974, 561, 109, NULL, NULL, NULL, 1, 1, 310, 0, 0, 0, 310, '2024-01-19 11:01:35', '2024-01-19 11:01:35'),
(975, 562, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-19 11:27:00', '2024-01-19 11:27:00'),
(976, 563, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-19 12:17:14', '2024-01-19 12:17:14'),
(977, 564, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-19 15:22:18', '2024-01-19 15:22:18'),
(978, 564, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-19 15:22:18', '2024-01-19 15:22:18'),
(979, 565, 94, NULL, NULL, NULL, 2, 7, 260, 0, 0, 0, 520, '2024-01-20 05:28:31', '2024-01-20 05:28:31'),
(980, 565, 109, NULL, NULL, NULL, 2, 1, 310, 0, 0, 0, 620, '2024-01-20 05:28:31', '2024-01-20 05:28:31'),
(981, 565, 102, NULL, NULL, NULL, 2, 7, 280, 0, 0, 0, 560, '2024-01-20 05:28:31', '2024-01-20 05:28:31'),
(982, 565, 115, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-20 05:28:31', '2024-01-20 05:28:31'),
(983, 565, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-20 05:28:31', '2024-01-20 05:28:31'),
(984, 565, 91, NULL, NULL, NULL, 3, 7, 190, 0, 0, 0, 570, '2024-01-20 05:28:31', '2024-01-20 05:28:31'),
(985, 566, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-20 05:34:36', '2024-01-20 05:34:36'),
(986, 566, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-20 05:34:36', '2024-01-20 05:34:36'),
(987, 567, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-20 05:35:41', '2024-01-20 05:35:41'),
(988, 567, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-20 05:35:41', '2024-01-20 05:35:41'),
(989, 568, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-20 05:52:30', '2024-01-20 05:52:30'),
(990, 568, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-20 05:52:30', '2024-01-20 05:52:30'),
(991, 568, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-20 05:52:30', '2024-01-20 05:52:30'),
(992, 568, 119, NULL, NULL, NULL, 2, 7, 290, 0, 0, 0, 580, '2024-01-20 05:52:31', '2024-01-20 05:52:31'),
(993, 568, 91, NULL, NULL, NULL, 2, 7, 190, 0, 0, 0, 380, '2024-01-20 05:52:31', '2024-01-20 05:52:31'),
(994, 569, 115, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-20 06:12:49', '2024-01-20 06:12:49'),
(995, 569, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-20 06:12:49', '2024-01-20 06:12:49'),
(996, 570, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-20 06:17:37', '2024-01-20 06:17:37'),
(997, 570, 101, NULL, NULL, NULL, 2, 7, 250, 0, 0, 0, 500, '2024-01-20 06:17:38', '2024-01-20 06:17:38'),
(998, 571, 91, NULL, NULL, NULL, 2, 7, 190, 0, 0, 0, 380, '2024-01-20 06:24:04', '2024-01-20 06:24:04'),
(999, 572, 121, NULL, NULL, NULL, 2, 7, 250, 0, 0, 0, 500, '2024-01-20 06:51:32', '2024-01-20 06:51:32'),
(1000, 573, 121, NULL, NULL, NULL, 2, 7, 250, 0, 0, 0, 500, '2024-01-20 06:53:13', '2024-01-20 06:53:13'),
(1001, 574, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-20 07:24:26', '2024-01-20 07:24:26'),
(1002, 575, 117, NULL, NULL, NULL, 2, 7, 320, 0, 0, 0, 640, '2024-01-20 07:53:53', '2024-01-20 07:53:53'),
(1003, 576, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-20 08:19:21', '2024-01-20 08:19:21'),
(1004, 577, 117, NULL, NULL, NULL, 4, 7, 320, 0, 0, 0, 1280, '2024-01-20 08:21:44', '2024-01-20 08:21:44'),
(1005, 578, 99, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-20 08:35:06', '2024-01-20 08:35:06'),
(1006, 579, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-20 08:45:37', '2024-01-20 08:45:37'),
(1007, 579, 107, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-20 08:45:37', '2024-01-20 08:45:37'),
(1008, 580, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-20 10:34:45', '2024-01-20 10:34:45'),
(1009, 581, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-20 10:39:52', '2024-01-20 10:39:52'),
(1010, 582, 99, NULL, NULL, NULL, 16, 7, 280, 0, 0, 0, 4480, '2024-01-20 10:47:51', '2024-01-20 10:47:51'),
(1011, 583, 121, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-20 11:12:18', '2024-01-20 11:12:18'),
(1012, 584, 117, NULL, NULL, NULL, 2, 7, 320, 0, 0, 0, 640, '2024-01-20 11:51:41', '2024-01-20 11:51:41'),
(1013, 585, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-20 12:29:06', '2024-01-20 12:29:06'),
(1014, 586, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-20 12:55:48', '2024-01-20 12:55:48'),
(1015, 587, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-20 14:24:56', '2024-01-20 14:24:56'),
(1016, 587, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-20 14:24:56', '2024-01-20 14:24:56'),
(1017, 587, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-20 14:24:57', '2024-01-20 14:24:57'),
(1018, 587, 101, NULL, NULL, NULL, 5, 7, 250, 0, 0, 0, 1250, '2024-01-20 14:24:57', '2024-01-20 14:24:57'),
(1019, 588, 115, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-20 14:58:59', '2024-01-20 14:58:59'),
(1020, 588, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-20 14:58:59', '2024-01-20 14:58:59'),
(1021, 589, 117, NULL, NULL, NULL, 5, 7, 320, 0, 0, 0, 1600, '2024-01-20 14:59:42', '2024-01-20 14:59:42'),
(1022, 590, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-20 15:54:11', '2024-01-20 15:54:11'),
(1023, 591, 121, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-20 16:00:04', '2024-01-20 16:00:04'),
(1024, 592, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-20 17:28:36', '2024-01-20 17:28:36'),
(1025, 592, 94, NULL, NULL, NULL, 2, 7, 260, 0, 0, 0, 520, '2024-01-20 17:28:36', '2024-01-20 17:28:36'),
(1026, 592, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-20 17:28:36', '2024-01-20 17:28:36'),
(1027, 592, 115, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-20 17:28:36', '2024-01-20 17:28:36'),
(1028, 593, 91, NULL, NULL, NULL, 2, 7, 190, 0, 0, 0, 380, '2024-01-22 05:34:39', '2024-01-22 05:34:39'),
(1029, 593, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-22 05:34:39', '2024-01-22 05:34:39'),
(1030, 593, 95, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-22 05:34:39', '2024-01-22 05:34:39'),
(1031, 593, 121, NULL, NULL, NULL, 3, 7, 250, 0, 0, 0, 750, '2024-01-22 05:34:39', '2024-01-22 05:34:39'),
(1032, 593, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-22 05:34:39', '2024-01-22 05:34:39'),
(1033, 593, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-22 05:34:40', '2024-01-22 05:34:40'),
(1034, 594, 121, NULL, NULL, NULL, 2, 7, 250, 0, 0, 0, 500, '2024-01-22 05:38:53', '2024-01-22 05:38:53'),
(1035, 595, 99, NULL, NULL, NULL, 2, 7, 280, 0, 0, 0, 560, '2024-01-22 05:53:25', '2024-01-22 05:53:25'),
(1036, 595, 115, NULL, NULL, NULL, 3, 7, 270, 0, 0, 0, 810, '2024-01-22 05:53:25', '2024-01-22 05:53:25'),
(1037, 595, 102, NULL, NULL, NULL, 2, 7, 280, 0, 0, 0, 560, '2024-01-22 05:53:25', '2024-01-22 05:53:25'),
(1038, 595, 117, NULL, NULL, NULL, 5, 7, 320, 0, 0, 0, 1600, '2024-01-22 05:53:25', '2024-01-22 05:53:25'),
(1039, 596, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-22 05:54:42', '2024-01-22 05:54:42'),
(1040, 597, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-22 06:03:17', '2024-01-22 06:03:17'),
(1041, 598, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-22 06:23:27', '2024-01-22 06:23:27'),
(1042, 598, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-22 06:23:28', '2024-01-22 06:23:28'),
(1043, 598, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-22 06:23:28', '2024-01-22 06:23:28'),
(1044, 599, 109, NULL, NULL, NULL, 2, 1, 310, 0, 0, 0, 620, '2024-01-22 06:38:44', '2024-01-22 06:38:44'),
(1045, 600, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-22 06:53:02', '2024-01-22 06:53:02'),
(1046, 600, 121, NULL, NULL, NULL, 2, 7, 250, 0, 0, 0, 500, '2024-01-22 06:53:02', '2024-01-22 06:53:02'),
(1047, 601, 91, NULL, NULL, NULL, 4, 7, 190, 0, 0, 0, 760, '2024-01-22 06:55:06', '2024-01-22 06:55:06'),
(1048, 602, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-22 07:19:03', '2024-01-22 07:19:03'),
(1049, 603, 117, NULL, NULL, NULL, 5, 7, 320, 0, 0, 0, 1600, '2024-01-22 07:51:14', '2024-01-22 07:51:14'),
(1050, 603, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-22 07:51:14', '2024-01-22 07:51:14'),
(1051, 604, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-22 07:53:53', '2024-01-22 07:53:53'),
(1052, 604, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-22 07:53:53', '2024-01-22 07:53:53'),
(1053, 605, 102, NULL, NULL, NULL, 4, 7, 280, 0, 0, 0, 1120, '2024-01-22 08:22:41', '2024-01-22 08:22:41'),
(1054, 606, 91, NULL, NULL, NULL, 2, 7, 190, 0, 0, 0, 380, '2024-01-22 09:55:24', '2024-01-22 09:55:24'),
(1055, 607, 115, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-22 10:34:36', '2024-01-22 10:34:36'),
(1056, 607, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-22 10:34:36', '2024-01-22 10:34:36'),
(1057, 607, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-22 10:34:36', '2024-01-22 10:34:36'),
(1058, 607, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-22 10:34:36', '2024-01-22 10:34:36'),
(1059, 607, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-22 10:34:37', '2024-01-22 10:34:37'),
(1060, 608, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-22 10:35:13', '2024-01-22 10:35:13'),
(1061, 609, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-22 10:49:24', '2024-01-22 10:49:24'),
(1062, 610, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-22 11:31:06', '2024-01-22 11:31:06'),
(1063, 610, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-22 11:31:06', '2024-01-22 11:31:06'),
(1064, 611, 100, NULL, NULL, NULL, 7, 7, 280, 0, 0, 0, 1960, '2024-01-22 11:40:14', '2024-01-22 11:40:14'),
(1065, 612, 121, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-22 12:02:38', '2024-01-22 12:02:38'),
(1066, 613, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-22 12:07:25', '2024-01-22 12:07:25'),
(1067, 614, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-22 12:48:23', '2024-01-22 12:48:23'),
(1068, 615, 91, NULL, NULL, NULL, 3, 7, 190, 0, 0, 0, 570, '2024-01-22 14:03:45', '2024-01-22 14:03:45'),
(1069, 615, 109, NULL, NULL, NULL, 2, 1, 310, 0, 0, 0, 620, '2024-01-22 14:03:45', '2024-01-22 14:03:45'),
(1070, 615, 99, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-22 14:03:45', '2024-01-22 14:03:45'),
(1071, 615, 102, NULL, NULL, NULL, 2, 7, 280, 0, 0, 0, 560, '2024-01-22 14:03:45', '2024-01-22 14:03:45'),
(1072, 615, 118, NULL, NULL, NULL, 5, 7, 300, 0, 0, 0, 1500, '2024-01-22 14:03:45', '2024-01-22 14:03:45'),
(1073, 616, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-22 15:03:48', '2024-01-22 15:03:48'),
(1074, 617, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-22 16:22:05', '2024-01-22 16:22:05'),
(1075, 618, 116, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-22 17:49:16', '2024-01-22 17:49:16'),
(1076, 618, 99, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-22 17:49:16', '2024-01-22 17:49:16'),
(1077, 618, 115, NULL, NULL, NULL, 2, 7, 270, 0, 0, 0, 540, '2024-01-22 17:49:17', '2024-01-22 17:49:17'),
(1078, 618, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-22 17:49:17', '2024-01-22 17:49:17'),
(1079, 618, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-22 17:49:17', '2024-01-22 17:49:17'),
(1080, 619, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-23 05:40:59', '2024-01-23 05:40:59'),
(1081, 620, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-23 06:29:17', '2024-01-23 06:29:17'),
(1082, 620, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-23 06:29:17', '2024-01-23 06:29:17'),
(1083, 621, 91, NULL, NULL, NULL, 4, 7, 190, 0, 0, 0, 760, '2024-01-23 06:54:58', '2024-01-23 06:54:58'),
(1084, 622, 121, NULL, NULL, NULL, 2, 7, 250, 0, 0, 0, 500, '2024-01-23 07:31:32', '2024-01-23 07:31:32'),
(1085, 623, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-23 07:32:57', '2024-01-23 07:32:57'),
(1086, 624, 102, NULL, NULL, NULL, 2, 7, 280, 0, 0, 0, 560, '2024-01-23 07:58:20', '2024-01-23 07:58:20'),
(1087, 625, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-23 08:01:52', '2024-01-23 08:01:52'),
(1088, 625, 109, NULL, NULL, NULL, 1, 1, 310, 0, 0, 0, 310, '2024-01-23 08:01:52', '2024-01-23 08:01:52'),
(1089, 626, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-23 08:55:03', '2024-01-23 08:55:03'),
(1090, 627, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-23 10:21:25', '2024-01-23 10:21:25'),
(1091, 627, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-23 10:21:25', '2024-01-23 10:21:25'),
(1092, 627, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-23 10:21:25', '2024-01-23 10:21:25'),
(1093, 627, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-23 10:21:25', '2024-01-23 10:21:25'),
(1094, 628, 113, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2024-01-23 10:46:42', '2024-01-23 10:46:42'),
(1095, 629, 101, NULL, NULL, NULL, 3, 7, 250, 0, 0, 0, 750, '2024-01-23 11:02:29', '2024-01-23 11:02:29'),
(1096, 630, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-23 12:36:56', '2024-01-23 12:36:56'),
(1097, 631, 91, NULL, NULL, NULL, 10, 7, 190, 0, 0, 0, 1900, '2024-01-23 13:40:57', '2024-01-23 13:40:57'),
(1098, 632, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-23 15:02:53', '2024-01-23 15:02:53'),
(1099, 633, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-23 15:44:58', '2024-01-23 15:44:58'),
(1100, 633, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-23 15:44:58', '2024-01-23 15:44:58'),
(1101, 634, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-23 16:10:03', '2024-01-23 16:10:03'),
(1102, 634, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-23 16:10:03', '2024-01-23 16:10:03'),
(1103, 634, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-23 16:10:03', '2024-01-23 16:10:03'),
(1104, 635, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-23 16:48:06', '2024-01-23 16:48:06'),
(1105, 635, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-23 16:48:06', '2024-01-23 16:48:06'),
(1106, 636, 102, NULL, NULL, NULL, 4, 7, 280, 0, 0, 0, 1120, '2024-01-24 05:43:35', '2024-01-24 05:43:35'),
(1107, 637, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-24 05:50:35', '2024-01-24 05:50:35'),
(1108, 637, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-24 05:50:35', '2024-01-24 05:50:35'),
(1109, 638, 109, NULL, NULL, NULL, 2, 1, 310, 0, 0, 0, 620, '2024-01-24 06:52:39', '2024-01-24 06:52:39'),
(1110, 639, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-24 08:49:16', '2024-01-24 08:49:16'),
(1111, 640, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-24 08:56:44', '2024-01-24 08:56:44'),
(1112, 641, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-24 09:25:26', '2024-01-24 09:25:26'),
(1113, 641, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-24 09:25:26', '2024-01-24 09:25:26'),
(1114, 641, 97, NULL, NULL, NULL, 1, 7, 370, 0, 0, 0, 370, '2024-01-24 09:25:26', '2024-01-24 09:25:26'),
(1115, 641, 101, NULL, NULL, NULL, 29, 7, 250, 0, 0, 0, 7250, '2024-01-24 09:25:26', '2024-01-24 09:25:26'),
(1116, 641, 109, NULL, NULL, NULL, 34, 1, 310, 0, 0, 0, 10540, '2024-01-24 09:25:27', '2024-01-24 09:25:27'),
(1117, 642, 121, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-24 09:26:40', '2024-01-24 09:26:40'),
(1118, 643, 109, NULL, NULL, NULL, 1, 1, 310, 0, 0, 0, 310, '2024-01-24 10:12:27', '2024-01-24 10:12:27'),
(1119, 643, 107, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-24 10:12:27', '2024-01-24 10:12:27'),
(1120, 644, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-24 10:20:04', '2024-01-24 10:20:04'),
(1121, 644, 91, NULL, NULL, NULL, 2, 7, 190, 0, 0, 0, 380, '2024-01-24 10:20:04', '2024-01-24 10:20:04'),
(1122, 644, 113, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2024-01-24 10:20:05', '2024-01-24 10:20:05'),
(1123, 645, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-24 10:23:50', '2024-01-24 10:23:50'),
(1124, 646, 97, NULL, NULL, NULL, 2, 7, 370, 0, 0, 0, 740, '2024-01-24 10:29:47', '2024-01-24 10:29:47'),
(1125, 647, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-24 12:54:00', '2024-01-24 12:54:00'),
(1126, 647, 122, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-24 12:54:01', '2024-01-24 12:54:01'),
(1127, 647, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-24 12:54:01', '2024-01-24 12:54:01'),
(1128, 647, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-24 12:54:01', '2024-01-24 12:54:01'),
(1129, 647, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-24 12:54:01', '2024-01-24 12:54:01'),
(1130, 648, 94, NULL, NULL, NULL, 5, 7, 260, 0, 0, 0, 1300, '2024-01-24 13:24:33', '2024-01-24 13:24:33'),
(1131, 649, 122, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-24 15:35:39', '2024-01-24 15:35:39'),
(1132, 650, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-24 15:37:13', '2024-01-24 15:37:13'),
(1133, 650, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-24 15:37:13', '2024-01-24 15:37:13'),
(1134, 651, 122, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-24 16:16:22', '2024-01-24 16:16:22'),
(1135, 651, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-24 16:16:22', '2024-01-24 16:16:22'),
(1136, 651, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-24 16:16:23', '2024-01-24 16:16:23'),
(1137, 652, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-24 16:16:53', '2024-01-24 16:16:53'),
(1138, 653, 94, NULL, NULL, NULL, 3, 7, 260, 0, 0, 0, 780, '2024-01-24 16:35:47', '2024-01-24 16:35:47'),
(1139, 654, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-24 16:57:59', '2024-01-24 16:57:59'),
(1140, 655, 116, NULL, NULL, NULL, 5, 7, 320, 0, 0, 0, 1600, '2024-01-24 17:46:22', '2024-01-24 17:46:22'),
(1141, 656, 121, NULL, NULL, NULL, 2, 7, 250, 0, 0, 0, 500, '2024-01-25 05:42:56', '2024-01-25 05:42:56'),
(1142, 657, 119, NULL, NULL, NULL, 2, 7, 290, 0, 0, 0, 580, '2024-01-25 05:46:08', '2024-01-25 05:46:08'),
(1143, 657, 108, NULL, NULL, NULL, 1, 1, 290, 0, 0, 0, 290, '2024-01-25 05:46:08', '2024-01-25 05:46:08'),
(1144, 657, 91, NULL, NULL, NULL, 2, 7, 190, 0, 0, 0, 380, '2024-01-25 05:46:09', '2024-01-25 05:46:09'),
(1145, 657, 121, NULL, NULL, NULL, 3, 7, 250, 0, 0, 0, 750, '2024-01-25 05:46:09', '2024-01-25 05:46:09'),
(1146, 658, 100, NULL, NULL, NULL, 4, 7, 280, 0, 0, 0, 1120, '2024-01-25 06:05:18', '2024-01-25 06:05:18'),
(1147, 658, 94, NULL, NULL, NULL, 4, 7, 260, 0, 0, 0, 1040, '2024-01-25 06:05:18', '2024-01-25 06:05:18'),
(1148, 658, 117, NULL, NULL, NULL, 5, 7, 320, 0, 0, 0, 1600, '2024-01-25 06:05:18', '2024-01-25 06:05:18'),
(1149, 659, 116, NULL, NULL, NULL, 5, 7, 320, 0, 0, 0, 1600, '2024-01-25 06:06:47', '2024-01-25 06:06:47'),
(1150, 660, 122, NULL, NULL, NULL, 2, 7, 270, 0, 0, 0, 540, '2024-01-25 06:13:58', '2024-01-25 06:13:58'),
(1151, 660, 118, NULL, NULL, NULL, 2, 7, 300, 0, 0, 0, 600, '2024-01-25 06:13:58', '2024-01-25 06:13:58'),
(1152, 660, 113, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2024-01-25 06:13:58', '2024-01-25 06:13:58'),
(1153, 660, 116, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-25 06:13:58', '2024-01-25 06:13:58'),
(1154, 661, 97, NULL, NULL, NULL, 2, 7, 370, 0, 0, 0, 740, '2024-01-25 06:49:35', '2024-01-25 06:49:35'),
(1155, 661, 119, NULL, NULL, NULL, 2, 7, 290, 0, 0, 0, 580, '2024-01-25 06:49:35', '2024-01-25 06:49:35'),
(1156, 661, 117, NULL, NULL, NULL, 2, 7, 320, 0, 0, 0, 640, '2024-01-25 06:49:35', '2024-01-25 06:49:35'),
(1157, 662, 102, NULL, NULL, NULL, 3, 7, 280, 0, 0, 0, 840, '2024-01-25 06:57:27', '2024-01-25 06:57:27'),
(1158, 662, 94, NULL, NULL, NULL, 2, 7, 260, 0, 0, 0, 520, '2024-01-25 06:57:28', '2024-01-25 06:57:28'),
(1159, 662, 91, NULL, NULL, NULL, 6, 7, 190, 0, 0, 0, 1140, '2024-01-25 06:57:28', '2024-01-25 06:57:28'),
(1160, 663, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-25 06:58:30', '2024-01-25 06:58:30'),
(1161, 664, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-25 07:18:58', '2024-01-25 07:18:58'),
(1162, 665, 116, NULL, NULL, NULL, 5, 7, 320, 0, 0, 0, 1600, '2024-01-25 09:14:08', '2024-01-25 09:14:08'),
(1163, 666, 99, NULL, NULL, NULL, 5, 7, 280, 0, 0, 0, 1400, '2024-01-25 09:38:49', '2024-01-25 09:38:49'),
(1164, 667, 100, NULL, NULL, NULL, 10, 7, 280, 0, 0, 0, 2800, '2024-01-25 10:55:20', '2024-01-25 10:55:20'),
(1165, 668, 121, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-25 10:56:50', '2024-01-25 10:56:50'),
(1166, 669, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-25 11:11:47', '2024-01-25 11:11:47'),
(1167, 670, 117, NULL, NULL, NULL, 5, 7, 320, 0, 0, 0, 1600, '2024-01-25 11:24:29', '2024-01-25 11:24:29'),
(1168, 671, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-25 11:37:31', '2024-01-25 11:37:31'),
(1169, 672, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-25 11:37:50', '2024-01-25 11:37:50'),
(1170, 673, 91, NULL, NULL, NULL, 2, 7, 190, 0, 0, 0, 380, '2024-01-25 15:43:04', '2024-01-25 15:43:04'),
(1171, 674, 108, NULL, NULL, NULL, 1, 1, 290, 0, 0, 0, 290, '2024-01-25 15:43:39', '2024-01-25 15:43:39'),
(1172, 674, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-25 15:43:39', '2024-01-25 15:43:39'),
(1173, 675, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-25 18:59:35', '2024-01-25 18:59:35'),
(1174, 675, 122, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-25 18:59:35', '2024-01-25 18:59:35'),
(1175, 675, 118, NULL, NULL, NULL, 2, 7, 300, 0, 0, 0, 600, '2024-01-25 18:59:35', '2024-01-25 18:59:35'),
(1176, 675, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-25 18:59:35', '2024-01-25 18:59:35'),
(1177, 676, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-26 06:11:45', '2024-01-26 06:11:45'),
(1178, 676, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-26 06:11:45', '2024-01-26 06:11:45'),
(1179, 676, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-26 06:11:45', '2024-01-26 06:11:45'),
(1180, 676, 94, NULL, NULL, NULL, 3, 7, 260, 0, 0, 0, 780, '2024-01-26 06:11:45', '2024-01-26 06:11:45'),
(1181, 677, 100, NULL, NULL, NULL, 2, 7, 280, 0, 0, 0, 560, '2024-01-26 06:24:38', '2024-01-26 06:24:38'),
(1182, 677, 99, NULL, NULL, NULL, 5, 7, 280, 0, 0, 0, 1400, '2024-01-26 06:24:38', '2024-01-26 06:24:38'),
(1183, 678, 121, NULL, NULL, NULL, 12, 7, 250, 0, 0, 0, 3000, '2024-01-26 08:23:45', '2024-01-26 08:23:45'),
(1184, 679, 99, NULL, NULL, NULL, 5, 7, 280, 0, 0, 0, 1400, '2024-01-26 08:24:45', '2024-01-26 08:24:45'),
(1185, 679, 116, NULL, NULL, NULL, 5, 7, 320, 0, 0, 0, 1600, '2024-01-26 08:24:45', '2024-01-26 08:24:45'),
(1186, 680, 118, NULL, NULL, NULL, 2, 7, 300, 0, 0, 0, 600, '2024-01-26 09:22:39', '2024-01-26 09:22:39'),
(1187, 680, 101, NULL, NULL, NULL, 2, 7, 250, 0, 0, 0, 500, '2024-01-26 09:22:39', '2024-01-26 09:22:39'),
(1188, 680, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-26 09:22:39', '2024-01-26 09:22:39'),
(1189, 680, 99, NULL, NULL, NULL, 16, 7, 280, 0, 0, 0, 4480, '2024-01-26 09:22:39', '2024-01-26 09:22:39'),
(1190, 681, 94, NULL, NULL, NULL, 1, 7, 260, 0, 0, 0, 260, '2024-01-26 09:27:18', '2024-01-26 09:27:18'),
(1191, 681, 117, NULL, NULL, NULL, 2, 7, 320, 0, 0, 0, 640, '2024-01-26 09:27:18', '2024-01-26 09:27:18'),
(1192, 681, 109, NULL, NULL, NULL, 2, 1, 310, 0, 0, 0, 620, '2024-01-26 09:27:18', '2024-01-26 09:27:18'),
(1193, 681, 113, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2024-01-26 09:27:18', '2024-01-26 09:27:18'),
(1194, 681, 122, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-26 09:27:18', '2024-01-26 09:27:18'),
(1195, 681, 102, NULL, NULL, NULL, 2, 7, 280, 0, 0, 0, 560, '2024-01-26 09:27:18', '2024-01-26 09:27:18'),
(1196, 681, 119, NULL, NULL, NULL, 3, 7, 290, 0, 0, 0, 870, '2024-01-26 09:27:18', '2024-01-26 09:27:18'),
(1197, 681, 99, NULL, NULL, NULL, 3, 7, 280, 0, 0, 0, 840, '2024-01-26 09:27:18', '2024-01-26 09:27:18'),
(1198, 682, 91, NULL, NULL, NULL, 2, 7, 190, 0, 0, 0, 380, '2024-01-26 09:34:10', '2024-01-26 09:34:10'),
(1199, 682, 121, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-26 09:34:10', '2024-01-26 09:34:10'),
(1200, 683, 97, NULL, NULL, NULL, 1, 7, 370, 0, 0, 0, 370, '2024-01-26 10:37:24', '2024-01-26 10:37:24'),
(1201, 683, 110, NULL, NULL, NULL, 1, 1, 580, 0, 0, 0, 580, '2024-01-26 10:37:25', '2024-01-26 10:37:25'),
(1202, 684, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-26 11:06:27', '2024-01-26 11:06:27'),
(1203, 684, 119, NULL, NULL, NULL, 1, 7, 290, 0, 0, 0, 290, '2024-01-26 11:06:27', '2024-01-26 11:06:27'),
(1204, 684, 99, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-26 11:06:27', '2024-01-26 11:06:27'),
(1205, 685, 103, NULL, NULL, NULL, 4, 7, 280, 0, 0, 0, 1120, '2024-01-26 11:07:40', '2024-01-26 11:07:40'),
(1206, 686, 117, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-26 11:35:36', '2024-01-26 11:35:36'),
(1207, 687, 116, NULL, NULL, NULL, 5, 7, 320, 0, 0, 0, 1600, '2024-01-26 13:58:41', '2024-01-26 13:58:41'),
(1208, 688, 117, NULL, NULL, NULL, 5, 7, 320, 0, 0, 0, 1600, '2024-01-26 14:20:23', '2024-01-26 14:20:23'),
(1209, 689, 103, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-26 14:22:14', '2024-01-26 14:22:14'),
(1210, 689, 97, NULL, NULL, NULL, 1, 7, 370, 0, 0, 0, 370, '2024-01-26 14:22:15', '2024-01-26 14:22:15'),
(1211, 689, 122, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-26 14:22:15', '2024-01-26 14:22:15'),
(1212, 690, 116, NULL, NULL, NULL, 1, 7, 320, 0, 0, 0, 320, '2024-01-26 14:26:51', '2024-01-26 14:26:51'),
(1213, 691, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-26 15:10:42', '2024-01-26 15:10:42'),
(1214, 691, 102, NULL, NULL, NULL, 2, 7, 280, 0, 0, 0, 560, '2024-01-26 15:10:42', '2024-01-26 15:10:42'),
(1215, 692, 103, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-26 16:26:02', '2024-01-26 16:26:02'),
(1216, 693, 122, NULL, NULL, NULL, 1, 7, 270, 0, 0, 0, 270, '2024-01-26 17:20:25', '2024-01-26 17:20:25'),
(1217, 693, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-26 17:20:25', '2024-01-26 17:20:25'),
(1218, 694, 121, NULL, NULL, NULL, 2, 7, 250, 0, 0, 0, 500, '2024-01-27 13:27:18', '2024-01-27 13:27:18'),
(1219, 695, 118, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-27 13:38:34', '2024-01-27 13:38:34'),
(1220, 695, 122, NULL, NULL, NULL, 3, 7, 270, 0, 0, 0, 810, '2024-01-27 13:38:34', '2024-01-27 13:38:34'),
(1221, 695, 99, NULL, NULL, NULL, 2, 7, 280, 0, 0, 0, 560, '2024-01-27 13:38:34', '2024-01-27 13:38:34'),
(1222, 695, 121, NULL, NULL, NULL, 3, 7, 250, 0, 0, 0, 750, '2024-01-27 13:38:34', '2024-01-27 13:38:34'),
(1223, 695, 121, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-27 13:38:35', '2024-01-27 13:38:35'),
(1224, 695, 103, NULL, NULL, NULL, 3, 7, 280, 0, 0, 0, 840, '2024-01-27 13:38:35', '2024-01-27 13:38:35'),
(1225, 695, 91, NULL, NULL, NULL, 2, 7, 190, 0, 0, 0, 380, '2024-01-27 13:38:35', '2024-01-27 13:38:35'),
(1226, 695, 101, NULL, NULL, NULL, 5, 7, 250, 0, 0, 0, 1250, '2024-01-27 13:38:35', '2024-01-27 13:38:35'),
(1227, 695, 102, NULL, NULL, NULL, 16, 7, 280, 0, 0, 0, 4480, '2024-01-27 13:38:35', '2024-01-27 13:38:35');
INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1228, 695, 107, NULL, NULL, NULL, 1, 7, 300, 0, 0, 0, 300, '2024-01-27 13:38:35', '2024-01-27 13:38:35'),
(1229, 695, 97, NULL, NULL, NULL, 3, 7, 370, 0, 0, 0, 1110, '2024-01-27 13:38:35', '2024-01-27 13:38:35'),
(1230, 695, 94, NULL, NULL, NULL, 2, 7, 260, 0, 0, 0, 520, '2024-01-27 13:38:35', '2024-01-27 13:38:35'),
(1231, 695, 119, NULL, NULL, NULL, 5, 7, 290, 0, 0, 0, 1450, '2024-01-27 13:38:35', '2024-01-27 13:38:35'),
(1232, 695, 117, NULL, NULL, NULL, 2, 7, 320, 0, 0, 0, 640, '2024-01-27 13:38:35', '2024-01-27 13:38:35'),
(1233, 696, 116, NULL, NULL, NULL, 5, 7, 320, 0, 0, 0, 1600, '2024-01-27 13:43:03', '2024-01-27 13:43:03'),
(1234, 696, 99, NULL, NULL, NULL, 5, 7, 280, 0, 0, 0, 1400, '2024-01-27 13:43:03', '2024-01-27 13:43:03'),
(1235, 697, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-01-27 13:47:25', '2024-01-27 13:47:25'),
(1236, 698, 102, NULL, NULL, NULL, 1, 7, 280, 0, 0, 0, 280, '2024-01-27 14:04:27', '2024-01-27 14:04:27'),
(1237, 699, 97, NULL, NULL, NULL, 1, 7, 370, 0, 0, 0, 370, '2024-01-27 14:24:53', '2024-01-27 14:24:53'),
(1238, 700, 113, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2024-01-27 17:21:11', '2024-01-27 17:21:11'),
(1239, 700, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-27 17:21:11', '2024-01-27 17:21:11'),
(1240, 700, 121, NULL, NULL, NULL, 2, 7, 250, 0, 0, 0, 500, '2024-01-27 17:21:12', '2024-01-27 17:21:12'),
(1241, 700, 106, NULL, NULL, NULL, 1, 7, 430, 0, 0, 0, 430, '2024-01-27 17:21:12', '2024-01-27 17:21:12'),
(1242, 701, 101, NULL, NULL, NULL, 1, 7, 250, 0, 0, 0, 250, '2024-01-27 17:30:40', '2024-01-27 17:30:40'),
(1243, 702, 91, NULL, NULL, NULL, 1, 7, 190, 0, 0, 0, 190, '2024-05-02 16:46:46', '2024-05-02 16:46:46'),
(1244, 702, 112, NULL, NULL, NULL, 1, 1, 540, 0, 0, 0, 540, '2024-05-02 16:46:47', '2024-05-02 16:46:47'),
(1245, 703, 112, NULL, NULL, NULL, 1, 1, 540, 0, 0, 0, 540, '2024-05-02 16:49:20', '2024-05-02 16:49:20'),
(1246, 704, 118, NULL, NULL, NULL, 2, 7, 300, 0, 0, 0, 600, '2024-05-02 23:48:05', '2024-05-02 23:48:05'),
(1247, 704, 102, NULL, NULL, NULL, 2, 7, 280, 0, 0, 0, 560, '2024-05-02 23:48:06', '2024-05-02 23:48:06'),
(1248, 705, 116, NULL, NULL, NULL, 2, 7, 320, 0, 0, 0, 640, '2024-05-02 23:56:02', '2024-05-02 23:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `product_transfer`
--

CREATE TABLE `product_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) NOT NULL,
  `additional_cost` double DEFAULT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `variant_id`, `position`, `item_code`, `additional_cost`, `additional_price`, `qty`, `created_at`, `updated_at`) VALUES
(3, 48, 3, 1, 'S-93475396', NULL, NULL, 12, '2019-11-21 07:03:04', '2021-07-15 12:25:45'),
(5, 48, 5, 3, 'L-93475396', 10, 50, 12, '2019-11-24 06:07:20', '2022-08-08 15:34:26'),
(6, 48, 2, 2, 'M-93475396', 5, 10, 13, '2019-11-24 07:17:07', '2022-08-08 15:13:57'),
(10, 60, 9, 1, 'a-32081679', NULL, NULL, 1, '2020-05-18 16:44:14', '2020-10-26 23:42:06'),
(11, 60, 11, 2, 'b-32081679', NULL, NULL, 0, '2020-05-18 16:58:31', '2020-05-18 16:58:31'),
(12, 62, 12, 1, 'variant 1-81145830', NULL, NULL, 3, '2020-09-27 06:08:27', '2021-02-11 01:28:16'),
(13, 62, 13, 2, 'variant 2-81145830', NULL, NULL, 0, '2020-09-27 06:08:27', '2020-09-27 06:08:27'),
(26, 87, 18, 1, 's/red-82490498', NULL, NULL, 0, '2022-08-03 05:25:19', '2022-08-03 05:25:19'),
(27, 87, 24, 2, 's/blue-82490498', NULL, NULL, 0, '2022-08-03 05:25:19', '2022-08-03 05:25:19'),
(28, 87, 20, 4, 'm/red-82490498', NULL, NULL, 0, '2022-08-03 05:25:19', '2022-08-06 05:54:37'),
(29, 87, 25, 5, 'm/blue-82490498', NULL, NULL, 0, '2022-08-03 05:25:20', '2022-08-06 05:54:37'),
(30, 87, 22, 7, 'l/red-82490498', 2, 5, 1, '2022-08-03 05:25:20', '2022-08-08 15:13:57'),
(31, 87, 26, 8, 'l/blue-82490498', 2, 5, 0, '2022-08-03 05:25:20', '2022-08-06 05:54:37'),
(32, 87, 27, 3, 's/green-82490498', NULL, NULL, 0, '2022-08-06 05:54:37', '2022-08-06 05:54:37'),
(33, 87, 28, 6, 'm/green-82490498', NULL, NULL, 0, '2022-08-06 05:54:37', '2022-08-06 05:54:37'),
(34, 87, 29, 9, 'l/green-82490498', 2, 5, 0, '2022-08-06 05:54:37', '2022-08-08 13:58:47'),
(38, 87, 30, 10, 'xl/red-82490498', 3, 6, 0, '2022-08-08 14:05:58', '2022-08-09 05:54:44'),
(39, 87, 31, 11, 'xl/blue-82490498', 3, 6, 0, '2022-08-08 14:05:58', '2022-08-08 14:05:58'),
(40, 87, 32, 12, 'xl/green-82490498', 3, 6, 0, '2022-08-08 14:05:58', '2022-08-08 14:05:58'),
(43, 90, 33, 1, 'red-17628500', NULL, NULL, 10, '2022-09-11 06:56:55', '2022-09-11 07:04:41'),
(44, 90, 34, 2, 'black-17628500', NULL, NULL, 10, '2022-09-11 06:56:55', '2022-09-11 07:04:41'),
(45, 90, 35, 3, 'blue-17628500', 50, 100, 9, '2022-09-11 06:56:55', '2022-09-11 07:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(191) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `warehouse_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(72, '91', NULL, NULL, NULL, 1, 28, NULL, '2023-11-26 10:04:37', '2024-05-02 16:46:46'),
(73, '92', NULL, NULL, NULL, 1, 91, NULL, '2023-11-26 11:29:57', '2024-01-18 11:44:01'),
(74, '101', NULL, NULL, NULL, 1, 558, NULL, '2023-12-08 17:23:40', '2024-01-27 17:30:40'),
(75, '102', NULL, NULL, NULL, 1, 904, NULL, '2023-12-08 17:28:30', '2024-05-02 23:48:06'),
(76, '100', NULL, NULL, NULL, 1, 0, NULL, '2023-12-08 17:29:51', '2024-01-26 06:24:38'),
(77, '103', NULL, NULL, NULL, 1, 37, NULL, '2023-12-11 12:37:10', '2024-01-27 13:38:35'),
(78, '104', NULL, NULL, NULL, 1, 0, NULL, '2023-12-19 20:51:58', '2023-12-21 08:03:28'),
(79, '105', NULL, NULL, NULL, 1, 0, NULL, '2023-12-19 20:58:37', '2023-12-21 08:03:28'),
(80, '106', NULL, NULL, NULL, 1, 152, NULL, '2023-12-19 21:00:45', '2024-01-27 17:21:12'),
(81, '107', NULL, NULL, NULL, 1, 47, NULL, '2023-12-19 21:05:10', '2024-01-27 13:38:35'),
(82, '108', NULL, NULL, NULL, 1, 166, NULL, '2023-12-19 21:15:33', '2024-01-25 15:43:39'),
(83, '99', NULL, NULL, NULL, 1, 794, NULL, '2023-12-19 21:26:02', '2024-01-27 13:43:03'),
(84, '94', NULL, NULL, NULL, 1, 51, NULL, '2023-12-19 21:26:48', '2024-01-27 13:38:35'),
(85, '109', NULL, NULL, NULL, 1, 700, NULL, '2023-12-20 15:11:41', '2024-01-26 09:27:18'),
(86, '110', NULL, NULL, NULL, 1, 37, NULL, '2023-12-21 06:48:31', '2024-01-26 10:37:25'),
(87, '111', NULL, NULL, NULL, 1, 101, NULL, '2023-12-21 07:03:04', '2024-01-19 08:07:27'),
(88, '112', NULL, NULL, NULL, 1, 1, NULL, '2023-12-21 17:07:48', '2024-05-02 16:49:20'),
(89, '113', NULL, NULL, NULL, 1, 279, NULL, '2023-12-21 17:08:23', '2024-01-27 17:21:11'),
(90, '97', NULL, NULL, NULL, 1, 114, NULL, '2023-12-21 17:40:54', '2024-01-27 14:24:53'),
(91, '95', NULL, NULL, NULL, 1, 16, NULL, '2023-12-22 05:58:56', '2024-01-22 05:34:39'),
(92, '114', NULL, NULL, NULL, 1, 392, NULL, '2023-12-22 06:50:42', '2024-01-18 12:12:40'),
(93, '93', NULL, NULL, NULL, 1, 92, NULL, '2023-12-25 05:49:29', '2024-01-18 05:29:12'),
(94, '115', NULL, NULL, NULL, 1, 287, NULL, '2024-01-17 05:58:54', '2024-01-22 17:49:17'),
(95, '116', NULL, NULL, NULL, 1, 50, NULL, '2024-01-17 06:08:38', '2024-05-02 23:56:02'),
(96, '118', NULL, NULL, NULL, 1, 74, NULL, '2024-01-18 12:28:42', '2024-05-02 23:48:05'),
(97, '117', NULL, NULL, NULL, 1, 11, NULL, '2024-01-18 12:29:15', '2024-01-27 13:38:35'),
(98, '119', NULL, NULL, NULL, 1, 564, NULL, '2024-01-18 13:56:23', '2024-01-27 13:38:35'),
(99, '120', NULL, NULL, NULL, 1, 70, NULL, '2024-01-18 14:00:27', '2024-01-18 14:00:27'),
(100, '121', NULL, NULL, NULL, 1, 64, NULL, '2024-01-19 08:20:05', '2024-01-27 17:21:12'),
(101, '122', NULL, NULL, NULL, 1, 43, NULL, '2024-01-24 05:58:32', '2024-01-27 13:38:34'),
(102, '123', NULL, NULL, NULL, 1, 170, NULL, '2024-01-27 13:33:00', '2024-01-27 13:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `currency_id`, `exchange_rate`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(8, 'pr-20231219-085158', 42, 1, NULL, NULL, NULL, 1, 50, 0, 0, 24500, 0, 0, NULL, NULL, 24500, 0, 1, 1, NULL, NULL, '2023-12-19 20:51:58', '2023-12-19 20:51:58'),
(9, 'pr-20231219-085836', 42, 1, NULL, NULL, NULL, 1, 38, 0, 0, 35340, 0, 0, NULL, NULL, 35340, 0, 1, 1, NULL, NULL, '2023-12-19 20:58:36', '2023-12-19 20:58:36'),
(10, 'pr-20231219-090045', 42, 1, NULL, NULL, NULL, 1, 50, 0, 0, 21500, 0, 0, NULL, NULL, 21500, 0, 1, 1, NULL, NULL, '2023-12-19 21:00:45', '2023-12-19 21:00:45'),
(11, 'pr-20231219-090509', 42, 1, NULL, NULL, NULL, 1, 150, 0, 0, 43500, 0, 0, NULL, NULL, 43500, 0, 1, 1, NULL, NULL, '2023-12-19 21:05:09', '2023-12-19 21:05:09'),
(12, 'pr-20231219-090614', 42, 1, NULL, NULL, NULL, 1, 131, 0, 0, 34715, 0, 0, NULL, NULL, 34715, 0, 1, 1, NULL, NULL, '2023-12-19 21:06:14', '2023-12-19 21:06:14'),
(13, 'pr-20231219-091103', 42, 1, NULL, NULL, NULL, 1, 8, 0, 0, 2080, 0, 0, NULL, NULL, 2080, 0, 1, 1, NULL, NULL, '2023-12-19 21:11:03', '2023-12-19 21:11:03'),
(14, 'pr-20231219-091533', 42, 1, NULL, NULL, NULL, 1, 3, 0, 0, 840, 0, 0, NULL, NULL, 840, 0, 1, 1, NULL, NULL, '2023-12-19 21:15:33', '2023-12-19 21:15:33'),
(15, 'pr-20231219-091757', 42, 1, NULL, NULL, NULL, 1, 22, 0, 0, 3960, 0, 0, NULL, NULL, 3960, 0, 1, 1, NULL, NULL, '2023-12-19 21:17:57', '2023-12-19 21:17:57'),
(16, 'pr-20231219-091853', 42, 1, NULL, NULL, NULL, 1, 9, 0, 0, 2700, 0, 0, NULL, NULL, 2700, 0, 1, 1, NULL, NULL, '2023-12-19 21:18:53', '2023-12-19 21:18:53'),
(17, 'pr-20231219-092043', 42, 1, NULL, NULL, NULL, 1, 36, 0, 0, 9360, 0, 0, NULL, NULL, 9360, 0, 1, 1, NULL, NULL, '2023-12-19 21:20:43', '2023-12-19 21:20:43'),
(18, 'pr-20231219-092135', 42, 1, NULL, NULL, NULL, 1, 2, 0, 0, 520, 0, 0, NULL, NULL, 520, 0, 1, 1, NULL, NULL, '2023-12-19 21:21:35', '2023-12-19 21:21:35'),
(19, 'pr-20231219-092441', 42, 1, NULL, NULL, NULL, 1, 512, 0, 0, 128000, 0, 0, NULL, NULL, 128000, 0, 1, 1, NULL, NULL, '2023-12-19 21:24:41', '2023-12-19 21:24:41'),
(20, 'pr-20231219-092601', 42, 1, NULL, NULL, NULL, 1, 71, 0, 0, 18460, 0, 0, NULL, NULL, 18460, 0, 1, 1, NULL, NULL, '2023-12-19 21:26:01', '2023-12-19 21:26:01'),
(21, 'pr-20231219-092648', 42, 1, NULL, NULL, NULL, 1, 14, 0, 0, 3500, 0, 0, NULL, NULL, 3500, 0, 1, 1, NULL, NULL, '2023-12-19 21:26:48', '2023-12-19 21:26:48'),
(22, 'pr-20231220-031141', 42, 1, NULL, NULL, NULL, 1, 60, 0, 0, 18000, 0, 0, NULL, NULL, 18000, 0, 1, 1, NULL, NULL, '2023-12-20 15:11:41', '2023-12-20 15:11:41'),
(23, 'pr-20231220-071106', 42, 1, NULL, NULL, NULL, 1, 100, 0, 0, 18000, 0, 0, NULL, NULL, 18000, 0, 1, 1, NULL, NULL, '2023-12-20 19:11:06', '2023-12-20 19:11:06'),
(24, 'pr-20231220-071219', 42, 1, NULL, NULL, NULL, 1, 100, 0, 0, 26000, 0, 0, NULL, NULL, 26000, 0, 1, 1, NULL, NULL, '2023-12-20 19:12:19', '2023-12-20 19:12:19'),
(25, 'pr-20231221-064831', 42, 1, NULL, NULL, NULL, 1, 2, 0, 0, 1140, 0, 0, NULL, NULL, 1140, 0, 1, 1, NULL, NULL, '2023-12-21 06:48:31', '2023-12-21 06:48:31'),
(26, 'pr-20231221-070304', 42, 1, NULL, NULL, NULL, 1, 69, 0, 0, 16560, 0, 0, NULL, NULL, 16560, 0, 1, 1, NULL, NULL, '2023-12-21 07:03:04', '2023-12-21 07:03:04'),
(27, 'pr-20231221-050748', 42, 1, NULL, NULL, NULL, 1, 3, 0, 0, 1590, 0, 0, NULL, NULL, 1590, 0, 1, 1, NULL, NULL, '2023-12-21 17:07:48', '2023-12-21 17:07:48'),
(28, 'pr-20231221-050822', 42, 1, NULL, NULL, NULL, 1, 22, 0, 0, 6600, 0, 0, NULL, NULL, 6600, 0, 1, 1, NULL, NULL, '2023-12-21 17:08:22', '2023-12-21 17:08:22'),
(29, 'pr-20231221-054054', 42, 1, NULL, NULL, NULL, 1, 102, 0, 0, 35700, 0, 0, NULL, NULL, 35700, 0, 1, 1, NULL, NULL, '2023-12-21 17:40:54', '2023-12-21 17:40:54'),
(30, 'pr-20231222-055856', 42, 1, NULL, NULL, NULL, 1, 2, 0, 0, 500, 0, 0, NULL, NULL, 500, 0, 1, 1, NULL, NULL, '2023-12-22 05:58:56', '2023-12-22 05:58:56'),
(31, 'pr-20231222-065042', 42, 1, NULL, NULL, NULL, 1, 42, 0, 0, 12180, 0, 0, 0, 0, 12180, 0, 1, 1, NULL, NULL, '2023-12-22 00:00:00', '2023-12-22 18:56:35'),
(32, 'pr-20231222-065729', 42, 1, NULL, NULL, NULL, 1, 2, 0, 0, 580, 0, 0, NULL, NULL, 580, 0, 1, 1, NULL, NULL, '2023-12-22 18:57:29', '2023-12-22 18:57:29'),
(33, 'pr-20231225-054754', 42, 1, NULL, NULL, NULL, 1, 499, 0, 0, 149700, 0, 0, NULL, NULL, 149700, 0, 1, 1, NULL, NULL, '2023-12-25 05:47:54', '2023-12-25 05:47:54'),
(34, 'pr-20231225-054828', 42, 1, NULL, NULL, NULL, 1, 160, 0, 0, 48000, 0, 0, NULL, NULL, 48000, 0, 1, 1, NULL, NULL, '2023-12-25 05:48:28', '2023-12-25 05:48:28'),
(35, 'pr-20231225-054901', 42, 1, NULL, NULL, NULL, 1, 50, 0, 0, 28500, 0, 0, NULL, NULL, 28500, 0, 1, 1, NULL, NULL, '2023-12-25 05:49:01', '2023-12-25 05:49:01'),
(36, 'pr-20231225-054928', 42, 1, NULL, NULL, NULL, 1, 250, 0, 0, 67500, 0, 0, NULL, NULL, 67500, 0, 1, 1, NULL, NULL, '2023-12-25 05:49:28', '2023-12-25 05:49:28'),
(37, 'pr-20231225-055906', 42, 1, NULL, NULL, NULL, 1, 210, 0, 0, 63000, 0, 0, NULL, NULL, 63000, 0, 1, 1, NULL, NULL, '2023-12-25 05:59:06', '2023-12-25 05:59:06'),
(38, 'pr-20231225-055955', 42, 1, NULL, NULL, NULL, 1, 100, 0, 0, 27000, 0, 0, NULL, NULL, 27000, 0, 1, 1, NULL, NULL, '2023-12-25 05:59:55', '2023-12-25 05:59:55'),
(39, 'pr-20231225-060757', 42, 1, NULL, NULL, NULL, 1, 50, 0, 0, 13500, 0, 0, NULL, NULL, 13500, 0, 1, 1, NULL, NULL, '2023-12-25 06:07:57', '2023-12-25 06:07:57'),
(40, 'pr-20231229-055053', 42, 1, NULL, NULL, NULL, 1, 250, 0, 0, 75000, 0, 0, NULL, NULL, 75000, 0, 1, 1, NULL, NULL, '2023-12-27 00:00:00', '2023-12-29 05:50:53'),
(41, 'pr-20231229-055143', 42, 1, NULL, NULL, NULL, 1, 450, 0, 0, 130500, 0, 0, NULL, NULL, 130500, 0, 1, 1, NULL, NULL, '2023-12-27 00:00:00', '2023-12-29 05:51:43'),
(42, 'pr-20231229-055226', 42, 1, NULL, NULL, NULL, 1, 100, 0, 0, 25000, 0, 0, NULL, NULL, 25000, 0, 1, 1, NULL, NULL, '2023-12-27 00:00:00', '2023-12-29 05:52:26'),
(43, 'pr-20240102-055635', 42, 1, NULL, NULL, NULL, 1, 136, 0, 0, 32640, 0, 0, NULL, NULL, 32640, 0, 1, 1, NULL, NULL, '2024-01-02 05:56:35', '2024-01-02 05:56:35'),
(44, 'pr-20240102-055734', 42, 1, NULL, NULL, NULL, 1, 105, 0, 0, 27300, 0, 0, NULL, NULL, 27300, 0, 1, 1, NULL, NULL, '2024-01-02 05:57:34', '2024-01-02 05:57:34'),
(45, 'pr-20240102-055806', 42, 1, NULL, NULL, NULL, 1, 2, 0, 0, 1060, 0, 0, NULL, NULL, 1060, 0, 1, 1, NULL, NULL, '2024-01-02 05:58:06', '2024-01-02 05:58:06'),
(46, 'pr-20240102-055840', 42, 1, NULL, NULL, NULL, 1, 837, 0, 0, 217620, 0, 0, NULL, NULL, 217620, 0, 1, 1, NULL, NULL, '2024-01-02 05:58:40', '2024-01-02 05:58:40'),
(47, 'pr-20240115-060744', 42, 1, NULL, NULL, NULL, 1, 100, 0, 0, 25000, 0, 0, NULL, NULL, 25000, 0, 1, 1, NULL, NULL, '2024-01-15 06:07:44', '2024-01-15 06:07:44'),
(48, 'pr-20240117-055854', 42, 1, NULL, NULL, NULL, 1, 300, 0, 0, 78000, 0, 0, NULL, NULL, 78000, 0, 1, 1, NULL, NULL, '2024-01-17 05:58:54', '2024-01-17 05:58:54'),
(49, 'pr-20240117-060838', 42, 1, NULL, NULL, NULL, 1, 90, 0, 0, 27900, 0, 0, NULL, NULL, 27900, 0, 1, 1, NULL, NULL, '2024-01-17 06:08:38', '2024-01-17 06:08:38'),
(50, 'pr-20240117-062540', 42, 1, NULL, NULL, NULL, 1, 630, 0, 0, 189000, 0, 0, NULL, NULL, 189000, 0, 1, 1, NULL, NULL, '2024-01-17 06:25:40', '2024-01-17 06:25:40'),
(51, 'pr-20240117-043246', 42, 1, NULL, NULL, NULL, 1, 170, 0, 0, 47600, 0, 0, NULL, NULL, 47600, 0, 1, 1, NULL, NULL, '2024-01-17 16:32:46', '2024-01-17 16:32:46'),
(52, 'pr-20240118-061209', 42, 1, NULL, NULL, NULL, 1, 100, 0, 0, 24000, 0, 0, NULL, NULL, 24000, 0, 1, 1, NULL, NULL, '2024-01-18 06:12:09', '2024-01-18 06:12:09'),
(53, 'pr-20240118-122842', 42, 1, NULL, NULL, NULL, 1, 6, 0, 0, 1740, 0, 0, NULL, NULL, 1740, 0, 1, 1, NULL, NULL, '2024-01-18 12:28:42', '2024-01-18 12:28:42'),
(54, 'pr-20240118-122914', 42, 1, NULL, NULL, NULL, 1, 77, 0, 0, 23870, 0, 0, NULL, NULL, 23870, 0, 1, 1, NULL, NULL, '2024-01-18 12:29:14', '2024-01-18 12:29:14'),
(55, 'pr-20240118-015623', 42, 1, NULL, NULL, NULL, 1, 47, 0, 0, 13160, 0, 0, NULL, NULL, 13160, 0, 1, 1, NULL, NULL, '2024-01-18 13:56:23', '2024-01-18 13:56:23'),
(56, 'pr-20240118-020027', 42, 1, NULL, NULL, NULL, 1, 70, 0, 0, 23800, 0, 0, NULL, NULL, 23800, 0, 1, 1, NULL, NULL, '2024-01-18 14:00:27', '2024-01-18 14:00:27'),
(57, 'pr-20240119-051731', 42, 1, NULL, NULL, NULL, 1, 100, 0, 0, 18000, 0, 0, NULL, NULL, 18000, 0, 1, 1, NULL, NULL, '2024-01-18 00:00:00', '2024-01-19 05:17:31'),
(58, 'pr-20240119-051823', 42, 1, NULL, NULL, NULL, 1, 100, 0, 0, 28000, 0, 0, NULL, NULL, 28000, 0, 1, 1, NULL, NULL, '2024-01-18 00:00:00', '2024-01-19 05:18:23'),
(59, 'pr-20240119-072215', 42, 1, NULL, NULL, NULL, 1, 900, 0, 0, 243000, 0, 0, NULL, NULL, 243000, 0, 1, 1, NULL, NULL, '2024-01-19 07:22:15', '2024-01-19 07:22:15'),
(60, 'pr-20240119-082004', 42, 1, NULL, NULL, NULL, 1, 48, 0, 0, 11520, 0, 0, NULL, NULL, 11520, 0, 1, 1, NULL, NULL, '2024-01-19 08:20:04', '2024-01-19 08:20:04'),
(61, 'pr-20240119-100444', 42, 1, NULL, NULL, NULL, 1, 14, 0, 0, 3780, 0, 0, NULL, NULL, 3780, 0, 1, 1, NULL, NULL, '2024-01-19 10:04:44', '2024-01-19 10:04:44'),
(62, 'pr-20240119-100646', 42, 1, NULL, NULL, NULL, 1, 1, 0, 0, 270, 0, 0, NULL, NULL, 270, 0, 1, 1, NULL, NULL, '2024-01-19 10:06:46', '2024-01-19 10:06:46'),
(63, 'pr-20240120-084515', 42, 1, NULL, NULL, NULL, 1, 50, 0, 0, 14500, 0, 0, NULL, NULL, 14500, 0, 1, 1, NULL, NULL, '2024-01-20 08:45:15', '2024-01-20 08:45:15'),
(64, 'pr-20240120-103719', 42, 1, NULL, NULL, NULL, 1, 100, 0, 0, 29000, 0, 0, NULL, NULL, 29000, 0, 1, 1, NULL, NULL, '2024-01-20 10:37:19', '2024-01-20 10:37:19'),
(65, 'pr-20240123-103221', 42, 1, NULL, NULL, NULL, 1, 450, 0, 0, 126000, 0, 0, NULL, NULL, 126000, 0, 1, 1, NULL, NULL, '2024-01-22 00:00:00', '2024-01-23 10:32:21'),
(66, 'pr-20240124-055832', 42, 1, NULL, NULL, NULL, 1, 55, 0, 0, 14300, 0, 0, NULL, NULL, 14300, 0, 1, 1, NULL, NULL, '2024-01-24 05:58:32', '2024-01-24 05:58:32'),
(67, 'pr-20240124-055915', 42, 1, NULL, NULL, NULL, 1, 50, 0, 0, 17500, 0, 0, NULL, NULL, 17500, 0, 1, 1, NULL, NULL, '2024-01-23 00:00:00', '2024-01-24 05:59:15'),
(68, 'pr-20240124-035438', 42, 1, NULL, NULL, NULL, 1, 50, 0, 0, 13500, 0, 0, NULL, NULL, 13500, 0, 1, 1, NULL, NULL, '2024-01-24 15:54:38', '2024-01-24 15:54:38'),
(69, 'pr-20240125-105458', 42, 1, NULL, NULL, NULL, 1, 9, 0, 0, 2430, 0, 0, NULL, NULL, 2430, 0, 1, 1, NULL, NULL, '2024-01-25 10:54:58', '2024-01-25 10:54:58'),
(70, 'pr-20240127-012852', 42, 1, NULL, NULL, NULL, 1, 150, 0, 0, 64500, 0, 0, NULL, NULL, 64500, 0, 1, 1, NULL, NULL, '2024-01-27 13:28:52', '2024-01-27 13:28:52'),
(71, 'pr-20240127-012930', 42, 1, NULL, NULL, NULL, 1, 60, 0, 0, 14400, 0, 0, NULL, NULL, 14400, 0, 1, 1, NULL, NULL, '2024-01-27 13:29:30', '2024-01-27 13:29:30'),
(72, 'pr-20240127-013259', 42, 1, NULL, NULL, NULL, 1, 170, 0, 0, 49300, 0, 0, NULL, NULL, 49300, 0, 1, 1, NULL, NULL, '2024-01-27 13:32:59', '2024-01-27 13:32:59'),
(73, 'pr-20240502-042616', 1, 1, 1, NULL, NULL, 2, 15, 0, 0, 3850, 0, 0, 10, 200, 4040, 12120, 3, 1, NULL, 'This is my note', '2024-05-02 00:00:00', '2024-05-02 16:29:57'),
(74, 'pr-20240502-042634', 1, 1, 1, NULL, NULL, 2, 15, 0, 0, 3850, 0, 0, 10, 200, 4040, 4040, 3, 2, NULL, 'This is my note', '2024-05-02 00:00:00', '2024-05-02 16:31:08'),
(75, 'pr-20240502-042745', 1, 1, 1, NULL, NULL, 2, 15, 0, 0, 3850, 0, 0, 10, 200, 4040, 0, 3, 1, NULL, 'This is my note', '2024-05-02 00:00:00', '2024-05-02 16:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product_return`
--

CREATE TABLE `purchase_product_return` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `reference_no`, `user_id`, `biller_id`, `supplier_id`, `customer_id`, `warehouse_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `quotation_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'qr-20180809-055250', 1, 1, 3, 3, 1, 3, 57, 35, 767.73, 5930, 10, 583, 100, 500, 6913, 2, NULL, 'first quotation...', '2018-08-08 23:52:50', '2018-09-04 03:32:16'),
(2, 'qr-20180904-040257', 1, 1, NULL, 1, 1, 2, 3.5, 0, 0, 76, 0, 0, 1.6, 2.7, 77.1, 1, NULL, NULL, '2018-09-03 22:02:57', '2018-09-21 07:05:57'),
(3, 'qr-20181023-061249', 9, 1, 3, 11, 1, 2, 2, 0, 40, 453, 0, 0, 0, 0, 453, 2, NULL, NULL, '2018-10-23 00:12:49', '2019-12-21 06:41:36'),
(11, 'qr-20201024-090814', 1, 1, NULL, 1, 1, 1, 2, 0, 3000, 23000, 0, 0, 0, 0, 23000, 1, NULL, NULL, '2020-10-24 03:08:14', '2020-10-24 03:28:35'),
(12, 'qr-20201210-053401', 1, 1, 1, 19, 2, 2, 15, 0, 600, 9100, 0, 0, 100, 500, 9500, 1, NULL, NULL, '2020-12-09 23:34:01', '2020-12-09 23:34:01'),
(13, 'qr-20210112-125803', 1, 1, NULL, 11, 1, 3, 12, 0, 155.65, 1660, 0, 0, 0, 0, 1660, 1, NULL, NULL, '2021-01-12 06:58:03', '2021-01-12 06:59:14'),
(15, 'qr-20210529-105356', 1, 1, NULL, 11, 2, 2, 2, 0, 40, 442, 0, 0, 0, 0, 442, 1, NULL, NULL, '2021-05-29 04:53:56', '2021-05-30 08:04:07'),
(16, 'qr-20220219-122055', 1, 1, NULL, 19, 1, 1, 1, 0, 0, 120, 0, 0, NULL, NULL, 120, 1, NULL, NULL, '2022-02-19 06:20:55', '2022-02-19 06:20:55'),
(17, 'qr-20220219-124103', 1, 1, NULL, 11, 1, 1, 1, 0, 40, 440, 0, 0, 10, NULL, 430, 1, NULL, NULL, '2022-02-19 06:41:03', '2022-02-19 06:41:03'),
(18, 'qr-20220219-124638', 1, 1, NULL, 11, 1, 1, 1, 0, 40, 440, 0, 0, 10, NULL, 430, 1, NULL, NULL, '2022-02-19 06:46:38', '2022-02-19 06:46:38'),
(19, 'qr-20220308-040521', 1, 1, NULL, 1, 1, 3, 3, 0, 0, 566, 0, 0, 0, 0, 566, 1, NULL, 'asfsdf\r\nfsdfsdf\r\nsfsdfsdfs', '2022-03-08 10:05:21', '2022-03-13 05:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `return_note` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `reference_no`, `user_id`, `sale_id`, `cash_register_id`, `customer_id`, `warehouse_id`, `biller_id`, `account_id`, `currency_id`, `exchange_rate`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(2, 'rr-20180809-055834', 1, NULL, NULL, 1, 1, 1, 1, NULL, NULL, 1, 20, 0, 0, 40, 10, 4, 44, NULL, NULL, NULL, '2018-08-08 23:58:34', '2018-08-08 23:58:34'),
(3, 'rr-20180828-045527', 1, NULL, NULL, 1, 2, 1, 1, NULL, NULL, 1, 2, 0, 0, 44, 0, 0, 44, NULL, NULL, NULL, '2018-08-27 22:55:27', '2018-09-20 11:03:47'),
(5, 'rr-20181007-082129', 1, NULL, NULL, 11, 2, 2, 1, NULL, NULL, 1, 1, 0, 0, 250, 0, 0, 250, NULL, NULL, NULL, '2018-10-07 02:21:29', '2018-12-25 22:16:08'),
(6, 'rr-20190101-090630', 9, NULL, NULL, 1, 1, 1, 1, NULL, NULL, 1, 1, 0, 40, 440, 0, 0, 440, NULL, NULL, NULL, '2019-01-01 03:06:30', '2019-01-01 03:06:30'),
(13, 'rr-20200816-102502', 1, NULL, NULL, 1, 2, 2, 1, NULL, NULL, 1, 1, 0, 1500, 11500, 0, 0, 11500, NULL, NULL, NULL, '2020-08-16 16:25:02', '2020-08-16 16:25:02'),
(14, 'rr-20201013-053954', 9, NULL, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, 0, 40, 440, 0, 0, 440, NULL, NULL, NULL, '2020-10-13 11:39:54', '2020-10-13 11:39:54'),
(18, 'rr-20201118-070218', 1, NULL, 4, 1, 2, 1, 1, NULL, NULL, 1, 1, 0, 1500, 11500, 0, 0, 11500, NULL, NULL, NULL, '2020-11-18 01:02:18', '2020-11-18 01:02:18'),
(19, 'rr-20201210-064025', 1, NULL, 3, 19, 1, 1, 1, NULL, NULL, 1, 1, 0, 0, 250, 0, 0, 250, NULL, NULL, NULL, '2020-12-10 00:40:25', '2020-12-10 00:40:25'),
(33, 'rr-20220531-123340', 1, NULL, NULL, 11, 1, 1, 1, NULL, NULL, 1, 1, 0, 100, 1100, 0, 0, 1100, NULL, NULL, NULL, '2022-05-31 06:33:40', '2022-05-31 06:33:40'),
(34, 'rr-20220531-124817', 1, NULL, NULL, 11, 1, 1, 1, NULL, NULL, 1, 1, 0, 40, 440, 0, 0, 440, NULL, NULL, NULL, '2022-05-31 06:48:17', '2022-05-31 06:48:17'),
(36, 'rr-20220614-032048', 1, 400, 6, 11, 2, 1, 1, NULL, NULL, 1, 1, 0, 100, 1100, 0, 0, 1100, NULL, NULL, NULL, '2022-06-14 09:20:48', '2022-06-14 09:20:48'),
(38, 'rr-20220904-011908', 1, 412, NULL, 11, 1, 5, 1, NULL, NULL, 1, 1, 0, 0, 250, 0, 0, 250, NULL, NULL, NULL, '2022-09-04 07:19:08', '2022-09-04 07:19:08'),
(39, 'rr-20230323-125050', 1, 457, 7, 1, 1, 1, 1, 2, 0.9, 1, 1, 0, 0, 108, 0, 0, 108, NULL, NULL, NULL, '2023-03-23 06:50:50', '2023-03-23 06:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `return_purchases`
--

CREATE TABLE `return_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `return_note` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reward_point_settings`
--

CREATE TABLE `reward_point_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `per_point_amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reward_point_settings`
--

INSERT INTO `reward_point_settings` (`id`, `per_point_amount`, `minimum_amount`, `duration`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 300, 1000, 1, 'Year', 1, '2021-06-08 15:40:15', '2021-06-27 05:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `guard_name` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin can access all data...', 'web', 1, '2018-06-01 23:46:44', '2018-06-02 23:13:05'),
(2, 'Software Manager', 'Software Manager', 'web', 1, '2018-10-22 02:38:13', '2023-05-10 16:59:16'),
(4, 'staff', 'staff has specific acess...', 'web', 1, '2018-06-02 00:05:27', '2022-02-01 13:13:04'),
(5, 'Customer', NULL, 'web', 1, '2020-11-05 06:43:16', '2020-11-15 00:24:15'),
(6, 'Shop Owner', 'Owner of Shop', 'web', 1, '2023-05-10 16:55:23', '2023-05-10 16:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 1),
(4, 2),
(4, 6),
(5, 1),
(5, 2),
(5, 6),
(6, 1),
(6, 2),
(6, 6),
(7, 1),
(7, 2),
(7, 4),
(7, 6),
(8, 1),
(8, 2),
(8, 6),
(9, 1),
(9, 2),
(9, 6),
(10, 1),
(10, 2),
(10, 6),
(11, 1),
(11, 2),
(11, 6),
(12, 1),
(12, 2),
(12, 4),
(12, 6),
(13, 1),
(13, 2),
(13, 4),
(13, 6),
(14, 1),
(14, 2),
(14, 6),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(36, 6),
(37, 1),
(37, 2),
(37, 6),
(38, 1),
(38, 2),
(38, 6),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(40, 6),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(45, 2),
(45, 6),
(46, 1),
(46, 2),
(46, 6),
(47, 1),
(47, 2),
(47, 6),
(48, 1),
(48, 2),
(48, 6),
(49, 1),
(49, 2),
(49, 6),
(50, 1),
(50, 2),
(50, 6),
(51, 1),
(51, 2),
(51, 6),
(52, 1),
(52, 2),
(52, 6),
(53, 1),
(53, 2),
(53, 6),
(54, 1),
(54, 2),
(54, 6),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(60, 1),
(61, 1),
(61, 2),
(62, 1),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(78, 2),
(78, 6),
(79, 1),
(79, 2),
(80, 1),
(81, 1),
(82, 1),
(82, 2),
(83, 1),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(85, 6),
(86, 1),
(86, 2),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(90, 2),
(90, 6),
(91, 1),
(91, 2),
(91, 6),
(92, 1),
(92, 2),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(97, 2),
(98, 1),
(98, 2),
(98, 6),
(99, 1),
(99, 2),
(100, 1),
(101, 1),
(101, 2),
(101, 6),
(102, 2),
(102, 6),
(103, 1),
(104, 1),
(104, 2),
(105, 1),
(106, 1),
(106, 4),
(106, 6),
(107, 1),
(107, 6),
(108, 1),
(108, 6),
(109, 1),
(109, 6),
(110, 1),
(110, 2),
(111, 1),
(111, 2),
(112, 1),
(112, 2),
(112, 6),
(113, 1),
(113, 2),
(113, 6),
(114, 1),
(114, 2),
(114, 6),
(115, 1),
(115, 2),
(115, 6),
(116, 1),
(116, 2),
(116, 6),
(117, 1),
(117, 2),
(117, 6),
(118, 1),
(118, 2),
(118, 6),
(119, 1),
(119, 2),
(119, 6),
(120, 1),
(120, 2),
(120, 6),
(121, 1),
(122, 1),
(122, 2),
(122, 6),
(123, 1),
(123, 2),
(123, 6),
(124, 1),
(125, 1),
(126, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount_type` varchar(191) DEFAULT NULL,
  `order_discount_value` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `user_id`, `cash_register_id`, `customer_id`, `warehouse_id`, `biller_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `grand_total`, `currency_id`, `exchange_rate`, `order_tax_rate`, `order_tax`, `order_discount_type`, `order_discount_value`, `order_discount`, `coupon_id`, `coupon_discount`, `shipping_cost`, `sale_status`, `payment_status`, `document`, `paid_amount`, `sale_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(472, 'posr-20231126-100801', 42, 10, 11, 1, 8, 1, 1, 0, 0, 185, 185, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 185, NULL, NULL, '2023-11-26 10:08:01', '2023-11-26 10:08:01'),
(473, 'posr-20231129-073438', 42, 10, 11, 1, 8, 1, 1, 0, 0, 195, 195, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 195, NULL, NULL, '2023-11-29 07:34:38', '2023-11-29 07:34:38'),
(474, 'posr-20231208-060727', 42, 10, 11, 1, 8, 3, 31, 0, 0, 7465, 7465, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 7465, NULL, NULL, '2023-12-08 18:07:27', '2023-12-08 18:07:27'),
(475, 'posr-20231211-124128', 42, 10, 11, 1, 8, 3, 8, 0, 0, 2290, 2290, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2290, NULL, NULL, '2023-12-11 12:41:28', '2023-12-11 12:41:28'),
(476, 'posr-20231211-124302', 42, 10, 11, 1, 8, 2, 2, 0, 0, 550, 550, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 550, NULL, NULL, '2023-12-11 12:43:02', '2023-12-11 12:43:02'),
(477, 'posr-20231219-022539', 42, 10, 11, 1, 8, 1, 1, 0, 0, 190, 190, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 190, NULL, NULL, '2023-12-19 14:25:39', '2023-12-19 14:25:39'),
(478, 'posr-20231220-062412', 42, 10, 11, 1, 8, 1, 1, 0, 0, 190, 190, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 190, NULL, NULL, '2023-12-20 06:24:12', '2023-12-20 06:24:12'),
(479, 'posr-20231220-072803', 42, 10, 11, 1, 8, 2, 2, 0, 0, 630, 630, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 630, NULL, NULL, '2023-12-20 07:28:03', '2023-12-20 07:28:03'),
(480, 'posr-20231220-095256', 42, 10, 11, 1, 8, 1, 2, 0, 0, 540, 540, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 540, NULL, NULL, '2023-12-20 09:52:56', '2023-12-20 09:52:56'),
(481, 'posr-20231220-095501', 42, 10, 11, 1, 8, 1, 2, 0, 0, 380, 380, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 380, NULL, NULL, '2023-12-20 09:55:01', '2023-12-20 09:55:01'),
(482, 'posr-20231220-114923', 42, 10, 11, 1, 8, 1, 2, 0, 0, 880, 880, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 880, NULL, NULL, '2023-12-20 11:49:23', '2023-12-20 11:49:23'),
(483, 'posr-20231220-123239', 42, 10, 11, 1, 8, 1, 2, 0, 0, 380, 380, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 380, NULL, NULL, '2023-12-20 12:32:39', '2023-12-20 12:32:39'),
(484, 'posr-20231220-034453', 42, 10, 11, 1, 8, 1, 50, 0, 0, 13500, 13500, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 13500, NULL, NULL, '2023-12-20 15:44:53', '2023-12-20 15:44:53'),
(485, 'posr-20231220-034549', 42, 10, 11, 1, 8, 1, 7, 0, 0, 1890, 1890, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1890, NULL, NULL, '2023-12-20 15:45:49', '2023-12-20 15:45:49'),
(486, 'posr-20231220-035412', 42, 10, 11, 1, 8, 1, 1, 0, 0, 270, 270, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 270, NULL, NULL, '2023-12-20 15:54:12', '2023-12-20 15:54:12'),
(487, 'wi', 42, 10, 11, 1, 8, 2, 4, 0, 0, 890, 890, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 890, NULL, NULL, '2023-12-21 06:22:31', '2023-12-21 06:22:31'),
(488, 'posr-20231221-064538', 42, 10, 11, 1, 8, 1, 1, 0, 0, 290, 290, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 290, NULL, NULL, '2023-12-21 06:45:38', '2023-12-21 06:45:38'),
(489, 'posr-20231221-080328', 42, 10, 11, 1, 8, 4, 94, 0, 0, 62720, 62720, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 62720, NULL, NULL, '2023-12-21 08:03:28', '2023-12-21 08:03:28'),
(490, 'posr-20231221-105953', 42, 10, 11, 1, 8, 2, 6, 0, 0, 1755, 1755, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1755, NULL, NULL, '2023-12-21 10:59:53', '2023-12-21 10:59:53'),
(491, 'posr-20231221-110206', 42, 10, 11, 1, 8, 1, 3, 0, 0, 780, 780, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 780, NULL, NULL, '2023-12-21 11:02:06', '2023-12-21 11:02:06'),
(492, 'posr-20231221-125202', 42, 10, 11, 1, 8, 1, 1, 0, 0, 270, 270, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 270, NULL, NULL, '2023-12-21 12:52:02', '2023-12-21 12:52:02'),
(493, 'posr-20231221-024313', 42, 10, 11, 1, 8, 1, 1, 0, 0, 270, 270, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 270, NULL, NULL, '2023-12-21 14:43:13', '2023-12-21 14:43:13'),
(494, 'posr-20231221-042847', 42, 10, 11, 1, 8, 1, 1, 0, 0, 270, 270, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 270, NULL, NULL, '2023-12-21 16:28:47', '2023-12-21 16:28:47'),
(495, 'posr-20231221-054123', 42, 10, 11, 1, 8, 1, 1, 0, 0, 190, 190, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 190, NULL, NULL, '2023-12-21 17:41:23', '2023-12-21 17:41:23'),
(496, 'posr-20231222-055507', 42, 10, 11, 1, 8, 1, 10, 0, 0, 3100, 3100, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 3100, NULL, NULL, '2023-12-22 05:55:07', '2023-12-22 05:55:07'),
(497, 'posr-20231222-064837', 42, 10, 11, 1, 8, 11, 51, 0, 0, 17580, 17580, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 17580, NULL, NULL, '2023-12-22 18:48:37', '2023-12-22 18:48:37'),
(498, 'posr-20231225-062207', 42, 10, 11, 1, 8, 13, 76, 0, 0, 21525, 21525, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 21525, NULL, NULL, '2023-12-25 06:22:07', '2023-12-25 06:22:07'),
(499, 'posr-20231225-045132', 42, 10, 11, 1, 8, 6, 331, 0, 0, 101830, 101830, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 101830, NULL, NULL, '2023-12-25 16:51:32', '2023-12-25 16:51:32'),
(500, 'posr-20231226-045304', 42, 10, 11, 1, 8, 12, 46, 0, 0, 13720, 13720, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 13720, NULL, NULL, '2023-12-26 16:53:04', '2023-12-26 16:53:04'),
(501, 'posr-20231226-045626', 42, 10, 11, 1, 8, 8, 30, 0, 0, 8410, 8410, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 8410, NULL, NULL, '2023-12-26 16:56:26', '2023-12-26 16:56:26'),
(502, 'posr-20231226-050343', 42, 10, 11, 1, 8, 3, 80, 0, 0, 23500, 23500, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 23500, NULL, NULL, '2023-12-26 17:03:43', '2023-12-26 17:03:43'),
(503, 'posr-20231228-061321', 42, 10, 11, 1, 8, 9, 38, 0, 0, 10885, 10885, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 10885, NULL, NULL, '2023-12-28 06:13:21', '2023-12-28 06:13:21'),
(504, 'posr-20231229-055918', 42, 10, 11, 1, 8, 8, 74, 0, 0, 20400, 20400, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 20400, NULL, NULL, '2023-12-29 05:59:18', '2023-12-29 05:59:18'),
(505, 'posr-20240102-060355', 42, 10, 11, 1, 8, 11, 716, 0, 0, 212125, 212125, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 212125, NULL, NULL, '2024-01-02 06:03:55', '2024-01-02 06:03:55'),
(506, 'posr-20240102-062038', 42, 10, 11, 1, 8, 4, 220, 0, 0, 66150, 66150, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 66150, NULL, NULL, '2024-01-02 06:20:38', '2024-01-02 06:20:38'),
(507, 'posr-20240102-062850', 42, 10, 11, 1, 8, 10, 58, 0, 0, 16345, 16345, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 16345, NULL, NULL, '2024-01-02 06:28:50', '2024-01-02 06:28:50'),
(508, 'posr-20240114-125911', 42, 10, 11, 1, 8, 10, 58, 0, 0, 16345, 16345, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 16345, NULL, NULL, '2024-01-14 12:59:11', '2024-01-14 12:59:11'),
(509, 'posr-20240115-053603', 42, 10, 11, 1, 8, 1, 1, 0, 0, 250, 250, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2024-01-15 05:36:03', '2024-01-15 05:36:03'),
(510, 'posr-20240115-060056', 42, 10, 11, 1, 8, 1, 2, 0, 0, 620, 620, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 620, NULL, NULL, '2024-01-15 06:00:56', '2024-01-15 06:00:56'),
(511, 'posr-20240115-060814', 42, 10, 11, 1, 8, 1, 5, 0, 0, 1300, 1300, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1300, NULL, NULL, '2024-01-15 06:08:14', '2024-01-15 06:08:14'),
(512, 'posr-20240116-102524', 42, 10, 11, 1, 8, 4, 32, 0, 0, 9095, 9095, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 9095, NULL, NULL, '2024-01-16 10:25:24', '2024-01-16 10:25:24'),
(513, 'posr-20240117-060959', 42, 10, 11, 1, 8, 7, 10, 0, 0, 2780, 2780, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2780, NULL, NULL, '2024-01-17 06:09:59', '2024-01-17 06:09:59'),
(514, 'posr-20240117-061214', 42, 10, 11, 1, 8, 1, 1, 0, 0, 580, 580, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 580, NULL, NULL, '2024-01-17 06:12:14', '2024-01-17 06:12:14'),
(515, 'posr-20240117-062159', 42, 10, 11, 1, 8, 1, 1, 0, 0, 310, 310, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 310, NULL, NULL, '2024-01-17 06:21:59', '2024-01-17 06:21:59'),
(516, 'posr-20240117-063711', 42, 10, 11, 1, 8, 6, 9, 0, 0, 2580, 2580, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2580, NULL, NULL, '2024-01-17 06:37:11', '2024-01-17 06:37:11'),
(517, 'posr-20240117-064258', 42, 10, 11, 1, 8, 1, 3, 0, 0, 870, 870, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 870, NULL, NULL, '2024-01-17 06:42:58', '2024-01-17 06:42:58'),
(518, 'posr-20240117-070439', 42, 10, 11, 1, 8, 1, 1, 0, 0, 290, 290, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 290, NULL, NULL, '2024-01-17 07:04:39', '2024-01-17 07:04:39'),
(519, 'posr-20240117-081543', 42, 10, 11, 1, 8, 1, 1, 0, 0, 300, 300, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 300, NULL, NULL, '2024-01-17 08:15:43', '2024-01-17 08:15:43'),
(520, 'posr-20240117-083439', 42, 10, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-17 08:34:39', '2024-01-17 08:34:39'),
(521, 'posr-20240117-083847', 42, 10, 11, 1, 8, 2, 2, 0, 0, 530, 530, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 530, NULL, NULL, '2024-01-17 08:38:47', '2024-01-17 08:38:47'),
(522, 'posr-20240117-084350', 42, 10, 11, 1, 8, 1, 2, 0, 0, 500, 500, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 500, NULL, NULL, '2024-01-17 08:43:50', '2024-01-17 08:43:50'),
(523, 'posr-20240117-105440', 42, 10, 11, 1, 8, 1, 2, 0, 0, 500, 500, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 500, NULL, NULL, '2024-01-17 10:54:40', '2024-01-17 10:54:40'),
(524, 'posr-20240117-111950', 42, 10, 11, 1, 8, 1, 4, 0, 0, 1120, 1120, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1120, NULL, NULL, '2024-01-17 11:19:50', '2024-01-17 11:19:50'),
(525, 'posr-20240117-032646', 42, 10, 11, 1, 8, 2, 3, 0, 0, 900, 900, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 900, NULL, NULL, '2024-01-17 15:26:46', '2024-01-17 15:26:46'),
(526, 'posr-20240117-034159', 42, 10, 11, 1, 8, 2, 2, 0, 0, 550, 550, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 550, NULL, NULL, '2024-01-17 15:41:59', '2024-01-17 15:41:59'),
(527, 'posr-20240117-034219', 42, 10, 11, 1, 8, 1, 2, 0, 0, 580, 580, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 580, NULL, NULL, '2024-01-17 15:42:19', '2024-01-17 15:42:19'),
(528, 'posr-20240117-045022', 42, 10, 11, 1, 8, 1, 1, 0, 0, 250, 250, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2024-01-17 16:50:22', '2024-01-17 16:50:22'),
(529, 'posr-20240117-051213', 42, 10, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-17 17:12:13', '2024-01-17 17:12:13'),
(530, 'posr-20240117-051623', 42, 10, 11, 1, 8, 1, 1, 0, 0, 260, 260, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 260, NULL, NULL, '2024-01-17 17:16:23', '2024-01-17 17:16:23'),
(531, 'posr-20240117-052650', 42, 10, 11, 1, 8, 2, 2, 0, 0, 540, 540, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 540, NULL, NULL, '2024-01-17 17:26:50', '2024-01-17 17:26:50'),
(532, 'posr-20240118-052441', 42, 10, 11, 1, 8, 2, 2, 0, 0, 550, 550, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 550, NULL, NULL, '2024-01-18 05:24:41', '2024-01-18 05:24:41'),
(533, 'posr-20240118-052912', 42, 10, 11, 1, 8, 2, 2, 0, 0, 580, 580, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 580, NULL, NULL, '2024-01-18 05:29:12', '2024-01-18 05:29:12'),
(534, 'posr-20240118-055438', 42, 10, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-18 05:54:38', '2024-01-18 05:54:38'),
(535, 'posr-20240118-061456', 42, 10, 11, 1, 8, 1, 2, 0, 0, 500, 500, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 500, NULL, NULL, '2024-01-18 06:14:56', '2024-01-18 06:14:56'),
(536, 'posr-20240118-064011', 42, 10, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-18 06:40:11', '2024-01-18 06:40:11'),
(537, 'posr-20240118-071556', 42, 10, 11, 1, 8, 1, 1, 0, 0, 300, 300, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 300, NULL, NULL, '2024-01-18 07:15:56', '2024-01-18 07:15:56'),
(538, 'posr-20240118-074322', 42, 10, 11, 1, 8, 1, 2, 0, 0, 500, 500, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 500, NULL, NULL, '2024-01-18 07:43:22', '2024-01-18 07:43:22'),
(539, 'posr-20240118-090104', 42, 10, 11, 1, 8, 1, 2, 0, 0, 560, 560, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 560, NULL, NULL, '2024-01-18 09:01:04', '2024-01-18 09:01:04'),
(540, 'posr-20240118-095232', 42, 10, 11, 1, 8, 1, 10, 0, 0, 2500, 2500, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2024-01-18 09:52:32', '2024-01-18 09:52:32'),
(541, 'posr-20240118-101725', 42, 10, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-18 10:17:25', '2024-01-18 10:17:25'),
(542, 'posr-20240118-114237', 42, 10, 11, 1, 8, 1, 3, 0, 0, 780, 780, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 780, NULL, NULL, '2024-01-18 11:42:37', '2024-01-18 11:42:37'),
(543, 'posr-20240118-114401', 42, 10, 11, 1, 8, 2, 7, 0, 0, 2200, 2200, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2200, NULL, NULL, '2024-01-18 11:44:01', '2024-01-18 11:44:01'),
(544, 'posr-20240118-121239', 42, 10, 11, 1, 8, 4, 5, 0, 0, 1380, 1380, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1380, NULL, NULL, '2024-01-18 12:12:39', '2024-01-18 12:12:39'),
(545, 'posr-20240118-015709', 42, 10, 11, 1, 8, 1, 1, 0, 0, 250, 250, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2024-01-18 13:57:09', '2024-01-18 13:57:09'),
(546, 'posr-20240118-020634', 42, 10, 11, 1, 8, 1, 2, 0, 0, 580, 580, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 580, NULL, NULL, '2024-01-18 14:06:34', '2024-01-18 14:06:34'),
(547, 'posr-20240118-022318', 42, 10, 11, 1, 8, 3, 9, 0, 0, 2760, 2760, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2760, NULL, NULL, '2024-01-18 14:23:18', '2024-01-18 14:23:18'),
(548, 'posr-20240118-024815', 42, 10, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-18 14:48:15', '2024-01-18 14:48:15'),
(549, 'posr-20240118-043708', 42, 10, 11, 1, 8, 2, 3, 0, 0, 860, 860, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 860, NULL, NULL, '2024-01-18 16:37:08', '2024-01-18 16:37:08'),
(550, 'posr-20240118-055910', 42, 10, 11, 1, 8, 2, 2, 0, 0, 570, 570, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 570, NULL, NULL, '2024-01-18 17:59:10', '2024-01-18 17:59:10'),
(551, 'posr-20240119-071426', 42, 10, 11, 1, 8, 1, 1, 0, 0, 320, 320, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 320, NULL, NULL, '2024-01-19 07:14:26', '2024-01-19 07:14:26'),
(552, 'posr-20240119-071521', 42, 10, 11, 1, 8, 1, 5, 0, 0, 1400, 1400, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1400, NULL, NULL, '2024-01-19 07:15:21', '2024-01-19 07:15:21'),
(553, 'posr-20240119-080727', 42, 10, 11, 1, 8, 1, 3, 0, 0, 750, 750, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 750, NULL, NULL, '2024-01-19 08:07:27', '2024-01-19 08:07:27'),
(554, 'posr-20240119-093253', 42, 10, 11, 1, 8, 1, 5, 0, 0, 1550, 1550, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1550, NULL, NULL, '2024-01-19 09:32:53', '2024-01-19 09:32:53'),
(555, 'posr-20240119-094106', 42, 10, 11, 1, 8, 1, 4, 0, 0, 1120, 1120, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1120, NULL, NULL, '2024-01-19 09:41:06', '2024-01-19 09:41:06'),
(556, 'posr-20240119-100537', 42, 10, 11, 1, 8, 1, 5, 0, 0, 1400, 1400, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1400, NULL, NULL, '2024-01-19 10:05:37', '2024-01-19 10:05:37'),
(557, 'posr-20240119-100958', 42, 10, 11, 1, 8, 1, 2, 0, 0, 600, 600, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 600, NULL, NULL, '2024-01-19 10:09:58', '2024-01-19 10:09:58'),
(558, 'posr-20240119-104553', 42, 10, 11, 1, 8, 1, 2, 0, 0, 380, 380, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 380, NULL, NULL, '2024-01-19 10:45:53', '2024-01-19 10:45:53'),
(559, 'posr-20240119-104754', 42, 10, 11, 1, 8, 2, 2, 0, 0, 450, 450, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 450, NULL, NULL, '2024-01-19 10:47:54', '2024-01-19 10:47:54'),
(560, 'posr-20240119-105445', 42, 10, 11, 1, 8, 1, 1, 0, 0, 290, 290, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 290, NULL, NULL, '2024-01-19 10:54:45', '2024-01-19 10:54:45'),
(561, 'posr-20240119-110135', 42, 10, 11, 1, 8, 1, 1, 0, 0, 310, 310, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 310, NULL, NULL, '2024-01-19 11:01:35', '2024-01-19 11:01:35'),
(562, 'posr-20240119-112659', 42, 10, 11, 1, 8, 1, 1, 0, 0, 190, 190, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 190, NULL, NULL, '2024-01-19 11:26:59', '2024-01-19 11:26:59'),
(563, 'posr-20240119-121714', 42, 10, 11, 1, 8, 1, 1, 0, 0, 190, 190, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 190, NULL, NULL, '2024-01-19 12:17:14', '2024-01-19 12:17:14'),
(564, 'posr-20240119-032218', 42, 10, 11, 1, 8, 2, 2, 0, 0, 550, 550, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 550, NULL, NULL, '2024-01-19 15:22:18', '2024-01-19 15:22:18'),
(565, 'posr-20240120-052830', 42, 10, 11, 1, 8, 6, 11, 0, 0, 2860, 2860, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2860, NULL, NULL, '2024-01-20 05:28:30', '2024-01-20 05:28:30'),
(566, 'posr-20240120-053436', 42, 10, 11, 1, 8, 2, 2, 0, 0, 470, 470, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 470, NULL, NULL, '2024-01-20 05:34:36', '2024-01-20 05:34:36'),
(567, 'posr-20240120-053541', 42, 10, 11, 1, 8, 2, 2, 0, 0, 550, 550, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 550, NULL, NULL, '2024-01-20 05:35:41', '2024-01-20 05:35:41'),
(568, 'posr-20240120-055230', 42, 10, 11, 1, 8, 5, 7, 0, 0, 1770, 1770, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1770, NULL, NULL, '2024-01-20 05:52:30', '2024-01-20 05:52:30'),
(569, 'posr-20240120-061249', 42, 10, 11, 1, 8, 2, 2, 0, 0, 460, 460, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 460, NULL, NULL, '2024-01-20 06:12:49', '2024-01-20 06:12:49'),
(570, 'posr-20240120-061737', 42, 10, 11, 1, 8, 2, 3, 0, 0, 780, 780, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 780, NULL, NULL, '2024-01-20 06:17:37', '2024-01-20 06:17:37'),
(571, 'posr-20240120-062404', 42, 10, 11, 1, 8, 1, 2, 0, 0, 380, 380, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 380, NULL, NULL, '2024-01-20 06:24:04', '2024-01-20 06:24:04'),
(572, 'posr-20240120-065132', 42, 10, 11, 1, 8, 1, 2, 0, 0, 500, 500, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 500, NULL, NULL, '2024-01-20 06:51:32', '2024-01-20 06:51:32'),
(573, 'posr-20240120-065313', 42, 10, 11, 1, 8, 1, 2, 0, 0, 500, 500, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 500, NULL, NULL, '2024-01-20 06:53:13', '2024-01-20 06:53:13'),
(574, 'posr-20240120-072426', 42, 10, 11, 1, 8, 1, 1, 0, 0, 290, 290, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 290, NULL, NULL, '2024-01-20 07:24:26', '2024-01-20 07:24:26'),
(575, 'posr-20240120-075353', 42, 10, 11, 1, 8, 1, 2, 0, 0, 640, 640, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 640, NULL, NULL, '2024-01-20 07:53:53', '2024-01-20 07:53:53'),
(576, 'posr-20240120-081921', 42, 10, 11, 1, 8, 1, 1, 0, 0, 250, 250, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2024-01-20 08:19:21', '2024-01-20 08:19:21'),
(577, 'posr-20240120-082144', 42, 10, 11, 1, 8, 1, 4, 0, 0, 1280, 1280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1280, NULL, NULL, '2024-01-20 08:21:44', '2024-01-20 08:21:44'),
(578, 'posr-20240120-083506', 42, 10, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-20 08:35:06', '2024-01-20 08:35:06'),
(579, 'posr-20240120-084537', 42, 10, 11, 1, 8, 2, 2, 0, 0, 590, 590, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 590, NULL, NULL, '2024-01-20 08:45:37', '2024-01-20 08:45:37'),
(580, 'posr-20240120-103444', 42, 10, 11, 1, 8, 1, 1, 0, 0, 190, 190, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 190, NULL, NULL, '2024-01-20 10:34:44', '2024-01-20 10:34:44'),
(581, 'posr-20240120-103952', 42, 10, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-20 10:39:52', '2024-01-20 10:39:52'),
(582, 'posr-20240120-104751', 42, 10, 11, 1, 8, 1, 16, 0, 0, 4480, 4480, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 4480, NULL, NULL, '2024-01-20 10:47:51', '2024-01-20 10:47:51'),
(583, 'posr-20240120-111218', 42, 10, 11, 1, 8, 1, 1, 0, 0, 250, 250, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2024-01-20 11:12:18', '2024-01-20 11:12:18'),
(584, 'posr-20240120-115141', 42, 10, 11, 1, 8, 1, 2, 0, 0, 640, 640, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 640, NULL, NULL, '2024-01-20 11:51:41', '2024-01-20 11:51:41'),
(585, 'posr-20240120-122906', 42, 10, 11, 1, 8, 1, 1, 0, 0, 250, 250, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2024-01-20 12:29:06', '2024-01-20 12:29:06'),
(586, 'posr-20240120-125547', 42, 10, 11, 1, 8, 1, 1, 0, 0, 190, 190, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 190, NULL, NULL, '2024-01-20 12:55:47', '2024-01-20 12:55:47'),
(587, 'posr-20240120-022456', 42, 10, 11, 1, 8, 4, 8, 0, 0, 2120, 2120, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2120, NULL, NULL, '2024-01-20 14:24:56', '2024-01-20 14:24:56'),
(588, 'posr-20240120-025859', 42, 10, 11, 1, 8, 2, 2, 0, 0, 460, 460, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 460, NULL, NULL, '2024-01-20 14:58:59', '2024-01-20 14:58:59'),
(589, 'posr-20240120-025941', 42, 10, 11, 1, 8, 1, 5, 0, 0, 1600, 1600, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1600, NULL, NULL, '2024-01-20 14:59:41', '2024-01-20 14:59:41'),
(590, 'posr-20240120-035411', 42, 10, 11, 1, 8, 1, 1, 0, 0, 320, 320, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 320, NULL, NULL, '2024-01-20 15:54:11', '2024-01-20 15:54:11'),
(591, 'posr-20240120-040004', 42, 10, 11, 1, 8, 1, 1, 0, 0, 250, 250, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2024-01-20 16:00:04', '2024-01-20 16:00:04'),
(592, 'posr-20240120-052835', 42, 10, 11, 1, 8, 4, 5, 0, 0, 1370, 1370, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1370, NULL, NULL, '2024-01-20 17:28:35', '2024-01-20 17:28:35'),
(593, 'posr-20240122-053439', 42, 10, 11, 1, 8, 6, 9, 0, 0, 2230, 2230, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2230, NULL, NULL, '2024-01-22 05:34:39', '2024-01-22 05:34:39'),
(594, 'posr-20240122-053852', 42, 10, 11, 1, 8, 1, 2, 0, 0, 500, 500, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 500, NULL, NULL, '2024-01-22 05:38:52', '2024-01-22 05:38:52'),
(595, 'posr-20240122-055325', 42, 10, 11, 1, 8, 4, 12, 0, 0, 3530, 3530, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 3530, NULL, NULL, '2024-01-22 05:53:25', '2024-01-22 05:53:25'),
(596, 'posr-20240122-055442', 42, 10, 11, 1, 8, 1, 1, 0, 0, 320, 320, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 320, NULL, NULL, '2024-01-22 05:54:42', '2024-01-22 05:54:42'),
(597, 'posr-20240122-060317', 42, 10, 11, 1, 8, 1, 1, 0, 0, 320, 320, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 320, NULL, NULL, '2024-01-22 06:03:17', '2024-01-22 06:03:17'),
(598, 'posr-20240122-062327', 42, 10, 11, 1, 8, 3, 3, 0, 0, 870, 870, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 870, NULL, NULL, '2024-01-22 06:23:27', '2024-01-22 06:23:27'),
(599, 'posr-20240122-063844', 42, 10, 11, 1, 8, 1, 2, 0, 0, 620, 620, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 620, NULL, NULL, '2024-01-22 06:38:44', '2024-01-22 06:38:44'),
(600, 'posr-20240122-065302', 42, 10, 11, 1, 8, 2, 3, 0, 0, 820, 820, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 820, NULL, NULL, '2024-01-22 06:53:02', '2024-01-22 06:53:02'),
(601, 'posr-20240122-065506', 42, 10, 11, 1, 8, 1, 4, 0, 0, 760, 760, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 760, NULL, NULL, '2024-01-22 06:55:06', '2024-01-22 06:55:06'),
(602, 'posr-20240122-071903', 42, 10, 11, 1, 8, 1, 1, 0, 0, 320, 320, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 320, NULL, NULL, '2024-01-22 07:19:03', '2024-01-22 07:19:03'),
(603, 'posr-20240122-075114', 42, 10, 11, 1, 8, 2, 6, 0, 0, 1880, 1880, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1880, NULL, NULL, '2024-01-22 07:51:14', '2024-01-22 07:51:14'),
(604, 'posr-20240122-075353', 42, 10, 11, 1, 8, 2, 2, 0, 0, 610, 610, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 610, NULL, NULL, '2024-01-22 07:53:53', '2024-01-22 07:53:53'),
(605, 'posr-20240122-082241', 42, 10, 11, 1, 8, 1, 4, 0, 0, 1120, 1120, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1120, NULL, NULL, '2024-01-22 08:22:41', '2024-01-22 08:22:41'),
(606, 'posr-20240122-095524', 42, 10, 11, 1, 8, 1, 2, 0, 0, 380, 380, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 380, NULL, NULL, '2024-01-22 09:55:24', '2024-01-22 09:55:24'),
(607, 'posr-20240122-103436', 42, 10, 11, 1, 8, 5, 5, 0, 0, 1370, 1370, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1370, NULL, NULL, '2024-01-22 10:34:36', '2024-01-22 10:34:36'),
(608, 'posr-20240122-103513', 42, 10, 11, 1, 8, 1, 1, 0, 0, 320, 320, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 320, NULL, NULL, '2024-01-22 10:35:13', '2024-01-22 10:35:13'),
(609, 'posr-20240122-104924', 42, 10, 11, 1, 8, 1, 1, 0, 0, 320, 320, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 320, NULL, NULL, '2024-01-22 10:49:24', '2024-01-22 10:49:24'),
(610, 'posr-20240122-113106', 42, 10, 11, 1, 8, 2, 2, 0, 0, 600, 600, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 600, NULL, NULL, '2024-01-22 11:31:06', '2024-01-22 11:31:06'),
(611, 'posr-20240122-114013', 42, 10, 11, 1, 8, 1, 7, 0, 0, 1960, 1960, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1960, NULL, NULL, '2024-01-22 11:40:13', '2024-01-22 11:40:13'),
(612, 'posr-20240122-120238', 42, 10, 11, 1, 8, 1, 1, 0, 0, 250, 250, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2024-01-22 12:02:38', '2024-01-22 12:02:38'),
(613, 'posr-20240122-120725', 42, 10, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-22 12:07:25', '2024-01-22 12:07:25'),
(614, 'posr-20240122-124823', 42, 10, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-22 12:48:23', '2024-01-22 12:48:23'),
(615, 'd', 42, 10, 11, 1, 8, 5, 13, 0, 0, 3530, 3530, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 3530, NULL, NULL, '2024-01-22 14:03:44', '2024-01-22 14:03:44'),
(616, 'posr-20240122-030348', 42, 10, 11, 1, 8, 1, 1, 0, 0, 190, 190, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 190, NULL, NULL, '2024-01-22 15:03:48', '2024-01-22 15:03:48'),
(617, 'posr-20240122-042205', 42, 10, 11, 1, 8, 1, 1, 0, 0, 190, 190, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 190, NULL, NULL, '2024-01-22 16:22:05', '2024-01-22 16:22:05'),
(618, 'posr-20240122-054916', 42, 10, 11, 1, 8, 5, 6, 0, 0, 1720, 1720, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1720, NULL, NULL, '2024-01-22 17:49:16', '2024-01-22 17:49:16'),
(619, 'posr-20240123-054059', 42, 10, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-23 05:40:59', '2024-01-23 05:40:59'),
(620, 'posr-20240123-062917', 42, 10, 11, 1, 8, 2, 2, 0, 0, 510, 510, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 510, NULL, NULL, '2024-01-23 06:29:17', '2024-01-23 06:29:17'),
(621, 'posr-20240123-065457', 42, 10, 11, 1, 8, 1, 4, 0, 0, 760, 760, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 760, NULL, NULL, '2024-01-23 06:54:57', '2024-01-23 06:54:57'),
(622, 'posr-20240123-073132', 42, 10, 11, 1, 8, 1, 2, 0, 0, 500, 500, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 500, NULL, NULL, '2024-01-23 07:31:32', '2024-01-23 07:31:32'),
(623, 'posr-20240123-073257', 42, 10, 11, 1, 8, 1, 1, 0, 0, 300, 300, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 300, NULL, NULL, '2024-01-23 07:32:57', '2024-01-23 07:32:57'),
(624, 'posr-20240123-075820', 42, 10, 11, 1, 8, 1, 2, 0, 0, 560, 560, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 560, NULL, NULL, '2024-01-23 07:58:20', '2024-01-23 07:58:20'),
(625, 'posr-20240123-080151', 42, 10, 11, 1, 8, 2, 2, 0, 0, 600, 600, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 600, NULL, NULL, '2024-01-23 08:01:51', '2024-01-23 08:01:51'),
(626, 'posr-20240123-085503', 42, 10, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-23 08:55:03', '2024-01-23 08:55:03'),
(627, 'posr-20240123-102124', 42, 10, 11, 1, 8, 4, 4, 0, 0, 1060, 1060, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1060, NULL, NULL, '2024-01-23 10:21:24', '2024-01-23 10:21:24'),
(628, 'posr-20240123-104642', 42, 10, 11, 1, 8, 1, 1, 0, 0, 300, 300, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 300, NULL, NULL, '2024-01-23 10:46:42', '2024-01-23 10:46:42'),
(629, 'posr-20240123-110229', 42, 10, 11, 1, 8, 1, 3, 0, 0, 750, 750, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 750, NULL, NULL, '2024-01-23 11:02:29', '2024-01-23 11:02:29'),
(630, 'posr-20240123-123656', 42, 10, 11, 1, 8, 1, 1, 0, 0, 190, 190, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 190, NULL, NULL, '2024-01-23 12:36:56', '2024-01-23 12:36:56'),
(631, 'posr-20240123-014057', 42, 10, 11, 1, 8, 1, 10, 0, 0, 1900, 1900, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1900, NULL, NULL, '2024-01-23 13:40:57', '2024-01-23 13:40:57'),
(632, 'posr-20240123-030253', 42, 10, 11, 1, 8, 1, 1, 0, 0, 190, 190, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 190, NULL, NULL, '2024-01-23 15:02:53', '2024-01-23 15:02:53'),
(633, 'posr-20240123-034458', 42, 10, 11, 1, 8, 2, 2, 0, 0, 510, 510, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 510, NULL, NULL, '2024-01-23 15:44:58', '2024-01-23 15:44:58'),
(634, 'posr-20240123-041003', 42, 10, 11, 1, 8, 3, 3, 0, 0, 880, 880, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 880, NULL, NULL, '2024-01-23 16:10:03', '2024-01-23 16:10:03'),
(635, 'posr-20240123-044806', 42, 10, 11, 1, 8, 2, 2, 0, 0, 580, 580, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 580, NULL, NULL, '2024-01-23 16:48:06', '2024-01-23 16:48:06'),
(636, 'posr-20240124-054334', 42, 10, 11, 1, 8, 1, 4, 0, 0, 1120, 1120, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1120, NULL, NULL, '2024-01-24 05:43:34', '2024-01-24 05:43:34'),
(637, 'posr-20240124-055035', 42, 10, 11, 1, 8, 2, 2, 0, 0, 580, 580, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 580, NULL, NULL, '2024-01-24 05:50:35', '2024-01-24 05:50:35'),
(638, 'posr-20240124-065239', 42, 10, 11, 1, 8, 1, 2, 0, 0, 620, 620, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 620, NULL, NULL, '2024-01-24 06:52:39', '2024-01-24 06:52:39'),
(639, 'posr-20240124-084916', 42, 10, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-24 08:49:16', '2024-01-24 08:49:16'),
(640, 'posr-20240124-085644', 42, 10, 11, 1, 8, 1, 1, 0, 0, 290, 290, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 290, NULL, NULL, '2024-01-24 08:56:44', '2024-01-24 08:56:44'),
(641, 'posr-20240124-092526', 42, 10, 11, 1, 8, 5, 66, 0, 0, 18780, 18780, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 18780, NULL, NULL, '2024-01-24 09:25:26', '2024-01-24 09:25:26'),
(642, 'posr-20240124-092640', 42, 10, 11, 1, 8, 1, 1, 0, 0, 250, 250, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2024-01-24 09:26:40', '2024-01-24 09:26:40'),
(643, 'posr-20240124-101227', 42, 10, 11, 1, 8, 2, 2, 0, 0, 610, 610, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 610, NULL, NULL, '2024-01-24 10:12:27', '2024-01-24 10:12:27'),
(644, 'posr-20240124-102004', 42, 10, 11, 1, 8, 3, 4, 0, 0, 940, 940, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 940, NULL, NULL, '2024-01-24 10:20:04', '2024-01-24 10:20:04'),
(645, 'posr-20240124-102350', 42, 10, 11, 1, 8, 1, 1, 0, 0, 190, 190, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 190, NULL, NULL, '2024-01-24 10:23:50', '2024-01-24 10:23:50'),
(646, 'posr-20240124-102947', 42, 10, 11, 1, 8, 1, 2, 0, 0, 740, 740, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 740, NULL, NULL, '2024-01-24 10:29:47', '2024-01-24 10:29:47'),
(647, 'posr-20240124-125400', 42, 10, 11, 1, 8, 5, 5, 0, 0, 1340, 1340, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1340, NULL, NULL, '2024-01-24 12:54:00', '2024-01-24 12:54:00'),
(648, 'posr-20240124-012432', 42, 10, 11, 1, 8, 1, 5, 0, 0, 1300, 1300, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1300, NULL, NULL, '2024-01-24 13:24:32', '2024-01-24 13:24:32'),
(649, 'posr-20240124-033539', 42, 10, 11, 1, 8, 1, 1, 0, 0, 270, 270, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 270, NULL, NULL, '2024-01-24 15:35:39', '2024-01-24 15:35:39'),
(650, 'posr-20240124-033713', 42, 10, 11, 1, 8, 2, 2, 0, 0, 490, 490, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 490, NULL, NULL, '2024-01-24 15:37:13', '2024-01-24 15:37:13'),
(651, 'posr-20240124-041622', 42, NULL, 11, 1, 8, 3, 3, 0, 0, 850, 850, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 850, NULL, NULL, '2024-01-24 16:16:22', '2024-01-24 16:16:22'),
(652, 'posr-20240124-041653', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 290, 290, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 290, NULL, NULL, '2024-01-24 16:16:53', '2024-01-24 16:16:53'),
(653, 'posr-20240124-043547', 42, NULL, 11, 1, 8, 1, 3, 0, 0, 780, 780, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 780, NULL, NULL, '2024-01-24 16:35:47', '2024-01-24 16:35:47'),
(654, 'posr-20240124-045759', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 250, 250, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2024-01-24 16:57:59', '2024-01-24 16:57:59'),
(655, 'posr-20240124-054621', 42, NULL, 11, 1, 8, 1, 5, 0, 0, 1600, 1600, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1600, NULL, NULL, '2024-01-24 17:46:21', '2024-01-24 17:46:21'),
(656, 'posr-20240125-054255', 42, NULL, 11, 1, 8, 1, 2, 0, 0, 500, 500, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 500, NULL, NULL, '2024-01-25 05:42:55', '2024-01-25 05:42:55'),
(657, 'posr-20240125-054608', 42, NULL, 11, 1, 8, 4, 8, 0, 0, 2000, 2000, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2000, NULL, NULL, '2024-01-25 05:46:08', '2024-01-25 05:46:08'),
(658, 'posr-20240125-060517', 42, NULL, 11, 1, 8, 3, 13, 0, 0, 3760, 3760, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 3760, NULL, NULL, '2024-01-25 06:05:17', '2024-01-25 06:05:17'),
(659, 'posr-20240125-060647', 42, NULL, 11, 1, 8, 1, 5, 0, 0, 1600, 1600, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1600, NULL, NULL, '2024-01-25 06:06:47', '2024-01-25 06:06:47'),
(660, 'posr-20240125-061358', 42, NULL, 11, 1, 8, 4, 6, 0, 0, 1760, 1760, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1760, NULL, NULL, '2024-01-25 06:13:58', '2024-01-25 06:13:58'),
(661, 'posr-20240125-064935', 42, NULL, 11, 1, 8, 3, 6, 0, 0, 1960, 1960, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1960, NULL, NULL, '2024-01-25 06:49:35', '2024-01-25 06:49:35'),
(662, 'posr-20240125-065727', 42, NULL, 11, 1, 8, 3, 11, 0, 0, 2500, 2500, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2024-01-25 06:57:27', '2024-01-25 06:57:27'),
(663, 'posr-20240125-065830', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-25 06:58:30', '2024-01-25 06:58:30'),
(664, 'posr-20240125-071858', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 260, 260, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 260, NULL, NULL, '2024-01-25 07:18:58', '2024-01-25 07:18:58'),
(665, 'posr-20240125-091408', 42, NULL, 11, 1, 8, 1, 5, 0, 0, 1600, 1600, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1600, NULL, NULL, '2024-01-25 09:14:08', '2024-01-25 09:14:08'),
(666, 'posr-20240125-093849', 42, NULL, 11, 1, 8, 1, 5, 0, 0, 1400, 1400, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1400, NULL, NULL, '2024-01-25 09:38:49', '2024-01-25 09:38:49'),
(667, 'posr-20240125-105519', 42, NULL, 11, 1, 8, 1, 10, 0, 0, 2800, 2800, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2800, NULL, NULL, '2024-01-25 10:55:19', '2024-01-25 10:55:19'),
(668, 'posr-20240125-105650', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 250, 250, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2024-01-25 10:56:50', '2024-01-25 10:56:50'),
(669, 'posr-20240125-111147', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 290, 290, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 290, NULL, NULL, '2024-01-25 11:11:47', '2024-01-25 11:11:47'),
(670, 'posr-20240125-112429', 42, NULL, 11, 1, 8, 1, 5, 0, 0, 1600, 1600, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1600, NULL, NULL, '2024-01-25 11:24:29', '2024-01-25 11:24:29'),
(671, 'posr-20240125-113730', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 250, 250, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2024-01-25 11:37:30', '2024-01-25 11:37:30'),
(672, 'posr-20240125-113750', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-25 11:37:50', '2024-01-25 11:37:50'),
(673, 'posr-20240125-034303', 42, NULL, 11, 1, 8, 1, 2, 0, 0, 380, 380, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 380, NULL, NULL, '2024-01-25 15:43:03', '2024-01-25 15:43:03'),
(674, 'posr-20240125-034339', 42, NULL, 11, 1, 8, 2, 2, 0, 0, 550, 550, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 550, NULL, NULL, '2024-01-25 15:43:39', '2024-01-25 15:43:39'),
(675, 'posr-20240125-065935', 42, NULL, 11, 1, 8, 4, 5, 0, 0, 1410, 1410, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1410, NULL, NULL, '2024-01-25 18:59:35', '2024-01-25 18:59:35'),
(676, 'posr-20240126-061145', 42, NULL, 11, 1, 8, 4, 6, 0, 0, 1650, 1650, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1650, NULL, NULL, '2024-01-26 06:11:45', '2024-01-26 06:11:45'),
(677, 'posr-20240126-062438', 42, NULL, 11, 1, 8, 2, 7, 0, 0, 1960, 1960, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1960, NULL, NULL, '2024-01-26 06:24:38', '2024-01-26 06:24:38'),
(678, 'posr-20240126-082344', 42, NULL, 11, 1, 8, 1, 12, 0, 0, 3000, 3000, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 3000, NULL, NULL, '2024-01-26 08:23:44', '2024-01-26 08:23:44'),
(679, 'posr-20240126-082445', 42, NULL, 11, 1, 8, 2, 10, 0, 0, 3000, 3000, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 3000, NULL, NULL, '2024-01-26 08:24:45', '2024-01-26 08:24:45'),
(680, 'posr-20240126-092239', 42, NULL, 11, 1, 8, 4, 21, 0, 0, 5900, 5900, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 5900, NULL, NULL, '2024-01-26 09:22:39', '2024-01-26 09:22:39'),
(681, 'posr-20240126-092717', 42, NULL, 11, 1, 8, 8, 15, 0, 0, 4360, 4360, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 4360, NULL, NULL, '2024-01-26 09:27:17', '2024-01-26 09:27:17'),
(682, 'posr-20240126-093410', 42, NULL, 11, 1, 8, 2, 3, 0, 0, 630, 630, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 630, NULL, NULL, '2024-01-26 09:34:10', '2024-01-26 09:34:10'),
(683, 'posr-20240126-103724', 42, NULL, 11, 1, 8, 2, 2, 0, 0, 950, 950, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 950, NULL, NULL, '2024-01-26 10:37:24', '2024-01-26 10:37:24'),
(684, 'posr-20240126-110627', 42, NULL, 11, 1, 8, 3, 3, 0, 0, 760, 760, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 760, NULL, NULL, '2024-01-26 11:06:27', '2024-01-26 11:06:27'),
(685, 'posr-20240126-110739', 42, NULL, 11, 1, 8, 1, 4, 0, 0, 1120, 1120, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1120, NULL, NULL, '2024-01-26 11:07:39', '2024-01-26 11:07:39'),
(686, 'posr-20240126-113536', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 320, 320, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 320, NULL, NULL, '2024-01-26 11:35:36', '2024-01-26 11:35:36'),
(687, 'posr-20240126-015841', 42, NULL, 11, 1, 8, 1, 5, 0, 0, 1600, 1600, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1600, NULL, NULL, '2024-01-26 13:58:41', '2024-01-26 13:58:41'),
(688, 'posr-20240126-022023', 42, NULL, 11, 1, 8, 1, 5, 0, 0, 1600, 1600, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1600, NULL, NULL, '2024-01-26 14:20:23', '2024-01-26 14:20:23'),
(689, 'posr-20240126-022214', 42, NULL, 11, 1, 8, 3, 3, 0, 0, 920, 920, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 920, NULL, NULL, '2024-01-26 14:22:14', '2024-01-26 14:22:14'),
(690, 'posr-20240126-022651', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 320, 320, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 320, NULL, NULL, '2024-01-26 14:26:51', '2024-01-26 14:26:51'),
(691, 'posr-20240126-031042', 42, NULL, 11, 1, 8, 2, 3, 0, 0, 750, 750, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 750, NULL, NULL, '2024-01-26 15:10:42', '2024-01-26 15:10:42'),
(692, 'posr-20240126-042602', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-26 16:26:02', '2024-01-26 16:26:02'),
(693, 'posr-20240126-052025', 42, NULL, 11, 1, 8, 2, 2, 0, 0, 570, 570, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 570, NULL, NULL, '2024-01-26 17:20:25', '2024-01-26 17:20:25'),
(694, 'posr-20240127-012718', 42, NULL, 11, 1, 8, 1, 2, 0, 0, 500, 500, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 500, NULL, NULL, '2024-01-27 13:27:18', '2024-01-27 13:27:18'),
(695, 'posr-20240127-013834', 42, NULL, 11, 1, 8, 14, 49, 0, 0, 13640, 13640, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 13640, NULL, NULL, '2024-01-27 13:38:34', '2024-01-27 13:38:34'),
(696, 'posr-20240127-014303', 42, NULL, 11, 1, 8, 2, 10, 0, 0, 3000, 3000, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 3000, NULL, NULL, '2024-01-27 13:43:03', '2024-01-27 13:43:03'),
(697, 'posr-20240127-014724', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 190, 190, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 190, NULL, NULL, '2024-01-27 13:47:24', '2024-01-27 13:47:24'),
(698, 'posr-20240127-020427', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 280, 280, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 280, NULL, NULL, '2024-01-27 14:04:27', '2024-01-27 14:04:27'),
(699, 'posr-20240127-022453', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 370, 370, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 370, NULL, NULL, '2024-01-27 14:24:53', '2024-01-27 14:24:53'),
(700, 'posr-20240127-052111', 42, NULL, 11, 1, 8, 4, 5, 0, 0, 1480, 1480, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1480, NULL, NULL, '2024-01-27 17:21:11', '2024-01-27 17:21:11'),
(701, 'posr-20240127-053040', 42, NULL, 11, 1, 8, 1, 1, 0, 0, 250, 250, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2024-01-27 17:30:40', '2024-01-27 17:30:40'),
(702, 'posr-20240502-044646', 1, NULL, 11, 1, 8, 2, 2, 0, 0, 730, 730, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 2, NULL, 250, NULL, NULL, '2024-05-02 16:46:46', '2024-05-02 16:46:46'),
(703, 'posr-20240502-044920', 1, NULL, 11, 1, 8, 1, 1, 0, 0, 540, 540, NULL, NULL, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 540, NULL, NULL, '2024-05-02 00:00:00', '2024-05-02 16:49:20'),
(704, 'posr-20240502-114805', 1, NULL, 11, 1, 8, 2, 4, 0, 0, 1160, 1350, NULL, NULL, 0, 0, 'Flat', 10, 10, NULL, NULL, 200, 1, 4, NULL, 1350, NULL, NULL, '2024-05-02 23:48:05', '2024-05-02 23:48:05'),
(705, 'posr-20240502-115602', 1, NULL, 11, 1, 8, 1, 2, 0, 0, 640, 833.6, NULL, NULL, 10, 57.6, 'Percentage', 10, 64, NULL, NULL, 200, 1, 4, NULL, 833.6, NULL, NULL, '2024-05-02 00:00:00', '2024-05-02 23:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `stock_counts`
--

CREATE TABLE `stock_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) DEFAULT NULL,
  `brand_id` varchar(191) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `initial_file` varchar(191) DEFAULT NULL,
  `final_file` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_counts`
--

INSERT INTO `stock_counts` (`id`, `reference_no`, `warehouse_id`, `category_id`, `brand_id`, `user_id`, `type`, `initial_file`, `final_file`, `note`, `is_adjusted`, `created_at`, `updated_at`) VALUES
(1, 'scr-20190228-124939', 2, NULL, NULL, 1, 'full', '20190228-124939.csv', NULL, NULL, 0, '2019-02-28 06:49:39', '2019-02-28 06:49:39'),
(4, 'scr-20220202-083105', 1, '2', NULL, 1, 'partial', '20220202-083105.csv', NULL, NULL, 0, '2022-02-02 14:31:05', '2022-02-02 14:31:05'),
(5, 'scr-20221012-122735', 1, '4', '3', 1, 'partial', '20221012-122735.csv', '20221012-123133.csv', NULL, 1, '2022-10-12 06:27:35', '2022-10-12 06:55:38'),
(6, 'scr-20230401-092719', 1, '4', NULL, 1, 'partial', '20230401-092719.csv', '20230401-092947.csv', 'test stock count', 1, '2023-04-01 15:27:19', '2023-04-01 15:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) NOT NULL,
  `vat_number` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'abdullah', 'globaltouch.jpg', 'global touch', NULL, 'abdullah@gmail.com', '231231', 'fsdfs', 'fsdfs', NULL, NULL, 'bd', 1, '2018-05-12 22:06:34', '2022-06-06 05:25:06'),
(2, 'test', 'lion.jpg', 'lion', NULL, 'lion@gmail.com', '242', 'gfdg', 'fgd', NULL, NULL, NULL, 0, '2018-05-29 23:59:41', '2018-05-30 00:00:06'),
(3, 'ismail', NULL, 'techbd', NULL, 'ismail@test.com', '23123123', 'mohammadpur', 'dhaka', NULL, NULL, 'bangladesh', 1, '2018-07-20 04:34:17', '2018-07-20 04:34:17'),
(4, 'modon', 'mogaFruit.jpg', 'mogaFruit', NULL, 'modon@gmail.com', '32321', 'nasirabad', 'chittagong', NULL, NULL, 'bd', 0, '2018-09-01 04:30:07', '2018-09-01 04:37:20'),
(5, 'sadman', NULL, 'anda boda', 'dsa', 'asd@dsa.com', '3212313', 'dadas', 'sdad', 'Other', '1312', 'Australia', 0, '2020-06-22 09:48:33', '2020-06-22 09:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'vat@10', 10, 1, '2018-05-12 09:58:30', '2019-03-02 11:46:10'),
(2, 'vat@15', 15, 1, '2018-05-12 09:58:43', '2018-05-27 23:35:05'),
(3, 'test', 6, 0, '2018-05-27 23:32:54', '2018-05-27 23:34:44'),
(4, 'vat 20', 20, 1, '2018-09-01 00:58:57', '2018-09-01 00:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `reference_no`, `user_id`, `status`, `from_warehouse_id`, `to_warehouse_id`, `item`, `total_qty`, `total_tax`, `total_cost`, `shipping_cost`, `grand_total`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'tr-20180808-051710', 1, 1, 2, 1, 1, 100, 0, 100, 0, 100, NULL, NULL, '2018-08-08 11:17:10', '2018-12-24 22:16:55'),
(6, 'tr-20191205-075504', 1, 1, 1, 2, 1, 1, 0, 2, 0, 2, NULL, NULL, '2019-12-05 13:55:04', '2019-12-05 14:09:42'),
(8, 'tr-20200122-123058', 1, 1, 1, 2, 1, 10, 0, 1000, NULL, 1000, NULL, NULL, '2020-01-22 06:30:58', '2020-01-22 06:30:58'),
(10, 'tr-20201008-012735', 9, 1, 1, 2, 1, 1, 32, 352, 0, 352, NULL, NULL, '2020-10-08 07:27:35', '2020-10-08 07:29:35'),
(11, 'tr-20201018-061708', 9, 1, 1, 2, 1, 1, 0, 1, NULL, 1, NULL, NULL, '2020-10-18 12:17:08', '2020-10-18 12:17:08'),
(12, 'tr-20201024-090146', 1, 1, 2, 1, 1, 10, 4500, 34500, NULL, 34500, NULL, NULL, '2020-10-24 03:01:46', '2020-10-24 03:01:46'),
(21, 'tr-20220309-114411', 1, 1, 1, 2, 1, 6, 0, 600, 0, 600, NULL, 'jhjkjk\r\njhkjhkhk\r\njjkjkhkhkh', '2022-03-05 18:00:00', '2022-06-05 06:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_code` varchar(191) NOT NULL,
  `unit_name` varchar(191) NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'pc', 'Piece', NULL, '*', 1, 1, '2018-05-12 02:27:46', '2018-08-17 21:41:53'),
(2, 'dozen', 'dozen box', 1, '*', 12, 1, '2018-05-12 09:57:05', '2022-10-19 05:33:46'),
(3, 'cartoon', 'cartoon box', 1, '*', 24, 1, '2018-05-12 09:57:45', '2022-11-24 10:29:30'),
(4, 'm', 'meter', NULL, '*', 1, 1, '2018-05-12 09:58:07', '2018-05-27 23:20:57'),
(6, 'test', 'test', NULL, '*', 1, 0, '2018-05-27 23:20:20', '2018-05-27 23:20:25'),
(7, 'kg', 'kilogram', NULL, '*', 1, 1, '2018-06-25 00:49:26', '2018-06-25 00:49:26'),
(8, '20', 'ni33', 8, '*', 1, 0, '2018-07-31 22:35:51', '2018-07-31 22:40:54'),
(9, 'gm', 'gram', 7, '/', 1000, 1, '2018-09-01 00:06:28', '2018-09-01 00:06:28'),
(10, 'gz', 'goz', NULL, '*', 1, 0, '2018-11-29 03:40:29', '2019-03-02 11:53:29'),
(11, 'inch', 'Inch', NULL, '*', 1, 1, '2022-06-07 10:42:40', '2022-06-07 10:42:40'),
(12, 'pza', 'pza', NULL, '*', 1, 1, '2022-10-15 15:42:19', '2022-10-15 15:42:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `phone` varchar(191) NOT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$beMSbHgKjClgLkfagL0MouKvp4gvJYQ1eRCR03lgChb1k0/vyE5ge', 'TFeoCHMFCU4jfowI1W757JCEp7WmJMtQdzUeHIhrp1YVGoYB1yDFuMEgvUSU', '12112', 'TechNiel', 1, NULL, NULL, 1, 0, '2018-06-02 03:24:15', '2023-05-10 16:34:22'),
(3, 'dhiman da', 'dhiman@gmail.com', '$2y$10$Fef6vu5E67nm11hX7V5a2u1ThNCQ6n9DRCvRF9TD7stk.Pmt2R6O.', '5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt', '212', 'lioncoders', 1, NULL, NULL, 0, 1, '2018-06-13 22:00:31', '2020-11-05 07:06:51'),
(6, 'test', 'test@gmail.com', '$2y$10$TDAeHcVqHyCmurki0wjLZeIl1SngKX3WLOhyTiCoZG3souQfqv.LS', 'KpW1gYYlOFacumklO2IcRfSsbC3KcWUZzOI37gqoqM388Xie6KdhaOHIFEYm', '1234', '212312', 4, NULL, NULL, 0, 1, '2018-06-23 03:05:33', '2018-06-23 03:13:45'),
(8, 'test', 'test@yahoo.com', '$2y$10$hlMigidZV0j2/IPkgE/xsOSb8WM2IRlsMv.1hg1NM7kfyd6bGX3hC', NULL, '31231', NULL, 4, NULL, NULL, 0, 1, '2018-06-24 22:35:49', '2018-07-02 01:07:39'),
(9, 'staff', 'staff@staff.com', '$2y$10$9y8D6HTme4doicXe35ojIu/IHpA7Oh4fkiyu5vAYj0dOI3IRvR2PC', 'hxTW7y5YAZHlULor0CoMi4bG0SRKdd5n37MTvLaFp54pSuO61nLcVS2JRTZA', '1234567', NULL, 4, 8, 1, 1, 0, '2018-07-02 01:08:08', '2023-05-10 16:41:35'),
(10, 'abul', 'abul@alpha.com', '$2y$10$5zgB2OOMyNBNVAd.QOQIju5a9fhNnTqPx5H6s4oFlXhNiF6kXEsPq', 'x7HlttI5bM0vSKViqATaowHFJkLS3PHwfvl7iJdFl5Z1SsyUgWCVbLSgAoi0', '1234', 'anda', 1, NULL, NULL, 0, 0, '2018-09-07 23:44:48', '2018-09-07 23:44:48'),
(11, 'teststaff', 'a@a.com', '$2y$10$5KNBIIhZzvvZEQEhkHaZGu.Q8bbQNfqYvYgL5N55B8Pb4P5P/b/Li', 'DkHDEcCA0QLfsKPkUK0ckL0CPM6dPiJytNa0k952gyTbeAyMthW3vi7IRitp', '111', 'aa', 4, 5, 1, 0, 1, '2018-10-22 02:47:56', '2018-10-23 02:10:56'),
(12, 'john', 'john@gmail.com', '$2y$10$P/pN2J/uyTYNzQy2kRqWwuSv7P2f6GE/ykBwtHdda7yci3XsfOKWe', 'O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg', '10001', NULL, 4, 2, 2, 0, 1, '2018-12-30 00:48:37', '2019-03-06 04:59:49'),
(13, 'jjj', 'test@test.com', '$2y$10$/Qx3gHWYWUhlF1aPfzXaCeZA7fRzfSEyCIOnk/dcC4ejO8PsoaalG', NULL, '1213', NULL, 1, NULL, NULL, 0, 1, '2019-01-03 00:08:31', '2019-03-03 04:02:29'),
(19, 'shakalaka', 'shakalaka@gmail.com', '$2y$10$ketLWT0Ib/JXpo00eJlxoeSw.7leS8V1CUGInfbyOWT4F5.Xuo7S2', NULL, '1212', 'Digital image', 5, NULL, NULL, 1, 0, '2020-11-09 00:07:16', '2020-11-09 00:07:16'),
(21, 'modon', 'modon@gmail.com', '$2y$10$7VpoeGMkP8QCvL5zLwFW..6MYJ5MRumDLDoX.TTQtClS561rpFHY.', NULL, '2222', 'modon company', 5, NULL, NULL, 1, 0, '2020-11-13 07:12:08', '2020-11-13 07:12:08'),
(22, 'dhiman', 'dhiman@gmail.com', '$2y$10$3mPygsC6wwnDtw/Sg85IpuExtUhgaHx52Lwp7Rz0.FNfuFdfKVpRq', NULL, '+8801111111101', 'lioncoders', 5, NULL, NULL, 1, 0, '2020-11-15 06:14:58', '2020-11-15 06:14:58'),
(31, 'mbs', 'mbs@gmail.com', '$2y$10$6Ldm1rWEVSrlTmpjIXkeQO9KwWJz/j0FB4U.fY1oCFeax47rvttEK', NULL, '2121', NULL, 4, 1, 2, 0, 0, '2021-12-29 06:40:22', '2021-12-29 06:40:22'),
(39, 'maja', 'maja@maja.com', '$2y$10$lrMVhNDE9AuKhFrJIgG2y.zdtrCltR8/JB1okO0W8GsUcMjSFW7rW', NULL, '444555', NULL, 4, 5, 2, 1, 0, '2022-09-14 04:37:21', '2022-09-14 04:37:21'),
(41, 'othniel', 'othniel@othniel.com', '$2y$10$JhhgpP2wmlpb.pTrkgWFpO3UzVX0EjE7paBRZ2vTspE0PbrWAMqFK', NULL, '0556088099', 'OTHNIEL VENTURES', 2, NULL, NULL, 1, 0, '2023-05-10 15:37:33', '2023-05-10 15:37:33'),
(42, 'maabfrozen', 'maabfrozen@techniel.com', '$2y$10$SotQw7zxdNLTV6aI/9FwQOJnakNT8LxAnLRIlZo0tS4TO/Cmjfoh.', NULL, '0244766506', 'MAA B FROZEN', 6, 8, 1, 1, 0, '2023-11-23 14:51:18', '2023-11-28 03:41:40'),
(43, 'maabfrozenpos', 'mbf@techniel.com', '$2y$10$b8CBfKM.Qoqqqa1ACZCtguzyvHeSOXm92.X17PAIqqPMAVGJ5u4LC', NULL, '66767689', 'MAA B FROZEN', 4, 8, 1, 1, 0, '2023-11-23 14:52:58', '2023-11-23 14:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Medium', '2019-11-21 07:03:04', '2019-11-24 08:43:52'),
(3, 'Small', '2019-11-21 07:03:04', '2019-11-24 08:43:52'),
(5, 'Large', '2019-11-24 06:07:20', '2019-11-24 08:44:56'),
(9, 'a', '2020-05-18 16:44:14', '2020-05-18 16:44:14'),
(11, 'b', '2020-05-18 16:53:49', '2020-05-18 16:53:49'),
(12, 'variant 1', '2020-09-27 06:08:27', '2020-09-27 06:08:27'),
(13, 'variant 2', '2020-09-27 06:08:27', '2020-09-27 06:08:27'),
(15, 's', '2020-11-16 06:09:33', '2022-08-09 06:02:12'),
(16, 'm', '2020-11-16 06:09:33', '2022-08-09 06:02:12'),
(17, 'L', '2020-11-16 06:09:33', '2020-11-16 06:09:33'),
(18, 's/red', '2022-07-25 13:54:50', '2022-07-25 13:54:50'),
(19, 's/black', '2022-07-25 13:54:50', '2022-07-25 13:54:50'),
(20, 'm/red', '2022-07-25 13:54:50', '2022-07-25 13:54:50'),
(21, 'm/black', '2022-07-25 13:54:50', '2022-07-25 13:54:50'),
(22, 'l/red', '2022-07-25 13:54:50', '2022-07-25 13:54:50'),
(23, 'l/black', '2022-07-25 13:54:50', '2022-07-25 13:54:50'),
(24, 's/blue', '2022-08-03 05:25:19', '2022-08-03 05:25:19'),
(25, 'm/blue', '2022-08-03 05:25:20', '2022-08-03 05:25:20'),
(26, 'l/blue', '2022-08-03 05:25:20', '2022-08-03 05:25:20'),
(27, 's/green', '2022-08-06 05:54:37', '2022-08-06 05:54:37'),
(28, 'm/green', '2022-08-06 05:54:37', '2022-08-06 05:54:37'),
(29, 'l/green', '2022-08-06 05:54:37', '2022-08-06 05:54:37'),
(30, 'xl/red', '2022-08-08 14:02:07', '2022-08-08 14:02:07'),
(31, 'xl/blue', '2022-08-08 14:02:07', '2022-08-08 14:02:07'),
(32, 'xl/green', '2022-08-08 14:02:07', '2022-08-08 14:02:07'),
(33, 'red', '2022-09-11 06:56:55', '2022-09-11 06:56:55'),
(34, 'black', '2022-09-11 06:56:55', '2022-09-11 06:56:55'),
(35, 'blue', '2022-09-11 06:56:55', '2022-09-11 06:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` text NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Main Warehouse', '232323', 'warehouse_maabfrozen@techniel.com', 'Accra, Ghana', 1, '2018-05-12 07:51:44', '2023-11-23 11:33:33'),
(2, 'warehouse 2', '1234', NULL, 'boropul, chittagong', 1, '2018-05-12 08:09:03', '2018-06-19 22:30:38'),
(3, 'test', NULL, NULL, 'dqwdeqw', 0, '2018-05-30 00:14:23', '2018-05-30 00:14:47'),
(6, 'gudam', '2121', '', 'gazipur', 0, '2018-08-31 22:53:26', '2018-08-31 22:54:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_purchases`
--
ALTER TABLE `product_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=738;

--
-- AUTO_INCREMENT for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=525;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1249;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=706;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
