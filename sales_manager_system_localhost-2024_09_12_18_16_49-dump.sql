-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: sales-manager-system
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `create_by` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_phone_unique` (`phone`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'CUST001','John Doe','1234567890','john.doe@example.com','123 Elm Street, Springfield','admin','2024-09-11',NULL,NULL),(2,'CUST002','Jane Smith','0987654321','jane.smith@example.com','456 Oak Avenue, Springfield','admin','2024-09-11',NULL,NULL),(3,'CUST003','Alice Johnson','1122334455','alice.johnson@example.com','789 Pine Road, Springfield','admin','2024-09-11',NULL,NULL),(4,'CUST004','Bob Brown','5566778899','bob.brown@example.com','101 Maple Street, Springfield','admin','2024-09-11',NULL,NULL),(5,'CUST005','Carol White','6677889900','carol.white@example.com','202 Birch Lane, Springfield','admin','2024-09-11',NULL,NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_09_01_105725_create_permission_tables',1),(6,'2024_09_11_105900_create_sms_orders_table',2),(7,'2024_09_11_105930_create_sms_order_dtl_table',3),(9,'2024_09_11_122746_create_customers_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (5,'App\\Models\\User',5);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (21,'view_sidemenu','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(22,'create_sidemenu','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(23,'update_sidemenu','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(24,'delete_sidemenu','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(25,'view_brand','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(26,'create_brand','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(27,'update_brand','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(28,'delete_brand','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(29,'view_branch','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(30,'create_branch','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(31,'update_branch','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(32,'delete_branch','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(33,'view_user','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(34,'create_user','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(35,'update_user','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(36,'delete_user','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(37,'view_roles','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(38,'create_roles','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(39,'update_roles','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(40,'delete_roles','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(41,'view_permission','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(42,'create_permission','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(43,'update_permission','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(44,'delete_permission','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(45,'view_pro_type','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(46,'create_pro_type','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(47,'update_pro_type','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(48,'delete_pro_type','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(49,'view_pro_brand','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(50,'create_pro_brand','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(51,'update_pro_brand','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(52,'delete_pro_brand','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(53,'view_pro_category','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(54,'create_pro_category','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(55,'update_pro_category','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(56,'delete_pro_category','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(57,'view_pro_sub_category','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(58,'create_pro_sub_category','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(59,'update_pro_sub_category','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(60,'delete_pro_sub_category','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(61,'view_pro_info','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(62,'create_pro_info','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(63,'update_pro_info','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(64,'delete_pro_info','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(65,'view_dashboard','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(66,'create_dashboard','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(67,'update_dashboard','web','2024-09-03 02:27:09','2024-09-03 02:27:09'),(68,'delete_dashboard','web','2024-09-03 02:27:09','2024-09-03 02:27:09');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (21,5),(22,5),(23,5),(24,5),(25,5),(26,5),(27,5),(28,5),(29,5),(30,5),(31,5),(32,5),(33,5),(34,5),(35,5),(36,5),(37,5),(38,5),(39,5),(40,5),(41,5),(42,5),(43,5),(44,5),(45,4),(45,5),(46,4),(46,5),(47,4),(47,5),(48,4),(48,5),(49,4),(49,5),(50,4),(50,5),(51,4),(51,5),(52,5),(53,4),(53,5),(54,4),(54,5),(55,4),(55,5),(56,4),(56,5),(57,4),(57,5),(58,4),(58,5),(59,4),(59,5),(60,4),(60,5),(61,4),(61,5),(62,4),(62,5),(63,4),(63,5),(64,4),(64,5),(65,4),(65,5),(66,4),(66,5),(67,4),(67,5),(68,4),(68,5);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (4,'Admin','web','2024-09-04 01:06:53','2024-09-04 01:06:53'),(5,'Root','web','2024-09-09 02:21:14','2024-09-09 02:21:14');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidebar_nav_permissions`
--

DROP TABLE IF EXISTS `sidebar_nav_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sidebar_nav_permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sidebar_nav_id` bigint(20) unsigned NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidebar_nav_permissions`
--

LOCK TABLES `sidebar_nav_permissions` WRITE;
/*!40000 ALTER TABLE `sidebar_nav_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sidebar_nav_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_branch_info`
--

DROP TABLE IF EXISTS `sms_branch_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_branch_info` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_branch_info`
--

