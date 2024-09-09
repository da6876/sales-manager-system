-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2024 at 01:11 PM
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
-- Database: `sales-manager-system`
--

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
(5, '2024_09_01_105725_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(4, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 9),
(5, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(21, 'view_sidemenu', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(22, 'create_sidemenu', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(23, 'update_sidemenu', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(24, 'delete_sidemenu', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(25, 'view_brand', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(26, 'create_brand', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(27, 'update_brand', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(28, 'delete_brand', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(29, 'view_branch', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(30, 'create_branch', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(31, 'update_branch', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(32, 'delete_branch', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(33, 'view_user', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(34, 'create_user', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(35, 'update_user', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(36, 'delete_user', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(37, 'view_roles', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(38, 'create_roles', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(39, 'update_roles', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(40, 'delete_roles', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(41, 'view_permission', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(42, 'create_permission', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(43, 'update_permission', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(44, 'delete_permission', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(45, 'view_pro_type', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(46, 'create_pro_type', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(47, 'update_pro_type', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(48, 'delete_pro_type', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(49, 'view_pro_brand', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(50, 'create_pro_brand', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(51, 'update_pro_brand', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(52, 'delete_pro_brand', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(53, 'view_pro_category', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(54, 'create_pro_category', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(55, 'update_pro_category', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(56, 'delete_pro_category', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(57, 'view_pro_sub_category', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(58, 'create_pro_sub_category', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(59, 'update_pro_sub_category', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(60, 'delete_pro_sub_category', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(61, 'view_pro_info', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(62, 'create_pro_info', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(63, 'update_pro_info', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(64, 'delete_pro_info', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(65, 'view_dashboard', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(66, 'create_dashboard', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(67, 'update_dashboard', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(68, 'delete_dashboard', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09');

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'Admin', 'web', '2024-09-04 01:06:53', '2024-09-04 01:06:53'),
(5, 'Root', 'web', '2024-09-09 02:21:14', '2024-09-09 02:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(21, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 4),
(45, 5),
(46, 4),
(46, 5),
(47, 4),
(47, 5),
(48, 4),
(48, 5),
(49, 4),
(49, 5),
(50, 4),
(50, 5),
(51, 4),
(51, 5),
(52, 5),
(53, 4),
(53, 5),
(54, 4),
(54, 5),
(55, 4),
(55, 5),
(56, 4),
(56, 5),
(57, 4),
(57, 5),
(58, 4),
(58, 5),
(59, 4),
(59, 5),
(60, 4),
(60, 5),
(61, 4),
(61, 5),
(62, 4),
(62, 5),
(63, 4),
(63, 5),
(64, 4),
(64, 5),
(65, 4),
(65, 5),
(66, 4),
(66, 5),
(67, 4),
(67, 5),
(68, 4),
(68, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sms_branch_info`
--

CREATE TABLE `sms_branch_info` (
  `id` bigint(10) NOT NULL,
  `uid` varchar(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `sms_branch_info`
--

INSERT INTO `sms_branch_info` (`id`, `uid`, `name`, `phone`, `email`, `address`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(3, '54897f17-ea63-4bb0-bb8c-81d541c005a2', 'Branch1', '01236987451', 'branch1@gmail.com', 'Dhaka', 'A', '4', '2024-09-04 06:58:55', '5', '2024-09-09 06:54:37'),
(6, '02877d04-f23d-4c48-9057-fb7ec40ed6be', 'Branch 2', '014782369', 'branch2@gmail.com', 'DHaka', 'A', '5', '2024-09-04 08:23:11', '5', '2024-09-09 06:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `sms_brand_info`
--

CREATE TABLE `sms_brand_info` (
  `id` bigint(20) NOT NULL,
  `uid` varchar(36) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `details` varchar(150) DEFAULT NULL,
  `logo` varchar(150) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_brand_info`
--

INSERT INTO `sms_brand_info` (`id`, `uid`, `name`, `details`, `logo`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 'cd30ecce-6a94-11ef-aab7-80ce628923b2', 'SOC Brand', 'SOC Brand', 'assets/logo/img/66d5a62adda0a.png', 'A', '1010', '2024-09-02 11:48:17', '5', '2024-09-04 08:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `sms_probrand`
--

CREATE TABLE `sms_probrand` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(36) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_probrand`
--

INSERT INTO `sms_probrand` (`id`, `uid`, `name`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 'cd30ecce-6a94-11ef-aab7-80ce628923b2', 'Foodi', 'A', '4', '2024-09-03 11:18:52', NULL, NULL),
(2, 'cd30ecce-6a94-11ef-aab7-80ce628923b2', 'Brand11', 'I', '4', '2024-09-03 11:38:28', '4', '2024-09-03 11:39:23'),
(4, 'f15d8a19-0725-484a-826e-2e124cd9fce3', 'adadsss', 'Deleted', '5', '2024-09-04 08:24:57', '5', '2024-09-04 08:26:04');

-- --------------------------------------------------------

--
-- Table structure for table `sms_procategory`
--

CREATE TABLE `sms_procategory` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(36) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_procategory`
--

INSERT INTO `sms_procategory` (`id`, `uid`, `name`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(2, '9f34d9fd-aeaa-42dc-94ce-720912f090da', 'Test111', 'A', '4', '2024-09-04 06:47:01', '4', '2024-09-04 06:50:02'),
(3, '5a024d2b-e170-46be-b990-df4154f164c5', 'T4est', 'Deleted', '4', '2024-09-04 06:47:15', '4', '2024-09-04 06:50:27'),
(4, '76da6b4f-142c-43ef-9ef4-0cdc28413712', 'aa', 'Deleted', '5', '2024-09-04 08:28:23', '5', '2024-09-04 08:28:32'),
(5, 'c44fe2d9-eeca-434c-9d0e-0fd8d11bb3e9', 'Test11', 'A', '5', '2024-09-04 08:44:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_proinfo`
--

CREATE TABLE `sms_proinfo` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(36) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `subcat_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `price_mrp` varchar(15) DEFAULT NULL,
  `price_rp` varchar(15) DEFAULT NULL,
  `image1` varchar(80) NOT NULL DEFAULT 'No Image',
  `image2` varchar(80) NOT NULL DEFAULT 'No Image',
  `image3` varchar(80) NOT NULL DEFAULT 'No Image',
  `image4` varchar(80) NOT NULL DEFAULT 'No Image',
  `status` varchar(10) DEFAULT NULL,
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_proinfo`
--

INSERT INTO `sms_proinfo` (`id`, `uid`, `type_id`, `cat_id`, `subcat_id`, `brand_id`, `title`, `subtitle`, `details`, `price_mrp`, `price_rp`, `image1`, `image2`, `image3`, `image4`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(7, 'ff81d1ff-a21d-41ca-82e8-4195ea778df7', 1, 5, 3, 1, 'Ut voluptatem lorem', 'Dolor ea laborum Ad', 'Dolores quo fugiat', '162', '989', 'assets/product_img/66d843ce7f08c.jpg', 'assets/product_img/66d843ce7f72c.jpg', 'assets/product_img/66d843ce7fd68.jpg', 'assets/product_img/66d843ce803be.png', 'A', '5', '2024-09-04 11:25:26', '5', '2024-09-04 11:26:06'),
(8, 'a1ef337d-3b82-42bc-b779-e1686ce06b11', 1, 2, 1, 1, 'Laboriosam ullam ul', 'Dolore dolor ullamco', 'Et nihil laboriosam', '645', '11', 'assets/product_img/66d8442ab1367.png', '', '', '', 'Deleted', '5', '2024-09-04 11:27:38', '5', '2024-09-04 11:28:40'),
(9, '102445c8-0c03-4bde-883b-14886eb0f88d', 1, 2, 1, 1, 'Ut minim cillum veli', 'Enim odit esse recus', 'Maxime inventore aut', '786', '669', 'assets/product_img/66d8445b444da.jpg', '', '', '', 'I', '5', '2024-09-04 11:28:27', '5', '2024-09-04 11:54:12'),
(10, '0404c6be-c111-410a-a827-5dfe44ea1254', 1, 2, 3, 1, 'Vel illum porro vel', 'Cum qui Nam autem ni', '&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;asasas&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;', '714', '392', 'assets/product_img/66de8f168dad2.jpg', '', '', '', 'I', '5', '2024-09-09 06:00:59', NULL, NULL),
(11, '77ee3781-4e9b-46c2-930e-cfcd374c64ba', 1, 5, 1, 1, 'Incididunt repellend', 'Quia sint quia qui s', '&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;ABir&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;ul&amp;gt;&amp;lt;li&amp;gt;&amp;lt;strong&amp;gt;adad&amp;lt;/strong&amp;gt;&amp;lt;/li&amp;gt;&amp;lt;li&amp;gt;&amp;lt;strong&amp;gt;added&amp;lt;/strong&amp;gt;&amp;lt;/li&amp;gt;&amp;lt;/ul&amp;gt;&amp;lt;figure class=&amp;quot;image&amp;quot;&amp;gt;&amp;lt;img src=&amp;quot;https://bootstrapmade.com/demo/templates/Yummy/assets/img/menu/menu-item-2.png&amp;quot;&amp;gt;&amp;lt;/figure&amp;gt;', '555', '360', 'assets/product_img/66ded76e376b7.jpg', '', '', '', 'I', '5', '2024-09-09 11:09:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_prosubcategory`
--

CREATE TABLE `sms_prosubcategory` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(36) DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_prosubcategory`
--

INSERT INTO `sms_prosubcategory` (`id`, `uid`, `cat_id`, `name`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 'b03337e0-0d69-4e64-acb8-9e9cc8c07210', 2, 'AAA222', 'A', '5', '2024-09-04 08:46:44', '5', '2024-09-04 08:53:45'),
(2, 'b0b90be6-d367-40e0-9a22-fab4fe224f20', 2, 'AAA1', 'Deleted', '5', '2024-09-04 08:47:01', '5', '2024-09-04 08:47:20'),
(3, '37d4bdc5-a1dc-4a8b-b8a2-060f15d32aec', 5, '2222', 'A', '5', '2024-09-04 08:47:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_protype`
--

CREATE TABLE `sms_protype` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(36) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_protype`
--

INSERT INTO `sms_protype` (`id`, `uid`, `name`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 'cd30ecce-6a94-11ef-aab7-80ce628923b2', 'Test', 'A', '4', '2024-09-04 06:28:01', NULL, NULL),
(2, 'cd30ecce-6a94-11ef-aab7-80ce628923b2', 'Test112', 'Deleted', '4', '2024-09-04 06:28:47', '4', '2024-09-04 06:30:36'),
(4, '8d5cfa7b-6950-4a3e-aec9-7723c55554b8', 'asdadaaa', 'Deleted', '5', '2024-09-04 08:26:53', '5', '2024-09-04 08:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `sms_web_sidebar_menu`
--

CREATE TABLE `sms_web_sidebar_menu` (
  `id` bigint(10) NOT NULL,
  `uid` varchar(36) DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `is_collapsed` tinyint(1) DEFAULT 0,
  `is_heading` tinyint(1) DEFAULT 0,
  `permission_id` bigint(10) DEFAULT 0,
  `status` varchar(10) DEFAULT 'I',
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_web_sidebar_menu`
--

INSERT INTO `sms_web_sidebar_menu` (`id`, `uid`, `parent_id`, `name`, `icon`, `url`, `order`, `is_collapsed`, `is_heading`, `permission_id`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, '98d034e8-6a91-11ef-aab7-80ce628923b2', NULL, 'Dashboard', 'bi bi-grid', 'Dashboard', 1, 0, 0, 0, 'A', NULL, NULL, '5', '2024-09-04 08:13:40'),
(2, '98d034e8-6a91-11ef-aab7-80ce628923b2', NULL, 'Web Setup', 'bi bi-menu-button-wide', '#', 2, 1, 0, 0, 'A', NULL, NULL, NULL, NULL),
(3, '98d034e8-6a91-11ef-aab7-80ce628923b2', 2, 'Side Menu', 'bi bi-circle', 'SidebarNav', 1, 0, 0, 0, 'A', NULL, NULL, NULL, NULL),
(4, '98d034e8-6a91-11ef-aab7-80ce628923b2', 2, 'Buttons', 'bi bi-circle', 'button', 2, 0, 0, 0, 'A', NULL, NULL, NULL, NULL),
(5, '98d034e8-6a91-11ef-aab7-80ce628923b2', NULL, 'Forms', 'bi bi-journal-text', '#', 8, 1, 0, 0, 'A', NULL, NULL, '1010', '2024-09-01 08:56:04'),
(6, '98d034e8-6a91-11ef-aab7-80ce628923b2', 5, 'Form Elements', 'bi bi-circle', 'form1', 1, 0, 0, 0, 'A', NULL, NULL, NULL, NULL),
(7, '98d034e8-6a91-11ef-aab7-80ce628923b2', 5, 'Form Layouts', 'bi bi-circle', 'form2', 2, 0, 0, 0, 'A', NULL, NULL, NULL, NULL),
(8, '98d034e8-6a91-11ef-aab7-80ce628923b2', NULL, 'Tables', 'bi bi-layout-text-window-reverse', '#', 4, 1, 0, 0, 'A', NULL, NULL, NULL, NULL),
(9, '98d034e8-6a91-11ef-aab7-80ce628923b2', 8, 'General Tables', 'bi bi-circle', 'table1', 1, 0, 0, 0, 'A', NULL, NULL, NULL, NULL),
(10, '98d034e8-6a91-11ef-aab7-80ce628923b2', 8, 'Data Tables', 'bi bi-circle', 'table2', 2, 0, 0, 0, 'A', NULL, NULL, NULL, NULL),
(11, '98d034e8-6a91-11ef-aab7-80ce628923b2', NULL, 'Charts', 'bi bi-bar-chart', '#', 5, 1, 0, 0, 'A', NULL, NULL, NULL, NULL),
(12, '98d034e8-6a91-11ef-aab7-80ce628923b2', 11, 'Chart.js', 'bi bi-circle', 'chart1', 1, 0, 0, 0, 'A', NULL, NULL, NULL, NULL),
(13, '98d034e8-6a91-11ef-aab7-80ce628923b2', 11, 'ApexCharts', 'bi bi-circle', 'chart2', 2, 0, 0, 0, 'A', NULL, NULL, NULL, NULL),
(14, '98d034e8-6a91-11ef-aab7-80ce628923b2', NULL, 'Header Page', '', '', 6, NULL, 1, 0, 'A', NULL, NULL, NULL, NULL),
(15, '98d034e8-6a91-11ef-aab7-80ce628923b2', NULL, 'Profile', 'bi bi-person', 'welcome', 7, NULL, 0, 0, 'A', NULL, NULL, NULL, NULL),
(16, '98d034e8-6a91-11ef-aab7-80ce628923b2', 2, 'Brand Name', 'ssasa', 'BrandName', 1, 1, 1, 0, 'A', '1010', '2024-09-01 06:39:18', '1010', '2024-09-02 10:01:00'),
(17, '98d034e8-6a91-11ef-aab7-80ce628923b2', 5, 'AAA2', 'ssasa', 'AA', 1, 1, 1, 0, 'Deleted', '1010', '2024-09-01 06:40:16', '101', '2024-09-01 08:18:30'),
(18, '98d034e8-6a91-11ef-aab7-80ce628923b2', 8, 'Table 2', 'bi', 'AAA', 1111111, 1, 1, 0, 'A', '1010', '2024-09-01 06:40:40', '1010', '2024-09-01 08:11:28'),
(19, '98d034e8-6a91-11ef-aab7-80ce628923b2', NULL, 'User Config', 'bi bi-people-fill', '#', 3, 1, 0, 0, 'A', '1010', '2024-09-01 08:26:21', '1010', '2024-09-01 08:56:26'),
(20, '98d034e8-6a91-11ef-aab7-80ce628923b2', 19, 'Branch Info', 'bi bi-person-lines-fill', 'BranchInfo', 1, 0, 0, 0, 'A', '1010', '2024-09-01 08:49:27', '1010', '2024-09-01 09:05:44'),
(21, '98d034e8-6a91-11ef-aab7-80ce628923b2', 19, 'User Info', 'bi bi-person-lines-fill', 'User', 2, 0, 0, 0, 'A', '1010', '2024-09-01 08:50:26', '1010', '2024-09-01 12:12:16'),
(22, '98d034e8-6a91-11ef-aab7-80ce628923b2', 19, 'User Roles', 'bi bi-person-lines-fill', 'Roles', 3, 0, 0, 0, 'A', '1010', '2024-09-01 08:51:46', '1010', '2024-09-01 11:48:57'),
(23, '98d034e8-6a91-11ef-aab7-80ce628923b2', 19, 'Permission', 'bi', 'Permission', 5, 0, 0, 0, 'A', '1010', '2024-09-01 08:52:12', '4', '2024-09-03 06:58:53'),
(24, '98d034e8-6a91-11ef-aab7-80ce628923b2', 19, 'Menu Permission', 'bi', 'MenuAllow', 4, 0, 0, 0, 'Deleted', '1010', '2024-09-03 06:41:56', '4', '2024-09-03 08:27:42'),
(29, '98d034e8-6a91-11ef-aab7-80ce628923b2', NULL, 'Product Setup', 'bi bi-folder-check', '#', 3, 1, 0, 0, 'A', '4', '2024-09-03 09:46:04', NULL, NULL),
(30, '98d034e8-6a91-11ef-aab7-80ce628923b2', 29, 'Pro. Brand', 'bi bi-circle', 'ProBrand', 1, 0, 0, 0, 'A', '4', '2024-09-03 09:47:57', NULL, NULL),
(31, '98d034e8-6a91-11ef-aab7-80ce628923b2', 29, 'Pro. Category', 'bi bi-circle', 'ProCategory', 3, 0, 0, 0, 'A', '4', '2024-09-03 09:47:58', '4', '2024-09-03 09:49:30'),
(32, '98d034e8-6a91-11ef-aab7-80ce628923b2', 29, 'Pro. Type', 'bi', 'ProType', 2, 0, 0, 0, 'A', '4', '2024-09-03 09:48:37', NULL, NULL),
(33, '98d034e8-6a91-11ef-aab7-80ce628923b2', 29, 'Pro. Sub-Category', 'a', 'ProSubCategory', 4, 0, 0, 0, 'A', '4', '2024-09-03 09:50:04', NULL, NULL),
(34, '98d034e8-6a91-11ef-aab7-80ce628923b2', 29, 'Product Info', 'a', 'ProInfo', 5, 0, 0, 0, 'A', '4', '2024-09-03 09:50:39', NULL, NULL),
(35, '0', NULL, 'ad', 'ad', 'ad', 1, 0, 0, 0, 'Deleted', '5', '2024-09-04 08:14:00', '5', '2024-09-04 08:14:09'),
(36, '4a80684d-e16d-4b4a-8fe4-b8dd3203bfbd', NULL, 'asd', 'ada', 'adad', 1, 0, 0, 0, 'Deleted', '5', '2024-09-04 08:18:29', '5', '2024-09-04 08:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(36) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `branch_id` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `name`, `branch_id`, `phone`, `email`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `latitude`, `longitude`) VALUES
(5, '4d33c03d-a283-4bc3-8322-4d5e7fa168de', 'Super Admin', '2', '010000000', 'superadmin@gmail.com', 'A', '2024-09-04 07:04:32', '$2y$10$nGV8Pj7O/2HMf5EDUHevauAfLQ1g3Gm8o922qRY0lgt0XQ15t2r9C', NULL, '2024-09-04 07:04:32', '2024-09-09 05:05:49', '23.7426409', '90.413812'),
(6, '4d33c03d-a283-4bc3-8304-3d5e7fa168de', 'Branch One Admin', '3', '01684639222', 'branchoneadmin@gmail.com', NULL, NULL, '$2y$10$uLZhY4bCwXYoD/sPaVcuOubLKSLYwZS6PMEfzhVVBplsbpnY6XERm', NULL, '2024-09-04 01:07:20', '2024-09-09 00:57:53', NULL, NULL),
(9, 'f2420f7e-c129-4ae3-baa1-59cd685f6e9c', 'Branch Two Admin', '6', '01315222222', 'branchtwoadmin@gmail.com', NULL, NULL, '$2y$10$U9ygPLxCIeAue7b7nqcNcew1x4VisWFW3fRh7ljPmqRt6b2NYk0Z6', NULL, '2024-09-09 01:14:38', '2024-09-09 01:14:55', '23.7426329', '90.4138199');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sms_branch_info`
--
ALTER TABLE `sms_branch_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_brand_info`
--
ALTER TABLE `sms_brand_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_probrand`
--
ALTER TABLE `sms_probrand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_procategory`
--
ALTER TABLE `sms_procategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_proinfo`
--
ALTER TABLE `sms_proinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_prosubcategory`
--
ALTER TABLE `sms_prosubcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_protype`
--
ALTER TABLE `sms_protype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_web_sidebar_menu`
--
ALTER TABLE `sms_web_sidebar_menu`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sms_branch_info`
--
ALTER TABLE `sms_branch_info`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sms_brand_info`
--
ALTER TABLE `sms_brand_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms_probrand`
--
ALTER TABLE `sms_probrand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sms_procategory`
--
ALTER TABLE `sms_procategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sms_proinfo`
--
ALTER TABLE `sms_proinfo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sms_prosubcategory`
--
ALTER TABLE `sms_prosubcategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms_protype`
--
ALTER TABLE `sms_protype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sms_web_sidebar_menu`
--
ALTER TABLE `sms_web_sidebar_menu`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
