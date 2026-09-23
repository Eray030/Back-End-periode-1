-- MySQL dump 10.13  Distrib 8.4.7, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: laravel
-- ------------------------------------------------------
-- Server version	8.4.7

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `allergeen`
--

DROP TABLE IF EXISTS `allergeen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allergeen` (
  `Id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Naam` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Omschrijving` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsActief` tinyint(1) NOT NULL DEFAULT '1',
  `Opmerking` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergeen`
--

LOCK TABLES `allergeen` WRITE;
/*!40000 ALTER TABLE `allergeen` DISABLE KEYS */;
INSERT INTO `allergeen` VALUES (1,'Gluten','Dit product bevat gluten',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(2,'Gelatine','Dit product bevat gelatine',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(3,'AZO-Kleurstof','Dit product bevat AZO-kleurstoffen',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(4,'Lactose','Dit product bevat lactose',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(5,'Soja','Dit product bevat soja',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000');
/*!40000 ALTER TABLE `allergeen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('laravel-cache-eray1234_@hotmail.com|127.0.0.1','i:1;',1789588142),('laravel-cache-eray1234_@hotmail.com|127.0.0.1:timer','i:1789588142;',1789588142),('laravel-cache-terence@windkracht-12.nl|127.0.0.1','i:1;',1789472235),('laravel-cache-terence@windkracht-12.nl|127.0.0.1:timer','i:1789472235;',1789472235);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`)
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
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
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
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
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
-- Table structure for table `leverancier`
--

DROP TABLE IF EXISTS `leverancier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leverancier` (
  `Id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Naam` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ContactPersoon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LeverancierNummer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mobiel` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsActief` tinyint(1) NOT NULL DEFAULT '1',
  `Opmerking` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `leverancier_leveranciernummer_unique` (`LeverancierNummer`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leverancier`
--

LOCK TABLES `leverancier` WRITE;
/*!40000 ALTER TABLE `leverancier` DISABLE KEYS */;
INSERT INTO `leverancier` VALUES (1,'Venco','Bert van Linge','L1029384719','06-28493827',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(2,'Astra Sweets','Jasper del Monte','L1029284315','06-39398734',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(3,'Haribo','Sven Stalman','L1029324748','06-24383291',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(4,'Basset','Joyce Stelterberg','L1023845773','06-48293823',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(5,'De Bron','Remco Veenstra','L1023857736','06-34291234',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000');
/*!40000 ALTER TABLE `leverancier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magazijn`
--

DROP TABLE IF EXISTS `magazijn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magazijn` (
  `Id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ProductId` bigint unsigned NOT NULL,
  `VerpakkingsEenheidInKilogram` decimal(5,2) NOT NULL,
  `AantalAanwezig` int unsigned DEFAULT NULL,
  `IsActief` tinyint(1) NOT NULL DEFAULT '1',
  `Opmerking` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `magazijn_productid_foreign` (`ProductId`),
  CONSTRAINT `magazijn_productid_foreign` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magazijn`
--

LOCK TABLES `magazijn` WRITE;
/*!40000 ALTER TABLE `magazijn` DISABLE KEYS */;
INSERT INTO `magazijn` VALUES (1,1,5.00,453,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(2,2,2.50,400,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(3,3,5.00,1,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(4,4,1.00,800,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(5,5,3.00,234,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(6,6,2.00,345,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(7,7,1.00,795,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(8,8,10.00,233,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(9,9,2.50,123,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(10,10,3.00,NULL,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(11,11,2.00,367,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(12,12,1.00,467,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(13,13,5.00,20,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000');
/*!40000 ALTER TABLE `magazijn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2026_09_10_113734_add_role_to_users_table',2),(5,'2026_09_23_090001_create_leverancier_table',3),(6,'2026_09_23_090002_create_allergeen_table',3),(7,'2026_09_23_090003_create_product_table',3),(8,'2026_09_23_090004_create_magazijn_table',3),(9,'2026_09_23_090005_create_product_per_leverancier_table',3),(10,'2026_09_23_090006_create_product_per_allergeen_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Naam` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Barcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsActief` tinyint(1) NOT NULL DEFAULT '1',
  `Opmerking` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `product_barcode_unique` (`Barcode`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Mintnopjes','8719587231278',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(2,'Schoolkrijt','8719587326713',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(3,'Honingdrop','8719587327836',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(4,'Zure Beren','8719587321441',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(5,'Cola Flesjes','8719587321237',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(6,'Turtles','8719587322245',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(7,'Witte Muizen','8719587328256',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(8,'Reuzen Slangen','8719587325641',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(9,'Zoute Rijen','8719587322739',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(10,'Winegums','8719587327527',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(11,'Drop Munten','8719587322345',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(12,'Kruis Drop','8719587322265',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(13,'Zoute Ruitjes','8719587323256',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productperallergeen`
--

DROP TABLE IF EXISTS `productperallergeen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productperallergeen` (
  `Id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ProductId` bigint unsigned NOT NULL,
  `AllergeenId` bigint unsigned NOT NULL,
  `IsActief` tinyint(1) NOT NULL DEFAULT '1',
  `Opmerking` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `productperallergeen_productid_foreign` (`ProductId`),
  KEY `productperallergeen_allergeenid_foreign` (`AllergeenId`),
  CONSTRAINT `productperallergeen_allergeenid_foreign` FOREIGN KEY (`AllergeenId`) REFERENCES `allergeen` (`Id`),
  CONSTRAINT `productperallergeen_productid_foreign` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productperallergeen`
--

LOCK TABLES `productperallergeen` WRITE;
/*!40000 ALTER TABLE `productperallergeen` DISABLE KEYS */;
INSERT INTO `productperallergeen` VALUES (1,1,2,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(2,1,1,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(3,1,3,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(4,3,4,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(5,6,5,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(6,9,2,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(7,9,5,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(8,10,2,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(9,12,4,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(10,13,1,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(11,13,4,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(12,13,5,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000');
/*!40000 ALTER TABLE `productperallergeen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productperleverancier`
--

DROP TABLE IF EXISTS `productperleverancier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productperleverancier` (
  `Id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `LeverancierId` bigint unsigned NOT NULL,
  `ProductId` bigint unsigned NOT NULL,
  `DatumLevering` date NOT NULL,
  `Aantal` int unsigned NOT NULL,
  `DatumEerstVolgendeLevering` date DEFAULT NULL,
  `IsActief` tinyint(1) NOT NULL DEFAULT '1',
  `Opmerking` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DatumAangemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `productperleverancier_leverancierid_foreign` (`LeverancierId`),
  KEY `productperleverancier_productid_foreign` (`ProductId`),
  CONSTRAINT `productperleverancier_leverancierid_foreign` FOREIGN KEY (`LeverancierId`) REFERENCES `leverancier` (`Id`),
  CONSTRAINT `productperleverancier_productid_foreign` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productperleverancier`
--

LOCK TABLES `productperleverancier` WRITE;
/*!40000 ALTER TABLE `productperleverancier` DISABLE KEYS */;
INSERT INTO `productperleverancier` VALUES (1,1,1,'2024-10-09',23,'2024-10-16',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(2,1,1,'2024-10-18',21,'2024-10-25',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(3,1,2,'2024-10-09',12,'2024-10-16',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(4,1,3,'2024-10-10',11,'2024-10-17',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(5,2,4,'2024-10-14',16,'2024-10-21',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(6,2,4,'2024-10-21',23,'2024-10-28',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(7,2,5,'2024-10-14',45,'2024-10-21',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(8,2,6,'2024-10-14',30,'2024-10-21',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(9,3,7,'2024-10-12',12,'2024-10-19',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(10,3,7,'2024-10-19',23,'2024-10-26',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(11,3,8,'2024-10-10',12,'2024-10-17',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(12,3,9,'2024-10-11',1,'2024-10-18',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(13,4,10,'2024-10-16',24,'2024-10-30',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(14,5,11,'2024-10-10',47,'2024-10-17',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(15,5,11,'2024-10-19',60,'2024-10-26',1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(16,5,12,'2024-10-11',45,NULL,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000'),(17,5,13,'2024-10-12',23,NULL,1,NULL,'2026-09-23 07:32:30.000000','2026-09-23 07:32:30.000000');
/*!40000 ALTER TABLE `productperleverancier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
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
INSERT INTO `sessions` VALUES ('11lW6PCt1pBwnX00H2usZQz8GTYYJr5J4HBkUrPG',3,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36','eyJfdG9rZW4iOiI5b2lkOHIwY1RhNzRKb1B2UllMVW9IcjA3QXJPeXFCZUFOVzZkRXBFIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDIwXC9tYWdhemlqbiIsInJvdXRlIjoibWFnYXppam4uaW5kZXgifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6M30=',1790150659),('3Vk1WxAOvlfknJyWQ2PhAJ9ujFsXtSW4lvhE2vs0',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJlV2MwMUFjR2xMSDh5UUNiWGdMUFhyWU1HUnNWWG8yT3JGQWp0NEc4IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1789587845),('ApwvqKrrVeG8aovS6TKK5QGJ3xIC4ueKFZzpVDl2',NULL,'127.0.0.1','curl/8.18.0','eyJfdG9rZW4iOiJTbVVHYjM2RlZDdnVkM3BVWmFHYjRYdDNOV2lmd256WUpDaWh0ZVBCIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MTIzXC9sb2dpbiIsInJvdXRlIjoibG9naW4ifSwiX2ZsYXNoIjp7Im9sZCI6WyJfb2xkX2lucHV0IiwiZXJyb3JzIl0sIm5ldyI6W119LCJfb2xkX2lucHV0Ijp7Il90b2tlbiI6IlNtVUdiMzZGVkN2dWQzcFVaYUdiNFh0M05XaWZ3bnpZSkNpaHRlUEIiLCJlbWFpbCI6InRlc3RAZXhhbXBsZS5jb20ifSwiZXJyb3JzIjp7ImRlZmF1bHQiOnsiZm9ybWF0IjoiOm1lc3NhZ2UiLCJtZXNzYWdlcyI6eyJlbWFpbCI6WyJUaGVzZSBjcmVkZW50aWFscyBkbyBub3QgbWF0Y2ggb3VyIHJlY29yZHMuIl19fX19',1790148804),('auZUyeXU8p8JaNMLKciYnn2M5McaPNHHMVWePFGX',NULL,'127.0.0.1','curl/8.18.0','eyJfdG9rZW4iOiJlVXJWSUI0YVNtbkt0b3pLZnZmUFJCQU1oeUpOb1ZLWVJSVjEwQlFIIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MTIzXC9tYWdhemlqbiIsInJvdXRlIjoibWFnYXppam4uaW5kZXgifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJ1cmwiOnsiaW50ZW5kZWQiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODEyM1wvbWFnYXppam4ifX0=',1790148785),('bNBUgH3dNTyCPVcChVLmqD8j5SAtqJUG2WwwIGY6',NULL,'127.0.0.1','curl/8.18.0','eyJfdG9rZW4iOiJCdlliVjJySmZPVjlsVmhOdTNLNE5VUFRKOEZWZGFISlBUaGgzbWoxIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDIwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1790150614),('cU2qwv6xxKDD3XGg5L0OKMyXgRrP0d6pToCeF0Vx',NULL,'127.0.0.1','curl/8.18.0','eyJfdG9rZW4iOiI4S1B5SkpFR1hGcHllZExleWRYN216M2JpOVJpempDa0xQcDhUbVppIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MTIzIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1790148775),('edCIbLEKoUiry6NCMNsxBE50cWDEzgnMEUEzyEHv',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJESTMwNTEyTEdVQTZuYnNWUFVLTEw5VWNsdUxrY1FNNm5zRXVEVE5sIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1789990618),('n9VKNeSD4RsRdj66QP0ky9sgse1yX6rGymomrP8n',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.122.1 Chrome/142.0.7444.265 Electron/39.8.8 Safari/537.36','eyJfdG9rZW4iOiJUeWFQS1pOdXNYNXpBNDNZNm8wenZGNnB2eDh3eWd2MDRIVmVBNjVYIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1789994032),('vh0BpzBLpz3CRzJlstJK871Hm7f7BbYo7TjuWVNU',NULL,'127.0.0.1','curl/8.18.0','eyJfdG9rZW4iOiIzRnprOWFrMFNGZnRid2ZLdU9JcE9xSmhadzV5anFpN0lxdEpva0NoIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MTIzXC9tYWdhemlqbiIsInJvdXRlIjoibWFnYXppam4uaW5kZXgifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJ1cmwiOnsiaW50ZW5kZWQiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODEyM1wvbWFnYXppam4ifX0=',1790148798),('wHndy49Bel5LrYmJSzCTU0k6Nda5BCzZ0zLSOxAX',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJqYmJZNEF5alFLUU44Q3JUN1pobm55cUlGaWtseTJSZDhNeGlDU215IiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1789587921),('ynwaCTkEkICRXEHkGW2OD8ww3XUGNE1YUMBsBa7K',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36','eyJfdG9rZW4iOiJXWDdiam5oN3lwWFphNWxHQ2k3U2llaWpOTlNGN1ZsMVpTVUlxZmVZIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwIiwicm91dGUiOm51bGx9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX19',1789588165),('yuv3GyyjWbQUMK3EhDFHejb3u0e9BfLcrhTKDl2X',2,'127.0.0.1','curl/8.18.0','eyJfdG9rZW4iOiJ4b2lDOUlCQm83ZjFqam1HMmJtcnk5Nm1QMkdyTDVXNlJiaWJVUEkwIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MTIzXC9tYWdhemlqblwvNVwvYWxsZXJnZW5lbiIsInJvdXRlIjoibWFnYXppam4uYWxsZXJnZW5lbiJ9LCJfZmxhc2giOnsib2xkIjpbXSwibmV3IjpbXX0sImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjoyfQ==',1790148848);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Magazijnmedewerker','eray1234_@hotmail.com','user',NULL,'$2y$12$CHBP3JApFf62HGwvRymUS.4fl6tV2rfytaBz3g1va6jSDldIRdIhm',NULL,'2026-09-10 09:40:45','2026-09-10 09:40:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'laravel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-23 10:13:27
