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
-- Table structure for table `films_characters`
--

DROP TABLE IF EXISTS `films_characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films_characters` (
  `film_id` int NOT NULL,
  `people_id` int NOT NULL,
  PRIMARY KEY (`film_id`,`people_id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films_characters`
--

LOCK TABLES `films_characters` WRITE;
/*!40000 ALTER TABLE `films_characters` DISABLE KEYS */;
INSERT INTO `films_characters` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,12),(1,13),(1,14),(1,15),(1,16),(1,18),(1,19),(1,81),(2,1),(2,2),(2,3),(2,4),(2,5),(2,10),(2,13),(2,14),(2,18),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(3,1),(3,2),(3,3),(3,4),(3,5),(3,10),(3,13),(3,14),(3,16),(3,18),(3,20),(3,21),(3,22),(3,25),(3,27),(3,28),(3,29),(3,30),(3,31),(3,45),(4,2),(4,3),(4,10),(4,11),(4,16),(4,20),(4,21),(4,32),(4,33),(4,34),(4,35),(4,36),(4,37),(4,38),(4,39),(4,40),(4,41),(4,42),(4,43),(4,44),(4,46),(4,47),(4,48),(4,49),(4,50),(4,51),(4,52),(4,53),(4,54),(4,55),(4,56),(4,57),(4,58),(4,59),(5,2),(5,3),(5,6),(5,7),(5,10),(5,11),(5,20),(5,21),(5,22),(5,33),(5,35),(5,36),(5,40),(5,43),(5,46),(5,51),(5,52),(5,53),(5,58),(5,59),(5,60),(5,61),(5,62),(5,63),(5,64),(5,65),(5,66),(5,67),(5,68),(5,69),(5,70),(5,71),(5,72),(5,73),(5,74),(5,75),(5,76),(5,77),(5,78),(5,82),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,10),(6,11),(6,12),(6,13),(6,20),(6,21),(6,33),(6,35),(6,46),(6,51),(6,52),(6,53),(6,54),(6,55),(6,56),(6,58),(6,63),(6,64),(6,67),(6,68),(6,75),(6,78),(6,79),(6,80),(6,81),(6,82),(6,83);
/*!40000 ALTER TABLE `films_characters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-22 16:12:29
