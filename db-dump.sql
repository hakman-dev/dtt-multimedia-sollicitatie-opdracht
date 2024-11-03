CREATE DATABASE  IF NOT EXISTS `laravel` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `laravel`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: laravel
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facility_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employees_facility_id_foreign` (`facility_id`),
  CONSTRAINT `employees_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Prof. Abraham Hyatt',1),(2,'Marlen Denesik',1),(3,'Tatyana Blick',1),(4,'Coralie Wiegand',2),(5,'Mrs. Katelin Gerlach',2),(6,'Sincere Jacobi',2),(7,'Miss Alisha Romaguera',3),(8,'Thea Kunde',3),(9,'Jerel Schneider',3),(10,'Sofia Wisoky',4),(11,'Mr. Stanton McKenzie DVM',4),(12,'Stephan Gleichner',4),(13,'Tomas Fritsch',5),(14,'Rosanna Steuber',5),(15,'Darrel Jacobs',5),(16,'Chasity Kulas',6),(17,'Roselyn Rolfson IV',6),(18,'Dr. Christine Watsica Jr.',6),(19,'Kale Bosco',7),(20,'Lawson Predovic',7),(21,'Dr. Maybelle Turcotte',7),(22,'Jaydon Cartwright',8),(23,'Mae Little I',8),(24,'Evans Collins',8),(25,'Anderson Hackett',9),(26,'Mariane Abbott',9),(27,'Jeff Nikolaus',9),(28,'Marisol Volkman',10),(29,'Ceasar Wisoky',10),(30,'Gilda Feil',10),(31,'Terrill VonRueden',11),(32,'Dr. Virginie Senger',11),(33,'Nya Robel',11),(34,'Marisol Roob Jr.',12),(35,'Mr. Garfield Nitzsche Jr.',12),(36,'Rogelio Lang',12),(37,'Tobin Jerde',13),(38,'Issac Harvey',13),(39,'Dr. Paolo Bogan PhD',13),(40,'Allie McDermott',14),(41,'Serena Gulgowski',14),(42,'Dino Runte IV',14),(43,'George Rohan',15),(44,'Dr. Declan Erdman',15),(45,'Christina Swaniawski',15),(46,'Joshua D\'Amore V',16),(47,'Dusty Cruickshank',16),(48,'Webster Kris DDS',16),(49,'Camille Parisian',17),(50,'Leone Waters',17),(51,'Domenica Miller',17),(52,'Gretchen Crooks',18),(53,'Miss Billie Fisher',18),(54,'Prof. Maegan Hoppe',18),(55,'Mr. Rowland Roob MD',19),(56,'Sven Maggio',19),(57,'Eveline McClure',19),(58,'Ronaldo Walker Sr.',20),(59,'Fredrick Kessler',20),(60,'Broderick Sauer',20),(61,'Natalie Kirlin Jr.',21),(62,'Mr. Abdullah Murray MD',21),(63,'Alysson Stokes DVM',21),(64,'Prof. Osvaldo Emmerich I',22),(65,'Tyrell Bernhard',22),(66,'Prof. Christy Walter IV',22),(67,'Trever Gaylord',23),(68,'Ms. Dolly Ritchie',23),(69,'Sabryna Nolan',23),(70,'Liliana Lubowitz PhD',24),(71,'Mr. Lennie Stamm Jr.',24),(72,'Ralph Dibbert',24),(73,'Guy Bruen V',25),(74,'Brown O\'Conner',25),(75,'Janice Labadie',25),(76,'Caesar King',26),(77,'Price Kuphal III',26),(78,'Prof. Rodrigo Pouros Jr.',26),(79,'Gino Kovacek',27),(80,'Dr. Daisy Aufderhar',27),(81,'Zena Pouros',27),(82,'Matteo Roob',28),(83,'Ms. Bianka Schulist',28),(84,'Duane O\'Connell',28),(85,'Hudson Lesch',29),(86,'Dr. Robin Haley',29),(87,'Prof. Makenzie Schuppe',29),(88,'Orville Gutmann',30),(89,'Berry Beer',30),(90,'Blanca Blick',30);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facilities_location_id_foreign` (`location_id`),
  CONSTRAINT `facilities_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
