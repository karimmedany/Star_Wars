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
-- Table structure for table `films_starships`
--

DROP TABLE IF EXISTS `films_starships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films_starships` (
  `film_id` int NOT NULL,
  `starship_id` int NOT NULL,
  PRIMARY KEY (`film_id`,`starship_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films_starships`
--

LOCK TABLES `films_starships` WRITE;
/*!40000 ALTER TABLE `films_starships` DISABLE KEYS */;
INSERT INTO `films_starships` VALUES (1,2),(1,3),(1,5),(1,9),(1,10),(1,11),(1,12),(1,13),(2,3),(2,10),(2,11),(2,12),(2,15),(2,17),(2,21),(2,22),(2,23),(3,2),(3,3),(3,10),(3,11),(3,12),(3,15),(3,17),(3,22),(3,23),(3,27),(3,28),(3,29),(4,31),(4,32),(4,39),(4,40),(4,41),(5,21),(5,32),(5,39),(5,43),(5,47),(5,48),(5,49),(5,52),(5,58),(6,2),(6,32),(6,48),(6,59),(6,61),(6,63),(6,64),(6,65),(6,66),(6,68),(6,74),(6,75);
/*!40000 ALTER TABLE `films_starships` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-22 16:12:30
