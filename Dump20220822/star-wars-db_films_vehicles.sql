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
-- Table structure for table `films_vehicles`
--

DROP TABLE IF EXISTS `films_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films_vehicles` (
  `film_id` int NOT NULL,
  `vehicle_id` int NOT NULL,
  PRIMARY KEY (`film_id`,`vehicle_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films_vehicles`
--

LOCK TABLES `films_vehicles` WRITE;
/*!40000 ALTER TABLE `films_vehicles` DISABLE KEYS */;
INSERT INTO `films_vehicles` VALUES (1,4),(1,6),(1,7),(1,8),(2,8),(2,14),(2,16),(2,18),(2,19),(2,20),(3,8),(3,16),(3,18),(3,19),(3,24),(3,25),(3,26),(3,30),(4,33),(4,34),(4,35),(4,36),(4,37),(4,38),(4,42),(5,4),(5,44),(5,45),(5,46),(5,50),(5,51),(5,53),(5,54),(5,55),(5,56),(5,57),(6,33),(6,50),(6,53),(6,56),(6,60),(6,62),(6,67),(6,69),(6,70),(6,71),(6,72),(6,73),(6,76);
/*!40000 ALTER TABLE `films_vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-22 16:12:28
