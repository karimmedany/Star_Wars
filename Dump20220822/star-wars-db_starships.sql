-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: star-wars-db
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `starships`
--

DROP TABLE IF EXISTS `starships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `starships` (
  `id` int NOT NULL,
  `MGLT` text,
  `hyperdrive_rating` text,
  `starship_class` text,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `starships`
--

LOCK TABLES `starships` WRITE;
/*!40000 ALTER TABLE `starships` DISABLE KEYS */;
INSERT INTO `starships` VALUES (2,'60','2.0','corvette'),(3,'60','2.0','Star Destroyer'),(5,'70','1.0','landing craft'),(9,'10','4.0','Deep Space Mobile Battlestation'),(10,'75','0.5','Light freighter'),(11,'80','1.0','assault starfighter'),(12,'100','1.0','Starfighter'),(13,'105','1.0','Starfighter'),(15,'40','2.0','Star dreadnought'),(17,'20','4.0','Medium transport'),(21,'70','3.0','Patrol craft'),(22,'50','1.0','Armed government transport'),(23,'40','2.0','Escort ship'),(27,'60','1.0','Star Cruiser'),(28,'120','1.0','Starfighter'),(29,'91','2.0','Assault Starfighter'),(31,'unknown','2.0','Space cruiser'),(32,'unknown','2.0','Droid control ship'),(39,'unknown','1.0','Starfighter'),(40,'unknown','1.8','yacht'),(41,'unknown','1.5','Space Transport'),(43,'unknown','0.7','Diplomatic barge'),(47,'unknown','unknown','freighter'),(48,'unknown','1.0','Starfighter'),(49,'unknown','0.9','yacht'),(52,'unknown','0.6','assault ship'),(58,'unknown','1.5','yacht'),(59,'unknown','1.5','capital ship'),(61,'unknown','1.0','transport'),(63,'unknown','1.0','star destroyer'),(64,'unknown','0.5','yacht'),(65,'unknown','1.0','starfighter'),(66,'100','1.0','starfighter'),(68,'unknown','1.0','cruiser'),(74,'unknown','6','starfighter'),(75,'unknown','1.0','starfighter');
/*!40000 ALTER TABLE `starships` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-22 16:12:31
