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
-- Table structure for table `species`
--

DROP TABLE IF EXISTS `species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `species` (
  `id` int NOT NULL,
  `average_height` text,
  `average_lifespan` text,
  `classification` text,
  `created` datetime DEFAULT NULL,
  `designation` text,
  `edited` datetime DEFAULT NULL,
  `eye_colors` text,
  `hair_colors` text,
  `homeworld` int DEFAULT NULL,
  `language` text,
  `name` text,
  `skin_colors` text,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species`
--

LOCK TABLES `species` WRITE;
/*!40000 ALTER TABLE `species` DISABLE KEYS */;
INSERT INTO `species` VALUES (1,'180','120','mammal',NULL,'sentient',NULL,'brown, blue, green, hazel, grey, amber','blonde, brown, black, red',9,'Galactic Basic','Human','caucasian, black, asian, hispanic'),(2,'n/a','indefinite','artificial',NULL,'sentient',NULL,'n/a','n/a',NULL,'n/a','Droid','n/a'),(3,'210','400','mammal',NULL,'sentient',NULL,'blue, green, yellow, brown, golden, red','black, brown',14,'Shyriiwook','Wookie','gray'),(4,'170','unknown','sentient',NULL,'reptilian',NULL,'black','n/a',23,'Galatic Basic','Rodian','green, blue'),(5,'300','1000','gastropod',NULL,'sentient',NULL,'yellow, red','n/a',24,'Huttese','Hutt','green, brown, tan'),(6,'66','900','mammal',NULL,'sentient',NULL,'brown, green, yellow','brown, white',28,'Galactic basic','Yoda\'s species','green, yellow'),(7,'200','unknown','reptile',NULL,'sentient',NULL,'yellow, orange','none',29,'Dosh','Trandoshan','brown, green'),(8,'160','unknown','amphibian',NULL,'sentient',NULL,'yellow','none',31,'Mon Calamarian','Mon Calamari','red, blue, brown, magenta'),(9,'100','unknown','mammal',NULL,'sentient',NULL,'orange, brown','white, brown, black',7,'Ewokese','Ewok','brown'),(10,'180','unknown','mammal',NULL,'sentient',NULL,'black','none',33,'Sullutese','Sullustan','pale'),(11,'180','unknown','unknown',NULL,'sentient',NULL,'red, pink','none',18,'Neimoidia','Neimodian','grey, green'),(12,'190','unknown','amphibian',NULL,'sentient',NULL,'orange','none',8,'Gungan basic','Gungan','brown, green'),(13,'120','91','mammal',NULL,'sentient',NULL,'yellow','none',34,'Toydarian','Toydarian','blue, green, grey'),(14,'100','unknown','mammal',NULL,'sentient',NULL,'yellow, blue','none',35,'Dugese','Dug','brown, purple, grey, red'),(15,'200','unknown','mammals',NULL,'sentient',NULL,'blue, brown, orange, pink','none',37,'Twi\'leki','Twi\'lek','orange, yellow, blue, green, pink, purple, tan'),(16,'80','79','reptile',NULL,'sentient',NULL,'unknown','none',38,'Aleena','Aleena','blue, gray'),(17,'100','unknown','unknown',NULL,'sentient',NULL,'yellow','none',39,'vulpterish','Vulptereen','grey'),(18,'125','unknown','unknown',NULL,'sentient',NULL,'black','none',40,'Xextese','Xexto','grey, yellow, purple'),(19,'200','unknown','unknown',NULL,'sentient',NULL,'orange','none',41,'Tundan','Toong','grey, green, yellow'),(20,'200','unknown','mammal',NULL,'sentient',NULL,'hazel','red, blond, black, white',43,'Cerean','Cerean','pale pink'),(21,'180','70','amphibian',NULL,'sentient',NULL,'black','none',44,'Nautila','Nautolan','green, blue, brown, red'),(22,'180','unknown','mammal',NULL,'sentient',NULL,'brown, orange','black',45,'Zabraki','Zabrak','pale, brown, red, orange, yellow'),(23,'unknown','unknown','mammal',NULL,'sentient',NULL,'blue, indigo','unknown',46,'unknown','Tholothian','dark'),(24,'180','unknown','unknown',NULL,'sentient',NULL,'orange','none',47,'Iktotchese','Iktotchi','pink'),(25,'240','86','mammal',NULL,'sentient',NULL,'yellow','none',48,'Quermian','Quermian','white'),(26,'180','70','unknown',NULL,'sentient',NULL,'black, silver','none',49,'Kel Dor','Kel Dor','peach, orange, red'),(27,'190','unknown','amphibian',NULL,'sentient',NULL,'blue','none',50,'Chagria','Chagrian','blue'),(28,'178','unknown','insectoid',NULL,'sentient',NULL,'green, hazel','none',11,'Geonosian','Geonosian','green, brown'),(29,'180','unknown','mammal',NULL,'sentient',NULL,'blue, green, red, yellow, brown, orange','black, brown',51,'Mirialan','Mirialan','yellow, green'),(30,'180','70','reptilian',NULL,'sentient',NULL,'yellow','none',54,'Clawdite','Clawdite','green, yellow'),(31,'178','75','amphibian',NULL,'sentient',NULL,'yellow','none',55,'besalisk','Besalisk','brown'),(32,'220','80','amphibian',NULL,'sentient',NULL,'black','none',10,'Kaminoan','Kaminoan','grey, blue'),(33,'unknown','unknown','mammal',NULL,'sentient',NULL,'unknown','none',56,'Skakoan','Skakoan','grey, green'),(34,'190','100','mammal',NULL,'sentient',NULL,'black','none',57,'Muun','Muun','grey, white'),(35,'180','94','mammal',NULL,'sentient',NULL,'red, orange, yellow, green, blue, black','none',58,'Togruti','Togruta','red, white, orange, yellow, green, blue'),(36,'170','80','reptile',NULL,'sentient',NULL,'yellow','none',59,'Kaleesh','Kaleesh','brown, orange, tan'),(37,'190','700','mammal',NULL,'sentient',NULL,'black','none',12,'Utapese','Pau\'an','grey');
/*!40000 ALTER TABLE `species` ENABLE KEYS */;
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