LOCK TABLES `sms_branch_info` WRITE;
/*!40000 ALTER TABLE `sms_branch_info` DISABLE KEYS */;
INSERT INTO `sms_branch_info` VALUES (3,'54897f17-ea63-4bb0-bb8c-81d541c005a2','Branch1','01236987451','branch1@gmail.com','Dhaka','A','4','2024-09-04 06:58:55','5','2024-09-09 06:54:37'),(6,'02877d04-f23d-4c48-9057-fb7ec40ed6be','Branch 2','014782369','branch2@gmail.com','DHaka','A','5','2024-09-04 08:23:11','5','2024-09-09 06:55:09');
/*!40000 ALTER TABLE `sms_branch_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_brand_info`
--

DROP TABLE IF EXISTS `sms_brand_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_brand_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` varchar(36) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `details` varchar(150) DEFAULT NULL,
  `logo` varchar(150) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_brand_info`
--

LOCK TABLES `sms_brand_info` WRITE;
/*!40000 ALTER TABLE `sms_brand_info` DISABLE KEYS */;
INSERT INTO `sms_brand_info` VALUES (1,'cd30ecce-6a94-11ef-aab7-80ce628923b2','SOC Brand','SOC Brand','assets/logo/img/66d5a62adda0a.png','A','1010','2024-09-02 11:48:17','5','2024-09-04 08:15:03');
/*!40000 ALTER TABLE `sms_brand_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_customers`
--

DROP TABLE IF EXISTS `sms_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `create_by` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sms_customers_phone_unique` (`phone`),
  UNIQUE KEY `sms_customers_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_customers`
--

LOCK TABLES `sms_customers` WRITE;
/*!40000 ALTER TABLE `sms_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_order_dtl`
--

DROP TABLE IF EXISTS `sms_order_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_order_dtl` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `pro_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `special_request` text DEFAULT NULL,
  `create_by` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sms_order_dtl_order_id_foreign` (`order_id`),
  CONSTRAINT `sms_order_dtl_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `sms_orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_order_dtl`
--

LOCK TABLES `sms_order_dtl` WRITE;
/*!40000 ALTER TABLE `sms_order_dtl` DISABLE KEYS */;
INSERT INTO `sms_order_dtl` VALUES (1,21,13,1,200.00,200.00,'','5','2024-09-12 08:07:47',NULL,NULL),(2,32,13,1,200.00,200.00,'','5','2024-09-12 08:23:46',NULL,NULL),(3,34,13,1,200.00,200.00,'','5','2024-09-12 08:32:26',NULL,NULL),(4,40,13,1,200.00,200.00,'','5','2024-09-12 08:51:36',NULL,NULL),(5,41,12,2,200.00,400.00,'','5','2024-09-12 11:58:15',NULL,NULL);
/*!40000 ALTER TABLE `sms_order_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_orders`
--

DROP TABLE IF EXISTS `sms_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_number` varchar(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `cust_id` bigint(20) unsigned DEFAULT NULL,
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
  `update_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sms_orders_order_number_unique` (`order_number`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_orders`
--

LOCK TABLES `sms_orders` WRITE;
/*!40000 ALTER TABLE `sms_orders` DISABLE KEYS */;
INSERT INTO `sms_orders` VALUES (21,'ORD-1726128467','2024-09-12 02:07:47',90,200.00,20.00,20.00,500.00,-300.00,'undefined','undefined','undefined',NULL,'5','2024-09-12 08:07:47',NULL,NULL),(32,'ORD-1726129426','2024-09-12 02:23:46',12,210.00,20.00,10.00,300.00,-90.00,'undefined','undefined','undefined',NULL,'5','2024-09-12 08:23:46',NULL,NULL),(34,'ORD-1726129946','2024-09-12 02:32:26',33,210.00,20.00,10.00,300.00,-90.00,'undefined','undefined','undefined',NULL,'5','2024-09-12 08:32:26',NULL,NULL),(40,'ORD-1726131096','2024-09-12 02:51:36',22,210.00,20.00,10.00,300.00,-90.00,'A','A','Cash',NULL,'5','2024-09-12 08:51:36',NULL,NULL),(41,'ORD-1726142295','2024-09-12 05:58:15',21,430.00,40.00,10.00,500.00,-70.00,'A','A','Cash',NULL,'5','2024-09-12 11:58:15',NULL,NULL);
/*!40000 ALTER TABLE `sms_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_probrand`
--

DROP TABLE IF EXISTS `sms_probrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_probrand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(36) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_probrand`
--

LOCK TABLES `sms_probrand` WRITE;
/*!40000 ALTER TABLE `sms_probrand` DISABLE KEYS */;
INSERT INTO `sms_probrand` VALUES (1,'cd30ecce-6a94-11ef-aab7-80ce628923b2','Foodi','A','4','2024-09-03 11:18:52',NULL,NULL),(2,'cd30ecce-6a94-11ef-aab7-80ce628923b2','Brand11','I','4','2024-09-03 11:38:28','4','2024-09-03 11:39:23'),(4,'f15d8a19-0725-484a-826e-2e124cd9fce3','adadsss','Deleted','5','2024-09-04 08:24:57','5','2024-09-04 08:26:04');
/*!40000 ALTER TABLE `sms_probrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_procategory`
--

DROP TABLE IF EXISTS `sms_procategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_procategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(36) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_procategory`
--

LOCK TABLES `sms_procategory` WRITE;
/*!40000 ALTER TABLE `sms_procategory` DISABLE KEYS */;
INSERT INTO `sms_procategory` VALUES (2,'9f34d9fd-aeaa-42dc-94ce-720912f090da','Burgers','A','4','2024-09-04 06:47:01','5','2024-09-10 10:14:33'),(3,'5a024d2b-e170-46be-b990-df4154f164c5','T4est','Deleted','4','2024-09-04 06:47:15','4','2024-09-04 06:50:27'),(4,'76da6b4f-142c-43ef-9ef4-0cdc28413712','aa','Deleted','5','2024-09-04 08:28:23','5','2024-09-04 08:28:32'),(5,'c44fe2d9-eeca-434c-9d0e-0fd8d11bb3e9','Pizza','A','5','2024-09-04 08:44:22','5','2024-09-10 10:17:38'),(6,'48dbf062-fe3e-4a8e-bfff-c504f40e8b6f','Sandwiches','A','5','2024-09-10 10:11:52','5','2024-09-10 10:15:13'),(7,'ed85a28b-1a14-49e7-8fd2-26a96674ab39','ProCategoryaaa','Deleted','5','2024-09-10 10:11:52','5','2024-09-10 10:12:02'),(8,'74127512-b272-421a-a816-06b07605b531','Chicken','A','5','2024-09-10 10:15:28',NULL,NULL),(9,'b242aeb4-39d1-45a6-acaf-e6becef936c6','Mexican','A','5','2024-09-10 10:15:34',NULL,NULL),(10,'e8de690a-65a4-4701-af67-46a9e1bffd38','Breakfast','A','5','2024-09-10 10:15:41',NULL,NULL),(11,'4a11b88c-aebe-4a13-8b79-cf85e4a165d1','Desserts','A','5','2024-09-10 10:16:01',NULL,NULL),(12,'10267bb1-5341-4257-bd59-5edbc11bea84','Beverages','A','5','2024-09-10 10:16:07',NULL,NULL);
/*!40000 ALTER TABLE `sms_procategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_proinfo`
--

DROP TABLE IF EXISTS `sms_proinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_proinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_proinfo`
--

LOCK TABLES `sms_proinfo` WRITE;
/*!40000 ALTER TABLE `sms_proinfo` DISABLE KEYS */;
INSERT INTO `sms_proinfo` VALUES (7,'ff81d1ff-a21d-41ca-82e8-4195ea778df7',1,5,3,1,'Ut voluptatem lorem','Dolor ea laborum Ad','Dolores quo fugiat','162','989','assets/product_img/66d843ce7f08c.jpg','assets/product_img/66d843ce7f72c.jpg','assets/product_img/66d843ce7fd68.jpg','assets/product_img/66d843ce803be.png','Deleted','5','2024-09-04 11:25:26','5','2024-09-10 10:29:35'),(8,'a1ef337d-3b82-42bc-b779-e1686ce06b11',1,2,1,1,'Laboriosam ullam ul','Dolore dolor ullamco','Et nihil laboriosam','645','11','assets/product_img/66d8442ab1367.png','','','','Deleted','5','2024-09-04 11:27:38','5','2024-09-04 11:28:40'),(9,'102445c8-0c03-4bde-883b-14886eb0f88d',1,2,1,1,'Ut minim cillum veli','Enim odit esse recus','Maxime inventore aut','786','669','assets/product_img/66d8445b444da.jpg','','','','Deleted','5','2024-09-04 11:28:27','5','2024-09-10 10:29:42'),(10,'0404c6be-c111-410a-a827-5dfe44ea1254',1,2,3,1,'Vel illum porro vel','Cum qui Nam autem ni','&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;asasas&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;','714','392','assets/product_img/66de8f168dad2.jpg','','','','Deleted','5','2024-09-09 06:00:59','5','2024-09-10 10:29:45'),(11,'77ee3781-4e9b-46c2-930e-cfcd374c64ba',1,5,1,1,'Incididunt repellend','Quia sint quia qui s','&amp;lt;p&amp;gt;&amp;lt;strong&amp;gt;ABir&amp;lt;/strong&amp;gt;&amp;lt;/p&amp;gt;&amp;lt;ul&amp;gt;&amp;lt;li&amp;gt;&amp;lt;strong&amp;gt;adad&amp;lt;/strong&amp;gt;&amp;lt;/li&amp;gt;&amp;lt;li&amp;gt;&amp;lt;strong&amp;gt;added&amp;lt;/strong&amp;gt;&amp;lt;/li&amp;gt;&amp;lt;/ul&amp;gt;&amp;lt;figure class=&amp;quot;image&amp;quot;&amp;gt;&amp;lt;img src=&amp;quot;https://bootstrapmade.com/demo/templates/Yummy/assets/img/menu/menu-item-2.png&amp;quot;&amp;gt;&amp;lt;/figure&amp;gt;','555','360','assets/product_img/66ded76e376b7.jpg','','','','Deleted','5','2024-09-09 11:09:35','5','2024-09-10 10:29:48'),(12,'3bbb1e29-e7ac-49b7-bf02-d49ab6afc053',5,2,1,1,'Beef Burger','Sink your teeth into a succulent beef patty, skillfully infused with our secret blend of herbs and sauces, grilled to perfection.','&amp;lt;p&amp;gt;Prepare to indulge in a mouthwatering feast at our esteemed Best Restaurant in Dhaka with our delectable Beef Burger Meal. Sink your teeth into a succulent beef patty, skillfully infused with our secret blend of herbs and sauces, grilled to perfection. Embrace the delightful toppings of tangy pickles, caramelized onions, sautéed mushrooms, ripe tomato, and a slice of melty cheddar cheese, all nestled between soft buns. Accompanied by a generous portion of golden French fries and our tantalizing secret dip.&amp;lt;/p&amp;gt;','464','450','assets/product_img/66e0213f2f492.webp','','','','A','5','2024-09-10 10:36:47',NULL,NULL),(13,'d9cc22a2-55f4-4055-ae27-ecfeab4c5307',5,2,5,1,'Cheesy Smash Burger','Cheesy Smash Burger','&amp;lt;p&amp;gt;Cheesy Smash Burger&amp;lt;/p&amp;gt;','490','490','assets/product_img/66e0228a29953.jpg','','','','A','5','2024-09-10 10:42:18',NULL,NULL),(14,'21d1164f-9d2a-409d-994b-b2a500046f85',5,2,5,1,'Cheese &amp;amp; Shroom Smash Burger','Cheese &amp;amp; Shroom Smash Burger','&amp;lt;p&amp;gt;Cheese &amp;amp;amp; Shroom Smash Burger&amp;lt;/p&amp;gt;','350','350','assets/product_img/66e0230f91a8c.jpg','','','','A','5','2024-09-10 10:44:31',NULL,NULL);
/*!40000 ALTER TABLE `sms_proinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_prosubcategory`
--

DROP TABLE IF EXISTS `sms_prosubcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_prosubcategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(36) DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_prosubcategory`
--

LOCK TABLES `sms_prosubcategory` WRITE;
/*!40000 ALTER TABLE `sms_prosubcategory` DISABLE KEYS */;
INSERT INTO `sms_prosubcategory` VALUES (1,'b03337e0-0d69-4e64-acb8-9e9cc8c07210',2,'Beef Burgers','A','5','2024-09-04 08:46:44','5','2024-09-10 10:16:38'),(2,'b0b90be6-d367-40e0-9a22-fab4fe224f20',2,'AAA1','Deleted','5','2024-09-04 08:47:01','5','2024-09-04 08:47:20'),(3,'37d4bdc5-a1dc-4a8b-b8a2-060f15d32aec',2,'Chicken Burgers','A','5','2024-09-04 08:47:11','5','2024-09-10 10:16:50'),(4,'a3f193e7-786f-4238-be71-3c4d6494f23d',2,'Veggie Burgers','A','5','2024-09-10 10:17:01',NULL,NULL),(5,'371fd788-abaf-4d4f-b433-ed7251bde894',2,'Specialty Burgers','A','5','2024-09-10 10:17:09',NULL,NULL),(6,'92820e67-2f78-4507-8485-ad804c9be375',5,'Thin Crust','A','5','2024-09-10 10:17:48',NULL,NULL),(7,'38ef30d1-24c4-4fde-a3a5-88cc0b1278a5',5,'Thin Crust','A','5','2024-09-10 10:17:49',NULL,NULL),(8,'9584f1aa-dda8-4c27-8002-1cbcbfa5c0c5',5,'Deep Dish','A','5','2024-09-10 10:17:57',NULL,NULL),(9,'2de1bd05-6dc4-42b6-8ed0-cc0a9ce298b7',5,'Stuffed Crust','A','5','2024-09-10 10:18:06',NULL,NULL),(10,'3037c4b8-b67d-4ad1-97e7-bc56bd280c51',5,'Gluten-Free','A','5','2024-09-10 10:18:13',NULL,NULL),(11,'0266d0e9-5a44-48f2-9226-797540d31165',6,'Submarine Sandwiches','A','5','2024-09-10 10:18:23',NULL,NULL),(12,'01f8ecb1-b3cc-4fe9-a0d1-835b3230bbd2',6,'Panini','A','5','2024-09-10 10:18:30',NULL,NULL),(13,'9f036893-a58c-4730-b7d1-abd3e87320a2',6,'Club Sandwiches','A','5','2024-09-10 10:18:38',NULL,NULL),(14,'41527600-a55b-45ee-b500-32fee595ac06',6,'Wraps','A','5','2024-09-10 10:18:47',NULL,NULL),(15,'e97260a9-9c32-4d88-a709-6e8589e76886',8,'Fried Chicken','A','5','2024-09-10 10:18:57',NULL,NULL),(16,'36d896fa-1668-46b7-a824-5c00582a31ca',8,'Grilled Chicken','A','5','2024-09-10 10:19:04',NULL,NULL),(17,'64053ca6-2389-44bf-a730-5874d38577d8',8,'Chicken Wings','A','5','2024-09-10 10:19:14',NULL,NULL),(18,'4ee2f28f-3e4c-4bf4-8e2a-d8f364303ff3',8,'Chicken Tenders','A','5','2024-09-10 10:19:23',NULL,NULL),(19,'bf288cf5-35a0-4dbc-a15a-8f72a4780177',9,'Tacos','A','5','2024-09-10 10:19:39',NULL,NULL),(20,'ca332060-db8d-4506-8018-31394163c34d',9,'Burritos','A','5','2024-09-10 10:19:47',NULL,NULL),(21,'09276bff-74ec-4cec-aa00-70810305b505',9,'Quesadillas','A','5','2024-09-10 10:19:55',NULL,NULL),(22,'8cc1ee04-04a3-47a3-b5b1-dd978ba1b4f0',9,'Nachos','A','5','2024-09-10 10:20:09',NULL,NULL),(23,'e3f26a64-de7e-405d-a5a0-dc073ab7a80f',10,'Pancakes','A','5','2024-09-10 10:20:17',NULL,NULL),(24,'8c2be855-0872-48b5-a1a9-e3335ce95a86',10,'Waffles','A','5','2024-09-10 10:20:27',NULL,NULL),(25,'3cc0079c-ad44-4f6a-b939-2ae7b34676ff',10,'Breakfast Sandwiches','A','5','2024-09-10 10:20:38',NULL,NULL),(26,'0cf5b045-d112-45f7-ba12-508577fddcad',10,'Omelets','A','5','2024-09-10 10:20:45',NULL,NULL),(27,'3b718e07-690c-4334-a6bb-44727f6231ca',11,'Ice Cream','A','5','2024-09-10 10:21:03',NULL,NULL),(28,'895e4927-ff05-4078-8fa7-843486db2e71',11,'Cookies','A','5','2024-09-10 10:21:10',NULL,NULL),(29,'5334e91e-69f5-419f-b46d-b4c83cd6245b',11,'Brownies','A','5','2024-09-10 10:21:18',NULL,NULL),(30,'d0bfb1c6-2dea-438e-a9f2-e12c2ccdf12f',11,'Cheesecake','A','5','2024-09-10 10:21:27',NULL,NULL),(31,'ba84eb8b-f004-47e4-8bd4-8a9c90432ee5',12,'Soft Drinks','A','5','2024-09-10 10:21:39',NULL,NULL),(32,'47bf8b81-9c5d-453d-bc3f-da8d16701ae8',12,'Milkshakes','A','5','2024-09-10 10:21:48',NULL,NULL),(33,'bf0d268d-fa56-4d5a-ac90-fa803ad1cc0c',12,'Juices','A','5','2024-09-10 10:21:56',NULL,NULL),(34,'e3912c82-3607-4e37-879a-c2cef9b0182f',12,'Coffee','A','5','2024-09-10 10:22:05',NULL,NULL);
/*!40000 ALTER TABLE `sms_prosubcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_protype`
--

DROP TABLE IF EXISTS `sms_protype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_protype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(36) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_protype`
--

LOCK TABLES `sms_protype` WRITE;
/*!40000 ALTER TABLE `sms_protype` DISABLE KEYS */;
INSERT INTO `sms_protype` VALUES (1,'cd30ecce-6a94-11ef-aab7-80ce628923b2','Testasdadad','I','4','2024-09-04 06:28:01','5','2024-09-10 10:25:42'),(2,'cd30ecce-6a94-11ef-aab7-80ce628923b2','Test112','Deleted','4','2024-09-04 06:28:47','4','2024-09-04 06:30:36'),(4,'8d5cfa7b-6950-4a3e-aec9-7723c55554b8','asdadaaa','Deleted','5','2024-09-04 08:26:53','5','2024-09-04 08:27:35'),(5,'67c43655-f0e6-4232-aa84-f336f8f261ea','Fast Food','A','5','2024-09-10 10:24:38',NULL,NULL),(6,'127ce9c5-9a3f-4182-a877-4ec182fbfdbf','adasd','Deleted','5','2024-09-10 10:27:07','5','2024-09-10 10:27:15');
/*!40000 ALTER TABLE `sms_protype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_web_sidebar_menu`
--

DROP TABLE IF EXISTS `sms_web_sidebar_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_web_sidebar_menu` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(36) DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `order` int(10) unsigned NOT NULL,
  `is_collapsed` tinyint(1) DEFAULT 0,
  `is_heading` tinyint(1) DEFAULT 0,
  `permission_id` bigint(10) DEFAULT 0,
  `status` varchar(10) DEFAULT 'I',
  `create_by` varchar(10) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_by` varchar(10) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_web_sidebar_menu`
--

LOCK TABLES `sms_web_sidebar_menu` WRITE;
/*!40000 ALTER TABLE `sms_web_sidebar_menu` DISABLE KEYS */;
INSERT INTO `sms_web_sidebar_menu` VALUES (1,'04befafd-dfd0-4eec-b4d7-62825975d3f5',NULL,'Dashboard','bi bi-grid','Dashboard',1,0,0,0,'A',NULL,NULL,'5','2024-09-09 11:24:36'),(2,'a9a0e55f-5c1a-4158-8700-19c3904131a4',NULL,'POS','bi bi-grid','POS',2,0,0,0,'A',NULL,NULL,'5','2024-09-11 05:57:39'),(3,'e7608767-119d-414a-8f5a-eab8afcfff18',NULL,'Web Setup','bi bi-grid','#',3,1,0,0,'A',NULL,NULL,'5','2024-09-09 11:24:36'),(4,'05aecfb6-f5b5-4496-94e2-a6d65bb02c90',3,'Side Menu','bi bi-circle','SidebarNav',1,0,0,0,'A',NULL,NULL,NULL,NULL),(5,'cb65faf8-b226-4df3-a681-e1cb133e8f9f',3,'Brand','bi bi-circle','BrandName',2,0,0,0,'A',NULL,NULL,'5','2024-09-11 05:57:44'),(6,'ce3e1ba4-e168-4559-920b-00cd2d617bbf',NULL,'Product Setup','bi bi-folder-check','#',4,1,0,0,'A','4','2024-09-03 09:46:04','5','2024-09-11 05:58:10'),(7,'38d3450c-f488-49c0-a0cd-e00973a2b511',6,'Pro. Category','bi bi-circle','ProCategory',2,0,0,0,'A','4','2024-09-03 09:47:58','5','2024-09-11 05:57:49'),(8,'6023ee57-d6f9-4968-b0fa-bebbef646d83',6,'Pro. Sub-Category','a','ProSubCategory',3,0,0,0,'A','4','2024-09-03 09:50:04','5','2024-09-11 05:57:52'),(9,'0873da61-5dc7-468e-8818-7aad0dc3ee28',6,'Pro. Type','bi','ProType',4,0,0,0,'A','4','2024-09-03 09:48:37','5','2024-09-11 05:57:56'),(10,'7a50e584-c491-40b2-9914-613b12b46e90',6,'Product Info','a','ProInfo',5,0,0,0,'A','4','2024-09-03 09:50:39','5','2024-09-11 05:57:59'),(11,'59ebdca8-b889-4ec9-8ff6-22966d423137',NULL,'User Config','bi bi-people-fill','#',5,1,0,0,'A','1010','2024-09-01 08:26:21','1010','2024-09-01 08:56:26'),(12,'16e6d980-5c13-48ff-99fa-6bf074368030',11,'Branch Info','bi bi-person-lines-fill','BranchInfo',1,0,0,0,'A','1010','2024-09-01 08:49:27','5','2024-09-11 05:58:15'),(13,'71d5ac51-a43d-4cd8-82e6-d12e81153c99',11,'User Info','bi bi-person-lines-fill','User',2,0,0,0,'A','1010','2024-09-01 08:50:26','1010','2024-09-01 12:12:16'),(14,'65c69934-50af-444a-96a0-0fe8c0c8f4e0',11,'User Roles','bi bi-person-lines-fill','Roles',3,0,0,0,'A','1010','2024-09-01 08:51:46','1010','2024-09-01 11:48:57'),(15,'35732e13-6bf8-4bfd-9d0f-a5fccb528af1',11,'Permission','bi','Permission',5,0,0,0,'A','1010','2024-09-01 08:52:12','4','2024-09-03 06:58:53'),(16,'e1b00cdd-10fd-475b-a1ae-7d41d20f7824',10,'Pro. Brand','bi bi-circle','ProBrand',1,0,0,0,'A','4','2024-09-03 09:47:57','5','2024-09-11 05:58:20'),(17,'c034233a-5e12-432b-be7d-ca2b5375b663',NULL,'Header Page','','',6,NULL,1,0,'A',NULL,NULL,NULL,NULL),(18,'b7bf8292-1cbd-43da-a416-93f3d661abc5',NULL,'Web Settings','bi bi-sliders','WebSettings',7,NULL,0,0,'A',NULL,NULL,'5','2024-09-11 06:06:54');
/*!40000 ALTER TABLE `sms_web_sidebar_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `longitude` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'4d33c03d-a283-4bc3-8322-4d5e7fa168de','Super Admin','2','010000000','superadmin@gmail.com','A','2024-09-04 07:04:32','$2y$10$nGV8Pj7O/2HMf5EDUHevauAfLQ1g3Gm8o922qRY0lgt0XQ15t2r9C',NULL,'2024-09-04 07:04:32','2024-09-12 00:32:51','23.7426319','90.4138084');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12 18:16:50
