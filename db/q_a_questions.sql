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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `idquestions` int DEFAULT NULL,
  `subject` text,
  `question` text,
  `level` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'math','If in this equation (3x + (-2x))^x, we replace x for 5 which is the',4),(2,'math','How many units are equivalent to 10 tens of thousand.',2),(3,'math','What is the name of the seven -sided polygon.',1),(4,'math','What is the value of the power of zero exponent?',3),(5,'math','What is the derivative of x^2',5),(6,'chemistry','What is the chemical formula of the kitchen salt',3),(7,'chemistry','What is the chemical element with the lowest atomic weight?',2),(8,'chemistry','Which of these elements does the highest pH value have?',5),(9,'chemistry','What are the three main states of matter?',4),(10,'chemistry','What is the chemical symbol of potassium?',1),(11,'Computer basics','All teams must have:',3),(12,'Computer basics','The numbering system that only 0 and 1',5),(13,'Computer basics','They are the physical components of the computer',2),(14,'Computer basics','It is an example of a storage device',1),(15,'Computer basics','What can a text processor be applied?',4),(16,'History','In what year Cristóbal Colón discovered, America.',3),(17,'History','Who was the first man who stepped on the moon?',2),(18,'History','Which of these is not the 7 wonders of the ancient world?',4),(19,'History','What was the name of the first president of the United States?',1),(20,'History','What century is it called Golden Age?',5),(21,'Video Games','What is the profession of the protagonist of Super Mario',1),(22,'Video Games','How many inputs for controls does Nintendo 64 have?',2),(23,'Video Games','What is a career car video game?',3),(24,'Video Games','What is the name of the city that is infected with the T virus?',4),(25,'Video Games','What instrument does the Legend of Zelda link?',5);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
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
