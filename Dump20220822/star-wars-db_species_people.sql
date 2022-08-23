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
-- Table structure for table `species_people`
--

DROP TABLE IF EXISTS `species_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `species_people` (
  `species_id` int NOT NULL,
  `people_id` int NOT NULL,
  PRIMARY KEY (`species_id`,`people_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species_people`
--

LOCK TABLES `species_people` WRITE;
/*!40000 ALTER TABLE `species_people` DISABLE KEYS */;
INSERT INTO `species_people` VALUES (1,66),(1,67),(1,68),(1,74),(2,2),(2,3),(2,8),(2,23),(3,13),(3,80),(4,15),(5,16),(6,20),(7,24),(8,27),(9,30),(10,31),(11,33),(12,36),(12,37),(12,38),(13,40),(14,41),(15,45),(15,46),(16,47),(17,48),(18,49),(19,50),(20,52),(21,53),(22,44),(22,54),(23,55),(24,56),(25,57),(26,58),(27,59),(28,63),(29,64),(29,65),(30,70),(31,71),(32,72),(32,73),(33,76),(34,77),(35,78),(36,79),(37,83);
/*!40000 ALTER TABLE `species_people` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-22 16:12:26
