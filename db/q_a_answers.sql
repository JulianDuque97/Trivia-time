-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: q_a
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `idanswers` int DEFAULT NULL,
  `idquestion` int DEFAULT NULL,
  `answer` text,
  `t_f` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,'25',1),(2,1,'18',0),(3,1,'30',0),(4,1,'29',0),(5,2,'100,000 units.',1),(6,2,'50,000 units.',0),(7,2,'200,000 units.',0),(8,2,'1500,000 units.',0),(9,3,'Heptagon',1),(10,3,'Hexagon',0),(11,3,'Pentagon',0),(12,3,'Octagon',0),(13,4,'One',1),(14,4,'zero',0),(15,4,'Men one',0),(16,4,'two',0),(17,5,'2x',1),(18,5,'X',0),(19,5,'3x',0),(20,5,'Less x',0),(21,6,'NaCl',1),(22,6,'Na',0),(23,6,'H20',0),(24,6,'Auk',0),(25,7,'Hydrogen',1),(26,7,'Silver',0),(27,7,'Nitrogen',0),(28,7,'Chrome',0),(29,8,'Caustic soda',1),(30,8,'Glycerin',0),(31,8,'Milk',0),(32,8,'Lemon juice',0),(33,9,'Solid, liquid and gaseous.',1),(34,9,'Solid, liquid and frozen',0),(35,9,'Liquid, gaseous and plasma',0),(36,9,'None of the above',0),(37,10,'K',1),(38,10,'Faith',0),(39,10,'Li',0),(40,10,'Be',0),(41,11,'An operating system',1),(42,11,'A desk',0),(43,11,'Screen saver',0),(44,11,'A chair',0),(45,12,'binary',1),(46,12,'Hexadecimal',0),(47,12,'Octal',0),(48,12,'Roman',0),(49,13,'Hardware',1),(50,13,'Software',0),(51,13,'Programs',0),(52,13,'Raton and keyboard',0),(53,14,'HDD',1),(54,14,'RIM',0),(55,14,'Chip set',0),(56,14,'USB',0),(57,15,'Creation, edition, printing',1),(58,15,'Creation, edition, debug',0),(59,15,'Creation, impression',0),(60,15,'edition, printing',0),(61,16,'1492',1),(62,16,'1592',0),(63,16,'1392',0),(64,16,'1692',0),(65,17,'Neil Amstrong',1),(66,17,'Nail Amstrong',0),(67,17,'Neil Amstron',0),(68,17,'Nail Amstron',0),(69,18,'Parthenon',1),(70,18,'Chinese wall',0),(71,18,'Statue of Liberty',0),(72,18,'Eiffel Tower',0),(73,19,'George Washington',1),(74,19,'Georg Washington',0),(75,19,'George Washingto',0),(76,19,'George Washingtong',0),(77,20,'XVI',1),(78,20,'XV',0),(79,20,'XIV',0),(80,20,'XI',0),(81,21,'Plumber',1),(82,21,'Carpenter',0),(83,21,'Firefighter',0),(84,21,'Dairy',0),(85,22,'4',1),(86,22,'3',0),(87,22,'5',0),(88,22,'8',0),(89,23,'Top Gear',1),(90,23,'Forsa',0),(91,23,'Vlur',0),(92,23,'Crash',0),(93,24,'Raccoon City',1),(94,24,'Raccon City',0),(95,24,'Racoon City',0),(96,24,'Racon City',0),(97,25,'Ocarina',1),(98,25,'Flute',0),(99,25,'Trumpet',0),(100,25,'Cordion',0);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-17  1:05:10
