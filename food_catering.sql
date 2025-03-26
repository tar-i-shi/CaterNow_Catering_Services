-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: food_catering
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `message` text,
  `user_id` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'hemanitarishi@gmail.com','hi',1,'Tarishi Hemani');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `caterer_name` varchar(255) NOT NULL,
  `package_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`menu_id`),
  KEY `FKj9unnm7g6qaadj6lxycq8m2v5` (`package_type`),
  CONSTRAINT `FKj9unnm7g6qaadj6lxycq8m2v5` FOREIGN KEY (`package_type`) REFERENCES `packages` (`package_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caterer_name` varchar(255) DEFAULT NULL,
  `dessert` int DEFAULT NULL,
  `drinks` int DEFAULT NULL,
  `maindish` int DEFAULT NULL,
  `order_date` datetime(6) DEFAULT NULL,
  `package_type` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `starters` int DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `user_id` int DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` time DEFAULT NULL,
  `event_venue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'JMB Catering',1,2,1,'2025-03-25 22:55:10.000705','Basic Package',10360,10,1,_binary '\0',1,NULL,NULL,NULL),(2,'JMB Catering',0,0,0,'2025-03-25 23:22:13.768011','Basic Package',999,1,0,_binary '\0',1,NULL,NULL,NULL),(3,'Riddhi Siddhi',0,0,0,'2025-03-26 01:01:45.186947','Basic Package',999,1,0,_binary '\0',1,NULL,NULL,NULL),(4,'Riddhi Siddhi',0,0,0,'2025-03-26 01:02:57.080029','Basic Package',999,1,0,_binary '\0',1,NULL,NULL,NULL),(5,'JMB Catering',0,0,0,'2025-03-26 02:05:29.532000','Basic Package',999,1,0,_binary '\0',NULL,'2025-10-12','04:00:00','19 A Seva Sardar Nagar'),(6,'JMB Catering',0,0,0,'2025-03-26 02:08:48.657000','Basic Package',999,1,0,_binary '\0',NULL,'2025-12-12','02:30:00','19 A Seva Sardar Nagar'),(7,'JMB Catering',0,0,0,'2025-03-26 02:51:44.746000','Basic Package',999,1,0,_binary '\0',NULL,'2025-12-10','10:01:00','19 A Seva Sardar Nagar'),(8,'JMB Catering',0,0,0,'2025-03-26 03:14:32.883000','Basic Package',999,1,0,_binary '\0',NULL,'2025-05-10','05:00:00','19 A Seva Sardar Nagar'),(9,'JMB Catering',0,0,0,'2025-03-26 15:24:57.804000','Basic Package',999,1,0,_binary '\0',NULL,'2025-10-10','03:00:00','19 A Seva Sardar Nagar'),(10,'JMB Catering',0,0,0,'2025-03-26 16:36:39.118000','Basic Package',999,1,0,_binary '\0',NULL,'2025-11-10','03:40:00','19 A Seva Sardar Nagar'),(11,'JMB Catering',0,0,0,'2025-03-26 16:56:32.766000','Basic Package',999,1,0,_binary '\0',0,'2025-10-09','04:00:00','19 A Seva Sardar Nagar'),(12,'JMB Catering',0,0,0,'2025-03-26 17:06:55.582000','Basic Package',999,1,0,_binary '\0',1,'2025-10-10','03:40:00','19 A Seva Sardar Nagar'),(13,'JMB Catering',1,1,1,'2025-03-26 17:10:38.227000','Basic Package',1319,1,1,_binary '\0',1,'2025-12-05','02:30:00','19 A Seva Sardar Nagar');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packages` (
  `package_type` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `per_plate_price` float NOT NULL,
  PRIMARY KEY (`package_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'19 - A Seva Sardar Nagar','7898917892','hemanitarishi@gmail.com','Tarishi Hemani','1234','user'),(53,'19 - A Seva Sardar Nagar','7898917892','tarishihemani@gmail.com','Tarishi Hemani','1234','user'),(102,'19 - A Seva Sardar Nagar','7898917892','tarishi@gmail.com','Tarishi Hemani','1256','user'),(103,'19 - A Seva Sardar Nagar','7898917892','tari@gmail.com','Tarishi Hemani','1234','user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_seq`
--

DROP TABLE IF EXISTS `users_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_seq`
--

LOCK TABLES `users_seq` WRITE;
/*!40000 ALTER TABLE `users_seq` DISABLE KEYS */;
INSERT INTO `users_seq` VALUES (201);
/*!40000 ALTER TABLE `users_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-26 17:38:10