INSERT INTO `facilities` VALUES (1,'Brekke and Sons Complex 1',1,'2024-09-05 06:56:04','2024-07-03 11:03:55'),(2,'Shields, Rohan and Gulgowski Center 2',1,'2024-03-05 18:05:04','2024-10-06 17:54:28'),(3,'Medhurst, Gerlach and Pfannerstill Center 3',1,'2024-09-14 10:04:56','2024-06-09 17:31:58'),(4,'King and Sons Facility 1',2,'2024-02-05 21:32:21','2024-07-25 03:59:01'),(5,'Graham and Sons Center 2',2,'2024-05-09 14:58:53','2024-07-09 13:51:22'),(6,'Balistreri Inc Complex 3',2,'2024-07-14 12:44:16','2024-06-03 05:40:51'),(7,'Reichert, Barrows and Funk Complex 1',3,'2024-01-27 20:49:44','2024-04-20 23:36:25'),(8,'Weimann LLC Center 2',3,'2024-03-07 02:45:54','2024-06-17 01:18:38'),(9,'Skiles-Kerluke Complex 3',3,'2024-10-22 15:20:04','2024-03-11 10:02:51'),(10,'Wolf LLC Center 1',4,'2024-08-26 11:33:34','2024-02-16 21:11:28'),(11,'Brakus LLC Center 2',4,'2024-01-31 13:51:18','2024-03-12 17:56:59'),(12,'Champlin Inc Complex 3',4,'2024-04-07 02:47:15','2024-03-09 08:15:46'),(13,'Moore, Conroy and Bashirian Complex 1',5,'2024-09-20 23:39:31','2024-10-07 13:57:33'),(14,'Kshlerin-Hegmann Facility 2',5,'2024-08-01 13:51:47','2024-05-09 09:17:53'),(15,'Rowe, Bayer and Wolff Hub 3',5,'2023-12-20 19:47:40','2024-06-02 05:51:11'),(16,'Bogan Group Facility 1',6,'2024-01-04 04:29:21','2024-04-19 02:56:27'),(17,'Waters, Kertzmann and Abbott Complex 2',6,'2024-10-09 16:41:43','2024-07-06 01:57:01'),(18,'Yost LLC Hub 3',6,'2024-01-25 19:26:51','2024-04-09 02:43:28'),(19,'Schuppe-Jacobs Facility 1',7,'2023-12-21 02:44:49','2024-07-28 10:53:16'),(20,'Mills-Rolfson Complex 2',7,'2024-09-13 05:34:03','2024-08-22 08:58:54'),(21,'Shanahan-Christiansen Center 3',7,'2024-07-27 05:06:10','2024-10-16 23:00:49'),(22,'Schuppe, Sanford and Jones Facility 1',8,'2024-04-27 15:05:37','2024-03-09 07:57:22'),(23,'Kihn Inc Center 2',8,'2023-12-19 16:38:42','2024-04-10 16:43:08'),(24,'Legros-Hauck Center 3',8,'2024-04-26 01:38:40','2024-09-06 04:16:39'),(25,'Stark, Keebler and Crist Facility 1',9,'2024-09-15 22:44:53','2024-03-11 15:22:18'),(26,'Krajcik Inc Hub 2',9,'2024-02-24 20:03:06','2024-07-13 04:54:50'),(27,'Bailey, Conn and Klein Complex 3',9,'2024-07-27 18:38:39','2024-09-28 01:48:09'),(28,'Haley, Lang and Feeney Center 1',10,'2024-03-26 02:30:29','2024-02-19 06:58:02'),(29,'Cartwright Inc Center 2',10,'2024-06-05 04:01:26','2024-09-12 09:57:35'),(30,'Mills PLC Complex 3',10,'2024-05-24 13:11:53','2024-09-19 15:01:17');
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility_tag`
--

DROP TABLE IF EXISTS `facility_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facility_tag_facility_id_tag_id_unique` (`facility_id`,`tag_id`),
  KEY `facility_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `facility_tag_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `facility_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_tag`
--

LOCK TABLES `facility_tag` WRITE;
/*!40000 ALTER TABLE `facility_tag` DISABLE KEYS */;
INSERT INTO `facility_tag` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,3,1),(12,3,3),(13,4,1),(14,4,2),(15,4,3),(16,4,5),(17,5,1),(18,5,2),(19,5,3),(20,5,4),(21,5,5),(22,7,2),(23,7,3),(24,8,2),(25,8,3),(26,8,4),(27,9,2),(28,9,3),(29,10,2),(30,10,4),(31,10,5),(32,12,1),(33,12,4),(34,13,2),(35,13,3),(36,13,4),(37,15,1),(38,15,2),(39,15,3),(40,15,4),(41,16,3),(42,16,5),(43,17,1),(44,17,2),(45,17,3),(46,17,4),(47,17,5),(48,18,2),(49,19,3),(50,19,4),(51,19,5),(52,21,3),(53,21,4),(54,21,5),(55,22,1),(56,22,2),(57,22,3),(58,22,4),(59,22,5),(60,23,4),(61,24,1),(62,24,3),(63,24,5),(64,25,1),(65,25,2),(66,25,3),(67,25,5),(68,27,1),(69,27,4),(70,27,5),(71,29,1),(72,29,2),(73,29,5),(74,30,1),(75,30,2),(76,30,3),(77,30,4);
/*!40000 ALTER TABLE `facility_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'amsterdam','475 Lauren Inlet','81537-6259','NL','+16067805489','2023-11-28 20:36:34','2024-09-23 02:55:21'),(2,'benidorm','7013 Rath Heights Suite 102','65770-2673','ES','+18575640294','2024-05-21 21:27:02','2024-10-22 21:30:00'),(3,'munchen','4236 Kaleb Pike Apt. 253','27196-8343','DE','+12622981454','2024-04-16 14:34:16','2024-11-02 18:33:28'),(4,'amsterdam','481 Jewell Orchard Apt. 961','93820-4312','NL','+14233284297','2024-03-25 07:28:54','2024-09-07 19:43:49'),(5,'benidorm','783 Glover Plain Apt. 795','82943','ES','+19369216745','2024-03-07 01:32:09','2024-03-16 00:22:43'),(6,'munchen','3101 Ramiro Crossroad Suite 057','47664','DE','+16572725586','2024-01-22 10:02:16','2024-06-09 10:41:23'),(7,'amsterdam','2025 Wyman Ridges Suite 065','01891-2077','NL','+16075609248','2024-03-23 20:06:32','2024-06-18 05:28:09'),(8,'benidorm','892 Darrion Lights Suite 705','77165','ES','+15648411459','2024-01-13 11:02:05','2024-08-09 22:42:18'),(9,'munchen','5606 Thompson Lake Suite 041','38684','DE','+17858575965','2023-12-25 16:47:31','2024-05-03 12:27:03'),(10,'amsterdam','15655 Mills Valleys','52264-2473','NL','+13809744110','2024-05-12 04:12:02','2024-09-02 17:19:51');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_10_31_105101_create_locations_table',1),(5,'2024_10_31_105337_create_facilities_table',1),(6,'2024_10_31_105543_create_tags_table',1),(7,'2024_10_31_105737_create_facility_tag_table',1),(8,'2024_11_03_132903_create_employees_table',1),(9,'2024_11_03_153755_create_oauth_auth_codes_table',1),(10,'2024_11_03_153756_create_oauth_access_tokens_table',1),(11,'2024_11_03_153757_create_oauth_refresh_tokens_table',1),(12,'2024_11_03_153758_create_oauth_clients_table',1),(13,'2024_11_03_153759_create_oauth_personal_access_clients_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Central Panel Personal Access Client','80zarIYlAzxOAo7tQf2KY7n1Ptx7LtSHyQprOhHF',NULL,'http://localhost',1,0,0,'2024-11-03 18:41:39','2024-11-03 18:41:39');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2024-11-03 18:41:39','2024-11-03 18:41:39');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Restaurant','2024-05-04 21:15:52','2024-11-02 02:48:53'),(2,'Banquet Hall','2024-02-20 20:14:29','2024-09-15 07:13:14'),(3,'Food Truck','2024-09-13 06:19:55','2024-06-16 23:27:38'),(4,'Ghost Kitchen','2024-03-15 22:08:15','2024-05-16 11:08:08'),(5,'Catering Hub','2023-12-02 09:21:37','2024-10-02 18:21:40');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2024-11-03 19:42:36
