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
INSERT INTO `employees` VALUES (1,'Emma Bernier',1),(2,'Earline Nienow',1),(3,'Tressa Murphy',1),(4,'Delaney Kuvalis',2),(5,'Clay Fritsch',2),(6,'Sydney Pfeffer',2),(7,'Horace O\'Conner',3),(8,'Ericka Mayert',3),(9,'Taurean Roob',3),(10,'Lyda Lynch III',4),(11,'Gilbert Wyman',4),(12,'Prof. Martine Kshlerin DDS',4),(13,'Prof. Grant Armstrong III',5),(14,'Dr. Isaiah Muller V',5),(15,'Kaylie Wilderman',5),(16,'Dr. Oral Crona',6),(17,'Dr. Ashton Hermann',6),(18,'Aaron Corkery',6),(19,'Ferne Marvin',7),(20,'Mary Durgan Sr.',7),(21,'Efrain Rice',7),(22,'Khalil Cummings',8),(23,'Hailey Skiles',8),(24,'Mr. Humberto Schmidt',8),(25,'Mr. Steve Reynolds',9),(26,'Litzy Cassin',9),(27,'Hollis O\'Conner',9),(28,'Dr. Hazel Blick MD',10),(29,'Dr. Alvena Breitenberg MD',10),(30,'Bill Larson',10),(31,'Lenny Herman III',11),(32,'Prof. Aubree Brakus V',11),(33,'Henderson Christiansen',11),(34,'Lennie Quitzon',12),(35,'Diego Hettinger',12),(36,'Eric Heaney',12),(37,'Waylon Boyle',13),(38,'Jovan Gutmann',13),(39,'Marilie Pfannerstill V',13),(40,'Bell Deckow',14),(41,'Prof. Brad Kuvalis Jr.',14),(42,'Ettie Herman Sr.',14),(43,'Lindsey Hirthe',15),(44,'Prof. Jaylen Boyer',15),(45,'Miss Clarabelle Cassin DVM',15),(46,'Ayana Emard',16),(47,'Eric Legros',16),(48,'Katelin Haag',16),(49,'Dr. Vern Kunde',17),(50,'Elenor Funk',17),(51,'Frances Marks',17),(52,'Ron Willms',18),(53,'Prof. Russell Bosco',18),(54,'Delmer Hill',18),(55,'Eunice Kohler',19),(56,'Brad Skiles',19),(57,'Anthony Nolan',19),(58,'Dr. Tate Kovacek',20),(59,'Aric Rippin',20),(60,'Bret Nolan',20),(61,'Mrs. Yadira Zieme',21),(62,'Prof. Chelsea Kirlin',21),(63,'Miss Oleta Bergnaum PhD',21),(64,'Antonia Muller',22),(65,'Maia Bartell',22),(66,'Lucio Kihn',22),(67,'Johan Cartwright',23),(68,'Yadira Hansen',23),(69,'Makenzie Dietrich',23),(70,'Reese Fahey V',24),(71,'Moriah Jacobson Jr.',24),(72,'Lonny Brown',24),(73,'Dr. Jonathan Schumm',25),(74,'Elenor Schumm',25),(75,'Orrin Will',25),(76,'Dorothy Mohr',26),(77,'Hermina Kerluke',26),(78,'Nicolas Bayer',26),(79,'Reina Conn',27),(80,'Julio Wolff',27),(81,'Lavern Konopelski V',27),(82,'Dr. Justice Miller I',28),(83,'Ellis Boyle',28),(84,'Bertrand Altenwerth',28),(85,'Mr. Sammie Braun DDS',29),(86,'Shannon Mills IV',29),(87,'Aiyana Orn III',29),(88,'Miss Fiona Larkin III',30),(89,'Prof. Colby Wisozk',30),(90,'Mozell Toy',30);
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
INSERT INTO `facilities` VALUES (1,'Langosh Inc Facility 1',1,'2024-10-29 14:21:28','2024-09-25 07:11:40'),(2,'Nader PLC Complex 2',1,'2024-05-07 05:32:22','2024-03-17 08:51:04'),(3,'Ullrich PLC Facility 3',1,'2024-07-08 22:31:40','2024-02-19 04:12:49'),(4,'Dietrich and Sons Complex 1',2,'2024-04-03 18:11:08','2024-03-26 19:11:03'),(5,'Dickinson, Baumbach and Kris Hub 2',2,'2024-07-19 18:48:19','2024-05-08 23:43:45'),(6,'Hessel, Lueilwitz and Pacocha Hub 3',2,'2023-11-19 15:04:43','2024-06-20 02:57:32'),(7,'Flatley-Nitzsche Complex 1',3,'2024-05-23 14:07:17','2024-09-27 01:27:55'),(8,'Ruecker PLC Complex 2',3,'2024-07-01 05:45:51','2024-07-11 14:31:18'),(9,'Heathcote PLC Center 3',3,'2024-05-22 03:47:11','2024-04-10 04:47:23'),(10,'Weimann-Howell Complex 1',4,'2024-04-20 13:23:55','2024-07-17 23:09:37'),(11,'Smith-Bosco Hub 2',4,'2024-06-28 19:45:38','2024-04-14 20:35:39'),(12,'Larson-Krajcik Complex 3',4,'2024-05-07 01:06:58','2024-06-15 13:46:18'),(13,'Hackett, Ward and Sawayn Facility 1',5,'2024-05-24 03:31:58','2024-04-18 19:28:51'),(14,'Pacocha-Kunde Center 2',5,'2023-11-07 23:07:01','2024-07-21 11:00:33'),(15,'Stoltenberg, Labadie and Beatty Hub 3',5,'2024-07-21 01:58:17','2024-09-30 23:04:46'),(16,'Hauck, Keebler and Runolfsson Hub 1',6,'2023-12-11 07:12:08','2024-06-23 07:55:33'),(17,'Koepp-Borer Hub 2',6,'2024-09-06 11:31:36','2024-02-12 02:21:25'),(18,'Gislason, Schmitt and McCullough Facility 3',6,'2024-10-04 22:34:33','2024-09-12 21:18:39'),(19,'Beier-Stokes Hub 1',7,'2024-01-20 05:35:50','2024-08-26 08:16:09'),(20,'Schimmel-Considine Complex 2',7,'2024-06-20 11:55:31','2024-06-17 09:21:01'),(21,'Hane LLC Complex 3',7,'2024-03-15 21:21:46','2024-07-25 05:09:59'),(22,'Jones, Bogan and Conroy Facility 1',8,'2024-03-05 13:59:35','2024-03-11 06:13:27'),(23,'Jerde-Funk Facility 2',8,'2024-02-23 06:53:58','2024-06-15 15:54:45'),(24,'Anderson-Mills Facility 3',8,'2024-10-05 01:01:26','2024-07-30 23:18:32'),(25,'Senger-Oberbrunner Hub 1',9,'2024-04-16 09:50:33','2024-10-09 23:24:14'),(26,'Carroll, Kutch and Lind Complex 2',9,'2024-04-16 16:52:08','2024-05-29 09:22:16'),(27,'Mraz, Runte and Sporer Hub 3',9,'2024-10-15 03:26:27','2024-04-21 05:42:54'),(28,'Roberts, Quitzon and Prohaska Complex 1',10,'2024-02-22 23:57:49','2024-09-17 18:50:35'),(29,'Paucek Group Center 2',10,'2024-06-15 07:11:50','2024-03-20 07:58:14'),(30,'Walter, Bruen and Pouros Hub 3',10,'2023-12-29 12:57:19','2024-06-14 08:36:43');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility_tag`
--

LOCK TABLES `facility_tag` WRITE;
/*!40000 ALTER TABLE `facility_tag` DISABLE KEYS */;
INSERT INTO `facility_tag` VALUES (1,1,2),(2,1,3),(3,2,1),(4,2,2),(5,3,2),(6,3,5),(7,4,2),(8,5,2),(9,5,3),(10,5,4),(11,7,1),(12,7,2),(13,7,3),(14,7,4),(15,7,5),(16,8,1),(17,8,2),(18,8,3),(19,8,4),(20,8,5),(21,9,1),(22,9,2),(23,12,1),(24,12,2),(25,12,3),(26,12,5),(27,13,1),(28,15,1),(29,15,2),(30,15,3),(31,15,4),(32,15,5),(33,16,4),(34,18,1),(35,18,2),(36,18,3),(37,18,4),(38,18,5),(39,19,3),(40,20,3),(41,20,4),(42,22,1),(43,22,2),(44,22,3),(45,22,4),(46,22,5),(47,24,1),(48,24,3),(49,25,2),(50,25,4),(51,26,1),(52,26,3),(53,26,5),(54,27,1),(55,27,4),(56,29,1),(57,29,2),(58,29,3),(59,29,4),(60,29,5),(61,30,1),(62,30,2),(63,30,3),(64,30,5);
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
INSERT INTO `locations` VALUES (1,'amsterdam','725 Beahan Centers Suite 067','71451-7340','NL','+17655143425','2023-12-03 14:48:58','2024-09-26 23:34:59'),(2,'benidorm','6129 Alivia Mountains','37149','ES','+18062680998','2024-02-25 08:14:20','2024-09-16 10:05:43'),(3,'munchen','93806 Bert Square','22247-7771','DE','+17692258212','2024-09-01 19:25:56','2024-05-07 21:58:21'),(4,'amsterdam','9611 Pfeffer Drive Suite 913','66759-0284','NL','+17437433091','2023-11-12 10:58:23','2024-04-16 01:16:14'),(5,'benidorm','547 Herman Isle','54120','ES','+17189660409','2024-10-12 12:51:41','2024-07-10 18:27:39'),(6,'munchen','7910 Roxane Brook Apt. 166','45918','DE','+14343244421','2024-07-07 20:04:12','2024-06-23 03:39:10'),(7,'amsterdam','95383 Jacobson Extension','26069-5736','NL','+12185612604','2024-05-14 08:49:21','2024-06-04 15:27:08'),(8,'benidorm','48072 McKenzie Ridge','74687-4967','ES','+17078717820','2024-07-30 14:14:59','2024-02-26 01:34:37'),(9,'munchen','611 Dock Overpass','18476','DE','+16164617756','2024-07-26 13:17:53','2024-04-11 17:13:48'),(10,'amsterdam','63577 Edison Port Suite 851','18632','NL','+12408274956','2024-09-19 03:38:49','2024-02-08 12:33:16');
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
INSERT INTO `oauth_clients` VALUES (1,NULL,'Central Panel Personal Access Client','e0aiA6kQVOBcnabgoBIARZN966lPwLY1PukoeBub',NULL,'http://localhost',1,0,0,'2024-11-04 10:05:34','2024-11-04 10:05:34');
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
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2024-11-04 10:05:34','2024-11-04 10:05:34');
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
INSERT INTO `tags` VALUES (1,'Cloud Kitchen','2024-03-23 20:00:10','2024-05-04 23:21:33'),(2,'Food Truck','2024-08-06 06:39:25','2024-05-25 12:37:08'),(3,'Banquet Hall','2023-12-10 18:37:07','2024-09-04 03:12:23'),(4,'Restaurant','2023-11-05 22:43:33','2024-07-08 22:26:58'),(5,'Commissary Kitchen','2024-03-24 01:35:55','2024-06-12 19:11:07');
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

-- Dump completed on 2024-11-04 11:06:01
