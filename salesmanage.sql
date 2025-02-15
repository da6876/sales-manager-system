-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2025 at 02:14 PM
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
-- Database: `salesmanage`
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
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `changes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `table_name`, `action`, `changes`, `created_at`, `updated_at`) VALUES
(1, '5', 'pro_type', 'create', '{\"uid\":\"602cfe60-30a4-493c-8bf1-aef1f24b5af3\",\"name\":\"Test\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-22 13:18:49\",\"id\":13}', '2024-09-22 07:18:49', '2024-09-22 07:18:49'),
(2, '5', 'sms_customers', 'delete', '{\"id\":13,\"uid\":\"602cfe60-30a4-493c-8bf1-aef1f24b5af3\",\"name\":\"Test\",\"status\":\"Deleted\",\"create_by\":\"5\",\"create_date\":\"2024-09-22 13:18:49\",\"update_by\":5,\"update_date\":\"2024-09-22 13:19:41\"}', '2024-09-22 07:19:41', '2024-09-22 07:19:41'),
(3, '5', 'pro_type', 'delete', '{\"id\":12,\"uid\":\"50ecc2f6-754a-4165-b776-f69ec78bfd48\",\"name\":\"Test\",\"status\":\"Deleted\",\"create_by\":\"5\",\"create_date\":\"2024-09-22 13:17:09\",\"update_by\":5,\"update_date\":\"2024-09-22 13:20:14\"}', '2024-09-22 07:20:14', '2024-09-22 07:20:14'),
(4, '5', 'pro_type', 'delete', '{\"id\":11,\"uid\":\"8a557ccd-e314-4ded-8c9e-7a6dccd39a30\",\"name\":\"Test\",\"status\":\"Deleted\",\"create_by\":\"5\",\"create_date\":\"2024-09-22 13:16:52\",\"update_by\":5,\"update_date\":\"2024-09-22 13:20:17\"}', '2024-09-22 07:20:17', '2024-09-22 07:20:17'),
(5, '5', 'pro_type', 'update', '{\"update_date\":\"2024-09-22 13:21:16\"}', '2024-09-22 07:21:16', '2024-09-22 07:21:16'),
(6, '5', 'pro_type', 'update', '{\"name\":\"Burger\",\"update_date\":\"2024-09-22 13:21:52\"}', '2024-09-22 07:21:52', '2024-09-22 07:21:52'),
(7, '5', 'Product Brand', 'create', '{\"uid\":\"a4817b23-2635-440e-a83c-18b20430975c\",\"name\":\"Brandd2\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-22 13:27:45\",\"id\":5}', '2024-09-22 07:27:45', '2024-09-22 07:27:45'),
(8, '5', 'Product Brand', 'update', '{\"name\":\"Brandd2 11\",\"update_by\":5,\"update_date\":\"2024-09-22 13:27:55\"}', '2024-09-22 07:27:55', '2024-09-22 07:27:55'),
(9, '5', 'Product Brand', 'delete', '{\"id\":5,\"uid\":\"a4817b23-2635-440e-a83c-18b20430975c\",\"name\":\"Brandd2 11\",\"status\":\"Deleted\",\"create_by\":\"5\",\"create_date\":\"2024-09-22 13:27:45\",\"update_by\":5,\"update_date\":\"2024-09-22 13:28:17\"}', '2024-09-22 07:28:17', '2024-09-22 07:28:17'),
(10, '5', 'Product Category', 'create', '{\"name\":\"AAA\",\"uid\":\"dd9cf056-dc32-4258-8407-e5e2b57bd636\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-22 13:30:18\",\"id\":13}', '2024-09-22 07:30:18', '2024-09-22 07:30:18'),
(11, '5', 'Product Category', 'update', '{\"name\":\"AAA1111\",\"update_by\":5,\"update_date\":\"2024-09-22 13:30:36\"}', '2024-09-22 07:30:36', '2024-09-22 07:30:36'),
(12, '5', 'Product Category', 'delete', '{\"id\":13,\"uid\":\"dd9cf056-dc32-4258-8407-e5e2b57bd636\",\"name\":\"AAA1111\",\"status\":\"Deleted\",\"create_by\":\"5\",\"create_date\":\"2024-09-22 13:30:18\",\"update_by\":5,\"update_date\":\"2024-09-22 13:30:45\"}', '2024-09-22 07:30:45', '2024-09-22 07:30:45'),
(13, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"branch_id\":\"2\",\"phone\":\"010000000\",\"email\":\"superadmin@gmail.com\",\"status\":\"A\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$nGV8Pj7O\\/2HMf5EDUHevauAfLQ1g3Gm8o922qRY0lgt0XQ15t2r9C\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-09-22 13:51:40\",\"latitude\":\"23.742626174922147\",\"longitude\":\"90.41360828841368\"}', '2024-09-22 07:51:40', '2024-09-22 07:51:40'),
(14, '5', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 07:52:19', '2024-09-22 07:52:19'),
(15, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"branch_id\":\"2\",\"phone\":\"010000000\",\"email\":\"superadmin@gmail.com\",\"status\":\"A\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$nGV8Pj7O\\/2HMf5EDUHevauAfLQ1g3Gm8o922qRY0lgt0XQ15t2r9C\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-09-22 14:03:06\",\"latitude\":\"23.74262572284886\",\"longitude\":\"90.41356589103403\"}', '2024-09-22 08:03:06', '2024-09-22 08:03:06'),
(16, '5', 'Order', 'create', '{\"order_number\":\"ORD-1726994841\",\"order_date\":\"2024-09-22T08:47:21.264382Z\",\"cust_id\":\"8\",\"vat_amount\":\"20.00\",\"discount_amount\":\"20.00\",\"received_amount\":\"200.00\",\"revised_amount\":\"0.00\",\"total_amount\":\"200.00\",\"status\":\"A\",\"payment_status\":\"A\",\"payment_method\":\"Cash\",\"create_by\":5,\"create_date\":\"2024-09-22 14:47:21\",\"id\":50}', '2024-09-22 08:47:21', '2024-09-22 08:47:21'),
(17, '5', 'Order Details', 'create', '{\"id\":\"13\",\"uid\":\"d9cc22a2-55f4-4055-ae27-ecfeab4c5307\",\"title\":\"Cheesy Smash Burger\",\"imageUrl\":\"assets\\/product_img\\/66e0228a29953.jpg\",\"price\":200,\"quantity\":1}', '2024-09-22 08:47:21', '2024-09-22 08:47:21'),
(18, '5', 'User Profile', 'update', '{\"phone\":\"01684924439\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"updated_at\":\"2024-09-22 15:19:09\"}', '2024-09-22 09:19:09', '2024-09-22 09:19:09'),
(19, '5', 'User Profile', 'change_password', '{\"user_id\":5,\"email\":\"superadmin@gmail.com\"}', '2024-09-22 09:41:35', '2024-09-22 09:41:35'),
(20, '5', 'User Profile', 'change_password', '{\"user_id\":5,\"email\":\"superadmin@gmail.com\"}', '2024-09-22 09:43:24', '2024-09-22 09:43:24'),
(21, '5', 'User Profile', 'change_password', '{\"user_id\":5,\"email\":\"superadmin@gmail.com\"}', '2024-09-22 09:44:21', '2024-09-22 09:44:21'),
(22, '5', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 09:44:22', '2024-09-22 09:44:22'),
(23, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"branch_id\":\"2\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-09-22 15:44:39\",\"latitude\":\"23.742627075494934\",\"longitude\":\"90.4135796402248\"}', '2024-09-22 09:44:39', '2024-09-22 09:44:39'),
(24, '5', 'Sidebar Nav', 'update', '{\"name\":\"Web Brand\",\"url\":\"BrandName\",\"update_by\":5,\"update_date\":\"2024-09-22 15:45:45\"}', '2024-09-22 09:45:45', '2024-09-22 09:45:45'),
(25, '5', 'Role', 'create', '{\"guard_name\":\"web\",\"name\":\"Branch Admin\",\"updated_at\":\"2024-09-22 16:28:45\",\"created_at\":\"2024-09-22 16:28:45\",\"id\":6}', '2024-09-22 10:28:45', '2024-09-22 10:28:45'),
(26, '5', 'Role', 'create', '{\"guard_name\":\"web\",\"name\":\"Branch Manager\",\"updated_at\":\"2024-09-22 16:29:02\",\"created_at\":\"2024-09-22 16:29:02\",\"id\":7}', '2024-09-22 10:29:02', '2024-09-22 10:29:02'),
(27, '5', 'Role', 'create', '{\"guard_name\":\"web\",\"name\":\"Manager\",\"updated_at\":\"2024-09-22 16:29:15\",\"created_at\":\"2024-09-22 16:29:15\",\"id\":8}', '2024-09-22 10:29:15', '2024-09-22 10:29:15'),
(28, '5', 'User', 'update', '{\"password\":\"$2y$10$DQV2qQ61HmPt7JLJ19iZ1uSWbqFzYkRyFRSpVseURVFNKpgki8dru\",\"updated_at\":\"2024-09-22 16:36:32\"}', '2024-09-22 10:36:32', '2024-09-22 10:36:32'),
(29, '5', 'User', 'create', '{\"uid\":\"ee3b36b9-dd00-402f-88ba-7ce49edcf404\",\"name\":\"Rifat Hossion\",\"address\":\"Mirpur-1,Dhaka,Bangladesh\",\"email\":\"rifat@gmail.com\",\"phone\":\"012333333\",\"password\":\"$2y$10$BjqfAZdGUb5BKp690YQiq.iBxOlR1OvevORRgeSWqGLpX.GYL9SIe\",\"updated_at\":\"2024-09-22 17:36:18\",\"created_at\":\"2024-09-22 17:36:18\",\"id\":15}', '2024-09-22 11:36:18', '2024-09-22 11:36:18'),
(30, '5', 'Permission To Role', 'Get', NULL, '2024-09-22 11:37:34', '2024-09-22 11:37:34'),
(31, '5', 'Permission To Role', 'Get', '{\"21\":21,\"22\":22,\"23\":23,\"24\":24,\"25\":25,\"26\":26,\"27\":27,\"28\":28,\"29\":29,\"30\":30,\"31\":31,\"32\":32,\"33\":33,\"34\":34,\"35\":35,\"36\":36,\"37\":37,\"38\":38,\"39\":39,\"40\":40,\"41\":41,\"42\":42,\"43\":43,\"44\":44,\"45\":45,\"46\":46,\"47\":47,\"48\":48,\"49\":49,\"50\":50,\"51\":51,\"52\":52,\"53\":53,\"54\":54,\"55\":55,\"56\":56,\"57\":57,\"58\":58,\"59\":59,\"60\":60,\"61\":61,\"62\":62,\"63\":63,\"64\":64,\"65\":65,\"66\":66,\"67\":67,\"68\":68}', '2024-09-22 11:38:31', '2024-09-22 11:38:31'),
(32, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"48\":48,\"49\":49,\"50\":50,\"51\":51,\"53\":53,\"54\":54,\"55\":55,\"56\":56,\"57\":57,\"58\":58,\"59\":59,\"60\":60,\"61\":61,\"62\":62,\"63\":63,\"64\":64,\"65\":65,\"66\":66,\"67\":67,\"68\":68}', '2024-09-22 11:38:35', '2024-09-22 11:38:35'),
(33, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"48\":48,\"49\":49,\"50\":50,\"51\":51,\"53\":53,\"54\":54,\"55\":55,\"56\":56,\"57\":57,\"58\":58,\"59\":59,\"60\":60,\"61\":61,\"62\":62,\"63\":63,\"64\":64,\"65\":65,\"66\":66,\"67\":67,\"68\":68}', '2024-09-22 11:39:05', '2024-09-22 11:39:05'),
(34, '5', 'Give Permission To Role', 'Added', '{\"id\":4,\"name\":\"Admin\",\"guard_name\":\"web\",\"created_at\":\"2024-09-04 07:06:53\",\"updated_at\":\"2024-09-04 07:06:53\"}', '2024-09-22 11:39:27', '2024-09-22 11:39:27'),
(35, '5', 'Permission To Role', 'Get', NULL, '2024-09-22 11:40:14', '2024-09-22 11:40:14'),
(36, '5', 'Give Permission To Role', 'Added', '{\"id\":6,\"name\":\"Branch Admin\",\"guard_name\":\"web\",\"created_at\":\"2024-09-22 16:28:45\",\"updated_at\":\"2024-09-22 16:28:45\"}', '2024-09-22 11:40:42', '2024-09-22 11:40:42'),
(37, '5', 'Permission To Role', 'Get', NULL, '2024-09-22 11:41:01', '2024-09-22 11:41:01'),
(38, '5', 'Give Permission To Role', 'Added', '{\"id\":7,\"name\":\"Branch Manager\",\"guard_name\":\"web\",\"created_at\":\"2024-09-22 16:29:02\",\"updated_at\":\"2024-09-22 16:29:02\"}', '2024-09-22 11:41:16', '2024-09-22 11:41:16'),
(39, '5', 'Permission To Role', 'Get', NULL, '2024-09-22 11:41:21', '2024-09-22 11:41:21'),
(40, '5', 'Give Permission To Role', 'Added', '{\"id\":8,\"name\":\"Manager\",\"guard_name\":\"web\",\"created_at\":\"2024-09-22 16:29:15\",\"updated_at\":\"2024-09-22 16:29:15\"}', '2024-09-22 11:42:50', '2024-09-22 11:42:50'),
(41, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:15', '2024-09-22 11:43:15'),
(42, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:15', '2024-09-22 11:43:15'),
(43, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:15', '2024-09-22 11:43:15'),
(44, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:15', '2024-09-22 11:43:15'),
(45, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:15', '2024-09-22 11:43:15'),
(46, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:15', '2024-09-22 11:43:15'),
(47, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:15', '2024-09-22 11:43:15'),
(48, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:15', '2024-09-22 11:43:15'),
(49, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:15', '2024-09-22 11:43:15'),
(50, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:55', '2024-09-22 11:43:55'),
(51, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:55', '2024-09-22 11:43:55'),
(52, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:55', '2024-09-22 11:43:55'),
(53, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:55', '2024-09-22 11:43:55'),
(54, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:55', '2024-09-22 11:43:55'),
(55, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:55', '2024-09-22 11:43:55'),
(56, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:55', '2024-09-22 11:43:55'),
(57, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:55', '2024-09-22 11:43:55'),
(58, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:55', '2024-09-22 11:43:55'),
(59, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:55', '2024-09-22 11:43:55'),
(60, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:43:55', '2024-09-22 11:43:55'),
(61, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(62, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(63, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(64, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(65, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(66, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(67, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(68, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(69, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(70, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(71, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(72, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(73, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(74, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(75, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(76, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(77, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(78, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(79, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(80, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-22 11:44:43', '2024-09-22 11:44:43'),
(81, '15', 'User ', 'Login', '{\"id\":15,\"uid\":\"ee3b36b9-dd00-402f-88ba-7ce49edcf404\",\"name\":\"Rifat Hossion\",\"phone\":\"012333333\",\"email\":\"rifat@gmail.com\",\"address\":\"Mirpur-1,Dhaka,Bangladesh\",\"status\":null,\"email_verified_at\":null,\"password\":\"$2y$10$BjqfAZdGUb5BKp690YQiq.iBxOlR1OvevORRgeSWqGLpX.GYL9SIe\",\"remember_token\":null,\"created_at\":\"2024-09-22 17:36:18\",\"updated_at\":\"2024-09-22 17:45:09\",\"latitude\":\"23.742646\",\"longitude\":\"90.4138226\"}', '2024-09-22 11:45:09', '2024-09-22 11:45:09'),
(82, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"48\":48,\"49\":49,\"50\":50,\"51\":51,\"52\":52,\"53\":53,\"54\":54,\"55\":55,\"56\":56,\"57\":57,\"58\":58,\"59\":59,\"60\":60,\"61\":61,\"62\":62,\"63\":63,\"64\":64,\"65\":65,\"66\":66,\"67\":67,\"68\":68}', '2024-09-22 11:45:37', '2024-09-22 11:45:37'),
(83, '5', 'User', 'update', '{\"name\":\"Branch 1 Manager\",\"email\":\"branch1manager@gmail.com\",\"address\":\"Mirpur-1,Dhaka,Bangladesh\",\"password\":\"$2y$10$x.n42JujCOc\\/2wtfEhUjSu.9vroS1i.Ymtg7cFiLwo7wKgNVNYo4G\",\"updated_at\":\"2024-09-22 17:52:15\"}', '2024-09-22 11:52:15', '2024-09-22 11:52:15'),
(84, '10', 'User ', 'Login', '{\"id\":10,\"uid\":\"a535c002-8e92-4157-a1fa-4216013d5bc0\",\"name\":\"Branch 1 Manager\",\"phone\":\"01222222\",\"email\":\"branch1manager@gmail.com\",\"address\":\"Mirpur-1,Dhaka,Bangladesh\",\"status\":null,\"email_verified_at\":null,\"password\":\"$2y$10$72mKMMGEbjM\\/mGE.3jn0yOYWjzbrxhbNM2EvwkhKlEFSa2lN46Gcu\",\"remember_token\":null,\"created_at\":\"2024-09-19 16:07:25\",\"updated_at\":\"2024-09-22 17:53:37\",\"latitude\":\"23.742600763107912\",\"longitude\":\"90.41357464629856\"}', '2024-09-22 11:53:37', '2024-09-22 11:53:37'),
(85, '15', 'Product Type', 'create', '{\"uid\":\"0bb5535d-448e-4c95-bbdf-1d6e6fb13b03\",\"name\":\"Sweets\",\"status\":\"A\",\"create_by\":15,\"create_date\":\"2024-09-22 17:54:58\",\"id\":14}', '2024-09-22 11:54:58', '2024-09-22 11:54:58'),
(86, '15', 'Customer', 'create', '{\"uid\":\"e101320b-8f05-4e50-b324-3e230ae838f6\",\"name\":\"Shakil\",\"phone\":\"01884924439\",\"email\":\"shakil@gmail.com\",\"address\":\"Mirpur,Dhaka\",\"status\":\"A\",\"create_by\":15,\"create_date\":\"2024-09-22 18:05:37\",\"id\":22}', '2024-09-22 12:05:37', '2024-09-22 12:05:37'),
(87, '15', 'Order', 'create', '{\"order_number\":\"ORD-1727006738\",\"order_date\":\"2024-09-22T12:05:38.847805Z\",\"cust_id\":\"22\",\"vat_amount\":\"60.00\",\"discount_amount\":\"0.00\",\"received_amount\":\"1000.00\",\"revised_amount\":\"-340.00\",\"total_amount\":\"660.00\",\"status\":\"A\",\"payment_status\":\"A\",\"payment_method\":\"Cash\",\"create_by\":15,\"create_date\":\"2024-09-22 18:05:38\",\"id\":51}', '2024-09-22 12:05:39', '2024-09-22 12:05:39'),
(88, '15', 'Order Details', 'create', '{\"id\":\"14\",\"uid\":\"21d1164f-9d2a-409d-994b-b2a500046f85\",\"title\":\"Cheese & Shroom Smash Burger\",\"imageUrl\":\"assets\\/product_img\\/66e0230f91a8c.jpg\",\"price\":200,\"quantity\":1}', '2024-09-22 12:05:39', '2024-09-22 12:05:39'),
(89, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-09-23 11:33:39\",\"latitude\":\"23.742645628431575\",\"longitude\":\"90.41365502153512\"}', '2024-09-23 05:33:39', '2024-09-23 05:33:39'),
(90, '15', 'User ', 'Login', '{\"id\":15,\"uid\":\"ee3b36b9-dd00-402f-88ba-7ce49edcf404\",\"name\":\"Rifat Hossion\",\"phone\":\"012333333\",\"email\":\"rifat@gmail.com\",\"address\":\"Mirpur-1,Dhaka,Bangladesh\",\"status\":null,\"email_verified_at\":null,\"password\":\"$2y$10$BjqfAZdGUb5BKp690YQiq.iBxOlR1OvevORRgeSWqGLpX.GYL9SIe\",\"remember_token\":null,\"created_at\":\"2024-09-22 17:36:18\",\"updated_at\":\"2024-09-23 11:37:01\",\"latitude\":\"23.7426502\",\"longitude\":\"90.4138312\"}', '2024-09-23 05:37:01', '2024-09-23 05:37:01'),
(91, '5', 'Permission To Role', 'Get', '{\"21\":21,\"22\":22,\"23\":23,\"25\":25,\"26\":26,\"27\":27,\"29\":29,\"30\":30,\"31\":31,\"33\":33,\"34\":34,\"35\":35,\"37\":37,\"38\":38,\"39\":39,\"41\":41,\"42\":42,\"43\":43,\"45\":45,\"46\":46,\"47\":47,\"49\":49,\"50\":50,\"51\":51,\"53\":53,\"54\":54,\"55\":55,\"57\":57,\"58\":58,\"59\":59,\"61\":61,\"62\":62,\"63\":63,\"65\":65,\"66\":66,\"67\":67}', '2024-09-23 07:14:40', '2024-09-23 07:14:40'),
(92, '5', 'Permission To Role', 'Get', '{\"21\":21,\"22\":22,\"23\":23,\"25\":25,\"26\":26,\"27\":27,\"29\":29,\"30\":30,\"31\":31,\"33\":33,\"34\":34,\"35\":35,\"37\":37,\"38\":38,\"39\":39,\"41\":41,\"42\":42,\"43\":43,\"45\":45,\"46\":46,\"47\":47,\"49\":49,\"50\":50,\"51\":51,\"53\":53,\"54\":54,\"55\":55,\"57\":57,\"58\":58,\"59\":59,\"61\":61,\"62\":62,\"63\":63,\"65\":65,\"66\":66,\"67\":67}', '2024-09-23 07:16:28', '2024-09-23 07:16:28'),
(93, '5', 'Product Type', 'create', '{\"guard_name\":\"web\",\"name\":\"create_customer\",\"updated_at\":\"2024-09-23 13:17:27\",\"created_at\":\"2024-09-23 13:17:27\",\"id\":69}', '2024-09-23 07:17:27', '2024-09-23 07:17:27'),
(94, '5', 'Product Type', 'create', '{\"guard_name\":\"web\",\"name\":\"view_customer\",\"updated_at\":\"2024-09-23 13:17:31\",\"created_at\":\"2024-09-23 13:17:31\",\"id\":70}', '2024-09-23 07:17:31', '2024-09-23 07:17:31'),
(95, '5', 'Product Type', 'create', '{\"guard_name\":\"web\",\"name\":\"update_customer\",\"updated_at\":\"2024-09-23 13:17:36\",\"created_at\":\"2024-09-23 13:17:36\",\"id\":71}', '2024-09-23 07:17:36', '2024-09-23 07:17:36'),
(96, '5', 'Product Type', 'create', '{\"guard_name\":\"web\",\"name\":\"delete_customer\",\"updated_at\":\"2024-09-23 13:17:40\",\"created_at\":\"2024-09-23 13:17:40\",\"id\":72}', '2024-09-23 07:17:40', '2024-09-23 07:17:40'),
(97, '5', 'Permission To Role', 'Get', '{\"21\":21,\"22\":22,\"23\":23,\"24\":24,\"25\":25,\"26\":26,\"27\":27,\"28\":28,\"29\":29,\"30\":30,\"31\":31,\"32\":32,\"33\":33,\"34\":34,\"35\":35,\"36\":36,\"37\":37,\"38\":38,\"39\":39,\"40\":40,\"41\":41,\"42\":42,\"43\":43,\"44\":44,\"45\":45,\"46\":46,\"47\":47,\"48\":48,\"49\":49,\"50\":50,\"51\":51,\"52\":52,\"53\":53,\"54\":54,\"55\":55,\"56\":56,\"57\":57,\"58\":58,\"59\":59,\"60\":60,\"61\":61,\"62\":62,\"63\":63,\"64\":64,\"65\":65,\"66\":66,\"67\":67,\"68\":68}', '2024-09-23 07:18:02', '2024-09-23 07:18:02'),
(98, '5', 'Give Permission To Role', 'Added', '{\"id\":5,\"name\":\"Root\",\"guard_name\":\"web\",\"created_at\":\"2024-09-09 08:21:14\",\"updated_at\":\"2024-09-09 08:21:14\"}', '2024-09-23 07:18:09', '2024-09-23 07:18:09'),
(99, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"48\":48,\"49\":49,\"50\":50,\"51\":51,\"52\":52,\"53\":53,\"54\":54,\"55\":55,\"56\":56,\"57\":57,\"58\":58,\"59\":59,\"60\":60,\"61\":61,\"62\":62,\"63\":63,\"64\":64,\"65\":65,\"66\":66,\"67\":67,\"68\":68}', '2024-09-23 07:18:12', '2024-09-23 07:18:12'),
(100, '5', 'Give Permission To Role', 'Added', '{\"id\":6,\"name\":\"Branch Admin\",\"guard_name\":\"web\",\"created_at\":\"2024-09-22 16:28:45\",\"updated_at\":\"2024-09-22 16:28:45\"}', '2024-09-23 07:18:18', '2024-09-23 07:18:18'),
(101, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"49\":49,\"50\":50,\"51\":51,\"53\":53,\"54\":54,\"55\":55,\"57\":57,\"58\":58,\"59\":59,\"61\":61,\"62\":62,\"63\":63,\"65\":65,\"66\":66,\"67\":67}', '2024-09-23 07:18:20', '2024-09-23 07:18:20'),
(102, '5', 'Give Permission To Role', 'Added', '{\"id\":7,\"name\":\"Branch Manager\",\"guard_name\":\"web\",\"created_at\":\"2024-09-22 16:29:02\",\"updated_at\":\"2024-09-22 16:29:02\"}', '2024-09-23 07:18:27', '2024-09-23 07:18:27'),
(103, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"48\":48,\"49\":49,\"50\":50,\"51\":51,\"52\":52,\"53\":53,\"54\":54,\"55\":55,\"56\":56,\"57\":57,\"58\":58,\"59\":59,\"60\":60,\"61\":61,\"62\":62,\"63\":63,\"64\":64,\"65\":65,\"66\":66,\"67\":67,\"68\":68,\"69\":69,\"70\":70,\"71\":71}', '2024-09-23 07:18:29', '2024-09-23 07:18:29'),
(104, '5', 'Product Type', 'create', '{\"guard_name\":\"web\",\"name\":\"create_order\",\"updated_at\":\"2024-09-23 13:19:47\",\"created_at\":\"2024-09-23 13:19:47\",\"id\":73}', '2024-09-23 07:19:47', '2024-09-23 07:19:47'),
(105, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"48\":48,\"49\":49,\"50\":50,\"51\":51,\"52\":52,\"53\":53,\"54\":54,\"55\":55,\"56\":56,\"57\":57,\"58\":58,\"59\":59,\"60\":60,\"61\":61,\"62\":62,\"63\":63,\"64\":64,\"65\":65,\"66\":66,\"67\":67,\"68\":68,\"69\":69,\"70\":70,\"71\":71}', '2024-09-23 07:19:55', '2024-09-23 07:19:55'),
(106, '5', 'Give Permission To Role', 'Added', '{\"id\":6,\"name\":\"Branch Admin\",\"guard_name\":\"web\",\"created_at\":\"2024-09-22 16:28:45\",\"updated_at\":\"2024-09-22 16:28:45\"}', '2024-09-23 07:19:58', '2024-09-23 07:19:58'),
(107, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"49\":49,\"50\":50,\"51\":51,\"53\":53,\"54\":54,\"55\":55,\"57\":57,\"58\":58,\"59\":59,\"61\":61,\"62\":62,\"63\":63,\"65\":65,\"66\":66,\"67\":67,\"69\":69,\"70\":70,\"71\":71}', '2024-09-23 07:20:00', '2024-09-23 07:20:00'),
(108, '5', 'Give Permission To Role', 'Added', '{\"id\":7,\"name\":\"Branch Manager\",\"guard_name\":\"web\",\"created_at\":\"2024-09-22 16:29:02\",\"updated_at\":\"2024-09-22 16:29:02\"}', '2024-09-23 07:20:03', '2024-09-23 07:20:03'),
(109, '5', 'Permission To Role', 'Get', '{\"21\":21,\"22\":22,\"23\":23,\"24\":24,\"25\":25,\"26\":26,\"27\":27,\"28\":28,\"29\":29,\"30\":30,\"31\":31,\"32\":32,\"33\":33,\"34\":34,\"35\":35,\"36\":36,\"37\":37,\"38\":38,\"39\":39,\"40\":40,\"41\":41,\"42\":42,\"43\":43,\"44\":44,\"45\":45,\"46\":46,\"47\":47,\"48\":48,\"49\":49,\"50\":50,\"51\":51,\"52\":52,\"53\":53,\"54\":54,\"55\":55,\"56\":56,\"57\":57,\"58\":58,\"59\":59,\"60\":60,\"61\":61,\"62\":62,\"63\":63,\"64\":64,\"65\":65,\"66\":66,\"67\":67,\"68\":68,\"69\":69,\"70\":70,\"71\":71,\"72\":72}', '2024-09-23 07:20:11', '2024-09-23 07:20:11'),
(110, '5', 'Product Type', 'create', '{\"guard_name\":\"web\",\"name\":\"create_profile\",\"updated_at\":\"2024-09-23 13:59:25\",\"created_at\":\"2024-09-23 13:59:25\",\"id\":74}', '2024-09-23 07:59:25', '2024-09-23 07:59:25'),
(111, '5', 'Product Type', 'create', '{\"guard_name\":\"web\",\"name\":\"view_profile\",\"updated_at\":\"2024-09-23 13:59:35\",\"created_at\":\"2024-09-23 13:59:35\",\"id\":75}', '2024-09-23 07:59:35', '2024-09-23 07:59:35'),
(112, '5', 'Product Type', 'create', '{\"guard_name\":\"web\",\"name\":\"update_profile\",\"updated_at\":\"2024-09-23 13:59:47\",\"created_at\":\"2024-09-23 13:59:47\",\"id\":76}', '2024-09-23 07:59:47', '2024-09-23 07:59:47'),
(113, '5', 'Product Type', 'create', '{\"guard_name\":\"web\",\"name\":\"delete_profile\",\"updated_at\":\"2024-09-23 14:00:02\",\"created_at\":\"2024-09-23 14:00:02\",\"id\":77}', '2024-09-23 08:00:02', '2024-09-23 08:00:02'),
(114, '5', 'Permission To Role', 'Get', '{\"21\":21,\"22\":22,\"23\":23,\"24\":24,\"25\":25,\"26\":26,\"27\":27,\"28\":28,\"29\":29,\"30\":30,\"31\":31,\"32\":32,\"33\":33,\"34\":34,\"35\":35,\"36\":36,\"37\":37,\"38\":38,\"39\":39,\"40\":40,\"41\":41,\"42\":42,\"43\":43,\"44\":44,\"45\":45,\"46\":46,\"47\":47,\"48\":48,\"49\":49,\"50\":50,\"51\":51,\"52\":52,\"53\":53,\"54\":54,\"55\":55,\"56\":56,\"57\":57,\"58\":58,\"59\":59,\"60\":60,\"61\":61,\"62\":62,\"63\":63,\"64\":64,\"65\":65,\"66\":66,\"67\":67,\"68\":68,\"69\":69,\"70\":70,\"71\":71,\"72\":72}', '2024-09-23 08:02:09', '2024-09-23 08:02:09'),
(115, '5', 'Give Permission To Role', 'Added', '{\"id\":5,\"name\":\"Root\",\"guard_name\":\"web\",\"created_at\":\"2024-09-09 08:21:14\",\"updated_at\":\"2024-09-09 08:21:14\"}', '2024-09-23 08:03:59', '2024-09-23 08:03:59'),
(116, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"48\":48,\"49\":49,\"50\":50,\"51\":51,\"52\":52,\"53\":53,\"54\":54,\"55\":55,\"56\":56,\"57\":57,\"58\":58,\"59\":59,\"60\":60,\"61\":61,\"62\":62,\"63\":63,\"64\":64,\"65\":65,\"66\":66,\"67\":67,\"68\":68,\"69\":69,\"70\":70,\"71\":71,\"73\":73}', '2024-09-23 08:04:03', '2024-09-23 08:04:03'),
(117, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"48\":48,\"49\":49,\"50\":50,\"51\":51,\"52\":52,\"53\":53,\"54\":54,\"55\":55,\"56\":56,\"57\":57,\"58\":58,\"59\":59,\"60\":60,\"61\":61,\"62\":62,\"63\":63,\"64\":64,\"65\":65,\"66\":66,\"67\":67,\"68\":68,\"69\":69,\"70\":70,\"71\":71,\"73\":73}', '2024-09-23 08:05:28', '2024-09-23 08:05:28'),
(118, '5', 'Give Permission To Role', 'Added', '{\"id\":6,\"name\":\"Branch Admin\",\"guard_name\":\"web\",\"created_at\":\"2024-09-22 16:28:45\",\"updated_at\":\"2024-09-22 16:28:45\"}', '2024-09-23 08:05:34', '2024-09-23 08:05:34'),
(119, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"48\":48,\"49\":49,\"50\":50,\"51\":51,\"52\":52,\"53\":53,\"54\":54,\"55\":55,\"56\":56,\"57\":57,\"58\":58,\"59\":59,\"60\":60,\"61\":61,\"62\":62,\"63\":63,\"64\":64,\"65\":65,\"66\":66,\"67\":67,\"68\":68,\"69\":69,\"70\":70,\"71\":71,\"73\":73,\"75\":75,\"76\":76,\"77\":77}', '2024-09-23 08:05:38', '2024-09-23 08:05:38'),
(120, '5', 'Give Permission To Role', 'Added', '{\"id\":6,\"name\":\"Branch Admin\",\"guard_name\":\"web\",\"created_at\":\"2024-09-22 16:28:45\",\"updated_at\":\"2024-09-22 16:28:45\"}', '2024-09-23 08:05:44', '2024-09-23 08:05:44'),
(121, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"49\":49,\"50\":50,\"51\":51,\"53\":53,\"54\":54,\"55\":55,\"57\":57,\"58\":58,\"59\":59,\"61\":61,\"62\":62,\"63\":63,\"65\":65,\"66\":66,\"67\":67,\"69\":69,\"70\":70,\"71\":71,\"73\":73}', '2024-09-23 08:05:47', '2024-09-23 08:05:47'),
(122, '5', 'Give Permission To Role', 'Added', '{\"id\":7,\"name\":\"Branch Manager\",\"guard_name\":\"web\",\"created_at\":\"2024-09-22 16:29:02\",\"updated_at\":\"2024-09-22 16:29:02\"}', '2024-09-23 08:05:53', '2024-09-23 08:05:53'),
(123, '15', 'User Profile', 'update', '{\"name\":\"Dhali Abir\",\"phone\":\"01684924439\",\"updated_at\":\"2024-09-23 15:51:14\"}', '2024-09-23 09:51:14', '2024-09-23 09:51:14'),
(124, '5', 'User', 'update', '{\"email\":\"dhaliabir404@gmail.com\",\"password\":\"$2y$10$jFWPVxJIUZBK4XMvXzPRBeilQ8uaEsmuL6RRQBMHk1zqIb2yjIaQe\",\"updated_at\":\"2024-09-23 15:51:49\"}', '2024-09-23 09:51:49', '2024-09-23 09:51:49'),
(125, '15', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-23 09:51:54', '2024-09-23 09:51:54'),
(126, '15', 'User ', 'Login', '{\"id\":15,\"uid\":\"ee3b36b9-dd00-402f-88ba-7ce49edcf404\",\"name\":\"Dhali Abir\",\"phone\":\"01684924439\",\"email\":\"dhaliabir404@gmail.com\",\"address\":\"Mirpur-1,Dhaka,Bangladesh\",\"status\":null,\"profile_image\":\"assets\\/profile_img\\/66f12e585556b.png\",\"email_verified_at\":null,\"password\":\"$2y$10$svrJnFv2z2jk7uI79dQ1S.00Vrs7BiwRSK6zN2xPFDFOsL3GSrOiC\",\"remember_token\":null,\"created_at\":\"2024-09-22 17:36:18\",\"updated_at\":\"2024-09-23 15:52:56\",\"latitude\":\"23.7426541\",\"longitude\":\"90.4138215\"}', '2024-09-23 09:52:56', '2024-09-23 09:52:56'),
(127, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-09-23 17:01:29\",\"latitude\":\"\",\"longitude\":\"\"}', '2024-09-23 11:01:29', '2024-09-23 11:01:29'),
(128, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-09-23 17:03:58\",\"latitude\":\"23.7426509\",\"longitude\":\"90.4138233\"}', '2024-09-23 11:03:58', '2024-09-23 11:03:58'),
(129, '5', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-23 11:05:02', '2024-09-23 11:05:02'),
(130, '15', 'User ', 'Login', '{\"id\":15,\"uid\":\"ee3b36b9-dd00-402f-88ba-7ce49edcf404\",\"name\":\"Dhali Abir\",\"phone\":\"01684924439\",\"email\":\"dhaliabir404@gmail.com\",\"address\":\"Mirpur-1,Dhaka,Bangladesh\",\"status\":null,\"profile_image\":\"assets\\/profile_img\\/66f13d06cd000.png\",\"email_verified_at\":null,\"password\":\"$2y$10$svrJnFv2z2jk7uI79dQ1S.00Vrs7BiwRSK6zN2xPFDFOsL3GSrOiC\",\"remember_token\":null,\"created_at\":\"2024-09-22 17:36:18\",\"updated_at\":\"2024-09-23 17:05:13\",\"latitude\":\"23.7426554\",\"longitude\":\"90.4138195\"}', '2024-09-23 11:05:13', '2024-09-23 11:05:13'),
(131, '15', 'Customer', 'create', '{\"uid\":\"afc92ada-14d9-425e-9a07-8c2c7596f9a9\",\"name\":\"Rakib\",\"phone\":\"01384924439\",\"email\":\"rakib@gmail.com\",\"address\":\"Mirpur,Dhaka\",\"status\":\"A\",\"create_by\":15,\"create_date\":\"2024-09-23 17:06:08\",\"id\":23}', '2024-09-23 11:06:08', '2024-09-23 11:06:08'),
(132, '15', 'Order', 'create', '{\"order_number\":\"ORD-1727089568\",\"order_date\":\"2024-09-23T11:06:08.821809Z\",\"cust_id\":\"23\",\"vat_amount\":\"40.00\",\"discount_amount\":\"0.00\",\"received_amount\":\"500.00\",\"revised_amount\":\"-60.00\",\"total_amount\":\"440.00\",\"status\":\"A\",\"payment_status\":\"A\",\"payment_method\":\"Cash\",\"create_by\":15,\"create_date\":\"2024-09-23 17:06:08\",\"id\":52}', '2024-09-23 11:06:08', '2024-09-23 11:06:08'),
(133, '15', 'Order Details', 'create', '{\"id\":\"13\",\"uid\":\"d9cc22a2-55f4-4055-ae27-ecfeab4c5307\",\"title\":\"Cheesy Smash Burger\",\"imageUrl\":\"assets\\/product_img\\/66e0228a29953.jpg\",\"price\":200,\"quantity\":1}', '2024-09-23 11:06:08', '2024-09-23 11:06:08'),
(134, '15', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-09-23 11:07:21', '2024-09-23 11:07:21'),
(135, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-09-24 01:42:02\",\"latitude\":\"\",\"longitude\":\"\"}', '2024-09-23 19:42:02', '2024-09-23 19:42:02'),
(136, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-09-25 14:54:32\",\"latitude\":\"23.7426561\",\"longitude\":\"90.4138447\"}', '2024-09-25 08:54:32', '2024-09-25 08:54:32'),
(137, '5', 'Product Type', 'create', '{\"uid\":\"b563977e-cb52-4dbd-9b7f-62290e7e50c0\",\"name\":\"Cake\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 14:55:26\",\"id\":15}', '2024-09-25 08:55:26', '2024-09-25 08:55:26'),
(138, '5', 'Product Brand', 'delete', '{\"id\":1,\"uid\":\"cd30ecce-6a94-11ef-aab7-80ce628923b2\",\"name\":\"Foodi\",\"status\":\"Deleted\",\"create_by\":\"4\",\"create_date\":\"2024-09-03 11:18:52\",\"update_by\":5,\"update_date\":\"2024-09-25 14:55:41\"}', '2024-09-25 08:55:41', '2024-09-25 08:55:41'),
(139, '5', 'Product Category', 'create', '{\"name\":\"Cake\",\"uid\":\"c107ef79-dea8-43c5-b58a-bc179b111382\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 14:55:54\",\"id\":14}', '2024-09-25 08:55:54', '2024-09-25 08:55:54'),
(140, '5', 'Product Sub Category', 'create', '{\"name\":\"Black Forest Cake\",\"cat_id\":\"14\",\"uid\":\"3b03eff5-08d5-4ed2-bd54-395baf71853c\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 14:56:07\",\"id\":35}', '2024-09-25 08:56:07', '2024-09-25 08:56:07'),
(141, '5', 'Product', 'create', '{\"type_id\":\"15\",\"cat_id\":\"14\",\"subcat_id\":\"35\",\"brand_id\":\"1\",\"title\":\"Black Forest Cake 500gm\",\"subtitle\":\"Black Forest Cake 500gm\",\"details\":\"&amp;lt;h3&amp;gt;&amp;lt;strong&amp;gt;Black Forest Cake 500gm&amp;lt;\\/strong&amp;gt;&amp;lt;\\/h3&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Item code:&amp;amp;nbsp;46656&amp;lt;\\/strong&amp;gt;&amp;lt;\\/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Brand: Foodi&amp;lt;\\/strong&amp;gt;&amp;lt;\\/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Net Weight: 500gm&amp;lt;\\/strong&amp;gt;&amp;lt;\\/p&amp;gt;\",\"price_mrp\":\"810\",\"price_rp\":\"750\",\"image1\":\"assets\\/product_img\\/66f3d6c24969d.jpg\",\"image2\":\"\",\"image3\":\"\",\"image4\":\"\",\"uid\":\"c81662af-b49b-419e-9653-4eea06280ebe\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:24:18\",\"id\":15}', '2024-09-25 09:24:18', '2024-09-25 09:24:18'),
(142, '5', 'Product Sub Category', 'create', '{\"name\":\"Coated Cake\",\"cat_id\":\"14\",\"uid\":\"42e7464e-5122-4a64-8bc2-0f08873c52e7\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:24:42\",\"id\":36}', '2024-09-25 09:24:42', '2024-09-25 09:24:42'),
(143, '5', 'Product', 'create', '{\"type_id\":\"15\",\"cat_id\":\"14\",\"subcat_id\":\"35\",\"brand_id\":\"1\",\"title\":\"Chocolate Coated Cake 500gm\",\"subtitle\":\"Chocolate Coated Cake 500gm\",\"details\":\"&amp;lt;h2&amp;gt;&amp;lt;strong&amp;gt;Chocolate Coated Cake 500gm&amp;lt;\\/strong&amp;gt;&amp;lt;\\/h2&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Item code:&amp;amp;nbsp;46656&amp;lt;\\/strong&amp;gt;&amp;lt;\\/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Brand: Foodi&amp;lt;\\/strong&amp;gt;&amp;lt;\\/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Net Weight: 500gm&amp;lt;\\/strong&amp;gt;&amp;lt;\\/p&amp;gt;\",\"price_mrp\":\"765\",\"price_rp\":\"700\",\"image1\":\"assets\\/product_img\\/66f3d709ea0e9.jpeg\",\"image2\":\"\",\"image3\":\"\",\"image4\":\"\",\"uid\":\"8549ab84-1f1d-4f16-9e39-18d05646878a\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:25:29\",\"id\":16}', '2024-09-25 09:25:29', '2024-09-25 09:25:29'),
(144, '5', 'Product Type', 'create', '{\"uid\":\"2a7a4c6f-6fe3-4931-903c-255cc3d1eb09\",\"name\":\"Bread\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:26:41\",\"id\":16}', '2024-09-25 09:26:41', '2024-09-25 09:26:41'),
(145, '5', 'Product Category', 'create', '{\"name\":\"Bread\",\"uid\":\"c63b538a-3e19-46d6-8d7e-b743b438aa65\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:26:51\",\"id\":15}', '2024-09-25 09:26:51', '2024-09-25 09:26:51'),
(146, '5', 'Product Sub Category', 'create', '{\"name\":\"Milk Bread\",\"cat_id\":\"15\",\"uid\":\"836021eb-9ee9-4d7d-a825-f9689ae11fbc\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:27:05\",\"id\":37}', '2024-09-25 09:27:05', '2024-09-25 09:27:05'),
(147, '5', 'Product', 'create', '{\"type_id\":\"16\",\"cat_id\":\"15\",\"subcat_id\":\"37\",\"brand_id\":\"1\",\"title\":\"Milk Bread 350gm +\",\"subtitle\":\"Milk Bread 350gm +\",\"details\":\"&amp;lt;h2&amp;gt;&amp;lt;strong&amp;gt;Milk Bread 350gm +&amp;lt;\\/strong&amp;gt;&amp;lt;\\/h2&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Item code:&amp;amp;nbsp;46345&amp;lt;\\/strong&amp;gt;&amp;lt;\\/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Brand: Foodi&amp;lt;\\/strong&amp;gt;&amp;lt;\\/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Net Weight: 350gm&amp;lt;\\/strong&amp;gt;&amp;lt;\\/p&amp;gt;\",\"price_mrp\":\"80\",\"price_rp\":\"70\",\"image1\":\"assets\\/product_img\\/66f3d7a0e6bab.jpg\",\"image2\":\"\",\"image3\":\"\",\"image4\":\"\",\"uid\":\"083304d0-e231-4c8b-bd71-36e376bd2f39\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:28:00\",\"id\":17}', '2024-09-25 09:28:00', '2024-09-25 09:28:00'),
(148, '5', 'Product', 'create', '{\"type_id\":\"16\",\"cat_id\":\"15\",\"subcat_id\":\"37\",\"brand_id\":\"1\",\"title\":\"Butter Bun 100gm 1pcs\",\"subtitle\":\"Butter Bun 100gm 1pcs\",\"details\":\"&amp;lt;h2&amp;gt;&amp;lt;strong&amp;gt;Butter Bun 100gm 1pcs&amp;lt;\\/strong&amp;gt;&amp;lt;\\/h2&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Item code:&amp;amp;nbsp;45345&amp;lt;\\/strong&amp;gt;&amp;lt;\\/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Brand: Foodi&amp;lt;\\/strong&amp;gt;&amp;lt;\\/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Net Weight: 100gm&amp;lt;\\/strong&amp;gt;&amp;lt;\\/p&amp;gt;\",\"price_mrp\":\"40\",\"price_rp\":\"30\",\"image1\":\"assets\\/product_img\\/66f3d7de99e57.jpg\",\"image2\":\"\",\"image3\":\"\",\"image4\":\"\",\"uid\":\"374afe18-1c74-487d-b137-a25b6c3ccb44\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:29:02\",\"id\":18}', '2024-09-25 09:29:02', '2024-09-25 09:29:02'),
(149, '5', 'Product Category', 'create', '{\"name\":\"Bread &amp;amp; Bun\",\"uid\":\"6722e799-e237-467c-9862-5e200a14b0a4\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:29:33\",\"id\":16}', '2024-09-25 09:29:33', '2024-09-25 09:29:33'),
(150, '5', 'Product Sub Category', 'create', '{\"name\":\"Fruit Cake\",\"cat_id\":\"16\",\"uid\":\"681be255-79e1-444d-858f-6fc834ec9834\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:29:50\",\"id\":38}', '2024-09-25 09:29:50', '2024-09-25 09:29:50'),
(151, '5', 'Product', 'create', '{\"type_id\":\"16\",\"cat_id\":\"16\",\"subcat_id\":\"38\",\"brand_id\":\"1\",\"title\":\"Fruit Cake 1pcs\",\"subtitle\":\"Fruit Cake 1pcs\",\"details\":\"&amp;lt;h2&amp;gt;Fruit Cake 1pcs&amp;lt;\\/h2&amp;gt;\",\"price_mrp\":\"200\",\"price_rp\":\"180\",\"image1\":\"assets\\/product_img\\/66f3d836816af.jpg\",\"image2\":\"\",\"image3\":\"\",\"image4\":\"\",\"uid\":\"dfc279df-74ed-450d-9e65-c3d85fd48ba7\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:30:30\",\"id\":19}', '2024-09-25 09:30:30', '2024-09-25 09:30:30'),
(152, '5', 'Product Type', 'create', '{\"uid\":\"670098dd-f1b4-46e8-9d99-6894b748f4b8\",\"name\":\"Cold Drinks\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:31:13\",\"id\":17}', '2024-09-25 09:31:13', '2024-09-25 09:31:13'),
(153, '5', 'Product Category', 'create', '{\"name\":\"Beverage\",\"uid\":\"fed5ba62-0611-466e-aa95-294a51ec6b2b\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:31:19\",\"id\":17}', '2024-09-25 09:31:19', '2024-09-25 09:31:19'),
(154, '5', 'Product Sub Category', 'create', '{\"name\":\"Cold Drinks\",\"cat_id\":\"17\",\"uid\":\"cd574cad-70e0-478f-844c-307dd00c3db5\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:31:44\",\"id\":39}', '2024-09-25 09:31:44', '2024-09-25 09:31:44'),
(155, '5', 'Product', 'create', '{\"type_id\":\"17\",\"cat_id\":\"17\",\"subcat_id\":\"39\",\"brand_id\":\"1\",\"title\":\"Tango Orange 250ml\",\"subtitle\":\"Tango Orange 250ml\",\"details\":\"&amp;lt;h2&amp;gt;Tango Orange 250ml&amp;lt;\\/h2&amp;gt;\",\"price_mrp\":\"20\",\"price_rp\":\"19\",\"image1\":\"assets\\/product_img\\/66f3d8a777269.png\",\"image2\":\"\",\"image3\":\"\",\"image4\":\"\",\"uid\":\"b89c9276-a5b9-4398-b165-f99825880c0f\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:32:23\",\"id\":20}', '2024-09-25 09:32:23', '2024-09-25 09:32:23'),
(156, '5', 'Product', 'create', '{\"type_id\":\"17\",\"cat_id\":\"17\",\"subcat_id\":\"39\",\"brand_id\":\"1\",\"title\":\"Mojo Soft Drink 2 Lt\",\"subtitle\":\"Mojo Soft Drink 2 Lt\",\"details\":\"&amp;lt;h2&amp;gt;Mojo Soft Drink 2 Lt&amp;lt;\\/h2&amp;gt;\",\"price_mrp\":\"100\",\"price_rp\":\"90\",\"image1\":\"assets\\/product_img\\/66f3d8dfd2d4a.webp\",\"image2\":\"\",\"image3\":\"\",\"image4\":\"\",\"uid\":\"bd9a0103-a0fc-4860-9b96-bab9a1abb389\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:33:19\",\"id\":21}', '2024-09-25 09:33:19', '2024-09-25 09:33:19'),
(157, '5', 'Customer', 'create', '{\"uid\":\"79dc7b0d-14b5-4a33-bf48-c3c25084c963\",\"name\":\"Sabikun Nahar\",\"phone\":\"01684639206\",\"email\":\"nahar@gmail.com\",\"address\":\"Mirpur,Dhaka\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:35:15\",\"id\":24}', '2024-09-25 09:35:15', '2024-09-25 09:35:15'),
(158, '5', 'Order', 'create', '{\"order_number\":\"ORD-1727256915\",\"order_date\":\"2024-09-25T09:35:15.812388Z\",\"cust_id\":\"24\",\"vat_amount\":\"40.00\",\"discount_amount\":\"50.00\",\"received_amount\":\"390.00\",\"revised_amount\":\"0.00\",\"total_amount\":\"390.00\",\"status\":\"A\",\"payment_status\":\"A\",\"payment_method\":\"Cash\",\"create_by\":5,\"create_date\":\"2024-09-25 15:35:15\",\"id\":53}', '2024-09-25 09:35:15', '2024-09-25 09:35:15'),
(159, '5', 'Order Details', 'create', '{\"id\":\"20\",\"uid\":\"b89c9276-a5b9-4398-b165-f99825880c0f\",\"title\":\"Tango Orange 250ml\",\"imageUrl\":\"assets\\/product_img\\/66f3d8a777269.png\",\"price\":200,\"quantity\":1}', '2024-09-25 09:35:15', '2024-09-25 09:35:15'),
(160, '5', 'Product Type', 'delete', '{\"id\":1,\"uid\":\"cd30ecce-6a94-11ef-aab7-80ce628923b2\",\"name\":\"Testasdadad\",\"status\":\"Deleted\",\"create_by\":\"4\",\"create_date\":\"2024-09-04 06:28:01\",\"update_by\":5,\"update_date\":\"2024-09-25 15:38:42\"}', '2024-09-25 09:38:42', '2024-09-25 09:38:42'),
(161, '5', 'Product Type', 'create', '{\"uid\":\"1924bf5f-8f59-434c-a1dc-e97d350fe85b\",\"name\":\"Pastry\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:39:27\",\"id\":18}', '2024-09-25 09:39:27', '2024-09-25 09:39:27'),
(162, '5', 'Product Category', 'create', '{\"name\":\"Pastry\",\"uid\":\"452d20cc-1c76-4aed-8b3d-7b703a399ede\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:39:35\",\"id\":18}', '2024-09-25 09:39:35', '2024-09-25 09:39:35'),
(163, '5', 'Product Sub Category', 'create', '{\"name\":\"Pastry 80 gm\",\"cat_id\":\"18\",\"uid\":\"a0377301-10df-4028-a8b3-bd4450a8e70f\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:39:55\",\"id\":40}', '2024-09-25 09:39:55', '2024-09-25 09:39:55'),
(164, '5', 'Product', 'create', '{\"type_id\":\"18\",\"cat_id\":\"18\",\"subcat_id\":\"40\",\"brand_id\":\"1\",\"title\":\"Red Velvet Heart Shaped Pastry 80 gm\",\"subtitle\":\"Red Velvet Heart Shaped Pastry 80 gm\",\"details\":\"&amp;lt;p&amp;gt;Red Velvet Heart Shaped Pastry 80 gm&amp;lt;\\/p&amp;gt;\",\"price_mrp\":\"136\",\"price_rp\":\"136\",\"image1\":\"assets\\/product_img\\/66f3da939e9b1.jpg\",\"image2\":\"\",\"image3\":\"\",\"image4\":\"\",\"uid\":\"00b28241-f907-432d-a78e-f6c48fdf499c\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:40:35\",\"id\":22}', '2024-09-25 09:40:35', '2024-09-25 09:40:35');
INSERT INTO `logs` (`id`, `user_id`, `table_name`, `action`, `changes`, `created_at`, `updated_at`) VALUES
(165, '5', 'Product', 'create', '{\"type_id\":\"18\",\"cat_id\":\"18\",\"subcat_id\":\"40\",\"brand_id\":\"1\",\"title\":\"Vanilla Triangle Pastry 60gm -1 Slice\",\"subtitle\":\"Vanilla Triangle Pastry 60gm -1 Slice\",\"details\":\"&amp;lt;h2&amp;gt;Vanilla Triangle Pastry 60gm -1 Slice&amp;lt;\\/h2&amp;gt;\",\"price_mrp\":\"85\",\"price_rp\":\"85\",\"image1\":\"assets\\/product_img\\/66f3dabf71bec.jpg\",\"image2\":\"\",\"image3\":\"\",\"image4\":\"\",\"uid\":\"a5fb501a-7dae-46fe-a031-735f42955d15\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:41:19\",\"id\":23}', '2024-09-25 09:41:19', '2024-09-25 09:41:19'),
(166, '5', 'Product', 'create', '{\"type_id\":\"18\",\"cat_id\":\"18\",\"subcat_id\":\"40\",\"brand_id\":\"1\",\"title\":\"Marble Pastry 120 gm\",\"subtitle\":\"Marble Pastry 120 gm\",\"details\":\"&amp;lt;h2&amp;gt;Marble Pastry 120 gm&amp;lt;\\/h2&amp;gt;\",\"price_mrp\":\"136\",\"price_rp\":\"136\",\"image1\":\"assets\\/product_img\\/66f3daed5c16a.jpg\",\"image2\":\"\",\"image3\":\"\",\"image4\":\"\",\"uid\":\"9b54c1e9-44fa-4d70-8fe2-fa44bdb63630\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-09-25 15:42:05\",\"id\":24}', '2024-09-25 09:42:05', '2024-09-25 09:42:05'),
(167, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-09-25 15:57:54\",\"latitude\":\"\",\"longitude\":\"\"}', '2024-09-25 09:57:54', '2024-09-25 09:57:54'),
(168, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-09-25 15:57:54\",\"latitude\":\"\",\"longitude\":\"\"}', '2024-10-05 07:31:00', '2024-10-05 07:31:00'),
(169, '5', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-10-05 07:32:07', '2024-10-05 07:32:07'),
(170, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-10-14 12:38:18\",\"latitude\":\"23.74271264784674\",\"longitude\":\"90.41356185070765\"}', '2024-10-14 06:38:18', '2024-10-14 06:38:18'),
(171, '5', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-10-14 08:06:57', '2024-10-14 08:06:57'),
(172, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-10-14 14:07:12\",\"latitude\":\"23.742728099140344\",\"longitude\":\"90.41360155207391\"}', '2024-10-14 08:07:12', '2024-10-14 08:07:12'),
(173, '5', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-10-14 08:07:16', '2024-10-14 08:07:16'),
(174, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-10-14 14:35:18\",\"latitude\":\"23.742719398793867\",\"longitude\":\"90.41365288743823\"}', '2024-10-14 08:35:18', '2024-10-14 08:35:18'),
(175, '5', 'Product', 'update', '{\"uid\":\"bab0f56a-e8e4-4eb7-9459-2b97d308fa41\",\"details\":\"&amp;amp;amp;lt;h3&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Black Forest Cake 500gm&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/h3&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Item code:&amp;amp;amp;amp;nbsp;46656&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Brand: Foodi&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Net Weight: 500gm&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/p&amp;amp;amp;gt;\",\"image1\":\"assets\\/product_img\\/670cd7f8c0675.jpg\",\"update_by\":5,\"update_date\":\"2024-10-14 14:36:08\"}', '2024-10-14 08:36:08', '2024-10-14 08:36:08'),
(176, '5', 'Product', 'update', '{\"uid\":\"4be932ce-e75c-4028-9180-a0e645eee700\",\"details\":\"&amp;amp;amp;lt;h2&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Chocolate Coated Cake 500gm&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/h2&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Item code:&amp;amp;amp;amp;nbsp;46656&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Brand: Foodi&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Net Weight: 500gm&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/p&amp;amp;amp;gt;\",\"image1\":\"assets\\/product_img\\/670cd80a5c161.jpeg\",\"update_by\":5,\"update_date\":\"2024-10-14 14:36:26\"}', '2024-10-14 08:36:26', '2024-10-14 08:36:26'),
(177, '5', 'Product', 'update', '{\"uid\":\"5dcfa16b-ea9d-4827-a9ac-0c9808ad3183\",\"details\":\"&amp;amp;amp;lt;h2&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Milk Bread 350gm +&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/h2&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Item code:&amp;amp;amp;amp;nbsp;46345&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Brand: Foodi&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Net Weight: 350gm&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/p&amp;amp;amp;gt;\",\"image1\":\"assets\\/product_img\\/670cd81c57d81.jpg\",\"update_by\":5,\"update_date\":\"2024-10-14 14:36:44\"}', '2024-10-14 08:36:44', '2024-10-14 08:36:44'),
(178, '5', 'Product', 'update', '{\"uid\":\"aaefc765-27ab-46e0-9acd-6d5dc20cb939\",\"details\":\"&amp;amp;amp;lt;h2&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Butter Bun 100gm 1pcs&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/h2&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Item code:&amp;amp;amp;amp;nbsp;45345&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Brand: Foodi&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Net Weight: 100gm&amp;amp;amp;lt;\\/strong&amp;amp;amp;gt;&amp;amp;amp;lt;\\/p&amp;amp;amp;gt;\",\"image1\":\"assets\\/product_img\\/670cd82c3649f.jpg\",\"update_by\":5,\"update_date\":\"2024-10-14 14:37:00\"}', '2024-10-14 08:37:00', '2024-10-14 08:37:00'),
(179, '5', 'Product', 'update', '{\"uid\":\"e25702f3-b2a7-498d-ab83-3b8d77fbde54\",\"details\":\"&amp;amp;amp;lt;h2&amp;amp;amp;gt;Fruit Cake 1pcs&amp;amp;amp;lt;\\/h2&amp;amp;amp;gt;\",\"image1\":\"assets\\/product_img\\/670cd841237e0.jpg\",\"update_by\":5,\"update_date\":\"2024-10-14 14:37:21\"}', '2024-10-14 08:37:21', '2024-10-14 08:37:21'),
(180, '5', 'Product', 'update', '{\"uid\":\"e4c6cd86-85df-4df3-b5b5-a27ce70876f8\",\"details\":\"&amp;amp;amp;lt;h2&amp;amp;amp;gt;Tango Orange 250ml&amp;amp;amp;lt;\\/h2&amp;amp;amp;gt;\",\"image1\":\"assets\\/product_img\\/670cd84e9ff80.png\",\"update_by\":5,\"update_date\":\"2024-10-14 14:37:34\"}', '2024-10-14 08:37:34', '2024-10-14 08:37:34'),
(181, '5', 'Product', 'update', '{\"uid\":\"116fd821-83cd-47ab-80c7-5a6e0212993f\",\"details\":\"&amp;amp;amp;lt;h2&amp;amp;amp;gt;Mojo Soft Drink 2 Lt&amp;amp;amp;lt;\\/h2&amp;amp;amp;gt;\",\"image1\":\"assets\\/product_img\\/670cd85c216e1.webp\",\"update_by\":5,\"update_date\":\"2024-10-14 14:37:48\"}', '2024-10-14 08:37:48', '2024-10-14 08:37:48'),
(182, '5', 'Product', 'update', '{\"uid\":\"8e57f45c-6515-4bfd-be3b-dcf3dce55975\",\"details\":\"&amp;amp;amp;lt;p&amp;amp;amp;gt;Red Velvet Heart Shaped Pastry 80 gm&amp;amp;amp;lt;\\/p&amp;amp;amp;gt;\",\"image1\":\"assets\\/product_img\\/670cd867d1400.jpg\",\"update_by\":5,\"update_date\":\"2024-10-14 14:37:59\"}', '2024-10-14 08:37:59', '2024-10-14 08:37:59'),
(183, '5', 'Product', 'update', '{\"uid\":\"58d4510b-d01c-4724-bf32-70940a27f332\",\"details\":\"&amp;amp;amp;lt;h2&amp;amp;amp;gt;Vanilla Triangle Pastry 60gm -1 Slice&amp;amp;amp;lt;\\/h2&amp;amp;amp;gt;\",\"image1\":\"assets\\/product_img\\/670cd874b14f1.jpg\",\"update_by\":5,\"update_date\":\"2024-10-14 14:38:12\"}', '2024-10-14 08:38:12', '2024-10-14 08:38:12'),
(184, '5', 'Product', 'update', '{\"uid\":\"0e8091d0-3444-491c-9fb4-d3e471881e1d\",\"details\":\"&amp;amp;amp;lt;h2&amp;amp;amp;gt;Marble Pastry 120 gm&amp;amp;amp;lt;\\/h2&amp;amp;amp;gt;\",\"image1\":\"assets\\/product_img\\/670cd880b25c9.jpg\",\"update_by\":5,\"update_date\":\"2024-10-14 14:38:24\"}', '2024-10-14 08:38:24', '2024-10-14 08:38:24'),
(185, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-10-15 13:24:43\",\"latitude\":\"23.742718071846163\",\"longitude\":\"90.41365169081158\"}', '2024-10-15 07:24:43', '2024-10-15 07:24:43'),
(186, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-10-16 11:58:33\",\"latitude\":\"23.742734257551795\",\"longitude\":\"90.41367315411986\"}', '2024-10-16 05:58:33', '2024-10-16 05:58:33'),
(187, '5', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-10-16 06:17:00', '2024-10-16 06:17:00'),
(188, '15', 'User ', 'Login', '{\"id\":15,\"uid\":\"ee3b36b9-dd00-402f-88ba-7ce49edcf404\",\"name\":\"Dhali Abir\",\"phone\":\"01684924439\",\"email\":\"dhaliabir404@gmail.com\",\"address\":\"Mirpur-1,Dhaka,Bangladesh\",\"status\":null,\"profile_image\":\"assets\\/profile_img\\/66f13d06cd000.png\",\"email_verified_at\":null,\"password\":\"$2y$10$3\\/ZOSlF4AR98FWVqO6Xz9O2P1vCHRMy1bfm4WM7XV7acemRSLkp1S\",\"remember_token\":null,\"created_at\":\"2024-09-22 17:36:18\",\"updated_at\":\"2024-10-16 12:25:12\",\"latitude\":\"23.7426347\",\"longitude\":\"90.4137908\"}', '2024-10-16 06:25:12', '2024-10-16 06:25:12'),
(189, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-11-10 13:45:11\",\"latitude\":\"23.74266822675549\",\"longitude\":\"90.41362472581939\"}', '2024-11-10 07:45:11', '2024-11-10 07:45:11'),
(190, '5', 'Order', 'create', '{\"order_number\":\"ORD-1731224910\",\"order_date\":\"2024-11-10T07:48:30.511334Z\",\"cust_id\":\"24\",\"vat_amount\":\"60.00\",\"discount_amount\":\"50.00\",\"received_amount\":\"1000.00\",\"revised_amount\":\"-390.00\",\"total_amount\":\"610.00\",\"status\":\"A\",\"payment_status\":\"A\",\"payment_method\":\"Cash\",\"create_by\":5,\"create_date\":\"2024-11-10 13:48:30\",\"id\":54}', '2024-11-10 07:48:30', '2024-11-10 07:48:30'),
(191, '5', 'Order Details', 'create', '{\"id\":\"17\",\"uid\":\"5dcfa16b-ea9d-4827-a9ac-0c9808ad3183\",\"title\":\"Milk Bread 350gm +\",\"imageUrl\":\"assets\\/product_img\\/670cd81c57d81.jpg\",\"price\":200,\"quantity\":1}', '2024-11-10 07:48:30', '2024-11-10 07:48:30'),
(192, '5', 'Order', 'create', '{\"order_number\":\"ORD-1731225009\",\"order_date\":\"2024-11-10T07:50:09.268463Z\",\"cust_id\":\"9\",\"vat_amount\":\"60.00\",\"discount_amount\":\"0.00\",\"received_amount\":\"1000.00\",\"revised_amount\":\"-340.00\",\"total_amount\":\"660.00\",\"status\":\"A\",\"payment_status\":\"A\",\"payment_method\":\"Cash\",\"create_by\":5,\"create_date\":\"2024-11-10 13:50:09\",\"id\":55}', '2024-11-10 07:50:09', '2024-11-10 07:50:09'),
(193, '5', 'Order Details', 'create', '{\"id\":\"20\",\"uid\":\"e4c6cd86-85df-4df3-b5b5-a27ce70876f8\",\"title\":\"Tango Orange 250ml\",\"imageUrl\":\"assets\\/product_img\\/670cd84e9ff80.png\",\"price\":200,\"quantity\":1}', '2024-11-10 07:50:09', '2024-11-10 07:50:09'),
(194, '5', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-11-10 07:57:08', '2024-11-10 07:57:08'),
(195, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-11-10 13:57:14\",\"latitude\":\"23.7426678817716\",\"longitude\":\"90.41359797131489\"}', '2024-11-10 07:57:14', '2024-11-10 07:57:14'),
(196, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-11-18 11:25:01\",\"latitude\":\"23.7426474\",\"longitude\":\"90.4138167\"}', '2024-11-18 05:25:01', '2024-11-18 05:25:01'),
(197, '5', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-11-18 05:25:22', '2024-11-18 05:25:22'),
(198, '10', 'User ', 'Login', '{\"id\":10,\"uid\":\"a535c002-8e92-4157-a1fa-4216013d5bc0\",\"name\":\"Branch 1 Manager\",\"phone\":\"01222222\",\"email\":\"branch1manager@gmail.com\",\"address\":\"Mirpur-1,Dhaka,Bangladesh\",\"status\":null,\"profile_image\":\"\",\"email_verified_at\":null,\"password\":\"$2y$10$72mKMMGEbjM\\/mGE.3jn0yOYWjzbrxhbNM2EvwkhKlEFSa2lN46Gcu\",\"remember_token\":null,\"created_at\":\"2024-09-19 16:07:25\",\"updated_at\":\"2024-11-18 11:25:28\",\"latitude\":\"23.7426456\",\"longitude\":\"90.4137934\"}', '2024-11-18 05:25:28', '2024-11-18 05:25:28'),
(199, '10', 'Order', 'create', '{\"order_number\":\"ORD-1731907568\",\"order_date\":\"2024-11-18T05:26:08.245141Z\",\"cust_id\":\"9\",\"vat_amount\":\"40.00\",\"discount_amount\":\"20.00\",\"received_amount\":\"500.00\",\"revised_amount\":\"-80.00\",\"total_amount\":\"420.00\",\"status\":\"A\",\"payment_status\":\"A\",\"payment_method\":\"Cash\",\"create_by\":10,\"create_date\":\"2024-11-18 11:26:08\",\"id\":56}', '2024-11-18 05:26:08', '2024-11-18 05:26:08'),
(200, '10', 'Order Details', 'create', '{\"id\":\"22\",\"uid\":\"8e57f45c-6515-4bfd-be3b-dcf3dce55975\",\"title\":\"Red Velvet Heart Shaped Pastry 80 gm\",\"imageUrl\":\"assets\\/product_img\\/670cd867d1400.jpg\",\"price\":200,\"quantity\":1}', '2024-11-18 05:26:08', '2024-11-18 05:26:08'),
(201, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-12-08 21:27:20\",\"latitude\":\"23.7813093\",\"longitude\":\"90.3617945\"}', '2024-12-08 15:27:20', '2024-12-08 15:27:20'),
(202, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-12-09 10:31:25\",\"latitude\":\"\",\"longitude\":\"\"}', '2024-12-09 04:31:25', '2024-12-09 04:31:25'),
(203, '5', 'Customer', 'create', '{\"uid\":\"359cc83f-c576-4003-8ae3-3f13fc43775b\",\"name\":\"Rabbi\",\"phone\":\"01955109710\",\"email\":\"itrabbi24@gmail.com\",\"address\":\"Dhaka, Kallaynpur\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-12-09 10:33:42\",\"id\":25}', '2024-12-09 04:33:42', '2024-12-09 04:33:42'),
(204, '5', 'Order', 'create', '{\"order_number\":\"ORD-1733718826\",\"order_date\":\"2024-12-09T04:33:46.116372Z\",\"cust_id\":\"25\",\"vat_amount\":\"40.00\",\"discount_amount\":\"0.00\",\"received_amount\":\"0.00\",\"revised_amount\":\"440.00\",\"total_amount\":\"440.00\",\"status\":\"A\",\"payment_status\":\"A\",\"payment_method\":\"Cash\",\"create_by\":5,\"create_date\":\"2024-12-09 10:33:46\",\"id\":57}', '2024-12-09 04:33:46', '2024-12-09 04:33:46'),
(205, '5', 'Order Details', 'create', '{\"id\":\"14\",\"uid\":\"21d1164f-9d2a-409d-994b-b2a500046f85\",\"title\":\"Cheese & Shroom Smash Burger\",\"imageUrl\":\"assets\\/product_img\\/66e0230f91a8c.jpg\",\"price\":200,\"quantity\":2}', '2024-12-09 04:33:46', '2024-12-09 04:33:46'),
(206, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-12-09 12:11:57\",\"latitude\":\"23.7426192\",\"longitude\":\"90.4138104\"}', '2024-12-09 06:11:57', '2024-12-09 06:11:57'),
(207, '5', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-12-09 06:24:05', '2024-12-09 06:24:05'),
(208, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin1@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-12-09 12:25:41\",\"latitude\":\"23.7426325\",\"longitude\":\"90.4138099\"}', '2024-12-09 06:25:41', '2024-12-09 06:25:41'),
(209, '5', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-12-09 06:26:35', '2024-12-09 06:26:35'),
(210, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super1 Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin1@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-12-09 12:27:37\",\"latitude\":\"23.7426293\",\"longitude\":\"90.4138054\"}', '2024-12-09 06:27:37', '2024-12-09 06:27:37'),
(211, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super1 Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-12-09 18:54:16\",\"latitude\":\"23.7426391\",\"longitude\":\"90.4138132\"}', '2024-12-09 12:54:16', '2024-12-09 12:54:16'),
(212, '5', 'Sidebar Nav', 'create', '{\"uid\":\"3491d463-2a1e-4ebc-9244-80b65eb0814f\",\"parent_id\":null,\"name\":\"Inventory\",\"icon\":\"bi bi-people-fill\",\"url\":\"#\",\"order\":\"7\",\"is_collapsed\":\"1\",\"is_heading\":0,\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-12-09 18:59:18\",\"id\":63}', '2024-12-09 12:59:18', '2024-12-09 12:59:18'),
(213, '5', 'Sidebar Nav', 'create', '{\"uid\":\"7e2a4493-d304-488e-aeb5-675db987d4cb\",\"parent_id\":63,\"name\":\"Purchase\",\"icon\":\"bi\",\"url\":\"Roles\",\"order\":\"1\",\"is_collapsed\":\"1\",\"is_heading\":0,\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-12-09 19:00:13\",\"id\":64}', '2024-12-09 13:00:13', '2024-12-09 13:00:13'),
(214, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-12-09 13:00:42', '2024-12-09 13:00:42'),
(215, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2024-12-09 13:00:43', '2024-12-09 13:00:43'),
(216, '5', 'Sidebar Nav', 'update', '{\"url\":\"Purchase\",\"update_by\":5,\"update_date\":\"2024-12-09 19:13:49\"}', '2024-12-09 13:13:49', '2024-12-09 13:13:49'),
(217, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super1 Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2024-12-10 01:05:06\",\"latitude\":\"23.7856607\",\"longitude\":\"90.3613702\"}', '2024-12-09 19:05:06', '2024-12-09 19:05:06'),
(218, '5', 'Product Purchases', 'create', '{\"Product_ID\":\"14\",\"Category_ID\":\"2\",\"Sub_Category_ID\":\"3\",\"Vendor_ID\":\"1\",\"Challan_Number\":\"432\",\"Unit\":\"GM\",\"pro_type\":\"102\",\"Color\":\"3\",\"Size\":\"4\",\"Purchase_Qty\":\"22\",\"Purchase_Rate\":\"343\",\"Sales_Rate\":\"33\",\"Purchase_Payment_Type\":\"Cash\",\"Purchase_Date\":\"2024-12-10 02:19:04\",\"image\":{},\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-12-10 02:19:04\",\"id\":1}', '2024-12-09 20:19:04', '2024-12-09 20:19:04'),
(219, '5', 'Product Purchases', 'create', '{\"Product_ID\":\"12\",\"Category_ID\":\"2\",\"Sub_Category_ID\":\"1\",\"Vendor_ID\":\"1\",\"Challan_Number\":\"TESTA22\",\"Unit\":\"KG\",\"pro_type\":\"101\",\"Color\":\"1\",\"Size\":\"2\",\"Purchase_Qty\":\"5\",\"Purchase_Rate\":\"500\",\"Sales_Rate\":\"550\",\"Purchase_Payment_Type\":\"Cash\",\"Purchase_Date\":\"2024-12-10 02:32:07\",\"image\":\"assets\\/purchase_img\\/675753c743a2a.jpg\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-12-10 02:32:07\",\"id\":3}', '2024-12-09 20:32:07', '2024-12-09 20:32:07'),
(220, '5', 'Product Stock', 'create', '[{\"Purchase_ID\":3,\"pro_qrcode\":\"5d9f5c30-6f26-493f-9697-e8f3422290ef\",\"Product_ID\":\"12\",\"Category_ID\":\"2\",\"Sub_Category_ID\":\"1\",\"Purchase_Date\":\"2024-12-10 02:32:07\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-12-10 02:32:07\"},{\"Purchase_ID\":3,\"pro_qrcode\":\"9daf09f3-6b44-4080-a074-8673807b9c72\",\"Product_ID\":\"12\",\"Category_ID\":\"2\",\"Sub_Category_ID\":\"1\",\"Purchase_Date\":\"2024-12-10 02:32:07\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-12-10 02:32:07\"},{\"Purchase_ID\":3,\"pro_qrcode\":\"c4c61340-5448-4358-9991-49f0db176343\",\"Product_ID\":\"12\",\"Category_ID\":\"2\",\"Sub_Category_ID\":\"1\",\"Purchase_Date\":\"2024-12-10 02:32:07\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-12-10 02:32:07\"},{\"Purchase_ID\":3,\"pro_qrcode\":\"9524eac5-6c5d-4fcc-ac51-baa1d65e3023\",\"Product_ID\":\"12\",\"Category_ID\":\"2\",\"Sub_Category_ID\":\"1\",\"Purchase_Date\":\"2024-12-10 02:32:07\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-12-10 02:32:07\"},{\"Purchase_ID\":3,\"pro_qrcode\":\"e008ae7c-6b79-4c6d-8006-601d3f5ce756\",\"Product_ID\":\"12\",\"Category_ID\":\"2\",\"Sub_Category_ID\":\"1\",\"Purchase_Date\":\"2024-12-10 02:32:07\",\"status\":\"A\",\"create_by\":5,\"create_date\":\"2024-12-10 02:32:07\"}]', '2024-12-09 20:32:07', '2024-12-09 20:32:07'),
(221, '5', 'Brand Name', 'update', '{\"name\":\"Brand Beauty\",\"details\":\"SOC Foodi\",\"logo\":\"assets\\/logo\\/6757577024930.png\",\"update_date\":\"2024-12-10 02:47:44\"}', '2024-12-09 20:47:44', '2024-12-09 20:47:44'),
(222, '5', 'Brand Name', 'update', '{\"name\":\"Brand Shop\",\"details\":\"Brand Beauty\",\"update_date\":\"2024-12-10 02:48:10\"}', '2024-12-09 20:48:10', '2024-12-09 20:48:10'),
(223, '5', 'User ', 'Login', '{\"id\":5,\"uid\":\"4d33c03d-a283-4bc3-8322-4d5e7fa168de\",\"name\":\"Super1 Admin\",\"phone\":\"01684924439\",\"email\":\"superadmin@gmail.com\",\"address\":\"232\\/1,South, Paik-Para,Mirpur,Dhaka\",\"status\":\"A\",\"profile_image\":\"assets\\/profile_img\\/66f13d355f119.png\",\"email_verified_at\":\"2024-09-04 13:04:32\",\"password\":\"$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm\",\"remember_token\":null,\"created_at\":\"2024-09-04 13:04:32\",\"updated_at\":\"2025-02-15 17:19:31\",\"latitude\":\"23.7857496\",\"longitude\":\"90.3613519\"}', '2025-02-15 11:19:31', '2025-02-15 11:19:31'),
(224, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"49\":49,\"50\":50,\"51\":51,\"53\":53,\"54\":54,\"55\":55,\"57\":57,\"58\":58,\"59\":59,\"61\":61,\"62\":62,\"63\":63,\"65\":65,\"66\":66,\"67\":67,\"69\":69,\"70\":70,\"71\":71,\"73\":73,\"75\":75,\"76\":76,\"77\":77}', '2025-02-15 11:19:52', '2025-02-15 11:19:52'),
(225, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"49\":49,\"50\":50,\"51\":51,\"53\":53,\"54\":54,\"55\":55,\"57\":57,\"58\":58,\"59\":59,\"61\":61,\"62\":62,\"63\":63,\"65\":65,\"66\":66,\"67\":67,\"69\":69,\"70\":70,\"71\":71,\"73\":73,\"75\":75,\"76\":76,\"77\":77}', '2025-02-15 11:20:13', '2025-02-15 11:20:13'),
(226, '10', 'User ', 'Login', '{\"id\":10,\"uid\":\"a535c002-8e92-4157-a1fa-4216013d5bc0\",\"name\":\"Branch 1 Manager\",\"phone\":\"01222222\",\"email\":\"branch1manager@gmail.com\",\"address\":\"Mirpur-1,Dhaka,Bangladesh\",\"status\":null,\"profile_image\":\"\",\"email_verified_at\":null,\"password\":\"$2y$10$72mKMMGEbjM\\/mGE.3jn0yOYWjzbrxhbNM2EvwkhKlEFSa2lN46Gcu\",\"remember_token\":null,\"created_at\":\"2024-09-19 16:07:25\",\"updated_at\":\"2025-02-15 17:21:00\",\"latitude\":\"23.7857496\",\"longitude\":\"90.3613404\"}', '2025-02-15 11:21:00', '2025-02-15 11:21:00'),
(227, '10', 'Order', 'create', '{\"order_number\":\"ORD-1739618509\",\"order_date\":\"2025-02-15T11:21:49.290590Z\",\"cust_id\":\"9\",\"vat_amount\":\"20.00\",\"discount_amount\":\"10.00\",\"received_amount\":\"500.00\",\"revised_amount\":\"-290.00\",\"total_amount\":\"210.00\",\"status\":\"A\",\"payment_status\":\"A\",\"payment_method\":\"Cash\",\"create_by\":10,\"create_date\":\"2025-02-15 17:21:49\",\"id\":58}', '2025-02-15 11:21:49', '2025-02-15 11:21:49'),
(228, '10', 'Order Details', 'create', '{\"id\":\"12\",\"uid\":\"3bbb1e29-e7ac-49b7-bf02-d49ab6afc053\",\"title\":\"Beef Burger\",\"imageUrl\":\"assets\\/product_img\\/66e0213f2f492.webp\",\"price\":200,\"quantity\":1}', '2025-02-15 11:21:49', '2025-02-15 11:21:49'),
(229, '15', 'User ', 'Login', '{\"id\":15,\"uid\":\"ee3b36b9-dd00-402f-88ba-7ce49edcf404\",\"name\":\"Dhali Abir\",\"phone\":\"01684924439\",\"email\":\"dhaliabir404@gmail.com\",\"address\":\"Mirpur-1,Dhaka,Bangladesh\",\"status\":null,\"profile_image\":\"assets\\/profile_img\\/66f13d06cd000.png\",\"email_verified_at\":null,\"password\":\"$2y$10$72mKMMGEbjM\\/mGE.3jn0yOYWjzbrxhbNM2EvwkhKlEFSa2lN46Gcu\",\"remember_token\":null,\"created_at\":\"2024-09-22 17:36:18\",\"updated_at\":\"2025-02-15 17:26:09\",\"latitude\":\"23.7857672\",\"longitude\":\"90.3613357\"}', '2025-02-15 11:26:09', '2025-02-15 11:26:09'),
(230, '10', 'User Profile', 'update', NULL, '2025-02-15 11:26:54', '2025-02-15 11:26:54'),
(231, '10', 'User Profile', 'update', NULL, '2025-02-15 11:27:30', '2025-02-15 11:27:30'),
(232, '10', 'User Profile', 'update', NULL, '2025-02-15 11:27:57', '2025-02-15 11:27:57'),
(233, '10', 'User Profile', 'update', NULL, '2025-02-15 11:28:23', '2025-02-15 11:28:23'),
(234, '5', 'User', 'create', '{\"uid\":\"6fe758f7-fd7c-4ad3-a8e9-298381e9961f\",\"name\":\"Arsenio Mercer\",\"address\":\"Minima minima aut cu\",\"email\":\"luroxylar@mailinator.com\",\"phone\":\"7456456456\",\"password\":\"$2y$10$trtKDVIlTHpRyAK03sTy4uY0JAEAmAaOCPZ542gXiraYQMpZqdjQq\",\"updated_at\":\"2025-02-15 17:30:47\",\"created_at\":\"2025-02-15 17:30:47\",\"id\":17}', '2025-02-15 11:30:47', '2025-02-15 11:30:47'),
(235, '5', 'Role', 'create', '{\"guard_name\":\"web\",\"name\":\"Branch Keeper\",\"updated_at\":\"2025-02-15 17:31:20\",\"created_at\":\"2025-02-15 17:31:20\",\"id\":9}', '2025-02-15 11:31:20', '2025-02-15 11:31:20'),
(236, '5', 'User', 'update', '{\"password\":\"$2y$10$ctgc5J99OTmxFs\\/QnZkace.HnI1FXI4vK3VeR8u42hZjnCZJkIYlq\",\"updated_at\":\"2025-02-15 17:31:31\"}', '2025-02-15 11:31:31', '2025-02-15 11:31:31'),
(237, '17', 'User ', 'Login', '{\"id\":17,\"uid\":\"6fe758f7-fd7c-4ad3-a8e9-298381e9961f\",\"name\":\"Arsenio Mercer\",\"phone\":\"7456456456\",\"email\":\"luroxylar@mailinator.com\",\"address\":\"Minima minima aut cu\",\"status\":null,\"profile_image\":null,\"email_verified_at\":null,\"password\":\"$2y$10$72mKMMGEbjM\\/mGE.3jn0yOYWjzbrxhbNM2EvwkhKlEFSa2lN46Gcu\",\"remember_token\":null,\"created_at\":\"2025-02-15 17:30:47\",\"updated_at\":\"2025-02-15 17:32:36\",\"latitude\":\"23.7857543\",\"longitude\":\"90.3613465\"}', '2025-02-15 11:32:36', '2025-02-15 11:32:36'),
(238, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2025-02-15 11:32:55', '2025-02-15 11:32:55'),
(239, '5', 'Menu Permissions Role', 'Save', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2025-02-15 11:33:08', '2025-02-15 11:33:08'),
(240, '17', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2025-02-15 11:33:20', '2025-02-15 11:33:20'),
(241, '17', 'User ', 'Login', '{\"id\":17,\"uid\":\"6fe758f7-fd7c-4ad3-a8e9-298381e9961f\",\"name\":\"Arsenio Mercer\",\"phone\":\"7456456456\",\"email\":\"luroxylar@mailinator.com\",\"address\":\"Minima minima aut cu\",\"status\":null,\"profile_image\":null,\"email_verified_at\":null,\"password\":\"$2y$10$72mKMMGEbjM\\/mGE.3jn0yOYWjzbrxhbNM2EvwkhKlEFSa2lN46Gcu\",\"remember_token\":null,\"created_at\":\"2025-02-15 17:30:47\",\"updated_at\":\"2025-02-15 17:33:32\",\"latitude\":\"23.785756\",\"longitude\":\"90.361349\"}', '2025-02-15 11:33:32', '2025-02-15 11:33:32'),
(242, '10', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2025-02-15 11:33:50', '2025-02-15 11:33:50'),
(243, '10', 'User ', 'Login', '{\"id\":10,\"uid\":\"a535c002-8e92-4157-a1fa-4216013d5bc0\",\"name\":\"Branch 1 Manager\",\"phone\":\"01222222\",\"email\":\"branch1manager@gmail.com\",\"address\":\"Mirpur-1,Dhaka,Bangladesh\",\"status\":null,\"profile_image\":\"assets\\/profile_img\\/67b07a565cfa6.jpg\",\"email_verified_at\":null,\"password\":\"$2y$10$72mKMMGEbjM\\/mGE.3jn0yOYWjzbrxhbNM2EvwkhKlEFSa2lN46Gcu\",\"remember_token\":null,\"created_at\":\"2024-09-19 16:07:25\",\"updated_at\":\"2025-02-15 17:34:01\",\"latitude\":\"23.7857558\",\"longitude\":\"90.3613491\"}', '2025-02-15 11:34:01', '2025-02-15 11:34:01'),
(244, '17', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2025-02-15 11:34:15', '2025-02-15 11:34:15'),
(245, '17', 'User ', 'Login', '{\"id\":17,\"uid\":\"6fe758f7-fd7c-4ad3-a8e9-298381e9961f\",\"name\":\"Arsenio Mercer\",\"phone\":\"7456456456\",\"email\":\"luroxylar@mailinator.com\",\"address\":\"Minima minima aut cu\",\"status\":null,\"profile_image\":null,\"email_verified_at\":null,\"password\":\"$2y$10$72mKMMGEbjM\\/mGE.3jn0yOYWjzbrxhbNM2EvwkhKlEFSa2lN46Gcu\",\"remember_token\":null,\"created_at\":\"2025-02-15 17:30:47\",\"updated_at\":\"2025-02-15 17:34:27\",\"latitude\":\"23.7857521\",\"longitude\":\"90.3613452\"}', '2025-02-15 11:34:27', '2025-02-15 11:34:27'),
(246, '5', 'Permission To Role', 'Get', NULL, '2025-02-15 11:34:51', '2025-02-15 11:34:51'),
(247, '5', 'Give Permission To Role', 'Added', '{\"id\":9,\"name\":\"Branch Keeper\",\"guard_name\":\"web\",\"created_at\":\"2025-02-15 17:31:20\",\"updated_at\":\"2025-02-15 17:31:20\"}', '2025-02-15 11:34:57', '2025-02-15 11:34:57'),
(248, '17', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2025-02-15 11:35:07', '2025-02-15 11:35:07'),
(249, '17', 'User ', 'Login', '{\"id\":17,\"uid\":\"6fe758f7-fd7c-4ad3-a8e9-298381e9961f\",\"name\":\"Arsenio Mercer\",\"phone\":\"7456456456\",\"email\":\"luroxylar@mailinator.com\",\"address\":\"Minima minima aut cu\",\"status\":null,\"profile_image\":null,\"email_verified_at\":null,\"password\":\"$2y$10$72mKMMGEbjM\\/mGE.3jn0yOYWjzbrxhbNM2EvwkhKlEFSa2lN46Gcu\",\"remember_token\":null,\"created_at\":\"2025-02-15 17:30:47\",\"updated_at\":\"2025-02-15 17:35:19\",\"latitude\":\"23.7857505\",\"longitude\":\"90.3613495\"}', '2025-02-15 11:35:19', '2025-02-15 11:35:19'),
(250, '5', 'Permission To Role', 'Get', '{\"65\":65}', '2025-02-15 11:35:23', '2025-02-15 11:35:23'),
(251, '5', 'Give Permission To Role', 'Added', '{\"id\":9,\"name\":\"Branch Keeper\",\"guard_name\":\"web\",\"created_at\":\"2025-02-15 17:31:20\",\"updated_at\":\"2025-02-15 17:31:20\"}', '2025-02-15 11:35:37', '2025-02-15 11:35:37'),
(252, '5', 'Permission To Role', 'Get', '{\"65\":65,\"66\":66}', '2025-02-15 11:35:42', '2025-02-15 11:35:42'),
(253, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"49\":49,\"50\":50,\"51\":51,\"53\":53,\"54\":54,\"55\":55,\"57\":57,\"58\":58,\"59\":59,\"61\":61,\"62\":62,\"63\":63,\"65\":65,\"66\":66,\"67\":67,\"69\":69,\"70\":70,\"71\":71,\"73\":73,\"75\":75,\"76\":76,\"77\":77}', '2025-02-15 11:36:20', '2025-02-15 11:36:20'),
(254, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"49\":49,\"50\":50,\"51\":51,\"53\":53,\"54\":54,\"55\":55,\"57\":57,\"58\":58,\"59\":59,\"61\":61,\"62\":62,\"63\":63,\"65\":65,\"66\":66,\"67\":67,\"69\":69,\"70\":70,\"71\":71,\"73\":73,\"75\":75,\"76\":76,\"77\":77}', '2025-02-15 11:36:24', '2025-02-15 11:36:24'),
(255, '5', 'Permission To Role', 'Get', '{\"65\":65,\"66\":66}', '2025-02-15 11:36:31', '2025-02-15 11:36:31'),
(256, '5', 'Give Permission To Role', 'Added', '{\"id\":9,\"name\":\"Branch Keeper\",\"guard_name\":\"web\",\"created_at\":\"2025-02-15 17:31:20\",\"updated_at\":\"2025-02-15 17:31:20\"}', '2025-02-15 11:36:35', '2025-02-15 11:36:35'),
(257, '17', 'User ', 'Logout', '{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}', '2025-02-15 11:36:41', '2025-02-15 11:36:41'),
(258, '17', 'User ', 'Login', '{\"id\":17,\"uid\":\"6fe758f7-fd7c-4ad3-a8e9-298381e9961f\",\"name\":\"Arsenio Mercer\",\"phone\":\"7456456456\",\"email\":\"luroxylar@mailinator.com\",\"address\":\"Minima minima aut cu\",\"status\":null,\"profile_image\":null,\"email_verified_at\":null,\"password\":\"$2y$10$72mKMMGEbjM\\/mGE.3jn0yOYWjzbrxhbNM2EvwkhKlEFSa2lN46Gcu\",\"remember_token\":null,\"created_at\":\"2025-02-15 17:30:47\",\"updated_at\":\"2025-02-15 17:36:52\",\"latitude\":\"23.785758\",\"longitude\":\"90.3613488\"}', '2025-02-15 11:36:52', '2025-02-15 11:36:52'),
(259, '5', 'Permission To Role', 'Get', '{\"65\":65,\"66\":66,\"67\":67}', '2025-02-15 11:36:57', '2025-02-15 11:36:57'),
(260, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"49\":49,\"50\":50,\"51\":51,\"53\":53,\"54\":54,\"55\":55,\"57\":57,\"58\":58,\"59\":59,\"61\":61,\"62\":62,\"63\":63,\"65\":65,\"66\":66,\"67\":67,\"69\":69,\"70\":70,\"71\":71,\"73\":73,\"75\":75,\"76\":76,\"77\":77}', '2025-02-15 11:36:59', '2025-02-15 11:36:59'),
(261, '5', 'Permission To Role', 'Get', '{\"65\":65,\"66\":66,\"67\":67}', '2025-02-15 11:37:04', '2025-02-15 11:37:04'),
(262, '5', 'Give Permission To Role', 'Added', '{\"id\":9,\"name\":\"Branch Keeper\",\"guard_name\":\"web\",\"created_at\":\"2025-02-15 17:31:20\",\"updated_at\":\"2025-02-15 17:31:20\"}', '2025-02-15 11:37:14', '2025-02-15 11:37:14'),
(263, '5', 'Permission To Role', 'Get', '{\"65\":65,\"66\":66,\"67\":67,\"69\":69,\"70\":70,\"71\":71}', '2025-02-15 11:37:21', '2025-02-15 11:37:21'),
(264, '5', 'Give Permission To Role', 'Added', '{\"id\":9,\"name\":\"Branch Keeper\",\"guard_name\":\"web\",\"created_at\":\"2025-02-15 17:31:20\",\"updated_at\":\"2025-02-15 17:31:20\"}', '2025-02-15 11:37:31', '2025-02-15 11:37:31'),
(265, '5', 'Permission To Role', 'Get', '{\"45\":45,\"46\":46,\"47\":47,\"49\":49,\"50\":50,\"51\":51,\"53\":53,\"54\":54,\"55\":55,\"57\":57,\"58\":58,\"59\":59,\"61\":61,\"62\":62,\"63\":63,\"65\":65,\"66\":66,\"67\":67,\"69\":69,\"70\":70,\"71\":71,\"73\":73,\"75\":75,\"76\":76,\"77\":77}', '2025-02-15 11:38:47', '2025-02-15 11:38:47'),
(266, '5', 'Permission To Role', 'Get', '{\"49\":49,\"50\":50,\"51\":51,\"53\":53,\"54\":54,\"55\":55,\"57\":57,\"58\":58,\"59\":59,\"61\":61,\"62\":62,\"63\":63,\"65\":65,\"66\":66,\"67\":67,\"69\":69,\"70\":70,\"71\":71}', '2025-02-15 12:02:38', '2025-02-15 12:02:38'),
(267, '5', 'Give Permission To Role', 'Added', '{\"id\":9,\"name\":\"Branch Keeper\",\"guard_name\":\"web\",\"created_at\":\"2025-02-15 17:31:20\",\"updated_at\":\"2025-02-15 17:31:20\"}', '2025-02-15 12:02:53', '2025-02-15 12:02:53'),
(268, '5', 'Permission To Role', 'Get', NULL, '2025-02-15 12:02:57', '2025-02-15 12:02:57'),
(269, '5', 'Permission To Role', 'Get', NULL, '2025-02-15 12:03:07', '2025-02-15 12:03:07'),
(270, '5', 'Give Permission To Role', 'Added', '{\"id\":9,\"name\":\"Branch Keeper\",\"guard_name\":\"web\",\"created_at\":\"2025-02-15 17:31:20\",\"updated_at\":\"2025-02-15 17:31:20\"}', '2025-02-15 12:03:11', '2025-02-15 12:03:11'),
(271, '5', 'Permission To Role', 'Get', '{\"65\":65}', '2025-02-15 12:03:25', '2025-02-15 12:03:25'),
(272, '5', 'Permission To Role', 'Get', '{\"65\":65}', '2025-02-15 12:04:11', '2025-02-15 12:04:11');

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
(5, '2024_09_01_105725_create_permission_tables', 1),
(6, '2024_09_11_105900_create_sms_orders_table', 2),
(7, '2024_09_11_105930_create_sms_order_dtl_table', 3),
(10, '2024_09_11_122746_create_customers_table', 4),
(11, '2024_09_22_130714_create_logs_table', 5);

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
(5, 'App\\Models\\User', 5),
(6, 'App\\Models\\User', 15),
(7, 'App\\Models\\User', 10),
(9, 'App\\Models\\User', 17);

-- --------------------------------------------------------

--
-- Table structure for table `operationlogs`
--

CREATE TABLE `operationlogs` (
  `LogID` int(11) NOT NULL,
  `OperationType` varchar(10) DEFAULT NULL,
  `TableName` varchar(50) DEFAULT NULL,
  `RecordID` int(11) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT current_timestamp(),
  `OldValues` text DEFAULT NULL,
  `NewValues` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operationlogs`
--

INSERT INTO `operationlogs` (`LogID`, `OperationType`, `TableName`, `RecordID`, `ChangeDate`, `OldValues`, `NewValues`) VALUES
(1, 'CREATE', 'sms_protype', 10, '2024-09-19 15:37:49', NULL, 'uid:c62ab348-7e0d-4dcb-bf86-b6e549347297, name:Teset, status:A, create_by:5, create_date:2024-09-19 15:37:49'),
(2, 'CREATE', 'users', 10, '2024-09-19 16:07:25', NULL, NULL),
(3, 'UPDATE', 'sms_web_sidebar_menu', 60, '2024-09-19 17:09:46', NULL, 'uid:b3a90318-93b8-4731-af6d-417cd78e0de2, parent_id:52, name:Best Customer, icon:bi, url:Reports.topCustomers, order:8, is_collapsed:1, is_heading:0, permission_id:0, status:A, update_by:5, update_date:2024-09-19 17:09:46'),
(4, 'UPDATE', 'sms_web_sidebar_menu', 60, '2024-09-19 17:10:39', 'uid:b3a90318-93b8-4731-af6d-417cd78e0de2, parent_id:52, name:Best Customer, icon:bi, url:Reports.topCustomers, order:8, is_collapsed:1, is_heading:0, permission_id:0, status:A, update_by:5, update_date:2024-09-19 17:09:46', 'uid:b3a90318-93b8-4731-af6d-417cd78e0de2, parent_id:52, name:Best Customer, icon:bi, url:top-customers, order:8, is_collapsed:1, is_heading:0, permission_id:0, status:A, update_by:5, update_date:2024-09-19 17:10:39'),
(5, 'UPDATE', 'sms_web_sidebar_menu', 59, '2024-09-19 17:12:06', NULL, 'uid:379a79b7-46ce-46e1-a56c-48be96d3feb3, parent_id:52, name:Top Selling Products, icon:bi, url:top-selling-products, order:7, is_collapsed:1, is_heading:0, permission_id:0, status:A, update_by:5, update_date:2024-09-19 17:12:06'),
(6, 'UPDATE', 'sms_web_sidebar_menu', 56, '2024-09-19 17:12:24', NULL, 'uid:796847ac-8b89-4507-b950-e14b48659fc8, parent_id:52, name:Sale Report, icon:bi, url:sales-report, order:4, is_collapsed:1, is_heading:0, permission_id:0, status:A, update_by:5, update_date:2024-09-19 17:12:24'),
(7, 'UPDATE', 'sms_web_sidebar_menu', 57, '2024-09-19 17:12:41', NULL, 'uid:9f2a1afd-4a6a-470f-b53d-1c85e9a236a5, parent_id:52, name:Profit and Loss, icon:bi, url:report, order:5, is_collapsed:1, is_heading:0, permission_id:0, status:Deleted, update_by:5, update_date:2024-09-19 17:12:41'),
(8, 'UPDATE', 'sms_web_sidebar_menu', 53, '2024-09-19 17:13:01', NULL, 'uid:eeb8a521-5af5-4730-9374-d1e25bad7b47, parent_id:52, name:Stock Report, icon:bi, url:report, order:1, is_collapsed:1, is_heading:0, permission_id:0, status:Deleted, update_by:5, update_date:2024-09-19 17:13:01'),
(9, 'UPDATE', 'sms_web_sidebar_menu', 62, '2024-09-19 17:13:50', NULL, 'uid:66020a9e-c7b4-43f7-9421-87d1cfd0eb53, parent_id:52, name:Sale Info, icon:bi, url:sales-info-report, order:10, is_collapsed:1, is_heading:0, permission_id:0, status:A, update_by:5, update_date:2024-09-19 17:13:50'),
(10, 'UPDATE', 'sms_web_sidebar_menu', 61, '2024-09-19 17:18:29', NULL, NULL),
(11, 'UPDATE', 'sms_web_sidebar_menu', 55, '2024-09-19 17:24:29', NULL, NULL),
(12, 'DELETE', 'sms_web_sidebar_menu', 57, '2024-09-19 17:27:55', 'uid:9f2a1afd-4a6a-470f-b53d-1c85e9a236a5, parent_id:52, name:Profit and Loss, icon:bi, url:report, order:5, is_collapsed:1, is_heading:0, permission_id:0, status:Deleted, create_by:5, create_date:2024-09-19 15:03:50, update_by:5, update_date:2024-09-19 17:12:41', NULL),
(13, 'DELETE', 'sms_web_sidebar_menu', 53, '2024-09-19 17:28:02', 'uid:eeb8a521-5af5-4730-9374-d1e25bad7b47, parent_id:52, name:Stock Report, icon:bi, url:report, order:1, is_collapsed:1, is_heading:0, permission_id:0, status:Deleted, create_by:5, create_date:2024-09-19 15:02:57, update_by:5, update_date:2024-09-19 17:13:01', NULL),
(14, 'UPDATE', 'sms_web_sidebar_menu', 58, '2024-09-19 17:33:05', NULL, NULL),
(15, 'UPDATE', 'sms_web_sidebar_menu', 58, '2024-09-19 17:33:10', NULL, 'uid:f2926378-d129-49b5-9e20-5bac6f4c40ac, parent_id:52, name:Due Report, icon:bi, url:report, order:6, is_collapsed:1, is_heading:0, permission_id:0, status:A, update_by:5, update_date:2024-09-19 17:33:10'),
(16, 'UPDATE', 'sms_web_sidebar_menu', 58, '2024-09-19 17:33:22', 'uid:f2926378-d129-49b5-9e20-5bac6f4c40ac, parent_id:52, name:Due Report, icon:bi, url:report, order:6, is_collapsed:1, is_heading:0, permission_id:0, status:A, update_by:5, update_date:2024-09-19 17:33:10', 'uid:f2926378-d129-49b5-9e20-5bac6f4c40ac, parent_id:52, name:Due Report, icon:bi, url:due-report, order:6, is_collapsed:1, is_heading:0, permission_id:0, status:A, update_by:5, update_date:2024-09-19 17:33:10'),
(17, 'CREATE', 'sms_orders', 48, '2024-09-19 17:34:36', NULL, NULL),
(18, 'CREATE', 'sms_order_dtl', 15, '2024-09-19 17:34:37', NULL, 'order_id:48, pro_id:12, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:5, create_date:2024-09-19 17:34:37'),
(19, 'UPDATE', 'sms_orders', 48, '2024-09-19 17:35:03', NULL, NULL),
(20, 'UPDATE', 'users', 5, '2024-09-22 12:00:39', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:010000000, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-19 11:14:36, latitude:23.7426288, longitude:90.4138425', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:010000000, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 12:00:39, latitude:23.7426581, longitude:90.4138271'),
(21, 'UPDATE', 'users', 5, '2024-09-22 12:26:37', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:010000000, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 12:00:39, latitude:23.7426581, longitude:90.4138271', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:010000000, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 12:26:37, latitude:23.742466606240303, longitude:90.41341814861782'),
(22, 'CREATE', 'sms_orders', 49, '2024-09-22 13:01:18', NULL, NULL),
(23, 'CREATE', 'sms_order_dtl', 16, '2024-09-22 13:01:18', NULL, 'order_id:49, pro_id:14, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:5, create_date:2024-09-22 13:01:18'),
(24, 'CREATE', 'sms_protype', 11, '2024-09-22 13:16:52', NULL, 'uid:8a557ccd-e314-4ded-8c9e-7a6dccd39a30, name:Test, status:A, create_by:5, create_date:2024-09-22 13:16:52'),
(25, 'CREATE', 'sms_protype', 12, '2024-09-22 13:17:09', NULL, 'uid:50ecc2f6-754a-4165-b776-f69ec78bfd48, name:Test, status:A, create_by:5, create_date:2024-09-22 13:17:09'),
(26, 'CREATE', 'sms_protype', 13, '2024-09-22 13:18:49', NULL, 'uid:602cfe60-30a4-493c-8bf1-aef1f24b5af3, name:Test, status:A, create_by:5, create_date:2024-09-22 13:18:49'),
(27, 'UPDATE', 'sms_protype', 13, '2024-09-22 13:19:41', NULL, 'uid:602cfe60-30a4-493c-8bf1-aef1f24b5af3, name:Test, status:Deleted, create_by:5, create_date:2024-09-22 13:18:49, update_by:5, update_date:2024-09-22 13:19:41'),
(28, 'UPDATE', 'sms_protype', 12, '2024-09-22 13:20:14', NULL, 'uid:50ecc2f6-754a-4165-b776-f69ec78bfd48, name:Test, status:Deleted, create_by:5, create_date:2024-09-22 13:17:09, update_by:5, update_date:2024-09-22 13:20:14'),
(29, 'UPDATE', 'sms_protype', 11, '2024-09-22 13:20:17', NULL, 'uid:8a557ccd-e314-4ded-8c9e-7a6dccd39a30, name:Test, status:Deleted, create_by:5, create_date:2024-09-22 13:16:52, update_by:5, update_date:2024-09-22 13:20:17'),
(30, 'UPDATE', 'sms_protype', 10, '2024-09-22 13:20:26', NULL, 'uid:c62ab348-7e0d-4dcb-bf86-b6e549347297, name:Tesetss, status:A, create_by:5, create_date:2024-09-19 15:37:49, update_by:5, update_date:2024-09-22 13:20:26'),
(31, 'UPDATE', 'sms_protype', 10, '2024-09-22 13:20:35', 'uid:c62ab348-7e0d-4dcb-bf86-b6e549347297, name:Tesetss, status:A, create_by:5, create_date:2024-09-19 15:37:49, update_by:5, update_date:2024-09-22 13:20:26', 'uid:c62ab348-7e0d-4dcb-bf86-b6e549347297, name:Tesetss, status:A, create_by:5, create_date:2024-09-19 15:37:49, update_by:5, update_date:2024-09-22 13:20:35'),
(32, 'UPDATE', 'sms_protype', 10, '2024-09-22 13:21:16', 'uid:c62ab348-7e0d-4dcb-bf86-b6e549347297, name:Tesetss, status:A, create_by:5, create_date:2024-09-19 15:37:49, update_by:5, update_date:2024-09-22 13:20:35', 'uid:c62ab348-7e0d-4dcb-bf86-b6e549347297, name:Tesetss, status:A, create_by:5, create_date:2024-09-19 15:37:49, update_by:5, update_date:2024-09-22 13:21:16'),
(33, 'UPDATE', 'sms_protype', 10, '2024-09-22 13:21:52', 'uid:c62ab348-7e0d-4dcb-bf86-b6e549347297, name:Tesetss, status:A, create_by:5, create_date:2024-09-19 15:37:49, update_by:5, update_date:2024-09-22 13:21:16', 'uid:c62ab348-7e0d-4dcb-bf86-b6e549347297, name:Burger, status:A, create_by:5, create_date:2024-09-19 15:37:49, update_by:5, update_date:2024-09-22 13:21:52'),
(34, 'UPDATE', 'sms_web_sidebar_menu', 50, '2024-09-22 13:26:42', NULL, NULL),
(35, 'UPDATE', 'sms_web_sidebar_menu', 44, '2024-09-22 13:27:22', NULL, NULL),
(36, 'CREATE', 'sms_probrand', 5, '2024-09-22 13:27:45', NULL, 'uid:a4817b23-2635-440e-a83c-18b20430975c, name:Brandd2, status:A, create_by:5, create_date:2024-09-22 13:27:45'),
(37, 'UPDATE', 'sms_probrand', 5, '2024-09-22 13:27:55', NULL, 'uid:a4817b23-2635-440e-a83c-18b20430975c, name:Brandd2 11, status:A, create_by:5, create_date:2024-09-22 13:27:45, update_by:5, update_date:2024-09-22 13:27:55'),
(38, 'UPDATE', 'sms_probrand', 5, '2024-09-22 13:28:17', 'uid:a4817b23-2635-440e-a83c-18b20430975c, name:Brandd2 11, status:A, create_by:5, create_date:2024-09-22 13:27:45, update_by:5, update_date:2024-09-22 13:27:55', 'uid:a4817b23-2635-440e-a83c-18b20430975c, name:Brandd2 11, status:Deleted, create_by:5, create_date:2024-09-22 13:27:45, update_by:5, update_date:2024-09-22 13:28:17'),
(39, 'CREATE', 'sms_procategory', 13, '2024-09-22 13:30:18', NULL, 'uid:dd9cf056-dc32-4258-8407-e5e2b57bd636, name:AAA, status:A, create_by:5, create_date:2024-09-22 13:30:18'),
(40, 'UPDATE', 'sms_procategory', 13, '2024-09-22 13:30:36', NULL, 'uid:dd9cf056-dc32-4258-8407-e5e2b57bd636, name:AAA1111, status:A, create_by:5, create_date:2024-09-22 13:30:18, update_by:5, update_date:2024-09-22 13:30:36'),
(41, 'UPDATE', 'sms_procategory', 13, '2024-09-22 13:30:45', 'uid:dd9cf056-dc32-4258-8407-e5e2b57bd636, name:AAA1111, status:A, create_by:5, create_date:2024-09-22 13:30:18, update_by:5, update_date:2024-09-22 13:30:36', 'uid:dd9cf056-dc32-4258-8407-e5e2b57bd636, name:AAA1111, status:Deleted, create_by:5, create_date:2024-09-22 13:30:18, update_by:5, update_date:2024-09-22 13:30:45'),
(42, 'UPDATE', 'users', 5, '2024-09-22 13:51:40', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:010000000, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 12:26:37, latitude:23.742466606240303, longitude:90.41341814861782', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:010000000, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 13:51:40, latitude:23.742626174922147, longitude:90.41360828841368'),
(43, 'UPDATE', 'users', 5, '2024-09-22 14:03:06', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:010000000, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 13:51:40, latitude:23.742626174922147, longitude:90.41360828841368', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:010000000, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 14:03:06, latitude:23.74262572284886, longitude:90.41356589103403'),
(44, 'CREATE', 'sms_orders', 50, '2024-09-22 14:47:21', NULL, NULL),
(45, 'CREATE', 'sms_order_dtl', 17, '2024-09-22 14:47:21', NULL, 'order_id:50, pro_id:13, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:5, create_date:2024-09-22 14:47:21'),
(46, 'UPDATE', 'users', 5, '2024-09-22 15:17:26', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:010000000, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 14:03:06, latitude:23.74262572284886, longitude:90.41356589103403', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:010000000, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 15:17:26, latitude:23.74262572284886, longitude:90.41356589103403'),
(47, 'UPDATE', 'users', 5, '2024-09-22 15:19:09', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:010000000, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 15:17:26, latitude:23.74262572284886, longitude:90.41356589103403', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 15:19:09, latitude:23.74262572284886, longitude:90.41356589103403'),
(48, 'UPDATE', 'users', 5, '2024-09-22 15:41:35', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 15:19:09, latitude:23.74262572284886, longitude:90.41356589103403', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 15:41:35, latitude:23.74262572284886, longitude:90.41356589103403'),
(49, 'UPDATE', 'users', 5, '2024-09-22 15:43:24', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 15:41:35, latitude:23.74262572284886, longitude:90.41356589103403', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 15:43:24, latitude:23.74262572284886, longitude:90.41356589103403'),
(50, 'UPDATE', 'users', 5, '2024-09-22 15:44:21', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 15:43:24, latitude:23.74262572284886, longitude:90.41356589103403', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 15:44:21, latitude:23.74262572284886, longitude:90.41356589103403'),
(51, 'UPDATE', 'users', 5, '2024-09-22 15:44:39', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 15:44:21, latitude:23.74262572284886, longitude:90.41356589103403', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, branch_id:2, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 15:44:39, latitude:23.742627075494934, longitude:90.4135796402248'),
(52, 'UPDATE', 'sms_web_sidebar_menu', 50, '2024-09-22 15:45:45', NULL, 'uid:251beef4-be0c-4cb3-b1cf-01282c909c6b, parent_id:48, name:Web Brand, icon:bi, url:BrandName, order:2, is_collapsed:1, is_heading:0, permission_id:0, status:A, update_by:5, update_date:2024-09-22 15:45:45'),
(53, 'CREATE', 'roles', 6, '2024-09-22 16:28:45', NULL, 'name:Branch Admin, guard_name:web, created_at:2024-09-22 16:28:45, updated_at:2024-09-22 16:28:45'),
(54, 'CREATE', 'roles', 7, '2024-09-22 16:29:02', NULL, 'name:Branch Manager, guard_name:web, created_at:2024-09-22 16:29:02, updated_at:2024-09-22 16:29:02'),
(55, 'CREATE', 'roles', 8, '2024-09-22 16:29:15', NULL, 'name:Manager, guard_name:web, created_at:2024-09-22 16:29:15, updated_at:2024-09-22 16:29:15'),
(56, 'UPDATE', 'users', 10, '2024-09-22 16:36:32', NULL, NULL),
(57, 'CREATE', 'users', 15, '2024-09-22 17:36:18', NULL, NULL),
(58, 'DELETE', 'role_has_permissions', 45, '2024-09-22 17:39:27', 'role_id:4, permission_id:45', NULL),
(59, 'DELETE', 'role_has_permissions', 46, '2024-09-22 17:39:27', 'role_id:4, permission_id:46', NULL),
(60, 'DELETE', 'role_has_permissions', 47, '2024-09-22 17:39:27', 'role_id:4, permission_id:47', NULL),
(61, 'DELETE', 'role_has_permissions', 48, '2024-09-22 17:39:27', 'role_id:4, permission_id:48', NULL),
(62, 'DELETE', 'role_has_permissions', 49, '2024-09-22 17:39:27', 'role_id:4, permission_id:49', NULL),
(63, 'DELETE', 'role_has_permissions', 50, '2024-09-22 17:39:27', 'role_id:4, permission_id:50', NULL),
(64, 'DELETE', 'role_has_permissions', 51, '2024-09-22 17:39:27', 'role_id:4, permission_id:51', NULL),
(65, 'DELETE', 'role_has_permissions', 53, '2024-09-22 17:39:27', 'role_id:4, permission_id:53', NULL),
(66, 'DELETE', 'role_has_permissions', 54, '2024-09-22 17:39:27', 'role_id:4, permission_id:54', NULL),
(67, 'DELETE', 'role_has_permissions', 55, '2024-09-22 17:39:27', 'role_id:4, permission_id:55', NULL),
(68, 'DELETE', 'role_has_permissions', 56, '2024-09-22 17:39:27', 'role_id:4, permission_id:56', NULL),
(69, 'DELETE', 'role_has_permissions', 57, '2024-09-22 17:39:27', 'role_id:4, permission_id:57', NULL),
(70, 'DELETE', 'role_has_permissions', 58, '2024-09-22 17:39:27', 'role_id:4, permission_id:58', NULL),
(71, 'DELETE', 'role_has_permissions', 59, '2024-09-22 17:39:27', 'role_id:4, permission_id:59', NULL),
(72, 'DELETE', 'role_has_permissions', 60, '2024-09-22 17:39:27', 'role_id:4, permission_id:60', NULL),
(73, 'DELETE', 'role_has_permissions', 61, '2024-09-22 17:39:27', 'role_id:4, permission_id:61', NULL),
(74, 'DELETE', 'role_has_permissions', 62, '2024-09-22 17:39:27', 'role_id:4, permission_id:62', NULL),
(75, 'DELETE', 'role_has_permissions', 63, '2024-09-22 17:39:27', 'role_id:4, permission_id:63', NULL),
(76, 'DELETE', 'role_has_permissions', 64, '2024-09-22 17:39:27', 'role_id:4, permission_id:64', NULL),
(77, 'DELETE', 'role_has_permissions', 65, '2024-09-22 17:39:27', 'role_id:4, permission_id:65', NULL),
(78, 'DELETE', 'role_has_permissions', 66, '2024-09-22 17:39:27', 'role_id:4, permission_id:66', NULL),
(79, 'DELETE', 'role_has_permissions', 67, '2024-09-22 17:39:27', 'role_id:4, permission_id:67', NULL),
(80, 'DELETE', 'role_has_permissions', 68, '2024-09-22 17:39:27', 'role_id:4, permission_id:68', NULL),
(81, 'CREATE', 'role_has_permissions', 21, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:21'),
(82, 'CREATE', 'role_has_permissions', 22, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:22'),
(83, 'CREATE', 'role_has_permissions', 23, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:23'),
(84, 'CREATE', 'role_has_permissions', 25, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:25'),
(85, 'CREATE', 'role_has_permissions', 26, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:26'),
(86, 'CREATE', 'role_has_permissions', 27, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:27'),
(87, 'CREATE', 'role_has_permissions', 29, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:29'),
(88, 'CREATE', 'role_has_permissions', 30, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:30'),
(89, 'CREATE', 'role_has_permissions', 31, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:31'),
(90, 'CREATE', 'role_has_permissions', 33, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:33'),
(91, 'CREATE', 'role_has_permissions', 34, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:34'),
(92, 'CREATE', 'role_has_permissions', 35, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:35'),
(93, 'CREATE', 'role_has_permissions', 37, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:37'),
(94, 'CREATE', 'role_has_permissions', 38, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:38'),
(95, 'CREATE', 'role_has_permissions', 39, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:39'),
(96, 'CREATE', 'role_has_permissions', 41, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:41'),
(97, 'CREATE', 'role_has_permissions', 42, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:42'),
(98, 'CREATE', 'role_has_permissions', 43, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:43'),
(99, 'CREATE', 'role_has_permissions', 45, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:45'),
(100, 'CREATE', 'role_has_permissions', 46, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:46'),
(101, 'CREATE', 'role_has_permissions', 47, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:47'),
(102, 'CREATE', 'role_has_permissions', 49, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:49'),
(103, 'CREATE', 'role_has_permissions', 50, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:50'),
(104, 'CREATE', 'role_has_permissions', 51, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:51'),
(105, 'CREATE', 'role_has_permissions', 53, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:53'),
(106, 'CREATE', 'role_has_permissions', 54, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:54'),
(107, 'CREATE', 'role_has_permissions', 55, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:55'),
(108, 'CREATE', 'role_has_permissions', 57, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:57'),
(109, 'CREATE', 'role_has_permissions', 58, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:58'),
(110, 'CREATE', 'role_has_permissions', 59, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:59'),
(111, 'CREATE', 'role_has_permissions', 61, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:61'),
(112, 'CREATE', 'role_has_permissions', 62, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:62'),
(113, 'CREATE', 'role_has_permissions', 63, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:63'),
(114, 'CREATE', 'role_has_permissions', 65, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:65'),
(115, 'CREATE', 'role_has_permissions', 66, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:66'),
(116, 'CREATE', 'role_has_permissions', 67, '2024-09-22 17:39:27', NULL, 'role_id:4, permission_id:67'),
(117, 'CREATE', 'role_has_permissions', 45, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:45'),
(118, 'CREATE', 'role_has_permissions', 46, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:46'),
(119, 'CREATE', 'role_has_permissions', 47, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:47'),
(120, 'CREATE', 'role_has_permissions', 48, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:48'),
(121, 'CREATE', 'role_has_permissions', 49, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:49'),
(122, 'CREATE', 'role_has_permissions', 50, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:50'),
(123, 'CREATE', 'role_has_permissions', 51, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:51'),
(124, 'CREATE', 'role_has_permissions', 52, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:52'),
(125, 'CREATE', 'role_has_permissions', 53, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:53'),
(126, 'CREATE', 'role_has_permissions', 54, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:54'),
(127, 'CREATE', 'role_has_permissions', 55, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:55'),
(128, 'CREATE', 'role_has_permissions', 56, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:56'),
(129, 'CREATE', 'role_has_permissions', 57, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:57'),
(130, 'CREATE', 'role_has_permissions', 58, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:58'),
(131, 'CREATE', 'role_has_permissions', 59, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:59'),
(132, 'CREATE', 'role_has_permissions', 60, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:60'),
(133, 'CREATE', 'role_has_permissions', 61, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:61'),
(134, 'CREATE', 'role_has_permissions', 62, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:62'),
(135, 'CREATE', 'role_has_permissions', 63, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:63'),
(136, 'CREATE', 'role_has_permissions', 64, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:64'),
(137, 'CREATE', 'role_has_permissions', 65, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:65'),
(138, 'CREATE', 'role_has_permissions', 66, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:66'),
(139, 'CREATE', 'role_has_permissions', 67, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:67'),
(140, 'CREATE', 'role_has_permissions', 68, '2024-09-22 17:40:42', NULL, 'role_id:6, permission_id:68'),
(141, 'CREATE', 'role_has_permissions', 45, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:45'),
(142, 'CREATE', 'role_has_permissions', 46, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:46'),
(143, 'CREATE', 'role_has_permissions', 47, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:47'),
(144, 'CREATE', 'role_has_permissions', 49, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:49'),
(145, 'CREATE', 'role_has_permissions', 50, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:50'),
(146, 'CREATE', 'role_has_permissions', 51, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:51'),
(147, 'CREATE', 'role_has_permissions', 53, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:53'),
(148, 'CREATE', 'role_has_permissions', 54, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:54'),
(149, 'CREATE', 'role_has_permissions', 55, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:55'),
(150, 'CREATE', 'role_has_permissions', 57, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:57'),
(151, 'CREATE', 'role_has_permissions', 58, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:58'),
(152, 'CREATE', 'role_has_permissions', 59, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:59'),
(153, 'CREATE', 'role_has_permissions', 61, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:61'),
(154, 'CREATE', 'role_has_permissions', 62, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:62'),
(155, 'CREATE', 'role_has_permissions', 63, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:63'),
(156, 'CREATE', 'role_has_permissions', 65, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:65'),
(157, 'CREATE', 'role_has_permissions', 66, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:66'),
(158, 'CREATE', 'role_has_permissions', 67, '2024-09-22 17:41:16', NULL, 'role_id:7, permission_id:67'),
(159, 'CREATE', 'role_has_permissions', 21, '2024-09-22 17:42:50', NULL, 'role_id:8, permission_id:21'),
(160, 'CREATE', 'role_has_permissions', 33, '2024-09-22 17:42:50', NULL, 'role_id:8, permission_id:33'),
(161, 'CREATE', 'role_has_permissions', 45, '2024-09-22 17:42:50', NULL, 'role_id:8, permission_id:45'),
(162, 'CREATE', 'role_has_permissions', 46, '2024-09-22 17:42:50', NULL, 'role_id:8, permission_id:46'),
(163, 'CREATE', 'role_has_permissions', 49, '2024-09-22 17:42:50', NULL, 'role_id:8, permission_id:49'),
(164, 'CREATE', 'role_has_permissions', 50, '2024-09-22 17:42:50', NULL, 'role_id:8, permission_id:50'),
(165, 'CREATE', 'role_has_permissions', 53, '2024-09-22 17:42:50', NULL, 'role_id:8, permission_id:53'),
(166, 'CREATE', 'role_has_permissions', 54, '2024-09-22 17:42:50', NULL, 'role_id:8, permission_id:54'),
(167, 'CREATE', 'role_has_permissions', 57, '2024-09-22 17:42:50', NULL, 'role_id:8, permission_id:57'),
(168, 'CREATE', 'role_has_permissions', 58, '2024-09-22 17:42:50', NULL, 'role_id:8, permission_id:58'),
(169, 'CREATE', 'role_has_permissions', 61, '2024-09-22 17:42:50', NULL, 'role_id:8, permission_id:61'),
(170, 'CREATE', 'role_has_permissions', 62, '2024-09-22 17:42:50', NULL, 'role_id:8, permission_id:62'),
(171, 'CREATE', 'role_has_permissions', 65, '2024-09-22 17:42:50', NULL, 'role_id:8, permission_id:65'),
(172, 'CREATE', 'role_has_permissions', 66, '2024-09-22 17:42:50', NULL, 'role_id:8, permission_id:66'),
(173, 'CREATE', 'role_sidebar_menu', 30, '2024-09-22 17:43:15', NULL, 'role_id:7, sidebar_nav_id:41'),
(174, 'CREATE', 'role_sidebar_menu', 31, '2024-09-22 17:43:15', NULL, 'role_id:7, sidebar_nav_id:43'),
(175, 'CREATE', 'role_sidebar_menu', 32, '2024-09-22 17:43:15', NULL, 'role_id:7, sidebar_nav_id:44'),
(176, 'CREATE', 'role_sidebar_menu', 33, '2024-09-22 17:43:15', NULL, 'role_id:7, sidebar_nav_id:45'),
(177, 'CREATE', 'role_sidebar_menu', 34, '2024-09-22 17:43:15', NULL, 'role_id:7, sidebar_nav_id:46'),
(178, 'CREATE', 'role_sidebar_menu', 35, '2024-09-22 17:43:15', NULL, 'role_id:7, sidebar_nav_id:47'),
(179, 'CREATE', 'role_sidebar_menu', 36, '2024-09-22 17:43:15', NULL, 'role_id:7, sidebar_nav_id:48'),
(180, 'CREATE', 'role_sidebar_menu', 37, '2024-09-22 17:43:15', NULL, 'role_id:7, sidebar_nav_id:52'),
(181, 'CREATE', 'role_sidebar_menu', 38, '2024-09-22 17:43:15', NULL, 'role_id:7, sidebar_nav_id:54'),
(182, 'CREATE', 'role_sidebar_menu', 39, '2024-09-22 17:43:55', NULL, 'role_id:7, sidebar_nav_id:34'),
(183, 'CREATE', 'role_sidebar_menu', 40, '2024-09-22 17:43:55', NULL, 'role_id:7, sidebar_nav_id:35'),
(184, 'CREATE', 'role_sidebar_menu', 41, '2024-09-22 17:43:55', NULL, 'role_id:7, sidebar_nav_id:42'),
(185, 'CREATE', 'role_sidebar_menu', 42, '2024-09-22 17:43:55', NULL, 'role_id:7, sidebar_nav_id:51'),
(186, 'CREATE', 'role_sidebar_menu', 43, '2024-09-22 17:43:55', NULL, 'role_id:7, sidebar_nav_id:55'),
(187, 'CREATE', 'role_sidebar_menu', 44, '2024-09-22 17:43:55', NULL, 'role_id:7, sidebar_nav_id:56'),
(188, 'CREATE', 'role_sidebar_menu', 45, '2024-09-22 17:43:55', NULL, 'role_id:7, sidebar_nav_id:58'),
(189, 'CREATE', 'role_sidebar_menu', 46, '2024-09-22 17:43:55', NULL, 'role_id:7, sidebar_nav_id:59'),
(190, 'CREATE', 'role_sidebar_menu', 47, '2024-09-22 17:43:55', NULL, 'role_id:7, sidebar_nav_id:60'),
(191, 'CREATE', 'role_sidebar_menu', 48, '2024-09-22 17:43:55', NULL, 'role_id:7, sidebar_nav_id:61'),
(192, 'CREATE', 'role_sidebar_menu', 49, '2024-09-22 17:43:55', NULL, 'role_id:7, sidebar_nav_id:62'),
(193, 'DELETE', 'role_sidebar_menu', 31, '2024-09-22 17:44:18', 'role_id:7, sidebar_nav_id:43', NULL),
(194, 'DELETE', 'role_sidebar_menu', 32, '2024-09-22 17:44:18', 'role_id:7, sidebar_nav_id:44', NULL),
(195, 'DELETE', 'role_sidebar_menu', 33, '2024-09-22 17:44:18', 'role_id:7, sidebar_nav_id:45', NULL),
(196, 'DELETE', 'role_sidebar_menu', 34, '2024-09-22 17:44:18', 'role_id:7, sidebar_nav_id:46', NULL),
(197, 'CREATE', 'role_sidebar_menu', 50, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:34'),
(198, 'CREATE', 'role_sidebar_menu', 51, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:35'),
(199, 'CREATE', 'role_sidebar_menu', 52, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:41'),
(200, 'CREATE', 'role_sidebar_menu', 53, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:43'),
(201, 'CREATE', 'role_sidebar_menu', 54, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:44'),
(202, 'CREATE', 'role_sidebar_menu', 55, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:45'),
(203, 'CREATE', 'role_sidebar_menu', 56, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:46'),
(204, 'CREATE', 'role_sidebar_menu', 57, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:47'),
(205, 'CREATE', 'role_sidebar_menu', 58, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:42'),
(206, 'CREATE', 'role_sidebar_menu', 59, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:48'),
(207, 'CREATE', 'role_sidebar_menu', 60, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:51'),
(208, 'CREATE', 'role_sidebar_menu', 61, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:52'),
(209, 'CREATE', 'role_sidebar_menu', 62, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:54'),
(210, 'CREATE', 'role_sidebar_menu', 63, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:55'),
(211, 'CREATE', 'role_sidebar_menu', 64, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:56'),
(212, 'CREATE', 'role_sidebar_menu', 65, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:58'),
(213, 'CREATE', 'role_sidebar_menu', 66, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:59'),
(214, 'CREATE', 'role_sidebar_menu', 67, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:60'),
(215, 'CREATE', 'role_sidebar_menu', 68, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:61'),
(216, 'CREATE', 'role_sidebar_menu', 69, '2024-09-22 17:44:43', NULL, 'role_id:6, sidebar_nav_id:62'),
(217, 'UPDATE', 'users', 15, '2024-09-22 17:45:09', NULL, NULL),
(218, 'UPDATE', 'users', 10, '2024-09-22 17:52:15', NULL, NULL),
(219, 'UPDATE', 'users', 10, '2024-09-22 17:53:34', NULL, NULL),
(220, 'UPDATE', 'users', 10, '2024-09-22 17:53:37', NULL, NULL),
(221, 'CREATE', 'sms_protype', 14, '2024-09-22 17:54:58', NULL, 'uid:0bb5535d-448e-4c95-bbdf-1d6e6fb13b03, name:Sweets, status:A, create_by:15, create_date:2024-09-22 17:54:58'),
(222, 'CREATE', 'sms_customers', 22, '2024-09-22 18:05:37', NULL, 'uid:e101320b-8f05-4e50-b324-3e230ae838f6, name:Shakil, phone:01884924439, email:shakil@gmail.com, address:Mirpur,Dhaka, status:A, create_by:15, create_date:2024-09-22 18:05:37'),
(223, 'CREATE', 'sms_orders', 51, '2024-09-22 18:05:39', NULL, NULL),
(224, 'CREATE', 'sms_order_dtl', 18, '2024-09-22 18:05:39', NULL, 'order_id:51, pro_id:12, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:15, create_date:2024-09-22 18:05:39'),
(225, 'CREATE', 'sms_order_dtl', 19, '2024-09-22 18:05:39', NULL, 'order_id:51, pro_id:13, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:15, create_date:2024-09-22 18:05:39'),
(226, 'CREATE', 'sms_order_dtl', 20, '2024-09-22 18:05:39', NULL, 'order_id:51, pro_id:14, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:15, create_date:2024-09-22 18:05:39'),
(227, 'UPDATE', 'users', 5, '2024-09-23 11:33:39', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-22 15:44:39, latitude:23.742627075494934, longitude:90.4135796402248', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-23 11:33:39, latitude:23.742645628431575, longitude:90.41365502153512'),
(228, 'UPDATE', 'users', 15, '2024-09-23 11:37:01', NULL, NULL),
(229, 'DELETE', 'role_has_permissions', 21, '2024-09-23 12:06:41', 'role_id:8, permission_id:21', NULL),
(230, 'DELETE', 'role_has_permissions', 33, '2024-09-23 12:06:41', 'role_id:8, permission_id:33', NULL),
(231, 'DELETE', 'role_has_permissions', 45, '2024-09-23 12:06:41', 'role_id:8, permission_id:45', NULL),
(232, 'DELETE', 'role_has_permissions', 46, '2024-09-23 12:06:41', 'role_id:8, permission_id:46', NULL),
(233, 'DELETE', 'role_has_permissions', 49, '2024-09-23 12:06:41', 'role_id:8, permission_id:49', NULL),
(234, 'DELETE', 'role_has_permissions', 50, '2024-09-23 12:06:41', 'role_id:8, permission_id:50', NULL),
(235, 'DELETE', 'role_has_permissions', 53, '2024-09-23 12:06:41', 'role_id:8, permission_id:53', NULL),
(236, 'DELETE', 'role_has_permissions', 54, '2024-09-23 12:06:41', 'role_id:8, permission_id:54', NULL),
(237, 'DELETE', 'role_has_permissions', 57, '2024-09-23 12:06:41', 'role_id:8, permission_id:57', NULL),
(238, 'DELETE', 'role_has_permissions', 58, '2024-09-23 12:06:41', 'role_id:8, permission_id:58', NULL),
(239, 'DELETE', 'role_has_permissions', 61, '2024-09-23 12:06:41', 'role_id:8, permission_id:61', NULL),
(240, 'DELETE', 'role_has_permissions', 62, '2024-09-23 12:06:41', 'role_id:8, permission_id:62', NULL),
(241, 'DELETE', 'role_has_permissions', 65, '2024-09-23 12:06:41', 'role_id:8, permission_id:65', NULL),
(242, 'DELETE', 'role_has_permissions', 66, '2024-09-23 12:06:41', 'role_id:8, permission_id:66', NULL),
(243, 'DELETE', 'roles', 8, '2024-09-23 12:06:41', 'name:Manager, guard_name:web, created_at:2024-09-22 16:29:15, updated_at:2024-09-22 16:29:15', NULL),
(244, 'DELETE', 'role_sidebar_menu', 62, '2024-09-23 12:28:54', 'role_id:6, sidebar_nav_id:54', NULL),
(245, 'DELETE', 'role_sidebar_menu', 38, '2024-09-23 12:29:08', 'role_id:7, sidebar_nav_id:54', NULL),
(246, 'DELETE', 'role_sidebar_menu', 59, '2024-09-23 13:13:39', 'role_id:6, sidebar_nav_id:48', NULL),
(247, 'DELETE', 'role_sidebar_menu', 36, '2024-09-23 13:13:47', 'role_id:7, sidebar_nav_id:48', NULL),
(248, 'CREATE', 'permissions', 69, '2024-09-23 13:17:27', NULL, 'name:create_customer, guard_name:web, created_at:2024-09-23 13:17:27, updated_at:2024-09-23 13:17:27'),
(249, 'CREATE', 'permissions', 70, '2024-09-23 13:17:31', NULL, 'name:view_customer, guard_name:web, created_at:2024-09-23 13:17:31, updated_at:2024-09-23 13:17:31'),
(250, 'CREATE', 'permissions', 71, '2024-09-23 13:17:36', NULL, 'name:update_customer, guard_name:web, created_at:2024-09-23 13:17:36, updated_at:2024-09-23 13:17:36'),
(251, 'CREATE', 'permissions', 72, '2024-09-23 13:17:40', NULL, 'name:delete_customer, guard_name:web, created_at:2024-09-23 13:17:40, updated_at:2024-09-23 13:17:40'),
(252, 'DELETE', 'role_has_permissions', 21, '2024-09-23 13:18:09', 'role_id:5, permission_id:21', NULL),
(253, 'DELETE', 'role_has_permissions', 22, '2024-09-23 13:18:09', 'role_id:5, permission_id:22', NULL),
(254, 'DELETE', 'role_has_permissions', 23, '2024-09-23 13:18:09', 'role_id:5, permission_id:23', NULL),
(255, 'DELETE', 'role_has_permissions', 24, '2024-09-23 13:18:09', 'role_id:5, permission_id:24', NULL),
(256, 'DELETE', 'role_has_permissions', 25, '2024-09-23 13:18:09', 'role_id:5, permission_id:25', NULL),
(257, 'DELETE', 'role_has_permissions', 26, '2024-09-23 13:18:09', 'role_id:5, permission_id:26', NULL),
(258, 'DELETE', 'role_has_permissions', 27, '2024-09-23 13:18:09', 'role_id:5, permission_id:27', NULL),
(259, 'DELETE', 'role_has_permissions', 28, '2024-09-23 13:18:09', 'role_id:5, permission_id:28', NULL),
(260, 'DELETE', 'role_has_permissions', 29, '2024-09-23 13:18:09', 'role_id:5, permission_id:29', NULL),
(261, 'DELETE', 'role_has_permissions', 30, '2024-09-23 13:18:09', 'role_id:5, permission_id:30', NULL),
(262, 'DELETE', 'role_has_permissions', 31, '2024-09-23 13:18:09', 'role_id:5, permission_id:31', NULL),
(263, 'DELETE', 'role_has_permissions', 32, '2024-09-23 13:18:09', 'role_id:5, permission_id:32', NULL),
(264, 'DELETE', 'role_has_permissions', 33, '2024-09-23 13:18:09', 'role_id:5, permission_id:33', NULL),
(265, 'DELETE', 'role_has_permissions', 34, '2024-09-23 13:18:09', 'role_id:5, permission_id:34', NULL),
(266, 'DELETE', 'role_has_permissions', 35, '2024-09-23 13:18:09', 'role_id:5, permission_id:35', NULL),
(267, 'DELETE', 'role_has_permissions', 36, '2024-09-23 13:18:09', 'role_id:5, permission_id:36', NULL),
(268, 'DELETE', 'role_has_permissions', 37, '2024-09-23 13:18:09', 'role_id:5, permission_id:37', NULL),
(269, 'DELETE', 'role_has_permissions', 38, '2024-09-23 13:18:09', 'role_id:5, permission_id:38', NULL),
(270, 'DELETE', 'role_has_permissions', 39, '2024-09-23 13:18:09', 'role_id:5, permission_id:39', NULL),
(271, 'DELETE', 'role_has_permissions', 40, '2024-09-23 13:18:09', 'role_id:5, permission_id:40', NULL),
(272, 'DELETE', 'role_has_permissions', 41, '2024-09-23 13:18:09', 'role_id:5, permission_id:41', NULL),
(273, 'DELETE', 'role_has_permissions', 42, '2024-09-23 13:18:09', 'role_id:5, permission_id:42', NULL),
(274, 'DELETE', 'role_has_permissions', 43, '2024-09-23 13:18:09', 'role_id:5, permission_id:43', NULL),
(275, 'DELETE', 'role_has_permissions', 44, '2024-09-23 13:18:09', 'role_id:5, permission_id:44', NULL),
(276, 'DELETE', 'role_has_permissions', 45, '2024-09-23 13:18:09', 'role_id:5, permission_id:45', NULL),
(277, 'DELETE', 'role_has_permissions', 46, '2024-09-23 13:18:09', 'role_id:5, permission_id:46', NULL),
(278, 'DELETE', 'role_has_permissions', 47, '2024-09-23 13:18:09', 'role_id:5, permission_id:47', NULL),
(279, 'DELETE', 'role_has_permissions', 48, '2024-09-23 13:18:09', 'role_id:5, permission_id:48', NULL),
(280, 'DELETE', 'role_has_permissions', 49, '2024-09-23 13:18:09', 'role_id:5, permission_id:49', NULL),
(281, 'DELETE', 'role_has_permissions', 50, '2024-09-23 13:18:09', 'role_id:5, permission_id:50', NULL),
(282, 'DELETE', 'role_has_permissions', 51, '2024-09-23 13:18:09', 'role_id:5, permission_id:51', NULL),
(283, 'DELETE', 'role_has_permissions', 52, '2024-09-23 13:18:09', 'role_id:5, permission_id:52', NULL),
(284, 'DELETE', 'role_has_permissions', 53, '2024-09-23 13:18:09', 'role_id:5, permission_id:53', NULL),
(285, 'DELETE', 'role_has_permissions', 54, '2024-09-23 13:18:09', 'role_id:5, permission_id:54', NULL),
(286, 'DELETE', 'role_has_permissions', 55, '2024-09-23 13:18:09', 'role_id:5, permission_id:55', NULL),
(287, 'DELETE', 'role_has_permissions', 56, '2024-09-23 13:18:09', 'role_id:5, permission_id:56', NULL),
(288, 'DELETE', 'role_has_permissions', 57, '2024-09-23 13:18:09', 'role_id:5, permission_id:57', NULL),
(289, 'DELETE', 'role_has_permissions', 58, '2024-09-23 13:18:09', 'role_id:5, permission_id:58', NULL),
(290, 'DELETE', 'role_has_permissions', 59, '2024-09-23 13:18:09', 'role_id:5, permission_id:59', NULL),
(291, 'DELETE', 'role_has_permissions', 60, '2024-09-23 13:18:09', 'role_id:5, permission_id:60', NULL),
(292, 'DELETE', 'role_has_permissions', 61, '2024-09-23 13:18:09', 'role_id:5, permission_id:61', NULL),
(293, 'DELETE', 'role_has_permissions', 62, '2024-09-23 13:18:09', 'role_id:5, permission_id:62', NULL),
(294, 'DELETE', 'role_has_permissions', 63, '2024-09-23 13:18:09', 'role_id:5, permission_id:63', NULL),
(295, 'DELETE', 'role_has_permissions', 64, '2024-09-23 13:18:09', 'role_id:5, permission_id:64', NULL),
(296, 'DELETE', 'role_has_permissions', 65, '2024-09-23 13:18:09', 'role_id:5, permission_id:65', NULL),
(297, 'DELETE', 'role_has_permissions', 66, '2024-09-23 13:18:09', 'role_id:5, permission_id:66', NULL),
(298, 'DELETE', 'role_has_permissions', 67, '2024-09-23 13:18:09', 'role_id:5, permission_id:67', NULL),
(299, 'DELETE', 'role_has_permissions', 68, '2024-09-23 13:18:09', 'role_id:5, permission_id:68', NULL),
(300, 'CREATE', 'role_has_permissions', 21, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:21'),
(301, 'CREATE', 'role_has_permissions', 22, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:22'),
(302, 'CREATE', 'role_has_permissions', 23, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:23'),
(303, 'CREATE', 'role_has_permissions', 24, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:24'),
(304, 'CREATE', 'role_has_permissions', 25, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:25'),
(305, 'CREATE', 'role_has_permissions', 26, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:26'),
(306, 'CREATE', 'role_has_permissions', 27, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:27'),
(307, 'CREATE', 'role_has_permissions', 28, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:28'),
(308, 'CREATE', 'role_has_permissions', 29, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:29'),
(309, 'CREATE', 'role_has_permissions', 30, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:30'),
(310, 'CREATE', 'role_has_permissions', 31, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:31'),
(311, 'CREATE', 'role_has_permissions', 32, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:32'),
(312, 'CREATE', 'role_has_permissions', 33, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:33'),
(313, 'CREATE', 'role_has_permissions', 34, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:34'),
(314, 'CREATE', 'role_has_permissions', 35, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:35'),
(315, 'CREATE', 'role_has_permissions', 36, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:36'),
(316, 'CREATE', 'role_has_permissions', 37, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:37'),
(317, 'CREATE', 'role_has_permissions', 38, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:38'),
(318, 'CREATE', 'role_has_permissions', 39, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:39'),
(319, 'CREATE', 'role_has_permissions', 40, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:40'),
(320, 'CREATE', 'role_has_permissions', 41, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:41'),
(321, 'CREATE', 'role_has_permissions', 42, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:42'),
(322, 'CREATE', 'role_has_permissions', 43, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:43'),
(323, 'CREATE', 'role_has_permissions', 44, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:44'),
(324, 'CREATE', 'role_has_permissions', 45, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:45'),
(325, 'CREATE', 'role_has_permissions', 46, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:46'),
(326, 'CREATE', 'role_has_permissions', 47, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:47'),
(327, 'CREATE', 'role_has_permissions', 48, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:48'),
(328, 'CREATE', 'role_has_permissions', 49, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:49'),
(329, 'CREATE', 'role_has_permissions', 50, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:50'),
(330, 'CREATE', 'role_has_permissions', 51, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:51'),
(331, 'CREATE', 'role_has_permissions', 52, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:52'),
(332, 'CREATE', 'role_has_permissions', 53, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:53'),
(333, 'CREATE', 'role_has_permissions', 54, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:54'),
(334, 'CREATE', 'role_has_permissions', 55, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:55'),
(335, 'CREATE', 'role_has_permissions', 56, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:56'),
(336, 'CREATE', 'role_has_permissions', 57, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:57'),
(337, 'CREATE', 'role_has_permissions', 58, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:58'),
(338, 'CREATE', 'role_has_permissions', 59, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:59'),
(339, 'CREATE', 'role_has_permissions', 60, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:60'),
(340, 'CREATE', 'role_has_permissions', 61, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:61'),
(341, 'CREATE', 'role_has_permissions', 62, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:62'),
(342, 'CREATE', 'role_has_permissions', 63, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:63'),
(343, 'CREATE', 'role_has_permissions', 64, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:64'),
(344, 'CREATE', 'role_has_permissions', 65, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:65'),
(345, 'CREATE', 'role_has_permissions', 66, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:66'),
(346, 'CREATE', 'role_has_permissions', 67, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:67'),
(347, 'CREATE', 'role_has_permissions', 68, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:68'),
(348, 'CREATE', 'role_has_permissions', 69, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:69'),
(349, 'CREATE', 'role_has_permissions', 70, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:70'),
(350, 'CREATE', 'role_has_permissions', 71, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:71'),
(351, 'CREATE', 'role_has_permissions', 72, '2024-09-23 13:18:09', NULL, 'role_id:5, permission_id:72'),
(352, 'DELETE', 'role_has_permissions', 45, '2024-09-23 13:18:18', 'role_id:6, permission_id:45', NULL),
(353, 'DELETE', 'role_has_permissions', 46, '2024-09-23 13:18:18', 'role_id:6, permission_id:46', NULL),
(354, 'DELETE', 'role_has_permissions', 47, '2024-09-23 13:18:18', 'role_id:6, permission_id:47', NULL),
(355, 'DELETE', 'role_has_permissions', 48, '2024-09-23 13:18:18', 'role_id:6, permission_id:48', NULL),
(356, 'DELETE', 'role_has_permissions', 49, '2024-09-23 13:18:18', 'role_id:6, permission_id:49', NULL),
(357, 'DELETE', 'role_has_permissions', 50, '2024-09-23 13:18:18', 'role_id:6, permission_id:50', NULL),
(358, 'DELETE', 'role_has_permissions', 51, '2024-09-23 13:18:18', 'role_id:6, permission_id:51', NULL),
(359, 'DELETE', 'role_has_permissions', 52, '2024-09-23 13:18:18', 'role_id:6, permission_id:52', NULL),
(360, 'DELETE', 'role_has_permissions', 53, '2024-09-23 13:18:18', 'role_id:6, permission_id:53', NULL),
(361, 'DELETE', 'role_has_permissions', 54, '2024-09-23 13:18:18', 'role_id:6, permission_id:54', NULL),
(362, 'DELETE', 'role_has_permissions', 55, '2024-09-23 13:18:18', 'role_id:6, permission_id:55', NULL),
(363, 'DELETE', 'role_has_permissions', 56, '2024-09-23 13:18:18', 'role_id:6, permission_id:56', NULL),
(364, 'DELETE', 'role_has_permissions', 57, '2024-09-23 13:18:18', 'role_id:6, permission_id:57', NULL),
(365, 'DELETE', 'role_has_permissions', 58, '2024-09-23 13:18:18', 'role_id:6, permission_id:58', NULL),
(366, 'DELETE', 'role_has_permissions', 59, '2024-09-23 13:18:18', 'role_id:6, permission_id:59', NULL),
(367, 'DELETE', 'role_has_permissions', 60, '2024-09-23 13:18:18', 'role_id:6, permission_id:60', NULL),
(368, 'DELETE', 'role_has_permissions', 61, '2024-09-23 13:18:18', 'role_id:6, permission_id:61', NULL),
(369, 'DELETE', 'role_has_permissions', 62, '2024-09-23 13:18:18', 'role_id:6, permission_id:62', NULL),
(370, 'DELETE', 'role_has_permissions', 63, '2024-09-23 13:18:18', 'role_id:6, permission_id:63', NULL),
(371, 'DELETE', 'role_has_permissions', 64, '2024-09-23 13:18:18', 'role_id:6, permission_id:64', NULL),
(372, 'DELETE', 'role_has_permissions', 65, '2024-09-23 13:18:18', 'role_id:6, permission_id:65', NULL),
(373, 'DELETE', 'role_has_permissions', 66, '2024-09-23 13:18:18', 'role_id:6, permission_id:66', NULL),
(374, 'DELETE', 'role_has_permissions', 67, '2024-09-23 13:18:18', 'role_id:6, permission_id:67', NULL),
(375, 'DELETE', 'role_has_permissions', 68, '2024-09-23 13:18:18', 'role_id:6, permission_id:68', NULL),
(376, 'CREATE', 'role_has_permissions', 45, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:45'),
(377, 'CREATE', 'role_has_permissions', 46, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:46'),
(378, 'CREATE', 'role_has_permissions', 47, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:47');
INSERT INTO `operationlogs` (`LogID`, `OperationType`, `TableName`, `RecordID`, `ChangeDate`, `OldValues`, `NewValues`) VALUES
(379, 'CREATE', 'role_has_permissions', 48, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:48'),
(380, 'CREATE', 'role_has_permissions', 49, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:49'),
(381, 'CREATE', 'role_has_permissions', 50, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:50'),
(382, 'CREATE', 'role_has_permissions', 51, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:51'),
(383, 'CREATE', 'role_has_permissions', 52, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:52'),
(384, 'CREATE', 'role_has_permissions', 53, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:53'),
(385, 'CREATE', 'role_has_permissions', 54, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:54'),
(386, 'CREATE', 'role_has_permissions', 55, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:55'),
(387, 'CREATE', 'role_has_permissions', 56, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:56'),
(388, 'CREATE', 'role_has_permissions', 57, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:57'),
(389, 'CREATE', 'role_has_permissions', 58, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:58'),
(390, 'CREATE', 'role_has_permissions', 59, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:59'),
(391, 'CREATE', 'role_has_permissions', 60, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:60'),
(392, 'CREATE', 'role_has_permissions', 61, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:61'),
(393, 'CREATE', 'role_has_permissions', 62, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:62'),
(394, 'CREATE', 'role_has_permissions', 63, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:63'),
(395, 'CREATE', 'role_has_permissions', 64, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:64'),
(396, 'CREATE', 'role_has_permissions', 65, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:65'),
(397, 'CREATE', 'role_has_permissions', 66, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:66'),
(398, 'CREATE', 'role_has_permissions', 67, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:67'),
(399, 'CREATE', 'role_has_permissions', 68, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:68'),
(400, 'CREATE', 'role_has_permissions', 69, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:69'),
(401, 'CREATE', 'role_has_permissions', 70, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:70'),
(402, 'CREATE', 'role_has_permissions', 71, '2024-09-23 13:18:18', NULL, 'role_id:6, permission_id:71'),
(403, 'DELETE', 'role_has_permissions', 45, '2024-09-23 13:18:27', 'role_id:7, permission_id:45', NULL),
(404, 'DELETE', 'role_has_permissions', 46, '2024-09-23 13:18:27', 'role_id:7, permission_id:46', NULL),
(405, 'DELETE', 'role_has_permissions', 47, '2024-09-23 13:18:27', 'role_id:7, permission_id:47', NULL),
(406, 'DELETE', 'role_has_permissions', 49, '2024-09-23 13:18:27', 'role_id:7, permission_id:49', NULL),
(407, 'DELETE', 'role_has_permissions', 50, '2024-09-23 13:18:27', 'role_id:7, permission_id:50', NULL),
(408, 'DELETE', 'role_has_permissions', 51, '2024-09-23 13:18:27', 'role_id:7, permission_id:51', NULL),
(409, 'DELETE', 'role_has_permissions', 53, '2024-09-23 13:18:27', 'role_id:7, permission_id:53', NULL),
(410, 'DELETE', 'role_has_permissions', 54, '2024-09-23 13:18:27', 'role_id:7, permission_id:54', NULL),
(411, 'DELETE', 'role_has_permissions', 55, '2024-09-23 13:18:27', 'role_id:7, permission_id:55', NULL),
(412, 'DELETE', 'role_has_permissions', 57, '2024-09-23 13:18:27', 'role_id:7, permission_id:57', NULL),
(413, 'DELETE', 'role_has_permissions', 58, '2024-09-23 13:18:27', 'role_id:7, permission_id:58', NULL),
(414, 'DELETE', 'role_has_permissions', 59, '2024-09-23 13:18:27', 'role_id:7, permission_id:59', NULL),
(415, 'DELETE', 'role_has_permissions', 61, '2024-09-23 13:18:27', 'role_id:7, permission_id:61', NULL),
(416, 'DELETE', 'role_has_permissions', 62, '2024-09-23 13:18:27', 'role_id:7, permission_id:62', NULL),
(417, 'DELETE', 'role_has_permissions', 63, '2024-09-23 13:18:27', 'role_id:7, permission_id:63', NULL),
(418, 'DELETE', 'role_has_permissions', 65, '2024-09-23 13:18:27', 'role_id:7, permission_id:65', NULL),
(419, 'DELETE', 'role_has_permissions', 66, '2024-09-23 13:18:27', 'role_id:7, permission_id:66', NULL),
(420, 'DELETE', 'role_has_permissions', 67, '2024-09-23 13:18:27', 'role_id:7, permission_id:67', NULL),
(421, 'CREATE', 'role_has_permissions', 45, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:45'),
(422, 'CREATE', 'role_has_permissions', 46, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:46'),
(423, 'CREATE', 'role_has_permissions', 47, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:47'),
(424, 'CREATE', 'role_has_permissions', 49, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:49'),
(425, 'CREATE', 'role_has_permissions', 50, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:50'),
(426, 'CREATE', 'role_has_permissions', 51, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:51'),
(427, 'CREATE', 'role_has_permissions', 53, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:53'),
(428, 'CREATE', 'role_has_permissions', 54, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:54'),
(429, 'CREATE', 'role_has_permissions', 55, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:55'),
(430, 'CREATE', 'role_has_permissions', 57, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:57'),
(431, 'CREATE', 'role_has_permissions', 58, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:58'),
(432, 'CREATE', 'role_has_permissions', 59, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:59'),
(433, 'CREATE', 'role_has_permissions', 61, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:61'),
(434, 'CREATE', 'role_has_permissions', 62, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:62'),
(435, 'CREATE', 'role_has_permissions', 63, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:63'),
(436, 'CREATE', 'role_has_permissions', 65, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:65'),
(437, 'CREATE', 'role_has_permissions', 66, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:66'),
(438, 'CREATE', 'role_has_permissions', 67, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:67'),
(439, 'CREATE', 'role_has_permissions', 69, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:69'),
(440, 'CREATE', 'role_has_permissions', 70, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:70'),
(441, 'CREATE', 'role_has_permissions', 71, '2024-09-23 13:18:27', NULL, 'role_id:7, permission_id:71'),
(442, 'CREATE', 'permissions', 73, '2024-09-23 13:19:47', NULL, 'name:create_order, guard_name:web, created_at:2024-09-23 13:19:47, updated_at:2024-09-23 13:19:47'),
(443, 'DELETE', 'role_has_permissions', 45, '2024-09-23 13:19:58', 'role_id:6, permission_id:45', NULL),
(444, 'DELETE', 'role_has_permissions', 46, '2024-09-23 13:19:58', 'role_id:6, permission_id:46', NULL),
(445, 'DELETE', 'role_has_permissions', 47, '2024-09-23 13:19:58', 'role_id:6, permission_id:47', NULL),
(446, 'DELETE', 'role_has_permissions', 48, '2024-09-23 13:19:58', 'role_id:6, permission_id:48', NULL),
(447, 'DELETE', 'role_has_permissions', 49, '2024-09-23 13:19:58', 'role_id:6, permission_id:49', NULL),
(448, 'DELETE', 'role_has_permissions', 50, '2024-09-23 13:19:58', 'role_id:6, permission_id:50', NULL),
(449, 'DELETE', 'role_has_permissions', 51, '2024-09-23 13:19:58', 'role_id:6, permission_id:51', NULL),
(450, 'DELETE', 'role_has_permissions', 52, '2024-09-23 13:19:58', 'role_id:6, permission_id:52', NULL),
(451, 'DELETE', 'role_has_permissions', 53, '2024-09-23 13:19:58', 'role_id:6, permission_id:53', NULL),
(452, 'DELETE', 'role_has_permissions', 54, '2024-09-23 13:19:58', 'role_id:6, permission_id:54', NULL),
(453, 'DELETE', 'role_has_permissions', 55, '2024-09-23 13:19:58', 'role_id:6, permission_id:55', NULL),
(454, 'DELETE', 'role_has_permissions', 56, '2024-09-23 13:19:58', 'role_id:6, permission_id:56', NULL),
(455, 'DELETE', 'role_has_permissions', 57, '2024-09-23 13:19:58', 'role_id:6, permission_id:57', NULL),
(456, 'DELETE', 'role_has_permissions', 58, '2024-09-23 13:19:58', 'role_id:6, permission_id:58', NULL),
(457, 'DELETE', 'role_has_permissions', 59, '2024-09-23 13:19:58', 'role_id:6, permission_id:59', NULL),
(458, 'DELETE', 'role_has_permissions', 60, '2024-09-23 13:19:58', 'role_id:6, permission_id:60', NULL),
(459, 'DELETE', 'role_has_permissions', 61, '2024-09-23 13:19:58', 'role_id:6, permission_id:61', NULL),
(460, 'DELETE', 'role_has_permissions', 62, '2024-09-23 13:19:58', 'role_id:6, permission_id:62', NULL),
(461, 'DELETE', 'role_has_permissions', 63, '2024-09-23 13:19:58', 'role_id:6, permission_id:63', NULL),
(462, 'DELETE', 'role_has_permissions', 64, '2024-09-23 13:19:58', 'role_id:6, permission_id:64', NULL),
(463, 'DELETE', 'role_has_permissions', 65, '2024-09-23 13:19:58', 'role_id:6, permission_id:65', NULL),
(464, 'DELETE', 'role_has_permissions', 66, '2024-09-23 13:19:58', 'role_id:6, permission_id:66', NULL),
(465, 'DELETE', 'role_has_permissions', 67, '2024-09-23 13:19:58', 'role_id:6, permission_id:67', NULL),
(466, 'DELETE', 'role_has_permissions', 68, '2024-09-23 13:19:58', 'role_id:6, permission_id:68', NULL),
(467, 'DELETE', 'role_has_permissions', 69, '2024-09-23 13:19:58', 'role_id:6, permission_id:69', NULL),
(468, 'DELETE', 'role_has_permissions', 70, '2024-09-23 13:19:58', 'role_id:6, permission_id:70', NULL),
(469, 'DELETE', 'role_has_permissions', 71, '2024-09-23 13:19:58', 'role_id:6, permission_id:71', NULL),
(470, 'CREATE', 'role_has_permissions', 45, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:45'),
(471, 'CREATE', 'role_has_permissions', 46, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:46'),
(472, 'CREATE', 'role_has_permissions', 47, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:47'),
(473, 'CREATE', 'role_has_permissions', 48, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:48'),
(474, 'CREATE', 'role_has_permissions', 49, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:49'),
(475, 'CREATE', 'role_has_permissions', 50, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:50'),
(476, 'CREATE', 'role_has_permissions', 51, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:51'),
(477, 'CREATE', 'role_has_permissions', 52, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:52'),
(478, 'CREATE', 'role_has_permissions', 53, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:53'),
(479, 'CREATE', 'role_has_permissions', 54, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:54'),
(480, 'CREATE', 'role_has_permissions', 55, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:55'),
(481, 'CREATE', 'role_has_permissions', 56, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:56'),
(482, 'CREATE', 'role_has_permissions', 57, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:57'),
(483, 'CREATE', 'role_has_permissions', 58, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:58'),
(484, 'CREATE', 'role_has_permissions', 59, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:59'),
(485, 'CREATE', 'role_has_permissions', 60, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:60'),
(486, 'CREATE', 'role_has_permissions', 61, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:61'),
(487, 'CREATE', 'role_has_permissions', 62, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:62'),
(488, 'CREATE', 'role_has_permissions', 63, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:63'),
(489, 'CREATE', 'role_has_permissions', 64, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:64'),
(490, 'CREATE', 'role_has_permissions', 65, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:65'),
(491, 'CREATE', 'role_has_permissions', 66, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:66'),
(492, 'CREATE', 'role_has_permissions', 67, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:67'),
(493, 'CREATE', 'role_has_permissions', 68, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:68'),
(494, 'CREATE', 'role_has_permissions', 69, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:69'),
(495, 'CREATE', 'role_has_permissions', 70, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:70'),
(496, 'CREATE', 'role_has_permissions', 71, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:71'),
(497, 'CREATE', 'role_has_permissions', 73, '2024-09-23 13:19:58', NULL, 'role_id:6, permission_id:73'),
(498, 'DELETE', 'role_has_permissions', 45, '2024-09-23 13:20:03', 'role_id:7, permission_id:45', NULL),
(499, 'DELETE', 'role_has_permissions', 46, '2024-09-23 13:20:03', 'role_id:7, permission_id:46', NULL),
(500, 'DELETE', 'role_has_permissions', 47, '2024-09-23 13:20:03', 'role_id:7, permission_id:47', NULL),
(501, 'DELETE', 'role_has_permissions', 49, '2024-09-23 13:20:03', 'role_id:7, permission_id:49', NULL),
(502, 'DELETE', 'role_has_permissions', 50, '2024-09-23 13:20:03', 'role_id:7, permission_id:50', NULL),
(503, 'DELETE', 'role_has_permissions', 51, '2024-09-23 13:20:03', 'role_id:7, permission_id:51', NULL),
(504, 'DELETE', 'role_has_permissions', 53, '2024-09-23 13:20:03', 'role_id:7, permission_id:53', NULL),
(505, 'DELETE', 'role_has_permissions', 54, '2024-09-23 13:20:03', 'role_id:7, permission_id:54', NULL),
(506, 'DELETE', 'role_has_permissions', 55, '2024-09-23 13:20:03', 'role_id:7, permission_id:55', NULL),
(507, 'DELETE', 'role_has_permissions', 57, '2024-09-23 13:20:03', 'role_id:7, permission_id:57', NULL),
(508, 'DELETE', 'role_has_permissions', 58, '2024-09-23 13:20:03', 'role_id:7, permission_id:58', NULL),
(509, 'DELETE', 'role_has_permissions', 59, '2024-09-23 13:20:03', 'role_id:7, permission_id:59', NULL),
(510, 'DELETE', 'role_has_permissions', 61, '2024-09-23 13:20:03', 'role_id:7, permission_id:61', NULL),
(511, 'DELETE', 'role_has_permissions', 62, '2024-09-23 13:20:03', 'role_id:7, permission_id:62', NULL),
(512, 'DELETE', 'role_has_permissions', 63, '2024-09-23 13:20:03', 'role_id:7, permission_id:63', NULL),
(513, 'DELETE', 'role_has_permissions', 65, '2024-09-23 13:20:03', 'role_id:7, permission_id:65', NULL),
(514, 'DELETE', 'role_has_permissions', 66, '2024-09-23 13:20:03', 'role_id:7, permission_id:66', NULL),
(515, 'DELETE', 'role_has_permissions', 67, '2024-09-23 13:20:03', 'role_id:7, permission_id:67', NULL),
(516, 'DELETE', 'role_has_permissions', 69, '2024-09-23 13:20:03', 'role_id:7, permission_id:69', NULL),
(517, 'DELETE', 'role_has_permissions', 70, '2024-09-23 13:20:03', 'role_id:7, permission_id:70', NULL),
(518, 'DELETE', 'role_has_permissions', 71, '2024-09-23 13:20:03', 'role_id:7, permission_id:71', NULL),
(519, 'CREATE', 'role_has_permissions', 45, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:45'),
(520, 'CREATE', 'role_has_permissions', 46, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:46'),
(521, 'CREATE', 'role_has_permissions', 47, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:47'),
(522, 'CREATE', 'role_has_permissions', 49, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:49'),
(523, 'CREATE', 'role_has_permissions', 50, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:50'),
(524, 'CREATE', 'role_has_permissions', 51, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:51'),
(525, 'CREATE', 'role_has_permissions', 53, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:53'),
(526, 'CREATE', 'role_has_permissions', 54, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:54'),
(527, 'CREATE', 'role_has_permissions', 55, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:55'),
(528, 'CREATE', 'role_has_permissions', 57, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:57'),
(529, 'CREATE', 'role_has_permissions', 58, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:58'),
(530, 'CREATE', 'role_has_permissions', 59, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:59'),
(531, 'CREATE', 'role_has_permissions', 61, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:61'),
(532, 'CREATE', 'role_has_permissions', 62, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:62'),
(533, 'CREATE', 'role_has_permissions', 63, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:63'),
(534, 'CREATE', 'role_has_permissions', 65, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:65'),
(535, 'CREATE', 'role_has_permissions', 66, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:66'),
(536, 'CREATE', 'role_has_permissions', 67, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:67'),
(537, 'CREATE', 'role_has_permissions', 69, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:69'),
(538, 'CREATE', 'role_has_permissions', 70, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:70'),
(539, 'CREATE', 'role_has_permissions', 71, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:71'),
(540, 'CREATE', 'role_has_permissions', 73, '2024-09-23 13:20:03', NULL, 'role_id:7, permission_id:73'),
(541, 'CREATE', 'permissions', 74, '2024-09-23 13:59:25', NULL, 'name:create_profile, guard_name:web, created_at:2024-09-23 13:59:25, updated_at:2024-09-23 13:59:25'),
(542, 'CREATE', 'permissions', 75, '2024-09-23 13:59:35', NULL, 'name:view_profile, guard_name:web, created_at:2024-09-23 13:59:35, updated_at:2024-09-23 13:59:35'),
(543, 'CREATE', 'permissions', 76, '2024-09-23 13:59:47', NULL, 'name:update_profile, guard_name:web, created_at:2024-09-23 13:59:47, updated_at:2024-09-23 13:59:47'),
(544, 'CREATE', 'permissions', 77, '2024-09-23 14:00:02', NULL, 'name:delete_profile, guard_name:web, created_at:2024-09-23 14:00:02, updated_at:2024-09-23 14:00:02'),
(545, 'DELETE', 'role_has_permissions', 21, '2024-09-23 14:03:59', 'role_id:5, permission_id:21', NULL),
(546, 'DELETE', 'role_has_permissions', 22, '2024-09-23 14:03:59', 'role_id:5, permission_id:22', NULL),
(547, 'DELETE', 'role_has_permissions', 23, '2024-09-23 14:03:59', 'role_id:5, permission_id:23', NULL),
(548, 'DELETE', 'role_has_permissions', 24, '2024-09-23 14:03:59', 'role_id:5, permission_id:24', NULL),
(549, 'DELETE', 'role_has_permissions', 25, '2024-09-23 14:03:59', 'role_id:5, permission_id:25', NULL),
(550, 'DELETE', 'role_has_permissions', 26, '2024-09-23 14:03:59', 'role_id:5, permission_id:26', NULL),
(551, 'DELETE', 'role_has_permissions', 27, '2024-09-23 14:03:59', 'role_id:5, permission_id:27', NULL),
(552, 'DELETE', 'role_has_permissions', 28, '2024-09-23 14:03:59', 'role_id:5, permission_id:28', NULL),
(553, 'DELETE', 'role_has_permissions', 29, '2024-09-23 14:03:59', 'role_id:5, permission_id:29', NULL),
(554, 'DELETE', 'role_has_permissions', 30, '2024-09-23 14:03:59', 'role_id:5, permission_id:30', NULL),
(555, 'DELETE', 'role_has_permissions', 31, '2024-09-23 14:03:59', 'role_id:5, permission_id:31', NULL),
(556, 'DELETE', 'role_has_permissions', 32, '2024-09-23 14:03:59', 'role_id:5, permission_id:32', NULL),
(557, 'DELETE', 'role_has_permissions', 33, '2024-09-23 14:03:59', 'role_id:5, permission_id:33', NULL),
(558, 'DELETE', 'role_has_permissions', 34, '2024-09-23 14:03:59', 'role_id:5, permission_id:34', NULL),
(559, 'DELETE', 'role_has_permissions', 35, '2024-09-23 14:03:59', 'role_id:5, permission_id:35', NULL),
(560, 'DELETE', 'role_has_permissions', 36, '2024-09-23 14:03:59', 'role_id:5, permission_id:36', NULL),
(561, 'DELETE', 'role_has_permissions', 37, '2024-09-23 14:03:59', 'role_id:5, permission_id:37', NULL),
(562, 'DELETE', 'role_has_permissions', 38, '2024-09-23 14:03:59', 'role_id:5, permission_id:38', NULL),
(563, 'DELETE', 'role_has_permissions', 39, '2024-09-23 14:03:59', 'role_id:5, permission_id:39', NULL),
(564, 'DELETE', 'role_has_permissions', 40, '2024-09-23 14:03:59', 'role_id:5, permission_id:40', NULL),
(565, 'DELETE', 'role_has_permissions', 41, '2024-09-23 14:03:59', 'role_id:5, permission_id:41', NULL),
(566, 'DELETE', 'role_has_permissions', 42, '2024-09-23 14:03:59', 'role_id:5, permission_id:42', NULL),
(567, 'DELETE', 'role_has_permissions', 43, '2024-09-23 14:03:59', 'role_id:5, permission_id:43', NULL),
(568, 'DELETE', 'role_has_permissions', 44, '2024-09-23 14:03:59', 'role_id:5, permission_id:44', NULL),
(569, 'DELETE', 'role_has_permissions', 45, '2024-09-23 14:03:59', 'role_id:5, permission_id:45', NULL),
(570, 'DELETE', 'role_has_permissions', 46, '2024-09-23 14:03:59', 'role_id:5, permission_id:46', NULL),
(571, 'DELETE', 'role_has_permissions', 47, '2024-09-23 14:03:59', 'role_id:5, permission_id:47', NULL),
(572, 'DELETE', 'role_has_permissions', 48, '2024-09-23 14:03:59', 'role_id:5, permission_id:48', NULL),
(573, 'DELETE', 'role_has_permissions', 49, '2024-09-23 14:03:59', 'role_id:5, permission_id:49', NULL),
(574, 'DELETE', 'role_has_permissions', 50, '2024-09-23 14:03:59', 'role_id:5, permission_id:50', NULL),
(575, 'DELETE', 'role_has_permissions', 51, '2024-09-23 14:03:59', 'role_id:5, permission_id:51', NULL),
(576, 'DELETE', 'role_has_permissions', 52, '2024-09-23 14:03:59', 'role_id:5, permission_id:52', NULL),
(577, 'DELETE', 'role_has_permissions', 53, '2024-09-23 14:03:59', 'role_id:5, permission_id:53', NULL),
(578, 'DELETE', 'role_has_permissions', 54, '2024-09-23 14:03:59', 'role_id:5, permission_id:54', NULL),
(579, 'DELETE', 'role_has_permissions', 55, '2024-09-23 14:03:59', 'role_id:5, permission_id:55', NULL),
(580, 'DELETE', 'role_has_permissions', 56, '2024-09-23 14:03:59', 'role_id:5, permission_id:56', NULL),
(581, 'DELETE', 'role_has_permissions', 57, '2024-09-23 14:03:59', 'role_id:5, permission_id:57', NULL),
(582, 'DELETE', 'role_has_permissions', 58, '2024-09-23 14:03:59', 'role_id:5, permission_id:58', NULL),
(583, 'DELETE', 'role_has_permissions', 59, '2024-09-23 14:03:59', 'role_id:5, permission_id:59', NULL),
(584, 'DELETE', 'role_has_permissions', 60, '2024-09-23 14:03:59', 'role_id:5, permission_id:60', NULL),
(585, 'DELETE', 'role_has_permissions', 61, '2024-09-23 14:03:59', 'role_id:5, permission_id:61', NULL),
(586, 'DELETE', 'role_has_permissions', 62, '2024-09-23 14:03:59', 'role_id:5, permission_id:62', NULL),
(587, 'DELETE', 'role_has_permissions', 63, '2024-09-23 14:03:59', 'role_id:5, permission_id:63', NULL),
(588, 'DELETE', 'role_has_permissions', 64, '2024-09-23 14:03:59', 'role_id:5, permission_id:64', NULL),
(589, 'DELETE', 'role_has_permissions', 65, '2024-09-23 14:03:59', 'role_id:5, permission_id:65', NULL),
(590, 'DELETE', 'role_has_permissions', 66, '2024-09-23 14:03:59', 'role_id:5, permission_id:66', NULL),
(591, 'DELETE', 'role_has_permissions', 67, '2024-09-23 14:03:59', 'role_id:5, permission_id:67', NULL),
(592, 'DELETE', 'role_has_permissions', 68, '2024-09-23 14:03:59', 'role_id:5, permission_id:68', NULL),
(593, 'DELETE', 'role_has_permissions', 69, '2024-09-23 14:03:59', 'role_id:5, permission_id:69', NULL),
(594, 'DELETE', 'role_has_permissions', 70, '2024-09-23 14:03:59', 'role_id:5, permission_id:70', NULL),
(595, 'DELETE', 'role_has_permissions', 71, '2024-09-23 14:03:59', 'role_id:5, permission_id:71', NULL),
(596, 'DELETE', 'role_has_permissions', 72, '2024-09-23 14:03:59', 'role_id:5, permission_id:72', NULL),
(597, 'CREATE', 'role_has_permissions', 21, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:21'),
(598, 'CREATE', 'role_has_permissions', 22, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:22'),
(599, 'CREATE', 'role_has_permissions', 23, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:23'),
(600, 'CREATE', 'role_has_permissions', 24, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:24'),
(601, 'CREATE', 'role_has_permissions', 25, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:25'),
(602, 'CREATE', 'role_has_permissions', 26, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:26'),
(603, 'CREATE', 'role_has_permissions', 27, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:27'),
(604, 'CREATE', 'role_has_permissions', 28, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:28'),
(605, 'CREATE', 'role_has_permissions', 29, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:29'),
(606, 'CREATE', 'role_has_permissions', 30, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:30'),
(607, 'CREATE', 'role_has_permissions', 31, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:31'),
(608, 'CREATE', 'role_has_permissions', 32, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:32'),
(609, 'CREATE', 'role_has_permissions', 33, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:33'),
(610, 'CREATE', 'role_has_permissions', 34, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:34'),
(611, 'CREATE', 'role_has_permissions', 35, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:35'),
(612, 'CREATE', 'role_has_permissions', 36, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:36'),
(613, 'CREATE', 'role_has_permissions', 37, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:37'),
(614, 'CREATE', 'role_has_permissions', 38, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:38'),
(615, 'CREATE', 'role_has_permissions', 39, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:39'),
(616, 'CREATE', 'role_has_permissions', 40, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:40'),
(617, 'CREATE', 'role_has_permissions', 41, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:41'),
(618, 'CREATE', 'role_has_permissions', 42, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:42'),
(619, 'CREATE', 'role_has_permissions', 43, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:43'),
(620, 'CREATE', 'role_has_permissions', 44, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:44'),
(621, 'CREATE', 'role_has_permissions', 45, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:45'),
(622, 'CREATE', 'role_has_permissions', 46, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:46'),
(623, 'CREATE', 'role_has_permissions', 47, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:47'),
(624, 'CREATE', 'role_has_permissions', 48, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:48'),
(625, 'CREATE', 'role_has_permissions', 49, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:49'),
(626, 'CREATE', 'role_has_permissions', 50, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:50'),
(627, 'CREATE', 'role_has_permissions', 51, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:51'),
(628, 'CREATE', 'role_has_permissions', 52, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:52'),
(629, 'CREATE', 'role_has_permissions', 53, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:53'),
(630, 'CREATE', 'role_has_permissions', 54, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:54'),
(631, 'CREATE', 'role_has_permissions', 55, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:55'),
(632, 'CREATE', 'role_has_permissions', 56, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:56'),
(633, 'CREATE', 'role_has_permissions', 57, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:57'),
(634, 'CREATE', 'role_has_permissions', 58, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:58'),
(635, 'CREATE', 'role_has_permissions', 59, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:59'),
(636, 'CREATE', 'role_has_permissions', 60, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:60'),
(637, 'CREATE', 'role_has_permissions', 61, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:61'),
(638, 'CREATE', 'role_has_permissions', 62, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:62'),
(639, 'CREATE', 'role_has_permissions', 63, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:63'),
(640, 'CREATE', 'role_has_permissions', 64, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:64'),
(641, 'CREATE', 'role_has_permissions', 65, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:65'),
(642, 'CREATE', 'role_has_permissions', 66, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:66'),
(643, 'CREATE', 'role_has_permissions', 67, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:67'),
(644, 'CREATE', 'role_has_permissions', 68, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:68'),
(645, 'CREATE', 'role_has_permissions', 69, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:69'),
(646, 'CREATE', 'role_has_permissions', 70, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:70'),
(647, 'CREATE', 'role_has_permissions', 71, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:71'),
(648, 'CREATE', 'role_has_permissions', 72, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:72'),
(649, 'CREATE', 'role_has_permissions', 73, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:73'),
(650, 'CREATE', 'role_has_permissions', 74, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:74'),
(651, 'CREATE', 'role_has_permissions', 75, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:75'),
(652, 'CREATE', 'role_has_permissions', 76, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:76'),
(653, 'CREATE', 'role_has_permissions', 77, '2024-09-23 14:03:59', NULL, 'role_id:5, permission_id:77'),
(654, 'DELETE', 'role_has_permissions', 74, '2024-09-23 14:05:08', 'role_id:5, permission_id:74', NULL),
(655, 'DELETE', 'permissions', 74, '2024-09-23 14:05:08', 'name:create_profile, guard_name:web, created_at:2024-09-23 13:59:25, updated_at:2024-09-23 13:59:25', NULL),
(656, 'UPDATE', 'permissions', 77, '2024-09-23 14:05:17', 'name:delete_profile, guard_name:web, created_at:2024-09-23 14:00:02, updated_at:2024-09-23 14:00:02', 'name:change_password, guard_name:web, created_at:2024-09-23 14:00:02, updated_at:2024-09-23 14:05:17'),
(657, 'DELETE', 'role_has_permissions', 45, '2024-09-23 14:05:34', 'role_id:6, permission_id:45', NULL),
(658, 'DELETE', 'role_has_permissions', 46, '2024-09-23 14:05:34', 'role_id:6, permission_id:46', NULL),
(659, 'DELETE', 'role_has_permissions', 47, '2024-09-23 14:05:34', 'role_id:6, permission_id:47', NULL),
(660, 'DELETE', 'role_has_permissions', 48, '2024-09-23 14:05:34', 'role_id:6, permission_id:48', NULL),
(661, 'DELETE', 'role_has_permissions', 49, '2024-09-23 14:05:34', 'role_id:6, permission_id:49', NULL),
(662, 'DELETE', 'role_has_permissions', 50, '2024-09-23 14:05:34', 'role_id:6, permission_id:50', NULL),
(663, 'DELETE', 'role_has_permissions', 51, '2024-09-23 14:05:34', 'role_id:6, permission_id:51', NULL),
(664, 'DELETE', 'role_has_permissions', 52, '2024-09-23 14:05:34', 'role_id:6, permission_id:52', NULL),
(665, 'DELETE', 'role_has_permissions', 53, '2024-09-23 14:05:34', 'role_id:6, permission_id:53', NULL),
(666, 'DELETE', 'role_has_permissions', 54, '2024-09-23 14:05:34', 'role_id:6, permission_id:54', NULL),
(667, 'DELETE', 'role_has_permissions', 55, '2024-09-23 14:05:34', 'role_id:6, permission_id:55', NULL),
(668, 'DELETE', 'role_has_permissions', 56, '2024-09-23 14:05:34', 'role_id:6, permission_id:56', NULL),
(669, 'DELETE', 'role_has_permissions', 57, '2024-09-23 14:05:34', 'role_id:6, permission_id:57', NULL),
(670, 'DELETE', 'role_has_permissions', 58, '2024-09-23 14:05:34', 'role_id:6, permission_id:58', NULL),
(671, 'DELETE', 'role_has_permissions', 59, '2024-09-23 14:05:34', 'role_id:6, permission_id:59', NULL),
(672, 'DELETE', 'role_has_permissions', 60, '2024-09-23 14:05:34', 'role_id:6, permission_id:60', NULL),
(673, 'DELETE', 'role_has_permissions', 61, '2024-09-23 14:05:34', 'role_id:6, permission_id:61', NULL),
(674, 'DELETE', 'role_has_permissions', 62, '2024-09-23 14:05:34', 'role_id:6, permission_id:62', NULL),
(675, 'DELETE', 'role_has_permissions', 63, '2024-09-23 14:05:34', 'role_id:6, permission_id:63', NULL),
(676, 'DELETE', 'role_has_permissions', 64, '2024-09-23 14:05:34', 'role_id:6, permission_id:64', NULL),
(677, 'DELETE', 'role_has_permissions', 65, '2024-09-23 14:05:34', 'role_id:6, permission_id:65', NULL),
(678, 'DELETE', 'role_has_permissions', 66, '2024-09-23 14:05:34', 'role_id:6, permission_id:66', NULL),
(679, 'DELETE', 'role_has_permissions', 67, '2024-09-23 14:05:34', 'role_id:6, permission_id:67', NULL),
(680, 'DELETE', 'role_has_permissions', 68, '2024-09-23 14:05:34', 'role_id:6, permission_id:68', NULL),
(681, 'DELETE', 'role_has_permissions', 69, '2024-09-23 14:05:34', 'role_id:6, permission_id:69', NULL),
(682, 'DELETE', 'role_has_permissions', 70, '2024-09-23 14:05:34', 'role_id:6, permission_id:70', NULL),
(683, 'DELETE', 'role_has_permissions', 71, '2024-09-23 14:05:34', 'role_id:6, permission_id:71', NULL),
(684, 'DELETE', 'role_has_permissions', 73, '2024-09-23 14:05:34', 'role_id:6, permission_id:73', NULL),
(685, 'CREATE', 'role_has_permissions', 45, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:45'),
(686, 'CREATE', 'role_has_permissions', 46, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:46'),
(687, 'CREATE', 'role_has_permissions', 47, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:47'),
(688, 'CREATE', 'role_has_permissions', 48, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:48'),
(689, 'CREATE', 'role_has_permissions', 49, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:49'),
(690, 'CREATE', 'role_has_permissions', 50, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:50'),
(691, 'CREATE', 'role_has_permissions', 51, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:51'),
(692, 'CREATE', 'role_has_permissions', 52, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:52'),
(693, 'CREATE', 'role_has_permissions', 53, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:53'),
(694, 'CREATE', 'role_has_permissions', 54, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:54'),
(695, 'CREATE', 'role_has_permissions', 55, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:55'),
(696, 'CREATE', 'role_has_permissions', 56, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:56'),
(697, 'CREATE', 'role_has_permissions', 57, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:57'),
(698, 'CREATE', 'role_has_permissions', 58, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:58'),
(699, 'CREATE', 'role_has_permissions', 59, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:59'),
(700, 'CREATE', 'role_has_permissions', 60, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:60'),
(701, 'CREATE', 'role_has_permissions', 61, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:61'),
(702, 'CREATE', 'role_has_permissions', 62, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:62'),
(703, 'CREATE', 'role_has_permissions', 63, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:63'),
(704, 'CREATE', 'role_has_permissions', 64, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:64'),
(705, 'CREATE', 'role_has_permissions', 65, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:65'),
(706, 'CREATE', 'role_has_permissions', 66, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:66'),
(707, 'CREATE', 'role_has_permissions', 67, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:67'),
(708, 'CREATE', 'role_has_permissions', 68, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:68'),
(709, 'CREATE', 'role_has_permissions', 69, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:69'),
(710, 'CREATE', 'role_has_permissions', 70, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:70'),
(711, 'CREATE', 'role_has_permissions', 71, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:71'),
(712, 'CREATE', 'role_has_permissions', 73, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:73'),
(713, 'CREATE', 'role_has_permissions', 75, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:75'),
(714, 'CREATE', 'role_has_permissions', 76, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:76'),
(715, 'CREATE', 'role_has_permissions', 77, '2024-09-23 14:05:34', NULL, 'role_id:6, permission_id:77'),
(716, 'DELETE', 'role_has_permissions', 45, '2024-09-23 14:05:44', 'role_id:6, permission_id:45', NULL),
(717, 'DELETE', 'role_has_permissions', 46, '2024-09-23 14:05:44', 'role_id:6, permission_id:46', NULL),
(718, 'DELETE', 'role_has_permissions', 47, '2024-09-23 14:05:44', 'role_id:6, permission_id:47', NULL),
(719, 'DELETE', 'role_has_permissions', 48, '2024-09-23 14:05:44', 'role_id:6, permission_id:48', NULL),
(720, 'DELETE', 'role_has_permissions', 49, '2024-09-23 14:05:44', 'role_id:6, permission_id:49', NULL),
(721, 'DELETE', 'role_has_permissions', 50, '2024-09-23 14:05:44', 'role_id:6, permission_id:50', NULL),
(722, 'DELETE', 'role_has_permissions', 51, '2024-09-23 14:05:44', 'role_id:6, permission_id:51', NULL),
(723, 'DELETE', 'role_has_permissions', 52, '2024-09-23 14:05:44', 'role_id:6, permission_id:52', NULL),
(724, 'DELETE', 'role_has_permissions', 53, '2024-09-23 14:05:44', 'role_id:6, permission_id:53', NULL),
(725, 'DELETE', 'role_has_permissions', 54, '2024-09-23 14:05:44', 'role_id:6, permission_id:54', NULL),
(726, 'DELETE', 'role_has_permissions', 55, '2024-09-23 14:05:44', 'role_id:6, permission_id:55', NULL),
(727, 'DELETE', 'role_has_permissions', 56, '2024-09-23 14:05:44', 'role_id:6, permission_id:56', NULL),
(728, 'DELETE', 'role_has_permissions', 57, '2024-09-23 14:05:44', 'role_id:6, permission_id:57', NULL),
(729, 'DELETE', 'role_has_permissions', 58, '2024-09-23 14:05:44', 'role_id:6, permission_id:58', NULL),
(730, 'DELETE', 'role_has_permissions', 59, '2024-09-23 14:05:44', 'role_id:6, permission_id:59', NULL),
(731, 'DELETE', 'role_has_permissions', 60, '2024-09-23 14:05:44', 'role_id:6, permission_id:60', NULL),
(732, 'DELETE', 'role_has_permissions', 61, '2024-09-23 14:05:44', 'role_id:6, permission_id:61', NULL),
(733, 'DELETE', 'role_has_permissions', 62, '2024-09-23 14:05:44', 'role_id:6, permission_id:62', NULL),
(734, 'DELETE', 'role_has_permissions', 63, '2024-09-23 14:05:44', 'role_id:6, permission_id:63', NULL),
(735, 'DELETE', 'role_has_permissions', 64, '2024-09-23 14:05:44', 'role_id:6, permission_id:64', NULL),
(736, 'DELETE', 'role_has_permissions', 65, '2024-09-23 14:05:44', 'role_id:6, permission_id:65', NULL),
(737, 'DELETE', 'role_has_permissions', 66, '2024-09-23 14:05:44', 'role_id:6, permission_id:66', NULL),
(738, 'DELETE', 'role_has_permissions', 67, '2024-09-23 14:05:44', 'role_id:6, permission_id:67', NULL),
(739, 'DELETE', 'role_has_permissions', 68, '2024-09-23 14:05:44', 'role_id:6, permission_id:68', NULL),
(740, 'DELETE', 'role_has_permissions', 69, '2024-09-23 14:05:44', 'role_id:6, permission_id:69', NULL),
(741, 'DELETE', 'role_has_permissions', 70, '2024-09-23 14:05:44', 'role_id:6, permission_id:70', NULL),
(742, 'DELETE', 'role_has_permissions', 71, '2024-09-23 14:05:44', 'role_id:6, permission_id:71', NULL),
(743, 'DELETE', 'role_has_permissions', 73, '2024-09-23 14:05:44', 'role_id:6, permission_id:73', NULL),
(744, 'DELETE', 'role_has_permissions', 75, '2024-09-23 14:05:44', 'role_id:6, permission_id:75', NULL),
(745, 'DELETE', 'role_has_permissions', 76, '2024-09-23 14:05:44', 'role_id:6, permission_id:76', NULL),
(746, 'DELETE', 'role_has_permissions', 77, '2024-09-23 14:05:44', 'role_id:6, permission_id:77', NULL),
(747, 'CREATE', 'role_has_permissions', 45, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:45'),
(748, 'CREATE', 'role_has_permissions', 46, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:46'),
(749, 'CREATE', 'role_has_permissions', 47, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:47'),
(750, 'CREATE', 'role_has_permissions', 49, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:49'),
(751, 'CREATE', 'role_has_permissions', 50, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:50'),
(752, 'CREATE', 'role_has_permissions', 51, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:51'),
(753, 'CREATE', 'role_has_permissions', 53, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:53'),
(754, 'CREATE', 'role_has_permissions', 54, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:54'),
(755, 'CREATE', 'role_has_permissions', 55, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:55'),
(756, 'CREATE', 'role_has_permissions', 57, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:57'),
(757, 'CREATE', 'role_has_permissions', 58, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:58'),
(758, 'CREATE', 'role_has_permissions', 59, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:59'),
(759, 'CREATE', 'role_has_permissions', 61, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:61'),
(760, 'CREATE', 'role_has_permissions', 62, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:62'),
(761, 'CREATE', 'role_has_permissions', 63, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:63'),
(762, 'CREATE', 'role_has_permissions', 65, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:65'),
(763, 'CREATE', 'role_has_permissions', 66, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:66'),
(764, 'CREATE', 'role_has_permissions', 67, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:67'),
(765, 'CREATE', 'role_has_permissions', 69, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:69'),
(766, 'CREATE', 'role_has_permissions', 70, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:70'),
(767, 'CREATE', 'role_has_permissions', 71, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:71'),
(768, 'CREATE', 'role_has_permissions', 73, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:73'),
(769, 'CREATE', 'role_has_permissions', 75, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:75'),
(770, 'CREATE', 'role_has_permissions', 76, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:76'),
(771, 'CREATE', 'role_has_permissions', 77, '2024-09-23 14:05:44', NULL, 'role_id:6, permission_id:77'),
(772, 'DELETE', 'role_has_permissions', 45, '2024-09-23 14:05:53', 'role_id:7, permission_id:45', NULL),
(773, 'DELETE', 'role_has_permissions', 46, '2024-09-23 14:05:53', 'role_id:7, permission_id:46', NULL),
(774, 'DELETE', 'role_has_permissions', 47, '2024-09-23 14:05:53', 'role_id:7, permission_id:47', NULL),
(775, 'DELETE', 'role_has_permissions', 49, '2024-09-23 14:05:53', 'role_id:7, permission_id:49', NULL),
(776, 'DELETE', 'role_has_permissions', 50, '2024-09-23 14:05:53', 'role_id:7, permission_id:50', NULL),
(777, 'DELETE', 'role_has_permissions', 51, '2024-09-23 14:05:53', 'role_id:7, permission_id:51', NULL),
(778, 'DELETE', 'role_has_permissions', 53, '2024-09-23 14:05:53', 'role_id:7, permission_id:53', NULL),
(779, 'DELETE', 'role_has_permissions', 54, '2024-09-23 14:05:53', 'role_id:7, permission_id:54', NULL),
(780, 'DELETE', 'role_has_permissions', 55, '2024-09-23 14:05:53', 'role_id:7, permission_id:55', NULL),
(781, 'DELETE', 'role_has_permissions', 57, '2024-09-23 14:05:53', 'role_id:7, permission_id:57', NULL),
(782, 'DELETE', 'role_has_permissions', 58, '2024-09-23 14:05:53', 'role_id:7, permission_id:58', NULL),
(783, 'DELETE', 'role_has_permissions', 59, '2024-09-23 14:05:53', 'role_id:7, permission_id:59', NULL),
(784, 'DELETE', 'role_has_permissions', 61, '2024-09-23 14:05:53', 'role_id:7, permission_id:61', NULL),
(785, 'DELETE', 'role_has_permissions', 62, '2024-09-23 14:05:53', 'role_id:7, permission_id:62', NULL),
(786, 'DELETE', 'role_has_permissions', 63, '2024-09-23 14:05:53', 'role_id:7, permission_id:63', NULL),
(787, 'DELETE', 'role_has_permissions', 65, '2024-09-23 14:05:53', 'role_id:7, permission_id:65', NULL),
(788, 'DELETE', 'role_has_permissions', 66, '2024-09-23 14:05:53', 'role_id:7, permission_id:66', NULL),
(789, 'DELETE', 'role_has_permissions', 67, '2024-09-23 14:05:53', 'role_id:7, permission_id:67', NULL),
(790, 'DELETE', 'role_has_permissions', 69, '2024-09-23 14:05:53', 'role_id:7, permission_id:69', NULL),
(791, 'DELETE', 'role_has_permissions', 70, '2024-09-23 14:05:53', 'role_id:7, permission_id:70', NULL),
(792, 'DELETE', 'role_has_permissions', 71, '2024-09-23 14:05:53', 'role_id:7, permission_id:71', NULL),
(793, 'DELETE', 'role_has_permissions', 73, '2024-09-23 14:05:53', 'role_id:7, permission_id:73', NULL),
(794, 'CREATE', 'role_has_permissions', 45, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:45'),
(795, 'CREATE', 'role_has_permissions', 46, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:46'),
(796, 'CREATE', 'role_has_permissions', 47, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:47'),
(797, 'CREATE', 'role_has_permissions', 49, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:49'),
(798, 'CREATE', 'role_has_permissions', 50, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:50'),
(799, 'CREATE', 'role_has_permissions', 51, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:51'),
(800, 'CREATE', 'role_has_permissions', 53, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:53'),
(801, 'CREATE', 'role_has_permissions', 54, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:54'),
(802, 'CREATE', 'role_has_permissions', 55, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:55'),
(803, 'CREATE', 'role_has_permissions', 57, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:57'),
(804, 'CREATE', 'role_has_permissions', 58, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:58'),
(805, 'CREATE', 'role_has_permissions', 59, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:59'),
(806, 'CREATE', 'role_has_permissions', 61, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:61'),
(807, 'CREATE', 'role_has_permissions', 62, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:62'),
(808, 'CREATE', 'role_has_permissions', 63, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:63'),
(809, 'CREATE', 'role_has_permissions', 65, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:65'),
(810, 'CREATE', 'role_has_permissions', 66, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:66'),
(811, 'CREATE', 'role_has_permissions', 67, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:67'),
(812, 'CREATE', 'role_has_permissions', 69, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:69'),
(813, 'CREATE', 'role_has_permissions', 70, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:70'),
(814, 'CREATE', 'role_has_permissions', 71, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:71'),
(815, 'CREATE', 'role_has_permissions', 73, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:73'),
(816, 'CREATE', 'role_has_permissions', 75, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:75'),
(817, 'CREATE', 'role_has_permissions', 76, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:76'),
(818, 'CREATE', 'role_has_permissions', 77, '2024-09-23 14:05:53', NULL, 'role_id:7, permission_id:77'),
(819, 'UPDATE', 'users', 15, '2024-09-23 15:01:12', NULL, NULL),
(820, 'UPDATE', 'users', 15, '2024-09-23 15:51:14', NULL, NULL),
(821, 'UPDATE', 'users', 15, '2024-09-23 15:51:49', NULL, NULL),
(822, 'UPDATE', 'users', 15, '2024-09-23 15:52:52', NULL, NULL),
(823, 'UPDATE', 'users', 15, '2024-09-23 15:52:56', NULL, NULL),
(824, 'UPDATE', 'users', 15, '2024-09-23 15:53:14', NULL, NULL),
(825, 'UPDATE', 'users', 15, '2024-09-23 15:54:32', NULL, NULL),
(826, 'UPDATE', 'users', 15, '2024-09-23 15:55:05', NULL, NULL),
(827, 'UPDATE', 'users', 15, '2024-09-23 16:02:33', NULL, NULL),
(828, 'UPDATE', 'users', 15, '2024-09-23 16:03:50', NULL, NULL),
(829, 'UPDATE', 'users', 5, '2024-09-23 16:04:37', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-23 11:33:39, latitude:23.742645628431575, longitude:90.41365502153512', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-23 16:04:37, latitude:23.742645628431575, longitude:90.41365502153512'),
(830, 'UPDATE', 'users', 5, '2024-09-23 17:01:29', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-23 16:04:37, latitude:23.742645628431575, longitude:90.41365502153512', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-23 17:01:29, latitude:, longitude:'),
(831, 'UPDATE', 'users', 5, '2024-09-23 17:03:58', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-23 17:01:29, latitude:, longitude:', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-23 17:03:58, latitude:23.7426509, longitude:90.4138233'),
(832, 'UPDATE', 'users', 15, '2024-09-23 17:05:13', NULL, NULL),
(833, 'CREATE', 'sms_customers', 23, '2024-09-23 17:06:08', NULL, 'uid:afc92ada-14d9-425e-9a07-8c2c7596f9a9, name:Rakib, phone:01384924439, email:rakib@gmail.com, address:Mirpur,Dhaka, status:A, create_by:15, create_date:2024-09-23 17:06:08'),
(834, 'CREATE', 'sms_orders', 52, '2024-09-23 17:06:08', NULL, NULL),
(835, 'CREATE', 'sms_order_dtl', 21, '2024-09-23 17:06:08', NULL, 'order_id:52, pro_id:12, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:15, create_date:2024-09-23 17:06:08'),
(836, 'CREATE', 'sms_order_dtl', 22, '2024-09-23 17:06:08', NULL, 'order_id:52, pro_id:13, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:15, create_date:2024-09-23 17:06:08'),
(837, 'UPDATE', 'users', 5, '2024-09-24 01:42:02', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-23 17:03:58, latitude:23.7426509, longitude:90.4138233', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-24 01:42:02, latitude:, longitude:');
INSERT INTO `operationlogs` (`LogID`, `OperationType`, `TableName`, `RecordID`, `ChangeDate`, `OldValues`, `NewValues`) VALUES
(838, 'UPDATE', 'users', 5, '2024-09-25 14:54:32', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-24 01:42:02, latitude:, longitude:', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-25 14:54:32, latitude:23.7426561, longitude:90.4138447'),
(839, 'CREATE', 'sms_protype', 15, '2024-09-25 14:55:26', NULL, 'uid:b563977e-cb52-4dbd-9b7f-62290e7e50c0, name:Cake, status:A, create_by:5, create_date:2024-09-25 14:55:26'),
(840, 'UPDATE', 'sms_probrand', 1, '2024-09-25 14:55:41', NULL, 'uid:cd30ecce-6a94-11ef-aab7-80ce628923b2, name:Foodi, status:Deleted, create_by:4, create_date:2024-09-03 11:18:52, update_by:5, update_date:2024-09-25 14:55:41'),
(841, 'CREATE', 'sms_procategory', 14, '2024-09-25 14:55:54', NULL, 'uid:c107ef79-dea8-43c5-b58a-bc179b111382, name:Cake, status:A, create_by:5, create_date:2024-09-25 14:55:54'),
(842, 'CREATE', 'sms_prosubcategory', 35, '2024-09-25 14:56:07', NULL, 'uid:3b03eff5-08d5-4ed2-bd54-395baf71853c, cat_id:14, name:Black Forest Cake, status:A, create_by:5, create_date:2024-09-25 14:56:07'),
(843, 'UPDATE', 'sms_probrand', 1, '2024-09-25 15:23:07', 'uid:cd30ecce-6a94-11ef-aab7-80ce628923b2, name:Foodi, status:Deleted, create_by:4, create_date:2024-09-03 11:18:52, update_by:5, update_date:2024-09-25 14:55:41', 'uid:cd30ecce-6a94-11ef-aab7-80ce628923b2, name:Foodi, status:A, create_by:4, create_date:2024-09-03 11:18:52, update_by:5, update_date:2024-09-25 14:55:41'),
(844, 'CREATE', 'sms_proinfo', 15, '2024-09-25 15:24:18', NULL, 'uid:c81662af-b49b-419e-9653-4eea06280ebe, type_id:15, cat_id:14, subcat_id:35, brand_id:1, title:Black Forest Cake 500gm, subtitle:Black Forest Cake 500gm, details:&amp;lt;h3&amp;gt;&amp;lt;strong&amp;gt;Black Forest Cake 500gm&amp;lt;/strong&amp;gt;&amp;lt;/h3&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Item code:&amp;amp;nbsp;46656&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Brand: Foodi&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Net Weight: 500gm&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;, price_mrp:810, price_rp:750, image1:assets/product_img/66f3d6c24969d.jpg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:24:18'),
(845, 'CREATE', 'sms_prosubcategory', 36, '2024-09-25 15:24:42', NULL, 'uid:42e7464e-5122-4a64-8bc2-0f08873c52e7, cat_id:14, name:Coated Cake, status:A, create_by:5, create_date:2024-09-25 15:24:42'),
(846, 'CREATE', 'sms_proinfo', 16, '2024-09-25 15:25:29', NULL, 'uid:8549ab84-1f1d-4f16-9e39-18d05646878a, type_id:15, cat_id:14, subcat_id:35, brand_id:1, title:Chocolate Coated Cake 500gm, subtitle:Chocolate Coated Cake 500gm, details:&amp;lt;h2&amp;gt;&amp;lt;strong&amp;gt;Chocolate Coated Cake 500gm&amp;lt;/strong&amp;gt;&amp;lt;/h2&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Item code:&amp;amp;nbsp;46656&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Brand: Foodi&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Net Weight: 500gm&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;, price_mrp:765, price_rp:700, image1:assets/product_img/66f3d709ea0e9.jpeg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:25:29'),
(847, 'CREATE', 'sms_protype', 16, '2024-09-25 15:26:41', NULL, 'uid:2a7a4c6f-6fe3-4931-903c-255cc3d1eb09, name:Bread, status:A, create_by:5, create_date:2024-09-25 15:26:41'),
(848, 'CREATE', 'sms_procategory', 15, '2024-09-25 15:26:51', NULL, 'uid:c63b538a-3e19-46d6-8d7e-b743b438aa65, name:Bread, status:A, create_by:5, create_date:2024-09-25 15:26:51'),
(849, 'CREATE', 'sms_prosubcategory', 37, '2024-09-25 15:27:05', NULL, 'uid:836021eb-9ee9-4d7d-a825-f9689ae11fbc, cat_id:15, name:Milk Bread, status:A, create_by:5, create_date:2024-09-25 15:27:05'),
(850, 'CREATE', 'sms_proinfo', 17, '2024-09-25 15:28:00', NULL, 'uid:083304d0-e231-4c8b-bd71-36e376bd2f39, type_id:16, cat_id:15, subcat_id:37, brand_id:1, title:Milk Bread 350gm +, subtitle:Milk Bread 350gm +, details:&amp;lt;h2&amp;gt;&amp;lt;strong&amp;gt;Milk Bread 350gm +&amp;lt;/strong&amp;gt;&amp;lt;/h2&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Item code:&amp;amp;nbsp;46345&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Brand: Foodi&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Net Weight: 350gm&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;, price_mrp:80, price_rp:70, image1:assets/product_img/66f3d7a0e6bab.jpg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:28:00'),
(851, 'CREATE', 'sms_proinfo', 18, '2024-09-25 15:29:02', NULL, 'uid:374afe18-1c74-487d-b137-a25b6c3ccb44, type_id:16, cat_id:15, subcat_id:37, brand_id:1, title:Butter Bun 100gm 1pcs, subtitle:Butter Bun 100gm 1pcs, details:&amp;lt;h2&amp;gt;&amp;lt;strong&amp;gt;Butter Bun 100gm 1pcs&amp;lt;/strong&amp;gt;&amp;lt;/h2&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Item code:&amp;amp;nbsp;45345&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Brand: Foodi&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;Net Weight: 100gm&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;, price_mrp:40, price_rp:30, image1:assets/product_img/66f3d7de99e57.jpg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:29:02'),
(852, 'CREATE', 'sms_procategory', 16, '2024-09-25 15:29:33', NULL, 'uid:6722e799-e237-467c-9862-5e200a14b0a4, name:Bread &amp;amp; Bun, status:A, create_by:5, create_date:2024-09-25 15:29:33'),
(853, 'CREATE', 'sms_prosubcategory', 38, '2024-09-25 15:29:50', NULL, 'uid:681be255-79e1-444d-858f-6fc834ec9834, cat_id:16, name:Fruit Cake, status:A, create_by:5, create_date:2024-09-25 15:29:50'),
(854, 'CREATE', 'sms_proinfo', 19, '2024-09-25 15:30:30', NULL, 'uid:dfc279df-74ed-450d-9e65-c3d85fd48ba7, type_id:16, cat_id:16, subcat_id:38, brand_id:1, title:Fruit Cake 1pcs, subtitle:Fruit Cake 1pcs, details:&amp;lt;h2&amp;gt;Fruit Cake 1pcs&amp;lt;/h2&amp;gt;, price_mrp:200, price_rp:180, image1:assets/product_img/66f3d836816af.jpg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:30:30'),
(855, 'CREATE', 'sms_protype', 17, '2024-09-25 15:31:13', NULL, 'uid:670098dd-f1b4-46e8-9d99-6894b748f4b8, name:Cold Drinks, status:A, create_by:5, create_date:2024-09-25 15:31:13'),
(856, 'CREATE', 'sms_procategory', 17, '2024-09-25 15:31:19', NULL, 'uid:fed5ba62-0611-466e-aa95-294a51ec6b2b, name:Beverage, status:A, create_by:5, create_date:2024-09-25 15:31:19'),
(857, 'CREATE', 'sms_prosubcategory', 39, '2024-09-25 15:31:44', NULL, 'uid:cd574cad-70e0-478f-844c-307dd00c3db5, cat_id:17, name:Cold Drinks, status:A, create_by:5, create_date:2024-09-25 15:31:44'),
(858, 'CREATE', 'sms_proinfo', 20, '2024-09-25 15:32:23', NULL, 'uid:b89c9276-a5b9-4398-b165-f99825880c0f, type_id:17, cat_id:17, subcat_id:39, brand_id:1, title:Tango Orange 250ml, subtitle:Tango Orange 250ml, details:&amp;lt;h2&amp;gt;Tango Orange 250ml&amp;lt;/h2&amp;gt;, price_mrp:20, price_rp:19, image1:assets/product_img/66f3d8a777269.png, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:32:23'),
(859, 'CREATE', 'sms_proinfo', 21, '2024-09-25 15:33:19', NULL, 'uid:bd9a0103-a0fc-4860-9b96-bab9a1abb389, type_id:17, cat_id:17, subcat_id:39, brand_id:1, title:Mojo Soft Drink 2 Lt, subtitle:Mojo Soft Drink 2 Lt, details:&amp;lt;h2&amp;gt;Mojo Soft Drink 2 Lt&amp;lt;/h2&amp;gt;, price_mrp:100, price_rp:90, image1:assets/product_img/66f3d8dfd2d4a.webp, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:33:19'),
(860, 'CREATE', 'sms_customers', 24, '2024-09-25 15:35:15', NULL, 'uid:79dc7b0d-14b5-4a33-bf48-c3c25084c963, name:Sabikun Nahar, phone:01684639206, email:nahar@gmail.com, address:Mirpur,Dhaka, status:A, create_by:5, create_date:2024-09-25 15:35:15'),
(861, 'CREATE', 'sms_orders', 53, '2024-09-25 15:35:15', NULL, NULL),
(862, 'CREATE', 'sms_order_dtl', 23, '2024-09-25 15:35:15', NULL, 'order_id:53, pro_id:12, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:5, create_date:2024-09-25 15:35:15'),
(863, 'CREATE', 'sms_order_dtl', 24, '2024-09-25 15:35:15', NULL, 'order_id:53, pro_id:20, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:5, create_date:2024-09-25 15:35:15'),
(864, 'UPDATE', 'sms_protype', 1, '2024-09-25 15:38:42', 'uid:cd30ecce-6a94-11ef-aab7-80ce628923b2, name:Testasdadad, status:I, create_by:4, create_date:2024-09-04 06:28:01, update_by:5, update_date:2024-09-10 10:25:42', 'uid:cd30ecce-6a94-11ef-aab7-80ce628923b2, name:Testasdadad, status:Deleted, create_by:4, create_date:2024-09-04 06:28:01, update_by:5, update_date:2024-09-25 15:38:42'),
(865, 'CREATE', 'sms_protype', 18, '2024-09-25 15:39:27', NULL, 'uid:1924bf5f-8f59-434c-a1dc-e97d350fe85b, name:Pastry, status:A, create_by:5, create_date:2024-09-25 15:39:27'),
(866, 'CREATE', 'sms_procategory', 18, '2024-09-25 15:39:35', NULL, 'uid:452d20cc-1c76-4aed-8b3d-7b703a399ede, name:Pastry, status:A, create_by:5, create_date:2024-09-25 15:39:35'),
(867, 'CREATE', 'sms_prosubcategory', 40, '2024-09-25 15:39:55', NULL, 'uid:a0377301-10df-4028-a8b3-bd4450a8e70f, cat_id:18, name:Pastry 80 gm, status:A, create_by:5, create_date:2024-09-25 15:39:55'),
(868, 'CREATE', 'sms_proinfo', 22, '2024-09-25 15:40:35', NULL, 'uid:00b28241-f907-432d-a78e-f6c48fdf499c, type_id:18, cat_id:18, subcat_id:40, brand_id:1, title:Red Velvet Heart Shaped Pastry 80 gm, subtitle:Red Velvet Heart Shaped Pastry 80 gm, details:&amp;lt;p&amp;gt;Red Velvet Heart Shaped Pastry 80 gm&amp;lt;/p&amp;gt;, price_mrp:136, price_rp:136, image1:assets/product_img/66f3da939e9b1.jpg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:40:35'),
(869, 'CREATE', 'sms_proinfo', 23, '2024-09-25 15:41:19', NULL, 'uid:a5fb501a-7dae-46fe-a031-735f42955d15, type_id:18, cat_id:18, subcat_id:40, brand_id:1, title:Vanilla Triangle Pastry 60gm -1 Slice, subtitle:Vanilla Triangle Pastry 60gm -1 Slice, details:&amp;lt;h2&amp;gt;Vanilla Triangle Pastry 60gm -1 Slice&amp;lt;/h2&amp;gt;, price_mrp:85, price_rp:85, image1:assets/product_img/66f3dabf71bec.jpg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:41:19'),
(870, 'CREATE', 'sms_proinfo', 24, '2024-09-25 15:42:05', NULL, 'uid:9b54c1e9-44fa-4d70-8fe2-fa44bdb63630, type_id:18, cat_id:18, subcat_id:40, brand_id:1, title:Marble Pastry 120 gm, subtitle:Marble Pastry 120 gm, details:&amp;lt;h2&amp;gt;Marble Pastry 120 gm&amp;lt;/h2&amp;gt;, price_mrp:136, price_rp:136, image1:assets/product_img/66f3daed5c16a.jpg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:42:05'),
(871, 'UPDATE', 'users', 5, '2024-09-25 15:57:54', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-25 14:54:32, latitude:23.7426561, longitude:90.4138447', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-25 15:57:54, latitude:, longitude:'),
(872, 'UPDATE', 'users', 15, '2024-10-05 13:47:38', NULL, NULL),
(873, 'UPDATE', 'users', 5, '2024-10-14 12:38:18', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-09-25 15:57:54, latitude:, longitude:', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-10-14 12:38:18, latitude:23.74271264784674, longitude:90.41356185070765'),
(874, 'UPDATE', 'users', 5, '2024-10-14 14:07:12', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-10-14 12:38:18, latitude:23.74271264784674, longitude:90.41356185070765', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-10-14 14:07:12, latitude:23.742728099140344, longitude:90.41360155207391'),
(875, 'UPDATE', 'users', 5, '2024-10-14 14:35:18', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-10-14 14:07:12, latitude:23.742728099140344, longitude:90.41360155207391', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-10-14 14:35:18, latitude:23.742719398793867, longitude:90.41365288743823'),
(876, 'UPDATE', 'sms_proinfo', 15, '2024-10-14 14:36:08', NULL, 'uid:bab0f56a-e8e4-4eb7-9459-2b97d308fa41, type_id:15, cat_id:14, subcat_id:35, brand_id:1, title:Black Forest Cake 500gm, subtitle:Black Forest Cake 500gm, details:&amp;amp;amp;lt;h3&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Black Forest Cake 500gm&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/h3&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Item code:&amp;amp;amp;amp;nbsp;46656&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Brand: Foodi&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Net Weight: 500gm&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;, price_mrp:810, price_rp:750, image1:assets/product_img/670cd7f8c0675.jpg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:24:18, update_by:5, update_date:2024-10-14 14:36:08'),
(877, 'UPDATE', 'sms_proinfo', 16, '2024-10-14 14:36:26', NULL, 'uid:4be932ce-e75c-4028-9180-a0e645eee700, type_id:15, cat_id:14, subcat_id:35, brand_id:1, title:Chocolate Coated Cake 500gm, subtitle:Chocolate Coated Cake 500gm, details:&amp;amp;amp;lt;h2&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Chocolate Coated Cake 500gm&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/h2&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Item code:&amp;amp;amp;amp;nbsp;46656&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Brand: Foodi&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Net Weight: 500gm&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;, price_mrp:765, price_rp:700, image1:assets/product_img/670cd80a5c161.jpeg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:25:29, update_by:5, update_date:2024-10-14 14:36:26'),
(878, 'UPDATE', 'sms_proinfo', 17, '2024-10-14 14:36:44', NULL, 'uid:5dcfa16b-ea9d-4827-a9ac-0c9808ad3183, type_id:16, cat_id:15, subcat_id:37, brand_id:1, title:Milk Bread 350gm +, subtitle:Milk Bread 350gm +, details:&amp;amp;amp;lt;h2&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Milk Bread 350gm +&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/h2&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Item code:&amp;amp;amp;amp;nbsp;46345&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Brand: Foodi&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Net Weight: 350gm&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;, price_mrp:80, price_rp:70, image1:assets/product_img/670cd81c57d81.jpg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:28:00, update_by:5, update_date:2024-10-14 14:36:44'),
(879, 'UPDATE', 'sms_proinfo', 18, '2024-10-14 14:37:00', NULL, 'uid:aaefc765-27ab-46e0-9acd-6d5dc20cb939, type_id:16, cat_id:15, subcat_id:37, brand_id:1, title:Butter Bun 100gm 1pcs, subtitle:Butter Bun 100gm 1pcs, details:&amp;amp;amp;lt;h2&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Butter Bun 100gm 1pcs&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/h2&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Item code:&amp;amp;amp;amp;nbsp;45345&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Brand: Foodi&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Net Weight: 100gm&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;, price_mrp:40, price_rp:30, image1:assets/product_img/670cd82c3649f.jpg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:29:02, update_by:5, update_date:2024-10-14 14:37:00'),
(880, 'UPDATE', 'sms_proinfo', 19, '2024-10-14 14:37:21', NULL, 'uid:e25702f3-b2a7-498d-ab83-3b8d77fbde54, type_id:16, cat_id:16, subcat_id:38, brand_id:1, title:Fruit Cake 1pcs, subtitle:Fruit Cake 1pcs, details:&amp;amp;amp;lt;h2&amp;amp;amp;gt;Fruit Cake 1pcs&amp;amp;amp;lt;/h2&amp;amp;amp;gt;, price_mrp:200, price_rp:180, image1:assets/product_img/670cd841237e0.jpg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:30:30, update_by:5, update_date:2024-10-14 14:37:21'),
(881, 'UPDATE', 'sms_proinfo', 20, '2024-10-14 14:37:34', NULL, 'uid:e4c6cd86-85df-4df3-b5b5-a27ce70876f8, type_id:17, cat_id:17, subcat_id:39, brand_id:1, title:Tango Orange 250ml, subtitle:Tango Orange 250ml, details:&amp;amp;amp;lt;h2&amp;amp;amp;gt;Tango Orange 250ml&amp;amp;amp;lt;/h2&amp;amp;amp;gt;, price_mrp:20, price_rp:19, image1:assets/product_img/670cd84e9ff80.png, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:32:23, update_by:5, update_date:2024-10-14 14:37:34'),
(882, 'UPDATE', 'sms_proinfo', 21, '2024-10-14 14:37:48', NULL, 'uid:116fd821-83cd-47ab-80c7-5a6e0212993f, type_id:17, cat_id:17, subcat_id:39, brand_id:1, title:Mojo Soft Drink 2 Lt, subtitle:Mojo Soft Drink 2 Lt, details:&amp;amp;amp;lt;h2&amp;amp;amp;gt;Mojo Soft Drink 2 Lt&amp;amp;amp;lt;/h2&amp;amp;amp;gt;, price_mrp:100, price_rp:90, image1:assets/product_img/670cd85c216e1.webp, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:33:19, update_by:5, update_date:2024-10-14 14:37:48'),
(883, 'UPDATE', 'sms_proinfo', 22, '2024-10-14 14:37:59', NULL, 'uid:8e57f45c-6515-4bfd-be3b-dcf3dce55975, type_id:18, cat_id:18, subcat_id:40, brand_id:1, title:Red Velvet Heart Shaped Pastry 80 gm, subtitle:Red Velvet Heart Shaped Pastry 80 gm, details:&amp;amp;amp;lt;p&amp;amp;amp;gt;Red Velvet Heart Shaped Pastry 80 gm&amp;amp;amp;lt;/p&amp;amp;amp;gt;, price_mrp:136, price_rp:136, image1:assets/product_img/670cd867d1400.jpg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:40:35, update_by:5, update_date:2024-10-14 14:37:59'),
(884, 'UPDATE', 'sms_proinfo', 23, '2024-10-14 14:38:12', NULL, 'uid:58d4510b-d01c-4724-bf32-70940a27f332, type_id:18, cat_id:18, subcat_id:40, brand_id:1, title:Vanilla Triangle Pastry 60gm -1 Slice, subtitle:Vanilla Triangle Pastry 60gm -1 Slice, details:&amp;amp;amp;lt;h2&amp;amp;amp;gt;Vanilla Triangle Pastry 60gm -1 Slice&amp;amp;amp;lt;/h2&amp;amp;amp;gt;, price_mrp:85, price_rp:85, image1:assets/product_img/670cd874b14f1.jpg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:41:19, update_by:5, update_date:2024-10-14 14:38:12'),
(885, 'UPDATE', 'sms_proinfo', 24, '2024-10-14 14:38:24', NULL, 'uid:0e8091d0-3444-491c-9fb4-d3e471881e1d, type_id:18, cat_id:18, subcat_id:40, brand_id:1, title:Marble Pastry 120 gm, subtitle:Marble Pastry 120 gm, details:&amp;amp;amp;lt;h2&amp;amp;amp;gt;Marble Pastry 120 gm&amp;amp;amp;lt;/h2&amp;amp;amp;gt;, price_mrp:136, price_rp:136, image1:assets/product_img/670cd880b25c9.jpg, image2:, image3:, image4:, status:A, create_by:5, create_date:2024-09-25 15:42:05, update_by:5, update_date:2024-10-14 14:38:24'),
(886, 'UPDATE', 'users', 5, '2024-10-15 13:24:43', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-10-14 14:35:18, latitude:23.742719398793867, longitude:90.41365288743823', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-10-15 13:24:43, latitude:23.742718071846163, longitude:90.41365169081158'),
(887, 'UPDATE', 'users', 5, '2024-10-16 11:58:33', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-10-15 13:24:43, latitude:23.742718071846163, longitude:90.41365169081158', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-10-16 11:58:33, latitude:23.742734257551795, longitude:90.41367315411986'),
(888, 'UPDATE', 'users', 15, '2024-10-16 12:24:52', NULL, NULL),
(889, 'UPDATE', 'users', 15, '2024-10-16 12:25:12', NULL, NULL),
(890, 'UPDATE', 'users', 5, '2024-11-10 13:45:11', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-10-16 11:58:33, latitude:23.742734257551795, longitude:90.41367315411986', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-11-10 13:45:11, latitude:23.74266822675549, longitude:90.41362472581939'),
(891, 'CREATE', 'sms_orders', 54, '2024-11-10 13:48:30', NULL, NULL),
(892, 'CREATE', 'sms_order_dtl', 25, '2024-11-10 13:48:30', NULL, 'order_id:54, pro_id:12, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:5, create_date:2024-11-10 13:48:30'),
(893, 'CREATE', 'sms_order_dtl', 26, '2024-11-10 13:48:30', NULL, 'order_id:54, pro_id:13, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:5, create_date:2024-11-10 13:48:30'),
(894, 'CREATE', 'sms_order_dtl', 27, '2024-11-10 13:48:30', NULL, 'order_id:54, pro_id:17, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:5, create_date:2024-11-10 13:48:30'),
(895, 'CREATE', 'sms_orders', 55, '2024-11-10 13:50:09', NULL, NULL),
(896, 'CREATE', 'sms_order_dtl', 28, '2024-11-10 13:50:09', NULL, 'order_id:55, pro_id:12, quantity:2, price:200.00, total_price:400.00, special_request:, create_by:5, create_date:2024-11-10 13:50:09'),
(897, 'CREATE', 'sms_order_dtl', 29, '2024-11-10 13:50:09', NULL, 'order_id:55, pro_id:20, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:5, create_date:2024-11-10 13:50:09'),
(898, 'UPDATE', 'users', 5, '2024-11-10 13:57:14', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-11-10 13:45:11, latitude:23.74266822675549, longitude:90.41362472581939', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-11-10 13:57:14, latitude:23.7426678817716, longitude:90.41359797131489'),
(899, 'UPDATE', 'users', 5, '2024-11-18 11:25:01', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-11-10 13:57:14, latitude:23.7426678817716, longitude:90.41359797131489', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-11-18 11:25:01, latitude:23.7426474, longitude:90.4138167'),
(900, 'UPDATE', 'users', 10, '2024-11-18 11:25:28', NULL, NULL),
(901, 'CREATE', 'sms_orders', 56, '2024-11-18 11:26:08', NULL, NULL),
(902, 'CREATE', 'sms_order_dtl', 30, '2024-11-18 11:26:08', NULL, 'order_id:56, pro_id:17, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:10, create_date:2024-11-18 11:26:08'),
(903, 'CREATE', 'sms_order_dtl', 31, '2024-11-18 11:26:08', NULL, 'order_id:56, pro_id:22, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:10, create_date:2024-11-18 11:26:08'),
(904, 'UPDATE', 'users', 5, '2024-12-08 21:27:20', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-11-18 11:25:01, latitude:23.7426474, longitude:90.4138167', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-08 21:27:20, latitude:23.7813093, longitude:90.3617945'),
(905, 'UPDATE', 'users', 5, '2024-12-09 10:31:25', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-08 21:27:20, latitude:23.7813093, longitude:90.3617945', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 10:31:25, latitude:, longitude:'),
(906, 'CREATE', 'sms_customers', 25, '2024-12-09 10:33:42', NULL, 'uid:359cc83f-c576-4003-8ae3-3f13fc43775b, name:Rabbi, phone:01955109710, email:itrabbi24@gmail.com, address:Dhaka, Kallaynpur, status:A, create_by:5, create_date:2024-12-09 10:33:42'),
(907, 'CREATE', 'sms_orders', 57, '2024-12-09 10:33:46', NULL, NULL),
(908, 'CREATE', 'sms_order_dtl', 32, '2024-12-09 10:33:46', NULL, 'order_id:57, pro_id:14, quantity:2, price:200.00, total_price:400.00, special_request:, create_by:5, create_date:2024-12-09 10:33:46'),
(909, 'UPDATE', 'users', 5, '2024-12-09 12:11:57', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 10:31:25, latitude:, longitude:', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 12:11:57, latitude:23.7426192, longitude:90.4138104'),
(910, 'UPDATE', 'users', 5, '2024-12-09 12:25:20', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 12:11:57, latitude:23.7426192, longitude:90.4138104', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin1@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 12:11:57, latitude:23.7426192, longitude:90.4138104'),
(911, 'UPDATE', 'users', 5, '2024-12-09 12:25:41', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin1@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 12:11:57, latitude:23.7426192, longitude:90.4138104', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin1@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 12:25:41, latitude:23.7426325, longitude:90.4138099'),
(912, 'UPDATE', 'users', 5, '2024-12-09 12:27:18', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin1@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 12:25:41, latitude:23.7426325, longitude:90.4138099', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super1 Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin1@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 12:25:41, latitude:23.7426325, longitude:90.4138099'),
(913, 'UPDATE', 'users', 5, '2024-12-09 12:27:37', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super1 Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin1@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 12:25:41, latitude:23.7426325, longitude:90.4138099', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super1 Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin1@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 12:27:37, latitude:23.7426293, longitude:90.4138054'),
(914, 'UPDATE', 'users', 5, '2024-12-09 18:54:14', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super1 Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin1@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 12:27:37, latitude:23.7426293, longitude:90.4138054', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super1 Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 12:27:37, latitude:23.7426293, longitude:90.4138054'),
(915, 'UPDATE', 'users', 5, '2024-12-09 18:54:16', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super1 Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 12:27:37, latitude:23.7426293, longitude:90.4138054', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super1 Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 18:54:16, latitude:23.7426391, longitude:90.4138132'),
(916, 'CREATE', 'sms_web_sidebar_menu', 63, '2024-12-09 18:59:18', NULL, NULL),
(917, 'CREATE', 'sms_web_sidebar_menu', 64, '2024-12-09 19:00:13', NULL, 'uid:7e2a4493-d304-488e-aeb5-675db987d4cb, parent_id:63, name:Purchase, icon:bi, url:Roles, order:1, is_collapsed:1, is_heading:0, permission_id:0, status:A, create_by:5, create_date:2024-12-09 19:00:13'),
(918, 'CREATE', 'role_sidebar_menu', 70, '2024-12-09 19:00:42', NULL, 'role_id:5, sidebar_nav_id:63'),
(919, 'CREATE', 'role_sidebar_menu', 71, '2024-12-09 19:00:42', NULL, 'role_id:5, sidebar_nav_id:64'),
(920, 'UPDATE', 'sms_web_sidebar_menu', 64, '2024-12-09 19:13:49', NULL, 'uid:7e2a4493-d304-488e-aeb5-675db987d4cb, parent_id:63, name:Purchase, icon:bi, url:Purchase, order:1, is_collapsed:1, is_heading:0, permission_id:0, status:A, update_by:5, update_date:2024-12-09 19:13:49'),
(921, 'UPDATE', 'users', 5, '2024-12-10 01:05:06', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super1 Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-09 18:54:16, latitude:23.7426391, longitude:90.4138132', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super1 Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-10 01:05:06, latitude:23.7856607, longitude:90.3613702'),
(922, 'CREATE', 'sms_protype', 101, '2024-12-10 01:49:03', NULL, 'uid:P001, name:T-Shirt, status:active, create_by:admin, create_date:2024-12-01 09:00:00'),
(923, 'CREATE', 'sms_protype', 102, '2024-12-10 01:49:03', NULL, 'uid:P002, name:Jeans, status:active, create_by:admin, create_date:2024-12-01 09:10:00'),
(924, 'CREATE', 'sms_protype', 103, '2024-12-10 01:49:03', NULL, 'uid:P003, name:Jacket, status:inactive, create_by:admin, create_date:2024-12-02 14:00:00'),
(925, 'UPDATE', 'sms_protype', 101, '2024-12-10 01:53:36', 'uid:P001, name:T-Shirt, status:active, create_by:admin, create_date:2024-12-01 09:00:00, update_by:admin, update_date:2024-12-01 09:00:00', 'uid:P001, name:T-Shirt, status:A, create_by:admin, create_date:2024-12-01 09:00:00, update_by:admin, update_date:2024-12-01 09:00:00'),
(926, 'UPDATE', 'sms_protype', 102, '2024-12-10 01:53:38', 'uid:P002, name:Jeans, status:active, create_by:admin, create_date:2024-12-01 09:10:00, update_by:admin, update_date:2024-12-01 09:10:00', 'uid:P002, name:Jeans, status:A, create_by:admin, create_date:2024-12-01 09:10:00, update_by:admin, update_date:2024-12-01 09:10:00'),
(927, 'UPDATE', 'sms_protype', 103, '2024-12-10 01:53:41', 'uid:P003, name:Jacket, status:inactive, create_by:admin, create_date:2024-12-02 14:00:00, update_by:admin, update_date:2024-12-02 14:00:00', 'uid:P003, name:Jacket, status:A, create_by:admin, create_date:2024-12-02 14:00:00, update_by:admin, update_date:2024-12-02 14:00:00'),
(928, 'UPDATE', 'sms_brand_info', 1, '2024-12-10 02:47:44', 'uid:cd30ecce-6a94-11ef-aab7-80ce628923b2, name:SOC Foodi, details:SOC Brand, logo:assets/logo/66eaa4c083cc1.png, status:A, create_by:1010, create_date:2024-09-02 11:48:17, update_by:5, update_date:2024-09-18 16:00:32', 'uid:cd30ecce-6a94-11ef-aab7-80ce628923b2, name:Brand Beauty, details:SOC Foodi, logo:assets/logo/6757577024930.png, status:A, create_by:1010, create_date:2024-09-02 11:48:17, update_by:5, update_date:2024-12-10 02:47:44'),
(929, 'UPDATE', 'sms_brand_info', 1, '2024-12-10 02:48:10', 'uid:cd30ecce-6a94-11ef-aab7-80ce628923b2, name:Brand Beauty, details:SOC Foodi, logo:assets/logo/6757577024930.png, status:A, create_by:1010, create_date:2024-09-02 11:48:17, update_by:5, update_date:2024-12-10 02:47:44', 'uid:cd30ecce-6a94-11ef-aab7-80ce628923b2, name:Brand Shop, details:Brand Beauty, logo:assets/logo/6757577024930.png, status:A, create_by:1010, create_date:2024-09-02 11:48:17, update_by:5, update_date:2024-12-10 02:48:10'),
(930, 'UPDATE', 'users', 5, '2025-02-15 17:19:31', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super1 Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2024-12-10 01:05:06, latitude:23.7856607, longitude:90.3613702', 'uid:4d33c03d-a283-4bc3-8322-4d5e7fa168de, name:Super1 Admin, address:232/1,South, Paik-Para,Mirpur,Dhaka, phone:01684924439, email:superadmin@gmail.com, status:A, email_verified_at:2024-09-04 13:04:32, updated_at:2025-02-15 17:19:31, latitude:23.7857496, longitude:90.3613519'),
(931, 'UPDATE', 'users', 10, '2025-02-15 17:21:00', NULL, NULL),
(932, 'CREATE', 'sms_orders', 58, '2025-02-15 17:21:49', NULL, NULL),
(933, 'CREATE', 'sms_order_dtl', 33, '2025-02-15 17:21:49', NULL, 'order_id:58, pro_id:12, quantity:1, price:200.00, total_price:200.00, special_request:, create_by:10, create_date:2025-02-15 17:21:49'),
(934, 'UPDATE', 'users', 15, '2025-02-15 17:26:06', NULL, NULL),
(935, 'UPDATE', 'users', 15, '2025-02-15 17:26:09', NULL, NULL),
(936, 'UPDATE', 'users', 10, '2025-02-15 17:27:56', NULL, NULL),
(937, 'UPDATE', 'users', 10, '2025-02-15 17:28:22', NULL, NULL),
(938, 'CREATE', 'users', 17, '2025-02-15 17:30:47', NULL, NULL),
(939, 'CREATE', 'roles', 9, '2025-02-15 17:31:20', NULL, 'name:Branch Keeper, guard_name:web, created_at:2025-02-15 17:31:20, updated_at:2025-02-15 17:31:20'),
(940, 'UPDATE', 'users', 17, '2025-02-15 17:31:31', NULL, NULL),
(941, 'UPDATE', 'users', 17, '2025-02-15 17:32:29', NULL, NULL),
(942, 'UPDATE', 'users', 17, '2025-02-15 17:32:36', NULL, NULL),
(943, 'CREATE', 'role_sidebar_menu', 72, '2025-02-15 17:32:55', NULL, 'role_id:9, sidebar_nav_id:34'),
(944, 'CREATE', 'role_sidebar_menu', 73, '2025-02-15 17:33:08', NULL, 'role_id:9, sidebar_nav_id:35'),
(945, 'UPDATE', 'users', 17, '2025-02-15 17:33:32', NULL, NULL),
(946, 'UPDATE', 'users', 10, '2025-02-15 17:34:01', NULL, NULL),
(947, 'UPDATE', 'users', 17, '2025-02-15 17:34:27', NULL, NULL),
(948, 'CREATE', 'role_has_permissions', 65, '2025-02-15 17:34:57', NULL, 'role_id:9, permission_id:65'),
(949, 'UPDATE', 'users', 17, '2025-02-15 17:35:19', NULL, NULL),
(950, 'DELETE', 'role_has_permissions', 65, '2025-02-15 17:35:37', 'role_id:9, permission_id:65', NULL),
(951, 'CREATE', 'role_has_permissions', 65, '2025-02-15 17:35:37', NULL, 'role_id:9, permission_id:65'),
(952, 'CREATE', 'role_has_permissions', 66, '2025-02-15 17:35:37', NULL, 'role_id:9, permission_id:66'),
(953, 'DELETE', 'role_has_permissions', 65, '2025-02-15 17:36:35', 'role_id:9, permission_id:65', NULL),
(954, 'DELETE', 'role_has_permissions', 66, '2025-02-15 17:36:35', 'role_id:9, permission_id:66', NULL),
(955, 'CREATE', 'role_has_permissions', 65, '2025-02-15 17:36:35', NULL, 'role_id:9, permission_id:65'),
(956, 'CREATE', 'role_has_permissions', 66, '2025-02-15 17:36:35', NULL, 'role_id:9, permission_id:66'),
(957, 'CREATE', 'role_has_permissions', 67, '2025-02-15 17:36:35', NULL, 'role_id:9, permission_id:67'),
(958, 'UPDATE', 'users', 17, '2025-02-15 17:36:52', NULL, NULL),
(959, 'DELETE', 'role_has_permissions', 65, '2025-02-15 17:37:14', 'role_id:9, permission_id:65', NULL),
(960, 'DELETE', 'role_has_permissions', 66, '2025-02-15 17:37:14', 'role_id:9, permission_id:66', NULL),
(961, 'DELETE', 'role_has_permissions', 67, '2025-02-15 17:37:14', 'role_id:9, permission_id:67', NULL),
(962, 'CREATE', 'role_has_permissions', 65, '2025-02-15 17:37:14', NULL, 'role_id:9, permission_id:65'),
(963, 'CREATE', 'role_has_permissions', 66, '2025-02-15 17:37:14', NULL, 'role_id:9, permission_id:66'),
(964, 'CREATE', 'role_has_permissions', 67, '2025-02-15 17:37:14', NULL, 'role_id:9, permission_id:67'),
(965, 'CREATE', 'role_has_permissions', 69, '2025-02-15 17:37:14', NULL, 'role_id:9, permission_id:69'),
(966, 'CREATE', 'role_has_permissions', 70, '2025-02-15 17:37:14', NULL, 'role_id:9, permission_id:70'),
(967, 'CREATE', 'role_has_permissions', 71, '2025-02-15 17:37:14', NULL, 'role_id:9, permission_id:71'),
(968, 'DELETE', 'role_has_permissions', 65, '2025-02-15 17:37:31', 'role_id:9, permission_id:65', NULL),
(969, 'DELETE', 'role_has_permissions', 66, '2025-02-15 17:37:31', 'role_id:9, permission_id:66', NULL),
(970, 'DELETE', 'role_has_permissions', 67, '2025-02-15 17:37:31', 'role_id:9, permission_id:67', NULL),
(971, 'DELETE', 'role_has_permissions', 69, '2025-02-15 17:37:31', 'role_id:9, permission_id:69', NULL),
(972, 'DELETE', 'role_has_permissions', 70, '2025-02-15 17:37:31', 'role_id:9, permission_id:70', NULL),
(973, 'DELETE', 'role_has_permissions', 71, '2025-02-15 17:37:31', 'role_id:9, permission_id:71', NULL),
(974, 'CREATE', 'role_has_permissions', 49, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:49'),
(975, 'CREATE', 'role_has_permissions', 50, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:50'),
(976, 'CREATE', 'role_has_permissions', 51, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:51'),
(977, 'CREATE', 'role_has_permissions', 53, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:53'),
(978, 'CREATE', 'role_has_permissions', 54, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:54'),
(979, 'CREATE', 'role_has_permissions', 55, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:55'),
(980, 'CREATE', 'role_has_permissions', 57, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:57'),
(981, 'CREATE', 'role_has_permissions', 58, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:58'),
(982, 'CREATE', 'role_has_permissions', 59, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:59'),
(983, 'CREATE', 'role_has_permissions', 61, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:61'),
(984, 'CREATE', 'role_has_permissions', 62, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:62'),
(985, 'CREATE', 'role_has_permissions', 63, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:63'),
(986, 'CREATE', 'role_has_permissions', 65, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:65'),
(987, 'CREATE', 'role_has_permissions', 66, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:66'),
(988, 'CREATE', 'role_has_permissions', 67, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:67'),
(989, 'CREATE', 'role_has_permissions', 69, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:69'),
(990, 'CREATE', 'role_has_permissions', 70, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:70'),
(991, 'CREATE', 'role_has_permissions', 71, '2025-02-15 17:37:31', NULL, 'role_id:9, permission_id:71'),
(992, 'DELETE', 'role_has_permissions', 49, '2025-02-15 18:02:53', 'role_id:9, permission_id:49', NULL),
(993, 'DELETE', 'role_has_permissions', 50, '2025-02-15 18:02:53', 'role_id:9, permission_id:50', NULL),
(994, 'DELETE', 'role_has_permissions', 51, '2025-02-15 18:02:53', 'role_id:9, permission_id:51', NULL),
(995, 'DELETE', 'role_has_permissions', 53, '2025-02-15 18:02:53', 'role_id:9, permission_id:53', NULL),
(996, 'DELETE', 'role_has_permissions', 54, '2025-02-15 18:02:53', 'role_id:9, permission_id:54', NULL),
(997, 'DELETE', 'role_has_permissions', 55, '2025-02-15 18:02:53', 'role_id:9, permission_id:55', NULL),
(998, 'DELETE', 'role_has_permissions', 57, '2025-02-15 18:02:53', 'role_id:9, permission_id:57', NULL),
(999, 'DELETE', 'role_has_permissions', 58, '2025-02-15 18:02:53', 'role_id:9, permission_id:58', NULL),
(1000, 'DELETE', 'role_has_permissions', 59, '2025-02-15 18:02:53', 'role_id:9, permission_id:59', NULL),
(1001, 'DELETE', 'role_has_permissions', 61, '2025-02-15 18:02:53', 'role_id:9, permission_id:61', NULL),
(1002, 'DELETE', 'role_has_permissions', 62, '2025-02-15 18:02:53', 'role_id:9, permission_id:62', NULL),
(1003, 'DELETE', 'role_has_permissions', 63, '2025-02-15 18:02:53', 'role_id:9, permission_id:63', NULL),
(1004, 'DELETE', 'role_has_permissions', 65, '2025-02-15 18:02:53', 'role_id:9, permission_id:65', NULL),
(1005, 'DELETE', 'role_has_permissions', 66, '2025-02-15 18:02:53', 'role_id:9, permission_id:66', NULL),
(1006, 'DELETE', 'role_has_permissions', 67, '2025-02-15 18:02:53', 'role_id:9, permission_id:67', NULL),
(1007, 'DELETE', 'role_has_permissions', 69, '2025-02-15 18:02:53', 'role_id:9, permission_id:69', NULL),
(1008, 'DELETE', 'role_has_permissions', 70, '2025-02-15 18:02:53', 'role_id:9, permission_id:70', NULL),
(1009, 'DELETE', 'role_has_permissions', 71, '2025-02-15 18:02:53', 'role_id:9, permission_id:71', NULL),
(1010, 'CREATE', 'role_has_permissions', 65, '2025-02-15 18:03:11', NULL, 'role_id:9, permission_id:65');

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
('dhaliabir404@gmail.com', 'skOMYowTeAWFfMHuDpPoKDeqV8ddTcjXWFmJ8XFxfw3vSKTT5q27I4TcQ3C3', '2024-10-16 06:18:55');

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
(68, 'delete_dashboard', 'web', '2024-09-03 02:27:09', '2024-09-03 02:27:09'),
(69, 'create_customer', 'web', '2024-09-23 07:17:27', '2024-09-23 07:17:27'),
(70, 'view_customer', 'web', '2024-09-23 07:17:31', '2024-09-23 07:17:31'),
(71, 'update_customer', 'web', '2024-09-23 07:17:36', '2024-09-23 07:17:36'),
(72, 'delete_customer', 'web', '2024-09-23 07:17:40', '2024-09-23 07:17:40'),
(73, 'create_order', 'web', '2024-09-23 07:19:47', '2024-09-23 07:19:47'),
(75, 'view_profile', 'web', '2024-09-23 07:59:35', '2024-09-23 07:59:35'),
(76, 'update_profile', 'web', '2024-09-23 07:59:47', '2024-09-23 07:59:47'),
(77, 'change_password', 'web', '2024-09-23 08:00:02', '2024-09-23 08:05:17');

--
-- Triggers `permissions`
--
DELIMITER $$
CREATE TRIGGER `after_permissions_delete` AFTER DELETE ON `permissions` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'permissions', OLD.id, NOW(), 
            CONCAT('name:', OLD.name, ', guard_name:', OLD.guard_name, 
                   ', created_at:', OLD.created_at, ', updated_at:', OLD.updated_at));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_permissions_insert` AFTER INSERT ON `permissions` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'permissions', NEW.id, NOW(), 
            CONCAT('name:', NEW.name, ', guard_name:', NEW.guard_name, 
                   ', created_at:', NEW.created_at, ', updated_at:', NEW.updated_at));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_permissions_update` AFTER UPDATE ON `permissions` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'permissions', NEW.id, NOW(), 
            CONCAT('name:', OLD.name, ', guard_name:', OLD.guard_name, 
                   ', created_at:', OLD.created_at, ', updated_at:', OLD.updated_at), 
            CONCAT('name:', NEW.name, ', guard_name:', NEW.guard_name, 
                   ', created_at:', NEW.created_at, ', updated_at:', NEW.updated_at));
END
$$
DELIMITER ;

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
(5, 'Root', 'web', '2024-09-09 02:21:14', '2024-09-09 02:21:14'),
(6, 'Branch Admin', 'web', '2024-09-22 10:28:45', '2024-09-22 10:28:45'),
(7, 'Branch Manager', 'web', '2024-09-22 10:29:02', '2024-09-22 10:29:02'),
(9, 'Branch Keeper', 'web', '2025-02-15 11:31:20', '2025-02-15 11:31:20');

--
-- Triggers `roles`
--
DELIMITER $$
CREATE TRIGGER `after_roles_delete` AFTER DELETE ON `roles` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'roles', OLD.id, NOW(), 
            CONCAT('name:', OLD.name, ', guard_name:', OLD.guard_name, 
                   ', created_at:', OLD.created_at, ', updated_at:', OLD.updated_at));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_roles_insert` AFTER INSERT ON `roles` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'roles', NEW.id, NOW(), 
            CONCAT('name:', NEW.name, ', guard_name:', NEW.guard_name, 
                   ', created_at:', NEW.created_at, ', updated_at:', NEW.updated_at));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_roles_update` AFTER UPDATE ON `roles` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'roles', NEW.id, NOW(), 
            CONCAT('name:', OLD.name, ', guard_name:', OLD.guard_name, 
                   ', created_at:', OLD.created_at, ', updated_at:', OLD.updated_at), 
            CONCAT('name:', NEW.name, ', guard_name:', NEW.guard_name, 
                   ', created_at:', NEW.created_at, ', updated_at:', NEW.updated_at));
END
$$
DELIMITER ;

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
(21, 4),
(21, 5),
(22, 4),
(22, 5),
(23, 4),
(23, 5),
(24, 5),
(25, 4),
(25, 5),
(26, 4),
(26, 5),
(27, 4),
(27, 5),
(28, 5),
(29, 4),
(29, 5),
(30, 4),
(30, 5),
(31, 4),
(31, 5),
(32, 5),
(33, 4),
(33, 5),
(34, 4),
(34, 5),
(35, 4),
(35, 5),
(36, 5),
(37, 4),
(37, 5),
(38, 4),
(38, 5),
(39, 4),
(39, 5),
(40, 5),
(41, 4),
(41, 5),
(42, 4),
(42, 5),
(43, 4),
(43, 5),
(44, 5),
(45, 4),
(45, 5),
(45, 6),
(45, 7),
(46, 4),
(46, 5),
(46, 6),
(46, 7),
(47, 4),
(47, 5),
(47, 6),
(47, 7),
(48, 5),
(49, 4),
(49, 5),
(49, 6),
(49, 7),
(50, 4),
(50, 5),
(50, 6),
(50, 7),
(51, 4),
(51, 5),
(51, 6),
(51, 7),
(52, 5),
(53, 4),
(53, 5),
(53, 6),
(53, 7),
(54, 4),
(54, 5),
(54, 6),
(54, 7),
(55, 4),
(55, 5),
(55, 6),
(55, 7),
(56, 5),
(57, 4),
(57, 5),
(57, 6),
(57, 7),
(58, 4),
(58, 5),
(58, 6),
(58, 7),
(59, 4),
(59, 5),
(59, 6),
(59, 7),
(60, 5),
(61, 4),
(61, 5),
(61, 6),
(61, 7),
(62, 4),
(62, 5),
(62, 6),
(62, 7),
(63, 4),
(63, 5),
(63, 6),
(63, 7),
(64, 5),
(65, 4),
(65, 5),
(65, 6),
(65, 7),
(65, 9),
(66, 4),
(66, 5),
(66, 6),
(66, 7),
(67, 4),
(67, 5),
(67, 6),
(67, 7),
(68, 5),
(69, 5),
(69, 6),
(69, 7),
(70, 5),
(70, 6),
(70, 7),
(71, 5),
(71, 6),
(71, 7),
(72, 5),
(73, 5),
(73, 6),
(73, 7),
(75, 5),
(75, 6),
(75, 7),
(76, 5),
(76, 6),
(76, 7),
(77, 5),
(77, 6),
(77, 7);

--
-- Triggers `role_has_permissions`
--
DELIMITER $$
CREATE TRIGGER `after_role_has_permissions_delete` AFTER DELETE ON `role_has_permissions` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'role_has_permissions', OLD.permission_id, NOW(), 
            CONCAT('role_id:', OLD.role_id, ', permission_id:', OLD.permission_id));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_role_has_permissions_insert` AFTER INSERT ON `role_has_permissions` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'role_has_permissions', NEW.permission_id, NOW(), 
            CONCAT('role_id:', NEW.role_id, ', permission_id:', NEW.permission_id));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_role_has_permissions_update` AFTER UPDATE ON `role_has_permissions` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'role_has_permissions', NEW.permission_id, NOW(), 
            CONCAT('role_id:', OLD.role_id), 
            CONCAT('role_id:', NEW.role_id));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `role_sidebar_menu`
--

CREATE TABLE `role_sidebar_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sidebar_nav_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_sidebar_menu`
--

INSERT INTO `role_sidebar_menu` (`id`, `role_id`, `sidebar_nav_id`) VALUES
(1, 5, 34),
(2, 5, 35),
(3, 5, 36),
(4, 5, 37),
(5, 5, 38),
(6, 5, 39),
(7, 5, 40),
(8, 5, 41),
(9, 5, 42),
(10, 5, 43),
(11, 5, 44),
(12, 5, 45),
(13, 5, 46),
(14, 5, 47),
(15, 5, 48),
(16, 5, 49),
(17, 5, 50),
(18, 5, 51),
(19, 5, 52),
(21, 5, 54),
(22, 5, 55),
(23, 5, 56),
(25, 5, 58),
(26, 5, 59),
(27, 5, 60),
(28, 5, 61),
(29, 5, 62),
(30, 7, 41),
(35, 7, 47),
(37, 7, 52),
(39, 7, 34),
(40, 7, 35),
(41, 7, 42),
(42, 7, 51),
(43, 7, 55),
(44, 7, 56),
(45, 7, 58),
(46, 7, 59),
(47, 7, 60),
(48, 7, 61),
(49, 7, 62),
(50, 6, 34),
(51, 6, 35),
(52, 6, 41),
(53, 6, 43),
(54, 6, 44),
(55, 6, 45),
(56, 6, 46),
(57, 6, 47),
(58, 6, 42),
(60, 6, 51),
(61, 6, 52),
(63, 6, 55),
(64, 6, 56),
(65, 6, 58),
(66, 6, 59),
(67, 6, 60),
(68, 6, 61),
(69, 6, 62),
(70, 5, 63),
(71, 5, 64),
(72, 9, 34),
(73, 9, 35);

--
-- Triggers `role_sidebar_menu`
--
DELIMITER $$
CREATE TRIGGER `after_role_sidebar_menu_delete` AFTER DELETE ON `role_sidebar_menu` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'role_sidebar_menu', OLD.id, NOW(), 
            CONCAT('role_id:', OLD.role_id, ', sidebar_nav_id:', OLD.sidebar_nav_id));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_role_sidebar_menu_insert` AFTER INSERT ON `role_sidebar_menu` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'role_sidebar_menu', NEW.id, NOW(), 
            CONCAT('role_id:', NEW.role_id, ', sidebar_nav_id:', NEW.sidebar_nav_id));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_role_sidebar_menu_update` AFTER UPDATE ON `role_sidebar_menu` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'role_sidebar_menu', NEW.id, NOW(), 
            CONCAT('role_id:', OLD.role_id, ', sidebar_nav_id:', OLD.sidebar_nav_id), 
            CONCAT('role_id:', NEW.role_id, ', sidebar_nav_id:', NEW.sidebar_nav_id));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sms_branch_info`
--

CREATE TABLE `sms_branch_info` (
  `id` bigint(20) NOT NULL,
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

--
-- Triggers `sms_branch_info`
--
DELIMITER $$
CREATE TRIGGER `after_sms_branch_info_delete` AFTER DELETE ON `sms_branch_info` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'sms_branch_info', OLD.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', name:', OLD.name, 
                   ', phone:', OLD.phone, ', email:', OLD.email, 
                   ', address:', OLD.address, ', status:', OLD.status, 
                   ', create_by:', OLD.create_by, ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_branch_info_insert` AFTER INSERT ON `sms_branch_info` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'sms_branch_info', NEW.id, NOW(), 
            CONCAT('uid:', NEW.uid, ', name:', NEW.name, 
                   ', phone:', NEW.phone, ', email:', NEW.email, 
                   ', address:', NEW.address, ', status:', NEW.status, 
                   ', create_by:', NEW.create_by, ', create_date:', NEW.create_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_branch_info_update` AFTER UPDATE ON `sms_branch_info` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'sms_branch_info', NEW.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', name:', OLD.name, 
                   ', phone:', OLD.phone, ', email:', OLD.email, 
                   ', address:', OLD.address, ', status:', OLD.status, 
                   ', create_by:', OLD.create_by, ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date), 
            CONCAT('uid:', NEW.uid, ', name:', NEW.name, 
                   ', phone:', NEW.phone, ', email:', NEW.email, 
                   ', address:', NEW.address, ', status:', NEW.status, 
                   ', create_by:', NEW.create_by, ', create_date:', NEW.create_date, 
                   ', update_by:', NEW.update_by, ', update_date:', NEW.update_date));
END
$$
DELIMITER ;

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
(1, 'cd30ecce-6a94-11ef-aab7-80ce628923b2', 'Brand Shop', 'Brand Beauty', 'assets/logo/6757577024930.png', 'A', '1010', '2024-09-02 11:48:17', '5', '2024-12-10 02:48:10');

--
-- Triggers `sms_brand_info`
--
DELIMITER $$
CREATE TRIGGER `after_sms_brand_info_delete` AFTER DELETE ON `sms_brand_info` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'sms_brand_info', OLD.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', name:', OLD.name, 
                   ', details:', OLD.details, ', logo:', OLD.logo, 
                   ', status:', OLD.status, ', create_by:', OLD.create_by, 
                   ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_brand_info_insert` AFTER INSERT ON `sms_brand_info` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'sms_brand_info', NEW.id, NOW(), 
            CONCAT('uid:', NEW.uid, ', name:', NEW.name, 
                   ', details:', NEW.details, ', logo:', NEW.logo, 
                   ', status:', NEW.status, ', create_by:', NEW.create_by, 
                   ', create_date:', NEW.create_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_brand_info_update` AFTER UPDATE ON `sms_brand_info` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'sms_brand_info', NEW.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', name:', OLD.name, 
                   ', details:', OLD.details, ', logo:', OLD.logo, 
                   ', status:', OLD.status, ', create_by:', OLD.create_by, 
                   ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date), 
            CONCAT('uid:', NEW.uid, ', name:', NEW.name, 
                   ', details:', NEW.details, ', logo:', NEW.logo, 
                   ', status:', NEW.status, ', create_by:', NEW.create_by, 
                   ', create_date:', NEW.create_date, 
                   ', update_by:', NEW.update_by, ', update_date:', NEW.update_date));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sms_color`
--

CREATE TABLE `sms_color` (
  `id` bigint(10) NOT NULL,
  `pro_type_id` bigint(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_color`
--

INSERT INTO `sms_color` (`id`, `pro_type_id`, `name`, `create_by`, `create_date`, `update_by`, `update_date`, `status`) VALUES
(1, 101, 'Red', 'admin', '2024-12-01 10:00:00', 'admin', '2024-12-01 10:00:00', 'A'),
(2, 101, 'Blue', 'admin', '2024-12-01 10:05:00', 'admin', '2024-12-01 10:05:00', 'A'),
(3, 102, 'Green', 'admin', '2024-12-02 14:00:00', 'admin', '2024-12-02 14:00:00', 'A'),
(4, 102, 'Black', 'admin', '2024-12-02 14:10:00', 'admin', '2024-12-02 14:10:00', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `sms_customers`
--

CREATE TABLE `sms_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `create_by` varchar(20) NOT NULL,
  `create_date` varchar(20) NOT NULL,
  `update_by` varchar(20) DEFAULT '0',
  `update_date` varchar(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_customers`
--

INSERT INTO `sms_customers` (`id`, `uid`, `name`, `phone`, `email`, `address`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 'CUST001', 'John Doe', '1234567890', 'john.doe@example.com', '123 Elm Street, Springfield', 'A', 'admin', '2024-09-11', NULL, NULL),
(2, 'CUST002', 'Jane Smith', '0987654321', 'jane.smith@example.com', '456 Oak Avenue, Springfield', 'A', 'admin', '2024-09-11', NULL, NULL),
(3, 'CUST003', 'Alice Johnson', '1122334455', 'alice.johnson@example.com', '789 Pine Road, Springfield', 'A', 'admin', '2024-09-11', NULL, NULL),
(4, 'CUST004', 'Bob Brown', '5566778899', 'bob.brown@example.com', '101 Maple Street, Springfield', 'A', 'admin', '2024-09-11', NULL, NULL),
(5, 'CUST005', 'Carol White', '6677889900', 'carol.white@example.com', '202 Birch Lane, Springfield', 'A', 'admin', '2024-09-11', NULL, NULL),
(6, '74b4a7c6-a0ac-4dbe-9860-7e6332856fb9', 'Test Customer 11', '0147852000', 'test11@gmail.com', 'Dhaka000', 'A', '5', '2024-09-14 06:20:18', '5', '2024-09-14 06:24:59'),
(7, '5881bcfd-656e-4950-8d7a-628b5d50414e', 'asd', '424', 'dadad', 'dadadad', 'Deleted', '5', '2024-09-14 06:22:14', '5', '2024-09-14 06:22:21'),
(8, '68c1e07f-6650-4ead-9461-c4108ba002d4', 'AAS', 'sdasd', 'sdasd', 'sadasda', 'A', '5', '2024-09-14 07:01:25', '0', '0'),
(9, 'afe1ea65-2cbd-4b41-ae2a-862e6b6f5c3d', 'Dhali Abir', '01684924439', 'abirdhali49@gmail.com', 'Mirpur,Dhaka', 'A', '5', '2024-09-14 08:33:27', '0', '0'),
(10, 'da53106f-c051-46e7-9375-8829d24fc1aa', 'Dhali Abir', '0147852369', 'dddd@gmail.com', 'DHaka', 'A', '5', '2024-09-14 08:34:56', '0', '0'),
(19, '801ac31b-45ef-4d9f-b2ff-9fd66a9d5e78', 'Safkat', '01478523691', 'shafkat@gmail.com', 'Dhaka', 'A', '5', '2024-09-14 08:39:11', '0', '0'),
(20, '03abe6a4-c7c1-4a9c-8869-6f283396751b', 'TTTT', '212323131', 'ttt@gmail.com', 'Mirpur', 'A', '5', '2024-09-14 08:40:25', '0', '0'),
(21, 'a3860de0-0567-44e6-a163-9f3eea012721', 'Ashif', '0123654789', 'ashif@gmail.com', 'Dhaka', 'A', '5', '2024-09-18 12:52:16', '0', '0'),
(22, 'e101320b-8f05-4e50-b324-3e230ae838f6', 'Shakil', '01884924439', 'shakil@gmail.com', 'Mirpur,Dhaka', 'A', '15', '2024-09-22 18:05:37', '0', '0'),
(23, 'afc92ada-14d9-425e-9a07-8c2c7596f9a9', 'Rakib', '01384924439', 'rakib@gmail.com', 'Mirpur,Dhaka', 'A', '15', '2024-09-23 17:06:08', '0', '0'),
(24, '79dc7b0d-14b5-4a33-bf48-c3c25084c963', 'Sabikun Nahar', '01684639206', 'nahar@gmail.com', 'Mirpur,Dhaka', 'A', '5', '2024-09-25 15:35:15', '0', '0'),
(25, '359cc83f-c576-4003-8ae3-3f13fc43775b', 'Rabbi', '01955109710', 'itrabbi24@gmail.com', 'Dhaka, Kallaynpur', 'A', '5', '2024-12-09 10:33:42', '0', '0');

--
-- Triggers `sms_customers`
--
DELIMITER $$
CREATE TRIGGER `after_sms_customers_delete` AFTER DELETE ON `sms_customers` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'sms_customers', OLD.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', name:', OLD.name, 
                   ', phone:', OLD.phone, ', email:', OLD.email, 
                   ', address:', OLD.address, ', status:', OLD.status, 
                   ', create_by:', OLD.create_by, ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_customers_insert` AFTER INSERT ON `sms_customers` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'sms_customers', NEW.id, NOW(), 
            CONCAT('uid:', NEW.uid, ', name:', NEW.name, 
                   ', phone:', NEW.phone, ', email:', NEW.email, 
                   ', address:', NEW.address, ', status:', NEW.status, 
                   ', create_by:', NEW.create_by, ', create_date:', NEW.create_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_customers_update` AFTER UPDATE ON `sms_customers` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'sms_customers', NEW.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', name:', OLD.name, 
                   ', phone:', OLD.phone, ', email:', OLD.email, 
                   ', address:', OLD.address, ', status:', OLD.status, 
                   ', create_by:', OLD.create_by, ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date), 
            CONCAT('uid:', NEW.uid, ', name:', NEW.name, 
                   ', phone:', NEW.phone, ', email:', NEW.email, 
                   ', address:', NEW.address, ', status:', NEW.status, 
                   ', create_by:', NEW.create_by, ', create_date:', NEW.create_date, 
                   ', update_by:', NEW.update_by, ', update_date:', NEW.update_date));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sms_orders`
--

CREATE TABLE `sms_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `cust_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `vat_amount` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `received_amount` decimal(10,2) NOT NULL,
  `revised_amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `table_number` varchar(255) DEFAULT NULL,
  `create_by` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_orders`
--

INSERT INTO `sms_orders` (`id`, `order_number`, `order_date`, `cust_id`, `total_amount`, `vat_amount`, `discount_amount`, `received_amount`, `revised_amount`, `status`, `payment_status`, `payment_method`, `table_number`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(21, 'ORD-1726128467', '2024-09-12 02:07:47', 90, 200.00, 20.00, 20.00, 500.00, -300.00, 'undefined', 'undefined', 'undefined', NULL, '5', '2024-09-12 08:07:47', NULL, NULL),
(32, 'ORD-1726129426', '2024-09-12 02:23:46', 12, 210.00, 20.00, 10.00, 300.00, -90.00, 'undefined', 'undefined', 'undefined', NULL, '5', '2024-09-12 08:23:46', NULL, NULL),
(34, 'ORD-1726129946', '2024-09-12 02:32:26', 33, 210.00, 20.00, 10.00, 300.00, -90.00, 'undefined', 'undefined', 'undefined', NULL, '5', '2024-09-12 08:32:26', NULL, NULL),
(40, 'ORD-1726131096', '2024-09-12 02:51:36', 22, 210.00, 20.00, 10.00, 300.00, -90.00, 'A', 'A', 'Cash', NULL, '5', '2024-09-12 08:51:36', NULL, NULL),
(41, 'ORD-1726142295', '2024-09-12 05:58:15', 21, 430.00, 40.00, 10.00, 500.00, -70.00, 'A', 'A', 'Cash', NULL, '5', '2024-09-12 11:58:15', NULL, NULL),
(42, 'ORD-1726298622', '2024-09-14 01:23:42', 1, 340.00, 40.00, 100.00, 500.00, -160.00, 'A', 'A', 'Cash', NULL, '5', '2024-09-14 07:23:42', NULL, NULL),
(43, 'ORD-1726302819', '2024-09-14 02:33:39', 9, 200.00, 20.00, 20.00, 200.00, 0.00, 'A', 'A', 'Cash', NULL, '5', '2024-09-14 08:33:39', NULL, NULL),
(44, 'ORD-1726303185', '2024-09-14 02:39:45', 19, 200.00, 20.00, 20.00, 200.00, 0.00, 'A', 'A', 'Cash', NULL, '5', '2024-09-14 08:39:45', NULL, NULL),
(45, 'ORD-1726303230', '2024-09-14 02:40:30', 20, 200.00, 20.00, 20.00, 200.00, 0.00, 'A', 'A', 'Cash', NULL, '5', '2024-09-14 08:40:31', NULL, NULL),
(46, 'ORD-1726306294', '2024-09-14 03:31:34', 9, 830.00, 80.00, 50.00, 1000.00, -170.00, 'A', 'A', 'Cash', NULL, '5', '2024-09-14 09:31:34', NULL, NULL),
(47, 'ORD-1726642336', '2024-09-18 06:52:16', 21, 200.00, 20.00, 20.00, 200.00, 0.00, 'A', 'A', 'Cash', NULL, '5', '2024-09-18 12:52:16', NULL, NULL),
(48, 'ORD-1726745676', '2024-09-19 11:34:36', 9, 200.00, 20.00, 20.00, 100.00, 100.00, 'A', 'Due', 'Cash', NULL, '5', '2024-09-19 17:34:36', NULL, NULL),
(49, 'ORD-1726988478', '2024-09-22 07:01:18', 9, 200.00, 20.00, 20.00, 500.00, -300.00, 'A', 'A', 'Cash', NULL, '5', '2024-09-22 13:01:18', NULL, NULL),
(50, 'ORD-1726994841', '2024-09-22 08:47:21', 8, 200.00, 20.00, 20.00, 200.00, 0.00, 'A', 'A', 'Cash', NULL, '5', '2024-09-22 14:47:21', NULL, NULL),
(51, 'ORD-1727006738', '2024-09-22 12:05:38', 22, 660.00, 60.00, 0.00, 1000.00, -340.00, 'A', 'A', 'Cash', NULL, '15', '2024-09-22 18:05:38', NULL, NULL),
(52, 'ORD-1727089568', '2024-09-23 11:06:08', 23, 440.00, 40.00, 0.00, 500.00, -60.00, 'A', 'A', 'Cash', NULL, '15', '2024-09-23 17:06:08', NULL, NULL),
(53, 'ORD-1727256915', '2024-09-25 09:35:15', 24, 390.00, 40.00, 50.00, 390.00, 0.00, 'A', 'A', 'Cash', NULL, '5', '2024-09-25 15:35:15', NULL, NULL),
(54, 'ORD-1731224910', '2024-11-10 07:48:30', 24, 610.00, 60.00, 50.00, 1000.00, -390.00, 'A', 'A', 'Cash', NULL, '5', '2024-11-10 13:48:30', NULL, NULL),
(55, 'ORD-1731225009', '2024-11-10 07:50:09', 9, 660.00, 60.00, 0.00, 1000.00, -340.00, 'A', 'A', 'Cash', NULL, '5', '2024-11-10 13:50:09', NULL, NULL),
(56, 'ORD-1731907568', '2024-11-18 05:26:08', 9, 420.00, 40.00, 20.00, 500.00, -80.00, 'A', 'A', 'Cash', NULL, '10', '2024-11-18 11:26:08', NULL, NULL),
(57, 'ORD-1733718826', '2024-12-09 04:33:46', 25, 440.00, 40.00, 0.00, 0.00, 440.00, 'A', 'A', 'Cash', NULL, '5', '2024-12-09 10:33:46', NULL, NULL),
(58, 'ORD-1739618509', '2025-02-15 11:21:49', 9, 210.00, 20.00, 10.00, 500.00, -290.00, 'A', 'A', 'Cash', NULL, '10', '2025-02-15 17:21:49', NULL, NULL);

--
-- Triggers `sms_orders`
--
DELIMITER $$
CREATE TRIGGER `after_sms_orders_delete` AFTER DELETE ON `sms_orders` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'sms_orders', OLD.id, NOW(), 
            CONCAT('order_number:', OLD.order_number, ', order_date:', OLD.order_date, 
                   ', cust_id:', OLD.cust_id, ', total_amount:', OLD.total_amount, 
                   ', vat_amount:', OLD.vat_amount, ', discount_amount:', OLD.discount_amount, 
                   ', received_amount:', OLD.received_amount, ', revised_amount:', OLD.revised_amount, 
                   ', status:', OLD.status, ', payment_status:', OLD.payment_status, 
                   ', payment_method:', OLD.payment_method, ', table_number:', OLD.table_number, 
                   ', create_by:', OLD.create_by, ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_orders_insert` AFTER INSERT ON `sms_orders` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'sms_orders', NEW.id, NOW(), 
            CONCAT('order_number:', NEW.order_number, ', order_date:', NEW.order_date, 
                   ', cust_id:', NEW.cust_id, ', total_amount:', NEW.total_amount, 
                   ', vat_amount:', NEW.vat_amount, ', discount_amount:', NEW.discount_amount, 
                   ', received_amount:', NEW.received_amount, ', revised_amount:', NEW.revised_amount, 
                   ', status:', NEW.status, ', payment_status:', NEW.payment_status, 
                   ', payment_method:', NEW.payment_method, ', table_number:', NEW.table_number, 
                   ', create_by:', NEW.create_by, ', create_date:', NEW.create_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_orders_update` AFTER UPDATE ON `sms_orders` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'sms_orders', NEW.id, NOW(), 
            CONCAT('order_number:', OLD.order_number, ', order_date:', OLD.order_date, 
                   ', cust_id:', OLD.cust_id, ', total_amount:', OLD.total_amount, 
                   ', vat_amount:', OLD.vat_amount, ', discount_amount:', OLD.discount_amount, 
                   ', received_amount:', OLD.received_amount, ', revised_amount:', OLD.revised_amount, 
                   ', status:', OLD.status, ', payment_status:', OLD.payment_status, 
                   ', payment_method:', OLD.payment_method, ', table_number:', OLD.table_number, 
                   ', create_by:', OLD.create_by, ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date), 
            CONCAT('order_number:', NEW.order_number, ', order_date:', NEW.order_date, 
                   ', cust_id:', NEW.cust_id, ', total_amount:', NEW.total_amount, 
                   ', vat_amount:', NEW.vat_amount, ', discount_amount:', NEW.discount_amount, 
                   ', received_amount:', NEW.received_amount, ', revised_amount:', NEW.revised_amount, 
                   ', status:', NEW.status, ', payment_status:', NEW.payment_status, 
                   ', payment_method:', NEW.payment_method, ', table_number:', NEW.table_number, 
                   ', create_by:', NEW.create_by, ', create_date:', NEW.create_date, 
                   ', update_by:', NEW.update_by, ', update_date:', NEW.update_date));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sms_order_dtl`
--

CREATE TABLE `sms_order_dtl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `pro_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `special_request` text DEFAULT NULL,
  `create_by` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_order_dtl`
--

INSERT INTO `sms_order_dtl` (`id`, `order_id`, `pro_id`, `quantity`, `price`, `total_price`, `special_request`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(1, 21, 13, 1, 200.00, 200.00, '', '5', '2024-09-12 08:07:47', NULL, NULL),
(2, 32, 13, 1, 200.00, 200.00, '', '5', '2024-09-12 08:23:46', NULL, NULL),
(3, 34, 13, 1, 200.00, 200.00, '', '5', '2024-09-12 08:32:26', NULL, NULL),
(4, 40, 13, 1, 200.00, 200.00, '', '5', '2024-09-12 08:51:36', NULL, NULL),
(5, 41, 12, 2, 200.00, 400.00, '', '5', '2024-09-12 11:58:15', NULL, NULL),
(6, 42, 13, 1, 200.00, 200.00, '', '5', '2024-09-14 07:23:42', NULL, NULL),
(7, 42, 14, 1, 200.00, 200.00, '', '5', '2024-09-14 07:23:42', NULL, NULL),
(8, 43, 12, 1, 200.00, 200.00, '', '5', '2024-09-14 08:33:39', NULL, NULL),
(9, 44, 13, 1, 200.00, 200.00, '', '5', '2024-09-14 08:39:45', NULL, NULL),
(10, 45, 13, 1, 200.00, 200.00, '', '5', '2024-09-14 08:40:31', NULL, NULL),
(11, 46, 13, 1, 200.00, 200.00, '', '5', '2024-09-14 09:31:34', NULL, NULL),
(12, 46, 14, 1, 200.00, 200.00, '', '5', '2024-09-14 09:31:34', NULL, NULL),
(13, 46, 12, 2, 200.00, 400.00, '', '5', '2024-09-14 09:31:34', NULL, NULL),
(14, 47, 12, 1, 200.00, 200.00, '', '5', '2024-09-18 12:52:16', NULL, NULL),
(15, 48, 12, 1, 200.00, 200.00, '', '5', '2024-09-19 17:34:37', NULL, NULL),
(16, 49, 14, 1, 200.00, 200.00, '', '5', '2024-09-22 13:01:18', NULL, NULL),
(17, 50, 13, 1, 200.00, 200.00, '', '5', '2024-09-22 14:47:21', NULL, NULL),
(18, 51, 12, 1, 200.00, 200.00, '', '15', '2024-09-22 18:05:39', NULL, NULL),
(19, 51, 13, 1, 200.00, 200.00, '', '15', '2024-09-22 18:05:39', NULL, NULL),
(20, 51, 14, 1, 200.00, 200.00, '', '15', '2024-09-22 18:05:39', NULL, NULL),
(21, 52, 12, 1, 200.00, 200.00, '', '15', '2024-09-23 17:06:08', NULL, NULL),
(22, 52, 13, 1, 200.00, 200.00, '', '15', '2024-09-23 17:06:08', NULL, NULL),
(23, 53, 12, 1, 200.00, 200.00, '', '5', '2024-09-25 15:35:15', NULL, NULL),
(24, 53, 20, 1, 200.00, 200.00, '', '5', '2024-09-25 15:35:15', NULL, NULL),
(25, 54, 12, 1, 200.00, 200.00, '', '5', '2024-11-10 13:48:30', NULL, NULL),
(26, 54, 13, 1, 200.00, 200.00, '', '5', '2024-11-10 13:48:30', NULL, NULL),
(27, 54, 17, 1, 200.00, 200.00, '', '5', '2024-11-10 13:48:30', NULL, NULL),
(28, 55, 12, 2, 200.00, 400.00, '', '5', '2024-11-10 13:50:09', NULL, NULL),
(29, 55, 20, 1, 200.00, 200.00, '', '5', '2024-11-10 13:50:09', NULL, NULL),
(30, 56, 17, 1, 200.00, 200.00, '', '10', '2024-11-18 11:26:08', NULL, NULL),
(31, 56, 22, 1, 200.00, 200.00, '', '10', '2024-11-18 11:26:08', NULL, NULL),
(32, 57, 14, 2, 200.00, 400.00, '', '5', '2024-12-09 10:33:46', NULL, NULL),
(33, 58, 12, 1, 200.00, 200.00, '', '10', '2025-02-15 17:21:49', NULL, NULL);

--
-- Triggers `sms_order_dtl`
--
DELIMITER $$
CREATE TRIGGER `after_sms_order_dtl_delete` AFTER DELETE ON `sms_order_dtl` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'sms_order_dtl', OLD.id, NOW(), 
            CONCAT('order_id:', OLD.order_id, ', pro_id:', OLD.pro_id, 
                   ', quantity:', OLD.quantity, ', price:', OLD.price, 
                   ', total_price:', OLD.total_price, 
                   ', special_request:', OLD.special_request, 
                   ', create_by:', OLD.create_by, 
                   ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, 
                   ', update_date:', OLD.update_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_order_dtl_insert` AFTER INSERT ON `sms_order_dtl` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'sms_order_dtl', NEW.id, NOW(), 
            CONCAT('order_id:', NEW.order_id, ', pro_id:', NEW.pro_id, 
                   ', quantity:', NEW.quantity, ', price:', NEW.price, 
                   ', total_price:', NEW.total_price, 
                   ', special_request:', NEW.special_request, 
                   ', create_by:', NEW.create_by, 
                   ', create_date:', NEW.create_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_order_dtl_update` AFTER UPDATE ON `sms_order_dtl` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'sms_order_dtl', NEW.id, NOW(), 
            CONCAT('order_id:', OLD.order_id, ', pro_id:', OLD.pro_id, 
                   ', quantity:', OLD.quantity, ', price:', OLD.price, 
                   ', total_price:', OLD.total_price, 
                   ', special_request:', OLD.special_request, 
                   ', create_by:', OLD.create_by, 
                   ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, 
                   ', update_date:', OLD.update_date), 
            CONCAT('order_id:', NEW.order_id, ', pro_id:', NEW.pro_id, 
                   ', quantity:', NEW.quantity, ', price:', NEW.price, 
                   ', total_price:', NEW.total_price, 
                   ', special_request:', NEW.special_request, 
                   ', create_by:', NEW.create_by, 
                   ', create_date:', NEW.create_date, 
                   ', update_by:', NEW.update_by, 
                   ', update_date:', NEW.update_date));
END
$$
DELIMITER ;

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
(1, 'cd30ecce-6a94-11ef-aab7-80ce628923b2', 'Foodi', 'A', '4', '2024-09-03 11:18:52', '5', '2024-09-25 14:55:41'),
(2, 'cd30ecce-6a94-11ef-aab7-80ce628923b2', 'Brand11', 'I', '4', '2024-09-03 11:38:28', '4', '2024-09-03 11:39:23'),
(4, 'f15d8a19-0725-484a-826e-2e124cd9fce3', 'adadsss', 'Deleted', '5', '2024-09-04 08:24:57', '5', '2024-09-04 08:26:04'),
(5, 'a4817b23-2635-440e-a83c-18b20430975c', 'Brandd2 11', 'Deleted', '5', '2024-09-22 13:27:45', '5', '2024-09-22 13:28:17');

--
-- Triggers `sms_probrand`
--
DELIMITER $$
CREATE TRIGGER `after_sms_probrand_delete` AFTER DELETE ON `sms_probrand` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'sms_probrand', OLD.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', name:', OLD.name, 
                   ', status:', OLD.status, ', create_by:', OLD.create_by, 
                   ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_probrand_insert` AFTER INSERT ON `sms_probrand` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'sms_probrand', NEW.id, NOW(), 
            CONCAT('uid:', NEW.uid, ', name:', NEW.name, 
                   ', status:', NEW.status, ', create_by:', NEW.create_by, 
                   ', create_date:', NEW.create_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_probrand_update` AFTER UPDATE ON `sms_probrand` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'sms_probrand', NEW.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', name:', OLD.name, 
                   ', status:', OLD.status, ', create_by:', OLD.create_by, 
                   ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date), 
            CONCAT('uid:', NEW.uid, ', name:', NEW.name, 
                   ', status:', NEW.status, ', create_by:', NEW.create_by, 
                   ', create_date:', NEW.create_date, 
                   ', update_by:', NEW.update_by, ', update_date:', NEW.update_date));
END
$$
DELIMITER ;

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
(2, '9f34d9fd-aeaa-42dc-94ce-720912f090da', 'Burgers', 'A', '4', '2024-09-04 06:47:01', '5', '2024-09-10 10:14:33'),
(3, '5a024d2b-e170-46be-b990-df4154f164c5', 'T4est', 'Deleted', '4', '2024-09-04 06:47:15', '4', '2024-09-04 06:50:27'),
(4, '76da6b4f-142c-43ef-9ef4-0cdc28413712', 'aa', 'Deleted', '5', '2024-09-04 08:28:23', '5', '2024-09-04 08:28:32'),
(5, 'c44fe2d9-eeca-434c-9d0e-0fd8d11bb3e9', 'Pizza', 'A', '5', '2024-09-04 08:44:22', '5', '2024-09-10 10:17:38'),
(6, '48dbf062-fe3e-4a8e-bfff-c504f40e8b6f', 'Sandwiches', 'A', '5', '2024-09-10 10:11:52', '5', '2024-09-10 10:15:13'),
(7, 'ed85a28b-1a14-49e7-8fd2-26a96674ab39', 'ProCategoryaaa', 'Deleted', '5', '2024-09-10 10:11:52', '5', '2024-09-10 10:12:02'),
(8, '74127512-b272-421a-a816-06b07605b531', 'Chicken', 'A', '5', '2024-09-10 10:15:28', NULL, NULL),
(9, 'b242aeb4-39d1-45a6-acaf-e6becef936c6', 'Mexican', 'A', '5', '2024-09-10 10:15:34', NULL, NULL),
(10, 'e8de690a-65a4-4701-af67-46a9e1bffd38', 'Breakfast', 'A', '5', '2024-09-10 10:15:41', NULL, NULL),
(11, '4a11b88c-aebe-4a13-8b79-cf85e4a165d1', 'Desserts', 'A', '5', '2024-09-10 10:16:01', NULL, NULL),
(12, '10267bb1-5341-4257-bd59-5edbc11bea84', 'Beverages', 'A', '5', '2024-09-10 10:16:07', NULL, NULL),
(13, 'dd9cf056-dc32-4258-8407-e5e2b57bd636', 'AAA1111', 'Deleted', '5', '2024-09-22 13:30:18', '5', '2024-09-22 13:30:45'),
(14, 'c107ef79-dea8-43c5-b58a-bc179b111382', 'Cake', 'A', '5', '2024-09-25 14:55:54', NULL, NULL),
(15, 'c63b538a-3e19-46d6-8d7e-b743b438aa65', 'Bread', 'A', '5', '2024-09-25 15:26:51', NULL, NULL),
(16, '6722e799-e237-467c-9862-5e200a14b0a4', 'Bread &amp;amp; Bun', 'A', '5', '2024-09-25 15:29:33', NULL, NULL),
(17, 'fed5ba62-0611-466e-aa95-294a51ec6b2b', 'Beverage', 'A', '5', '2024-09-25 15:31:19', NULL, NULL),
(18, '452d20cc-1c76-4aed-8b3d-7b703a399ede', 'Pastry', 'A', '5', '2024-09-25 15:39:35', NULL, NULL);

--
-- Triggers `sms_procategory`
--
DELIMITER $$
CREATE TRIGGER `after_sms_procategory_delete` AFTER DELETE ON `sms_procategory` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'sms_procategory', OLD.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', name:', OLD.name, 
                   ', status:', OLD.status, ', create_by:', OLD.create_by, 
                   ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_procategory_insert` AFTER INSERT ON `sms_procategory` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'sms_procategory', NEW.id, NOW(), 
            CONCAT('uid:', NEW.uid, ', name:', NEW.name, 
                   ', status:', NEW.status, ', create_by:', NEW.create_by, 
                   ', create_date:', NEW.create_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_procategory_update` AFTER UPDATE ON `sms_procategory` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'sms_procategory', NEW.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', name:', OLD.name, 
                   ', status:', OLD.status, ', create_by:', OLD.create_by, 
                   ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date), 
            CONCAT('uid:', NEW.uid, ', name:', NEW.name, 
                   ', status:', NEW.status, ', create_by:', NEW.create_by, 
                   ', create_date:', NEW.create_date, 
                   ', update_by:', NEW.update_by, ', update_date:', NEW.update_date));
END
$$
DELIMITER ;

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
(7, 'ff81d1ff-a21d-41ca-82e8-4195ea778df7', 1, 5, 3, 1, 'Ut voluptatem lorem', 'Dolor ea laborum Ad', 'Dolores quo fugiat', '162', '989', 'assets/product_img/66d843ce7f08c.jpg', 'assets/product_img/66d843ce7f72c.jpg', 'assets/product_img/66d843ce7fd68.jpg', 'assets/product_img/66d843ce803be.png', 'Deleted', '5', '2024-09-04 11:25:26', '5', '2024-09-10 10:29:35'),
(8, 'a1ef337d-3b82-42bc-b779-e1686ce06b11', 1, 2, 1, 1, 'Laboriosam ullam ul', 'Dolore dolor ullamco', 'Et nihil laboriosam', '645', '11', 'assets/product_img/66d8442ab1367.png', '', '', '', 'Deleted', '5', '2024-09-04 11:27:38', '5', '2024-09-04 11:28:40'),
(9, '102445c8-0c03-4bde-883b-14886eb0f88d', 1, 2, 1, 1, 'Ut minim cillum veli', 'Enim odit esse recus', 'Maxime inventore aut', '786', '669', 'assets/product_img/66d8445b444da.jpg', '', '', '', 'Deleted', '5', '2024-09-04 11:28:27', '5', '2024-09-10 10:29:42'),
(10, '0404c6be-c111-410a-a827-5dfe44ea1254', 1, 2, 3, 1, 'Vel illum porro vel', 'Cum qui Nam autem ni', '&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;asasas&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;', '714', '392', 'assets/product_img/66de8f168dad2.jpg', '', '', '', 'Deleted', '5', '2024-09-09 06:00:59', '5', '2024-09-10 10:29:45'),
(11, '77ee3781-4e9b-46c2-930e-cfcd374c64ba', 1, 5, 1, 1, 'Incididunt repellend', 'Quia sint quia qui s', '&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;ABir&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;ul&amp;gt;&amp;lt;li&amp;gt;&amp;lt;strong&amp;gt;adad&amp;lt;/strong&amp;gt;&amp;lt;/li&amp;gt;&amp;lt;li&amp;gt;&amp;lt;strong&amp;gt;added&amp;lt;/strong&amp;gt;&amp;lt;/li&amp;gt;&amp;lt;/ul&amp;gt;&amp;lt;figure class=&amp;quot;image&amp;quot;&amp;gt;&amp;lt;img src=&amp;quot;https://bootstrapmade.com/demo/templates/Yummy/assets/img/menu/menu-item-2.png&amp;quot;&amp;gt;&amp;lt;/figure&amp;gt;', '555', '360', 'assets/product_img/66ded76e376b7.jpg', '', '', '', 'Deleted', '5', '2024-09-09 11:09:35', '5', '2024-09-10 10:29:48'),
(12, '3bbb1e29-e7ac-49b7-bf02-d49ab6afc053', 5, 2, 1, 1, 'Beef Burger', 'Sink your teeth into a succulent beef patty, skillfully infused with our secret blend of herbs and sauces, grilled to perfection.', '&amp;lt;p&amp;gt;Prepare to indulge in a mouthwatering feast at our esteemed Best Restaurant in Dhaka with our delectable Beef Burger Meal. Sink your teeth into a succulent beef patty, skillfully infused with our secret blend of herbs and sauces, grilled to perfection. Embrace the delightful toppings of tangy pickles, caramelized onions, sautéed mushrooms, ripe tomato, and a slice of melty cheddar cheese, all nestled between soft buns. Accompanied by a generous portion of golden French fries and our tantalizing secret dip.&amp;lt;/p&amp;gt;', '464', '450', 'assets/product_img/66e0213f2f492.webp', '', '', '', 'A', '5', '2024-09-10 10:36:47', NULL, NULL),
(13, 'd9cc22a2-55f4-4055-ae27-ecfeab4c5307', 5, 2, 5, 1, 'Cheesy Smash Burger', 'Cheesy Smash Burger', '&amp;lt;p&amp;gt;Cheesy Smash Burger&amp;lt;/p&amp;gt;', '490', '490', 'assets/product_img/66e0228a29953.jpg', '', '', '', 'A', '5', '2024-09-10 10:42:18', NULL, NULL),
(14, '21d1164f-9d2a-409d-994b-b2a500046f85', 5, 2, 5, 1, 'Cheese &amp;amp; Shroom Smash Burger', 'Cheese &amp;amp; Shroom Smash Burger', '&amp;lt;p&amp;gt;Cheese &amp;amp;amp; Shroom Smash Burger&amp;lt;/p&amp;gt;', '350', '350', 'assets/product_img/66e0230f91a8c.jpg', '', '', '', 'A', '5', '2024-09-10 10:44:31', NULL, NULL),
(15, 'bab0f56a-e8e4-4eb7-9459-2b97d308fa41', 15, 14, 35, 1, 'Black Forest Cake 500gm', 'Black Forest Cake 500gm', '&amp;amp;amp;lt;h3&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Black Forest Cake 500gm&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/h3&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Item code:&amp;amp;amp;amp;nbsp;46656&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Brand: Foodi&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Net Weight: 500gm&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;', '810', '750', 'assets/product_img/670cd7f8c0675.jpg', '', '', '', 'A', '5', '2024-09-25 15:24:18', '5', '2024-10-14 14:36:08'),
(16, '4be932ce-e75c-4028-9180-a0e645eee700', 15, 14, 35, 1, 'Chocolate Coated Cake 500gm', 'Chocolate Coated Cake 500gm', '&amp;amp;amp;lt;h2&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Chocolate Coated Cake 500gm&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/h2&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Item code:&amp;amp;amp;amp;nbsp;46656&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Brand: Foodi&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Net Weight: 500gm&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;', '765', '700', 'assets/product_img/670cd80a5c161.jpeg', '', '', '', 'A', '5', '2024-09-25 15:25:29', '5', '2024-10-14 14:36:26'),
(17, '5dcfa16b-ea9d-4827-a9ac-0c9808ad3183', 16, 15, 37, 1, 'Milk Bread 350gm +', 'Milk Bread 350gm +', '&amp;amp;amp;lt;h2&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Milk Bread 350gm +&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/h2&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Item code:&amp;amp;amp;amp;nbsp;46345&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Brand: Foodi&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Net Weight: 350gm&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;', '80', '70', 'assets/product_img/670cd81c57d81.jpg', '', '', '', 'A', '5', '2024-09-25 15:28:00', '5', '2024-10-14 14:36:44'),
(18, 'aaefc765-27ab-46e0-9acd-6d5dc20cb939', 16, 15, 37, 1, 'Butter Bun 100gm 1pcs', 'Butter Bun 100gm 1pcs', '&amp;amp;amp;lt;h2&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Butter Bun 100gm 1pcs&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/h2&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Item code:&amp;amp;amp;amp;nbsp;45345&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Brand: Foodi&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;&amp;amp;amp;lt;p&amp;amp;amp;gt;&amp;amp;amp;lt;strong&amp;amp;amp;gt;Net Weight: 100gm&amp;amp;amp;lt;/strong&amp;amp;amp;gt;&amp;amp;amp;lt;/p&amp;amp;amp;gt;', '40', '30', 'assets/product_img/670cd82c3649f.jpg', '', '', '', 'A', '5', '2024-09-25 15:29:02', '5', '2024-10-14 14:37:00'),
(19, 'e25702f3-b2a7-498d-ab83-3b8d77fbde54', 16, 16, 38, 1, 'Fruit Cake 1pcs', 'Fruit Cake 1pcs', '&amp;amp;amp;lt;h2&amp;amp;amp;gt;Fruit Cake 1pcs&amp;amp;amp;lt;/h2&amp;amp;amp;gt;', '200', '180', 'assets/product_img/670cd841237e0.jpg', '', '', '', 'A', '5', '2024-09-25 15:30:30', '5', '2024-10-14 14:37:21'),
(20, 'e4c6cd86-85df-4df3-b5b5-a27ce70876f8', 17, 17, 39, 1, 'Tango Orange 250ml', 'Tango Orange 250ml', '&amp;amp;amp;lt;h2&amp;amp;amp;gt;Tango Orange 250ml&amp;amp;amp;lt;/h2&amp;amp;amp;gt;', '20', '19', 'assets/product_img/670cd84e9ff80.png', '', '', '', 'A', '5', '2024-09-25 15:32:23', '5', '2024-10-14 14:37:34'),
(21, '116fd821-83cd-47ab-80c7-5a6e0212993f', 17, 17, 39, 1, 'Mojo Soft Drink 2 Lt', 'Mojo Soft Drink 2 Lt', '&amp;amp;amp;lt;h2&amp;amp;amp;gt;Mojo Soft Drink 2 Lt&amp;amp;amp;lt;/h2&amp;amp;amp;gt;', '100', '90', 'assets/product_img/670cd85c216e1.webp', '', '', '', 'A', '5', '2024-09-25 15:33:19', '5', '2024-10-14 14:37:48'),
(22, '8e57f45c-6515-4bfd-be3b-dcf3dce55975', 18, 18, 40, 1, 'Red Velvet Heart Shaped Pastry 80 gm', 'Red Velvet Heart Shaped Pastry 80 gm', '&amp;amp;amp;lt;p&amp;amp;amp;gt;Red Velvet Heart Shaped Pastry 80 gm&amp;amp;amp;lt;/p&amp;amp;amp;gt;', '136', '136', 'assets/product_img/670cd867d1400.jpg', '', '', '', 'A', '5', '2024-09-25 15:40:35', '5', '2024-10-14 14:37:59'),
(23, '58d4510b-d01c-4724-bf32-70940a27f332', 18, 18, 40, 1, 'Vanilla Triangle Pastry 60gm -1 Slice', 'Vanilla Triangle Pastry 60gm -1 Slice', '&amp;amp;amp;lt;h2&amp;amp;amp;gt;Vanilla Triangle Pastry 60gm -1 Slice&amp;amp;amp;lt;/h2&amp;amp;amp;gt;', '85', '85', 'assets/product_img/670cd874b14f1.jpg', '', '', '', 'A', '5', '2024-09-25 15:41:19', '5', '2024-10-14 14:38:12'),
(24, '0e8091d0-3444-491c-9fb4-d3e471881e1d', 18, 18, 40, 1, 'Marble Pastry 120 gm', 'Marble Pastry 120 gm', '&amp;amp;amp;lt;h2&amp;amp;amp;gt;Marble Pastry 120 gm&amp;amp;amp;lt;/h2&amp;amp;amp;gt;', '136', '136', 'assets/product_img/670cd880b25c9.jpg', '', '', '', 'A', '5', '2024-09-25 15:42:05', '5', '2024-10-14 14:38:24');

--
-- Triggers `sms_proinfo`
--
DELIMITER $$
CREATE TRIGGER `after_sms_proinfo_delete` AFTER DELETE ON `sms_proinfo` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'sms_proinfo', OLD.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', type_id:', OLD.type_id, ', cat_id:', OLD.cat_id, 
                   ', subcat_id:', OLD.subcat_id, ', brand_id:', OLD.brand_id, 
                   ', title:', OLD.title, ', subtitle:', OLD.subtitle, 
                   ', details:', OLD.details, ', price_mrp:', OLD.price_mrp, 
                   ', price_rp:', OLD.price_rp, ', image1:', OLD.image1, 
                   ', image2:', OLD.image2, ', image3:', OLD.image3, 
                   ', image4:', OLD.image4, ', status:', OLD.status, 
                   ', create_by:', OLD.create_by, ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_proinfo_insert` AFTER INSERT ON `sms_proinfo` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'sms_proinfo', NEW.id, NOW(), 
            CONCAT('uid:', NEW.uid, ', type_id:', NEW.type_id, ', cat_id:', NEW.cat_id, 
                   ', subcat_id:', NEW.subcat_id, ', brand_id:', NEW.brand_id, 
                   ', title:', NEW.title, ', subtitle:', NEW.subtitle, 
                   ', details:', NEW.details, ', price_mrp:', NEW.price_mrp, 
                   ', price_rp:', NEW.price_rp, ', image1:', NEW.image1, 
                   ', image2:', NEW.image2, ', image3:', NEW.image3, 
                   ', image4:', NEW.image4, ', status:', NEW.status, 
                   ', create_by:', NEW.create_by, ', create_date:', NEW.create_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_proinfo_update` AFTER UPDATE ON `sms_proinfo` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'sms_proinfo', NEW.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', type_id:', OLD.type_id, ', cat_id:', OLD.cat_id, 
                   ', subcat_id:', OLD.subcat_id, ', brand_id:', OLD.brand_id, 
                   ', title:', OLD.title, ', subtitle:', OLD.subtitle, 
                   ', details:', OLD.details, ', price_mrp:', OLD.price_mrp, 
                   ', price_rp:', OLD.price_rp, ', image1:', OLD.image1, 
                   ', image2:', OLD.image2, ', image3:', OLD.image3, 
                   ', image4:', OLD.image4, ', status:', OLD.status, 
                   ', create_by:', OLD.create_by, ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date), 
            CONCAT('uid:', NEW.uid, ', type_id:', NEW.type_id, ', cat_id:', NEW.cat_id, 
                   ', subcat_id:', NEW.subcat_id, ', brand_id:', NEW.brand_id, 
                   ', title:', NEW.title, ', subtitle:', NEW.subtitle, 
                   ', details:', NEW.details, ', price_mrp:', NEW.price_mrp, 
                   ', price_rp:', NEW.price_rp, ', image1:', NEW.image1, 
                   ', image2:', NEW.image2, ', image3:', NEW.image3, 
                   ', image4:', NEW.image4, ', status:', NEW.status, 
                   ', create_by:', NEW.create_by, ', create_date:', NEW.create_date, 
                   ', update_by:', NEW.update_by, ', update_date:', NEW.update_date));
END
$$
DELIMITER ;

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
(1, 'b03337e0-0d69-4e64-acb8-9e9cc8c07210', 2, 'Beef Burgers', 'A', '5', '2024-09-04 08:46:44', '5', '2024-09-10 10:16:38'),
(2, 'b0b90be6-d367-40e0-9a22-fab4fe224f20', 2, 'AAA1', 'Deleted', '5', '2024-09-04 08:47:01', '5', '2024-09-04 08:47:20'),
(3, '37d4bdc5-a1dc-4a8b-b8a2-060f15d32aec', 2, 'Chicken Burgers', 'A', '5', '2024-09-04 08:47:11', '5', '2024-09-10 10:16:50'),
(4, 'a3f193e7-786f-4238-be71-3c4d6494f23d', 2, 'Veggie Burgers', 'A', '5', '2024-09-10 10:17:01', NULL, NULL),
(5, '371fd788-abaf-4d4f-b433-ed7251bde894', 2, 'Specialty Burgers', 'A', '5', '2024-09-10 10:17:09', NULL, NULL),
(6, '92820e67-2f78-4507-8485-ad804c9be375', 5, 'Thin Crust', 'A', '5', '2024-09-10 10:17:48', NULL, NULL),
(7, '38ef30d1-24c4-4fde-a3a5-88cc0b1278a5', 5, 'Thin Crust', 'A', '5', '2024-09-10 10:17:49', NULL, NULL),
(8, '9584f1aa-dda8-4c27-8002-1cbcbfa5c0c5', 5, 'Deep Dish', 'A', '5', '2024-09-10 10:17:57', NULL, NULL),
(9, '2de1bd05-6dc4-42b6-8ed0-cc0a9ce298b7', 5, 'Stuffed Crust', 'A', '5', '2024-09-10 10:18:06', NULL, NULL),
(10, '3037c4b8-b67d-4ad1-97e7-bc56bd280c51', 5, 'Gluten-Free', 'A', '5', '2024-09-10 10:18:13', NULL, NULL),
(11, '0266d0e9-5a44-48f2-9226-797540d31165', 6, 'Submarine Sandwiches', 'A', '5', '2024-09-10 10:18:23', NULL, NULL),
(12, '01f8ecb1-b3cc-4fe9-a0d1-835b3230bbd2', 6, 'Panini', 'A', '5', '2024-09-10 10:18:30', NULL, NULL),
(13, '9f036893-a58c-4730-b7d1-abd3e87320a2', 6, 'Club Sandwiches', 'A', '5', '2024-09-10 10:18:38', NULL, NULL),
(14, '41527600-a55b-45ee-b500-32fee595ac06', 6, 'Wraps', 'A', '5', '2024-09-10 10:18:47', NULL, NULL),
(15, 'e97260a9-9c32-4d88-a709-6e8589e76886', 8, 'Fried Chicken', 'A', '5', '2024-09-10 10:18:57', NULL, NULL),
(16, '36d896fa-1668-46b7-a824-5c00582a31ca', 8, 'Grilled Chicken', 'A', '5', '2024-09-10 10:19:04', NULL, NULL),
(17, '64053ca6-2389-44bf-a730-5874d38577d8', 8, 'Chicken Wings', 'A', '5', '2024-09-10 10:19:14', NULL, NULL),
(18, '4ee2f28f-3e4c-4bf4-8e2a-d8f364303ff3', 8, 'Chicken Tenders', 'A', '5', '2024-09-10 10:19:23', NULL, NULL),
(19, 'bf288cf5-35a0-4dbc-a15a-8f72a4780177', 9, 'Tacos', 'A', '5', '2024-09-10 10:19:39', NULL, NULL),
(20, 'ca332060-db8d-4506-8018-31394163c34d', 9, 'Burritos', 'A', '5', '2024-09-10 10:19:47', NULL, NULL),
(21, '09276bff-74ec-4cec-aa00-70810305b505', 9, 'Quesadillas', 'A', '5', '2024-09-10 10:19:55', NULL, NULL),
(22, '8cc1ee04-04a3-47a3-b5b1-dd978ba1b4f0', 9, 'Nachos', 'A', '5', '2024-09-10 10:20:09', NULL, NULL),
(23, 'e3f26a64-de7e-405d-a5a0-dc073ab7a80f', 10, 'Pancakes', 'A', '5', '2024-09-10 10:20:17', NULL, NULL),
(24, '8c2be855-0872-48b5-a1a9-e3335ce95a86', 10, 'Waffles', 'A', '5', '2024-09-10 10:20:27', NULL, NULL),
(25, '3cc0079c-ad44-4f6a-b939-2ae7b34676ff', 10, 'Breakfast Sandwiches', 'A', '5', '2024-09-10 10:20:38', NULL, NULL),
(26, '0cf5b045-d112-45f7-ba12-508577fddcad', 10, 'Omelets', 'A', '5', '2024-09-10 10:20:45', NULL, NULL),
(27, '3b718e07-690c-4334-a6bb-44727f6231ca', 11, 'Ice Cream', 'A', '5', '2024-09-10 10:21:03', NULL, NULL),
(28, '895e4927-ff05-4078-8fa7-843486db2e71', 11, 'Cookies', 'A', '5', '2024-09-10 10:21:10', NULL, NULL),
(29, '5334e91e-69f5-419f-b46d-b4c83cd6245b', 11, 'Brownies', 'A', '5', '2024-09-10 10:21:18', NULL, NULL),
(30, 'd0bfb1c6-2dea-438e-a9f2-e12c2ccdf12f', 11, 'Cheesecake', 'A', '5', '2024-09-10 10:21:27', NULL, NULL),
(31, 'ba84eb8b-f004-47e4-8bd4-8a9c90432ee5', 12, 'Soft Drinks', 'A', '5', '2024-09-10 10:21:39', NULL, NULL),
(32, '47bf8b81-9c5d-453d-bc3f-da8d16701ae8', 12, 'Milkshakes', 'A', '5', '2024-09-10 10:21:48', NULL, NULL),
(33, 'bf0d268d-fa56-4d5a-ac90-fa803ad1cc0c', 12, 'Juices', 'A', '5', '2024-09-10 10:21:56', NULL, NULL),
(34, 'e3912c82-3607-4e37-879a-c2cef9b0182f', 12, 'Coffee', 'A', '5', '2024-09-10 10:22:05', NULL, NULL),
(35, '3b03eff5-08d5-4ed2-bd54-395baf71853c', 14, 'Black Forest Cake', 'A', '5', '2024-09-25 14:56:07', NULL, NULL),
(36, '42e7464e-5122-4a64-8bc2-0f08873c52e7', 14, 'Coated Cake', 'A', '5', '2024-09-25 15:24:42', NULL, NULL),
(37, '836021eb-9ee9-4d7d-a825-f9689ae11fbc', 15, 'Milk Bread', 'A', '5', '2024-09-25 15:27:05', NULL, NULL),
(38, '681be255-79e1-444d-858f-6fc834ec9834', 16, 'Fruit Cake', 'A', '5', '2024-09-25 15:29:50', NULL, NULL),
(39, 'cd574cad-70e0-478f-844c-307dd00c3db5', 17, 'Cold Drinks', 'A', '5', '2024-09-25 15:31:44', NULL, NULL),
(40, 'a0377301-10df-4028-a8b3-bd4450a8e70f', 18, 'Pastry 80 gm', 'A', '5', '2024-09-25 15:39:55', NULL, NULL);

--
-- Triggers `sms_prosubcategory`
--
DELIMITER $$
CREATE TRIGGER `after_sms_prosubcategory_delete` AFTER DELETE ON `sms_prosubcategory` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'sms_prosubcategory', OLD.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', cat_id:', OLD.cat_id, ', name:', OLD.name, 
                   ', status:', OLD.status, ', create_by:', OLD.create_by, 
                   ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_prosubcategory_insert` AFTER INSERT ON `sms_prosubcategory` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'sms_prosubcategory', NEW.id, NOW(), 
            CONCAT('uid:', NEW.uid, ', cat_id:', NEW.cat_id, ', name:', NEW.name, 
                   ', status:', NEW.status, ', create_by:', NEW.create_by, 
                   ', create_date:', NEW.create_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_prosubcategory_update` AFTER UPDATE ON `sms_prosubcategory` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'sms_prosubcategory', NEW.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', cat_id:', OLD.cat_id, ', name:', OLD.name, 
                   ', status:', OLD.status, ', create_by:', OLD.create_by, 
                   ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date), 
            CONCAT('uid:', NEW.uid, ', cat_id:', NEW.cat_id, ', name:', NEW.name, 
                   ', status:', NEW.status, ', create_by:', NEW.create_by, 
                   ', create_date:', NEW.create_date, 
                   ', update_by:', NEW.update_by, ', update_date:', NEW.update_date));
END
$$
DELIMITER ;

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
(1, 'cd30ecce-6a94-11ef-aab7-80ce628923b2', 'Testasdadad', 'Deleted', '4', '2024-09-04 06:28:01', '5', '2024-09-25 15:38:42'),
(2, 'cd30ecce-6a94-11ef-aab7-80ce628923b2', 'Test112', 'Deleted', '4', '2024-09-04 06:28:47', '4', '2024-09-04 06:30:36'),
(4, '8d5cfa7b-6950-4a3e-aec9-7723c55554b8', 'asdadaaa', 'Deleted', '5', '2024-09-04 08:26:53', '5', '2024-09-04 08:27:35'),
(5, '67c43655-f0e6-4232-aa84-f336f8f261ea', 'Fast Food', 'A', '5', '2024-09-10 10:24:38', NULL, NULL),
(6, '127ce9c5-9a3f-4182-a877-4ec182fbfdbf', 'adasd', 'Deleted', '5', '2024-09-10 10:27:07', '5', '2024-09-10 10:27:15'),
(10, 'c62ab348-7e0d-4dcb-bf86-b6e549347297', 'Burger', 'A', '5', '2024-09-19 15:37:49', '5', '2024-09-22 13:21:52'),
(11, '8a557ccd-e314-4ded-8c9e-7a6dccd39a30', 'Test', 'Deleted', '5', '2024-09-22 13:16:52', '5', '2024-09-22 13:20:17'),
(12, '50ecc2f6-754a-4165-b776-f69ec78bfd48', 'Test', 'Deleted', '5', '2024-09-22 13:17:09', '5', '2024-09-22 13:20:14'),
(13, '602cfe60-30a4-493c-8bf1-aef1f24b5af3', 'Test', 'Deleted', '5', '2024-09-22 13:18:49', '5', '2024-09-22 13:19:41'),
(14, '0bb5535d-448e-4c95-bbdf-1d6e6fb13b03', 'Sweets', 'A', '15', '2024-09-22 17:54:58', NULL, NULL),
(15, 'b563977e-cb52-4dbd-9b7f-62290e7e50c0', 'Cake', 'A', '5', '2024-09-25 14:55:26', NULL, NULL),
(16, '2a7a4c6f-6fe3-4931-903c-255cc3d1eb09', 'Bread', 'A', '5', '2024-09-25 15:26:41', NULL, NULL),
(17, '670098dd-f1b4-46e8-9d99-6894b748f4b8', 'Cold Drinks', 'A', '5', '2024-09-25 15:31:13', NULL, NULL),
(18, '1924bf5f-8f59-434c-a1dc-e97d350fe85b', 'Pastry', 'A', '5', '2024-09-25 15:39:27', NULL, NULL),
(101, 'P001', 'T-Shirt', 'A', 'admin', '2024-12-01 09:00:00', 'admin', '2024-12-01 09:00:00'),
(102, 'P002', 'Jeans', 'A', 'admin', '2024-12-01 09:10:00', 'admin', '2024-12-01 09:10:00'),
(103, 'P003', 'Jacket', 'A', 'admin', '2024-12-02 14:00:00', 'admin', '2024-12-02 14:00:00');

--
-- Triggers `sms_protype`
--
DELIMITER $$
CREATE TRIGGER `after_sms_protype_delete` AFTER DELETE ON `sms_protype` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'sms_protype', OLD.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', name:', OLD.name, 
                   ', status:', OLD.status, ', create_by:', OLD.create_by, 
                   ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_protype_insert` AFTER INSERT ON `sms_protype` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'sms_protype', NEW.id, NOW(), 
            CONCAT('uid:', NEW.uid, ', name:', NEW.name, 
                   ', status:', NEW.status, ', create_by:', NEW.create_by, 
                   ', create_date:', NEW.create_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_protype_update` AFTER UPDATE ON `sms_protype` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'sms_protype', NEW.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', name:', OLD.name, 
                   ', status:', OLD.status, ', create_by:', OLD.create_by, 
                   ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date), 
            CONCAT('uid:', NEW.uid, ', name:', NEW.name, 
                   ', status:', NEW.status, ', create_by:', NEW.create_by, 
                   ', create_date:', NEW.create_date, 
                   ', update_by:', NEW.update_by, ', update_date:', NEW.update_date));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sms_purchases`
--

CREATE TABLE `sms_purchases` (
  `id` bigint(20) NOT NULL,
  `Product_ID` varchar(50) DEFAULT NULL,
  `pro_type` bigint(20) DEFAULT NULL,
  `Category_ID` varchar(50) DEFAULT NULL,
  `Sub_Category_ID` varchar(50) DEFAULT NULL,
  `Vendor_ID` varchar(50) DEFAULT NULL,
  `Challan_Number` varchar(50) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Purchase_Qty` int(11) DEFAULT NULL,
  `Purchase_Rate` double DEFAULT NULL,
  `Sales_Rate` double DEFAULT NULL,
  `Purchase_Payment_Type` varchar(50) DEFAULT NULL,
  `Purchase_Date` date DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_by` varchar(50) DEFAULT NULL,
  `create_date` varchar(50) DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `update_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_purchases`
--

INSERT INTO `sms_purchases` (`id`, `Product_ID`, `pro_type`, `Category_ID`, `Sub_Category_ID`, `Vendor_ID`, `Challan_Number`, `Unit`, `Color`, `Size`, `Purchase_Qty`, `Purchase_Rate`, `Sales_Rate`, `Purchase_Payment_Type`, `Purchase_Date`, `image`, `status`, `create_by`, `create_date`, `update_by`, `update_date`) VALUES
(3, '12', 101, '2', '1', '1', 'TESTA22', 'KG', '1', '2', 5, 500, 550, 'Cash', '2024-12-10', 'assets/purchase_img/675753c743a2a.jpg', 'A', '5', '2024-12-10 02:32:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_size`
--

CREATE TABLE `sms_size` (
  `id` bigint(10) NOT NULL,
  `pro_type_id` bigint(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_size`
--

INSERT INTO `sms_size` (`id`, `pro_type_id`, `name`, `create_by`, `create_date`, `update_by`, `update_date`, `status`) VALUES
(1, 101, 'Small', 'admin', '2024-12-01 10:00:00', 'admin', '2024-12-01 10:00:00', 'A'),
(2, 101, 'Medium', 'admin', '2024-12-01 10:05:00', 'admin', '2024-12-01 10:05:00', 'A'),
(3, 102, 'Large', 'admin', '2024-12-02 14:00:00', 'admin', '2024-12-02 14:00:00', 'A'),
(4, 102, 'Extra Large', 'admin', '2024-12-02 14:10:00', 'admin', '2024-12-02 14:10:00', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `sms_stock`
--

CREATE TABLE `sms_stock` (
  `id` bigint(20) NOT NULL,
  `Purchase_ID` varchar(50) DEFAULT NULL,
  `Product_ID` varchar(50) DEFAULT NULL,
  `pro_qrcode` varchar(255) NOT NULL,
  `Category_ID` varchar(50) DEFAULT NULL,
  `Sub_Category_ID` varchar(50) DEFAULT NULL,
  `Purchase_Date` varchar(50) DEFAULT NULL,
  `create_by` varchar(50) DEFAULT NULL,
  `create_date` varchar(50) DEFAULT NULL,
  `Invoice_ID` varchar(50) DEFAULT NULL,
  `update_by` varchar(50) DEFAULT NULL,
  `update_date` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_stock`
--

INSERT INTO `sms_stock` (`id`, `Purchase_ID`, `Product_ID`, `pro_qrcode`, `Category_ID`, `Sub_Category_ID`, `Purchase_Date`, `create_by`, `create_date`, `Invoice_ID`, `update_by`, `update_date`, `status`) VALUES
(1, '3', '12', '5d9f5c30-6f26-493f-9697-e8f3422290ef', '2', '1', '2024-12-10 02:32:07', '5', '2024-12-10 02:32:07', NULL, NULL, NULL, 'A'),
(2, '3', '12', '9daf09f3-6b44-4080-a074-8673807b9c72', '2', '1', '2024-12-10 02:32:07', '5', '2024-12-10 02:32:07', NULL, NULL, NULL, 'A'),
(3, '3', '12', 'c4c61340-5448-4358-9991-49f0db176343', '2', '1', '2024-12-10 02:32:07', '5', '2024-12-10 02:32:07', NULL, NULL, NULL, 'A'),
(4, '3', '12', '9524eac5-6c5d-4fcc-ac51-baa1d65e3023', '2', '1', '2024-12-10 02:32:07', '5', '2024-12-10 02:32:07', NULL, NULL, NULL, 'A'),
(5, '3', '12', 'e008ae7c-6b79-4c6d-8006-601d3f5ce756', '2', '1', '2024-12-10 02:32:07', '5', '2024-12-10 02:32:07', NULL, NULL, NULL, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `sms_vendor`
--

CREATE TABLE `sms_vendor` (
  `id` bigint(10) NOT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `vendor_phone` varchar(20) DEFAULT NULL,
  `vendor_email` varchar(50) DEFAULT NULL,
  `vendor_photo` varchar(255) DEFAULT NULL,
  `vendor_address` varchar(255) DEFAULT NULL,
  `create_by` varchar(20) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms_vendor`
--

INSERT INTO `sms_vendor` (`id`, `vendor_name`, `vendor_phone`, `vendor_email`, `vendor_photo`, `vendor_address`, `create_by`, `create_date`, `update_by`, `update_date`, `status`) VALUES
(1, 'Tech Solutions Ltd.', '+1-800-1234567', 'contact@techsolutions.com', 'vendor_photo_1.jpg', '123 Tech Lane, Silicon Valley, CA, USA', 'admin', '2024-11-20 10:00:00', 'admin', 'info updated', 'A'),
(2, 'Green Earth Supplies', '+1-800-2345678', 'info@greenearth.com', 'vendor_photo_2.jpg', '45 Eco Road, Green City, TX, USA', 'admin', '2024-11-22 11:15:00', 'admin', 'no update', 'A'),
(3, 'Gourmet Foods Inc.', '+1-800-3456789', 'support@gourmetfoods.com', 'vendor_photo_3.jpg', '789 Flavor St, Gourmet Town, NY, USA', 'admin', '2024-12-01 14:00:00', 'admin', 'info updated', 'A'),
(4, 'Fashion Apparel Co.', '+1-800-4567890', 'sales@fashionapparel.com', 'vendor_photo_4.jpg', '101 Fashion Ave, New York, NY, USA', 'admin', '2024-12-03 16:30:00', 'admin', 'no update', 'A'),
(5, 'Furniture Makers LLC', '+1-800-5678901', 'contact@furnituremakers.com', 'vendor_photo_5.jpg', '200 Wood Rd, Oak City, IL, USA', 'admin', '2024-12-05 09:45:00', 'admin', 'info updated', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `sms_web_sidebar_menu`
--

CREATE TABLE `sms_web_sidebar_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(36) DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `is_collapsed` tinyint(1) DEFAULT 0,
  `is_heading` tinyint(1) DEFAULT 0,
  `permission_id` bigint(20) DEFAULT 0,
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
(34, '69beda36-1a37-471e-9ad9-511779a56361', NULL, 'Dashboard', 'bi bi-grid', 'dashboard', 1, 0, 0, 0, 'A', '5', '2024-09-19 14:42:08', NULL, NULL),
(35, '1cfbe726-d197-4dc3-8d5e-10b2291cfc90', NULL, 'POS', 'bi bi-cart4', 'POS', 2, 0, 0, 0, 'A', '5', '2024-09-19 14:42:37', NULL, NULL),
(36, '424d2543-80c9-4d37-bd04-5e5620b64ecb', NULL, 'User Config', 'bi bi-people-fill', '#', 4, 1, 0, 0, 'A', '5', '2024-09-19 14:43:25', NULL, NULL),
(37, '13934ba2-48b1-4be0-bb70-2f41f0020156', 36, 'Roles', 'bi', 'Roles', 1, 1, 0, 0, 'A', '5', '2024-09-19 14:44:49', NULL, NULL),
(38, '38202521-06ef-4910-9dca-89a31a69f395', 36, 'Permission', 'bi', 'Permission', 2, 1, 0, 0, 'A', '5', '2024-09-19 14:45:11', NULL, NULL),
(39, '4cb3a16e-fcff-4c13-a3eb-e7ec2dfafb94', 36, 'User', 'bi', 'User', 3, 1, 0, 0, 'A', '5', '2024-09-19 14:46:20', NULL, NULL),
(40, '79c0daf4-9e94-40c0-957e-f2db89f549bb', 36, 'Branch', 'bi', 'BranchInfo', 4, 1, 0, 0, 'A', '5', '2024-09-19 14:46:50', NULL, NULL),
(41, 'bfb88df8-73b1-4413-9ed5-849d9ebd7546', NULL, 'Product Setup', 'bi bi-folder-check', '#', 5, 0, 0, 0, 'A', '5', '2024-09-19 14:51:14', NULL, NULL),
(42, '998e0955-494c-4b02-8946-9aa8d007346a', NULL, 'Setup &amp;amp; Config', 'bi', '#', 3, 0, 1, 0, 'A', '5', '2024-09-19 14:51:46', NULL, NULL),
(43, '4ab61b85-9a26-4cc1-8028-68b23b53d28d', 41, 'Pro. Type', 'bi', 'ProType', 1, 1, 0, 0, 'A', '5', '2024-09-19 14:53:40', NULL, NULL),
(44, '1de9e3fe-6ed5-44c4-88d4-5e69504c013c', 41, 'Pro. Brand', 'bi', 'ProBrand', 2, 1, 0, 0, 'A', '5', '2024-09-19 14:54:05', NULL, NULL),
(45, '8179599e-678b-411d-b482-1c83d9ef6871', 41, 'Pro. Category', 'bi', 'ProCategory', 3, 1, 0, 0, 'A', '5', '2024-09-19 14:54:22', NULL, NULL),
(46, '50fbc35e-e020-49b0-92ce-c29dc5595fd9', 41, 'Pro. Sub-Category', 'bi', 'ProSubCategory', 4, 1, 0, 0, 'A', '5', '2024-09-19 14:54:39', NULL, NULL),
(47, '7f4c27ac-25c8-41bd-8f4c-54f38f4cb8b5', 41, 'Pro. Info', 'bi', 'ProInfo', 5, 1, 0, 0, 'A', '5', '2024-09-19 14:55:03', NULL, NULL),
(48, 'baedc4ac-2d28-4c07-8cd8-b27946be351e', NULL, 'Settings', 'bi bi-columns-gap', '#', 6, 0, 0, 0, 'A', '5', '2024-09-19 14:57:48', '5', '2024-09-19 15:16:24'),
(49, 'a093fa14-b8c1-4623-8945-7104391f9057', 48, 'Side Nav Menu', 'bi', 'SidebarNav', 1, 1, 0, 0, 'A', '5', '2024-09-19 14:58:30', NULL, NULL),
(50, '251beef4-be0c-4cb3-b1cf-01282c909c6b', 48, 'Web Brand', 'bi', 'BrandName', 2, 1, 0, 0, 'A', '5', '2024-09-19 14:58:46', '5', '2024-09-22 15:45:45'),
(51, '1ec03d54-0eba-4ca3-a839-b57306c943ab', NULL, 'Report Section', 'bi', '#', 7, 0, 1, 0, 'A', '5', '2024-09-19 15:00:11', NULL, NULL),
(52, '30eccd1a-acc1-4638-9297-6b0e88bc00be', NULL, 'Reports', 'bi bi-clipboard-data', '#', 8, 0, 0, 0, 'A', '5', '2024-09-19 15:01:47', NULL, NULL),
(54, 'deaa910b-6571-4e23-ac6f-fc315365893a', 52, 'Branch Report', 'bi', 'report', 2, 1, 0, 0, 'A', '5', '2024-09-19 15:03:21', NULL, NULL),
(55, 'f9277729-b841-4e49-b2a5-5cd610aa14b1', 52, 'Product Report', 'bi', 'product-report', 3, 1, 0, 0, 'A', '5', '2024-09-19 15:03:33', NULL, NULL),
(56, '796847ac-8b89-4507-b950-e14b48659fc8', 52, 'Sale Report', 'bi', 'sales-report', 4, 1, 0, 0, 'A', '5', '2024-09-19 15:03:38', '5', '2024-09-19 17:12:24'),
(58, 'f2926378-d129-49b5-9e20-5bac6f4c40ac', 52, 'Due Report', 'bi', 'due-report', 6, 1, 0, 0, 'A', '5', '2024-09-19 15:03:57', '5', '2024-09-19 17:33:10'),
(59, '379a79b7-46ce-46e1-a56c-48be96d3feb3', 52, 'Top Selling Products', 'bi', 'top-selling-products', 7, 1, 0, 0, 'A', '5', '2024-09-19 15:04:05', '5', '2024-09-19 17:12:06'),
(60, 'b3a90318-93b8-4731-af6d-417cd78e0de2', 52, 'Best Customer', 'bi', 'top-customers', 8, 1, 0, 0, 'A', '5', '2024-09-19 15:04:12', '5', '2024-09-19 17:10:39'),
(61, 'f99fd36f-169a-4bc3-a2e0-555afbf6db9f', 52, 'Customer Info', 'bi', 'customer-report', 9, 1, 0, 0, 'A', '5', '2024-09-19 15:04:19', NULL, NULL),
(62, '66020a9e-c7b4-43f7-9421-87d1cfd0eb53', 52, 'Sale Info', 'bi', 'sales-info-report', 10, 1, 0, 0, 'A', '5', '2024-09-19 15:04:26', '5', '2024-09-19 17:13:50'),
(63, '3491d463-2a1e-4ebc-9244-80b65eb0814f', NULL, 'Inventory', 'bi bi-people-fill', '#', 7, 1, 0, 0, 'A', '5', '2024-12-09 18:59:18', NULL, NULL),
(64, '7e2a4493-d304-488e-aeb5-675db987d4cb', 63, 'Purchase', 'bi', 'Purchase', 1, 1, 0, 0, 'A', '5', '2024-12-09 19:00:13', '5', '2024-12-09 19:13:49');

--
-- Triggers `sms_web_sidebar_menu`
--
DELIMITER $$
CREATE TRIGGER `after_sms_web_sidebar_menu_delete` AFTER DELETE ON `sms_web_sidebar_menu` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'sms_web_sidebar_menu', OLD.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', parent_id:', OLD.parent_id, ', name:', OLD.name, 
                   ', icon:', OLD.icon, ', url:', OLD.url, ', order:', OLD.order, 
                   ', is_collapsed:', OLD.is_collapsed, ', is_heading:', OLD.is_heading, 
                   ', permission_id:', OLD.permission_id, ', status:', OLD.status, 
                   ', create_by:', OLD.create_by, ', create_date:', OLD.create_date, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_web_sidebar_menu_insert` AFTER INSERT ON `sms_web_sidebar_menu` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'sms_web_sidebar_menu', NEW.id, NOW(), 
            CONCAT('uid:', NEW.uid, ', parent_id:', NEW.parent_id, ', name:', NEW.name, 
                   ', icon:', NEW.icon, ', url:', NEW.url, ', order:', NEW.order, 
                   ', is_collapsed:', NEW.is_collapsed, ', is_heading:', NEW.is_heading, 
                   ', permission_id:', NEW.permission_id, ', status:', NEW.status, 
                   ', create_by:', NEW.create_by, ', create_date:', NEW.create_date));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_sms_web_sidebar_menu_update` AFTER UPDATE ON `sms_web_sidebar_menu` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'sms_web_sidebar_menu', NEW.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', parent_id:', OLD.parent_id, ', name:', OLD.name, 
                   ', icon:', OLD.icon, ', url:', OLD.url, ', order:', OLD.order, 
                   ', is_collapsed:', OLD.is_collapsed, ', is_heading:', OLD.is_heading, 
                   ', permission_id:', OLD.permission_id, ', status:', OLD.status, 
                   ', update_by:', OLD.update_by, ', update_date:', OLD.update_date), 
            CONCAT('uid:', NEW.uid, ', parent_id:', NEW.parent_id, ', name:', NEW.name, 
                   ', icon:', NEW.icon, ', url:', NEW.url, ', order:', NEW.order, 
                   ', is_collapsed:', NEW.is_collapsed, ', is_heading:', NEW.is_heading, 
                   ', permission_id:', NEW.permission_id, ', status:', NEW.status, 
                   ', update_by:', NEW.update_by, ', update_date:', NEW.update_date));
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(36) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `profile_image` varchar(100) DEFAULT NULL,
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

INSERT INTO `users` (`id`, `uid`, `name`, `phone`, `email`, `address`, `status`, `profile_image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `latitude`, `longitude`) VALUES
(5, '4d33c03d-a283-4bc3-8322-4d5e7fa168de', 'Super1 Admin', '01684924439', 'superadmin@gmail.com', '232/1,South, Paik-Para,Mirpur,Dhaka', 'A', 'assets/profile_img/66f13d355f119.png', '2024-09-04 07:04:32', '$2y$10$kvKVOhFUF4ZZHlHfGhtgHe9muYMrgux4F5Ok0o5dql2y0UHdMElBm', NULL, '2024-09-04 07:04:32', '2025-02-15 11:19:31', '23.7857496', '90.3613519'),
(10, 'a535c002-8e92-4157-a1fa-4216013d5bc0', 'Branch 1 Manager', '01222222', 'branch1manager@gmail.com', 'Mirpur-1,Dhaka,Bangladesh', NULL, 'assets/profile_img/67b07a565cfa6.jpg', NULL, '$2y$10$72mKMMGEbjM/mGE.3jn0yOYWjzbrxhbNM2EvwkhKlEFSa2lN46Gcu', NULL, '2024-09-19 10:07:25', '2025-02-15 11:34:01', '23.7857558', '90.3613491'),
(15, 'ee3b36b9-dd00-402f-88ba-7ce49edcf404', 'Dhali Abir', '01684924439', 'dhaliabir404@gmail.com', 'Mirpur-1,Dhaka,Bangladesh', NULL, 'assets/profile_img/66f13d06cd000.png', NULL, '$2y$10$72mKMMGEbjM/mGE.3jn0yOYWjzbrxhbNM2EvwkhKlEFSa2lN46Gcu', NULL, '2024-09-22 11:36:18', '2025-02-15 11:26:09', '23.7857672', '90.3613357'),
(17, '6fe758f7-fd7c-4ad3-a8e9-298381e9961f', 'Arsenio Mercer', '7456456456', 'luroxylar@mailinator.com', 'Minima minima aut cu', NULL, NULL, NULL, '$2y$10$72mKMMGEbjM/mGE.3jn0yOYWjzbrxhbNM2EvwkhKlEFSa2lN46Gcu', NULL, '2025-02-15 11:30:47', '2025-02-15 11:36:52', '23.785758', '90.3613488');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `after_users_delete` AFTER DELETE ON `users` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues)
    VALUES ('DELETE', 'users', OLD.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', name:', OLD.name, ', address:', OLD.address, 
                   ', phone:', OLD.phone, ', email:', OLD.email, 
                   ', status:', OLD.status, ', email_verified_at:', OLD.email_verified_at,
                   ', created_at:', OLD.created_at, ', latitude:', OLD.latitude, 
                   ', longitude:', OLD.longitude));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_users_insert` AFTER INSERT ON `users` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, NewValues)
    VALUES ('CREATE', 'users', NEW.id, NOW(), 
            CONCAT('uid:', NEW.uid, ', name:', NEW.name, ', address:', NEW.address, 
                   ', phone:', NEW.phone, ', email:', NEW.email, 
                   ', status:', NEW.status, ', email_verified_at:', NEW.email_verified_at,
                   ', created_at:', NEW.created_at, ', latitude:', NEW.latitude, 
                   ', longitude:', NEW.longitude));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_users_update` AFTER UPDATE ON `users` FOR EACH ROW BEGIN
    INSERT INTO operationlogs (OperationType, TableName, RecordID, ChangeDate, OldValues, NewValues)
    VALUES ('UPDATE', 'users', NEW.id, NOW(), 
            CONCAT('uid:', OLD.uid, ', name:', OLD.name, ', address:', OLD.address, 
                   ', phone:', OLD.phone, ', email:', OLD.email, 
                   ', status:', OLD.status, ', email_verified_at:', OLD.email_verified_at,
                   ', updated_at:', OLD.updated_at, ', latitude:', OLD.latitude, 
                   ', longitude:', OLD.longitude), 
            CONCAT('uid:', NEW.uid, ', name:', NEW.name, ', address:', NEW.address, 
                   ', phone:', NEW.phone, ', email:', NEW.email, 
                   ', status:', NEW.status, ', email_verified_at:', NEW.email_verified_at,
                   ', updated_at:', NEW.updated_at, ', latitude:', NEW.latitude, 
                   ', longitude:', NEW.longitude));
END
$$
DELIMITER ;

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
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `operationlogs`
--
ALTER TABLE `operationlogs`
  ADD PRIMARY KEY (`LogID`);

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
-- Indexes for table `role_sidebar_menu`
--
ALTER TABLE `role_sidebar_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `sidebar_nav_id` (`sidebar_nav_id`);

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
-- Indexes for table `sms_customers`
--
ALTER TABLE `sms_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `sms_orders`
--
ALTER TABLE `sms_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sms_orders_order_number_unique` (`order_number`);

--
-- Indexes for table `sms_order_dtl`
--
ALTER TABLE `sms_order_dtl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_order_dtl_order_id_foreign` (`order_id`);

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
-- Indexes for table `sms_purchases`
--
ALTER TABLE `sms_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_stock`
--
ALTER TABLE `sms_stock`
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
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `operationlogs`
--
ALTER TABLE `operationlogs`
  MODIFY `LogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `role_sidebar_menu`
--
ALTER TABLE `role_sidebar_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `sms_branch_info`
--
ALTER TABLE `sms_branch_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sms_brand_info`
--
ALTER TABLE `sms_brand_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms_customers`
--
ALTER TABLE `sms_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sms_orders`
--
ALTER TABLE `sms_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `sms_order_dtl`
--
ALTER TABLE `sms_order_dtl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sms_probrand`
--
ALTER TABLE `sms_probrand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sms_procategory`
--
ALTER TABLE `sms_procategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sms_proinfo`
--
ALTER TABLE `sms_proinfo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sms_prosubcategory`
--
ALTER TABLE `sms_prosubcategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `sms_protype`
--
ALTER TABLE `sms_protype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `sms_purchases`
--
ALTER TABLE `sms_purchases`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms_stock`
--
ALTER TABLE `sms_stock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sms_web_sidebar_menu`
--
ALTER TABLE `sms_web_sidebar_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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

--
-- Constraints for table `role_sidebar_menu`
--
ALTER TABLE `role_sidebar_menu`
  ADD CONSTRAINT `role_sidebar_menu_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_sidebar_menu_ibfk_2` FOREIGN KEY (`sidebar_nav_id`) REFERENCES `sms_web_sidebar_menu` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sms_order_dtl`
--
ALTER TABLE `sms_order_dtl`
  ADD CONSTRAINT `sms_order_dtl_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `sms_orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
