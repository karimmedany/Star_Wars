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
-- Table structure for table `planets`
--

DROP TABLE IF EXISTS `planets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planets` (
  `id` int NOT NULL,
  `climate` text,
  `created` datetime DEFAULT NULL,
  `diameter` text,
  `edited` datetime DEFAULT NULL,
  `gravity` text,
  `name` text,
  `orbital_period` text,
  `population` text,
  `rotation_period` text,
  `surface_water` text,
  `terrain` text,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planets`
--

LOCK TABLES `planets` WRITE;
/*!40000 ALTER TABLE `planets` DISABLE KEYS */;
INSERT INTO `planets` VALUES (1,'arid',NULL,'10465',NULL,'1 standard','Tatooine','304','200000','23','1','desert'),(2,'temperate',NULL,'12500',NULL,'1 standard','Alderaan','364','2000000000','24','40','grasslands, mountains'),(3,'temperate, tropical',NULL,'10200',NULL,'1 standard','Yavin IV','4818','1000','24','8','jungle, rainforests'),(4,'frozen',NULL,'7200',NULL,'1.1 standard','Hoth','549','unknown','23','100','tundra, ice caves, mountain ranges'),(5,'murky',NULL,'8900',NULL,'N/A','Dagobah','341','unknown','23','8','swamp, jungles'),(6,'temperate',NULL,'118000',NULL,'1.5 (surface), 1 standard (Cloud City)','Bespin','5110','6000000','12','0','gas giant'),(7,'temperate',NULL,'4900',NULL,'0.85 standard','Endor','402','30000000','18','8','forests, mountains, lakes'),(8,'temperate',NULL,'12120',NULL,'1 standard','Naboo','312','41000000000','26','12','grassy hills, swamps, forests, mountains'),(9,'temperate',NULL,'12240',NULL,'1 standard','Coruscant','368','1000000000000','24','unknown','cityscape, mountains'),(10,'temperate',NULL,'19720',NULL,'1 standard','Kamino','463','1000000000','27','100','ocean'),(11,'temperate, arid',NULL,'11370',NULL,'0.9 standard','Geonosis','256','100000000000','30','5','rock, desert, mountain, barren'),(12,'temperate, arid, windy',NULL,'12900',NULL,'1 standard','Utapau','351','910000000','27','0.9','scrublands, savanna, canyons, sinkholes'),(13,'hot',NULL,'4200',NULL,'1 standard','Mustafar','412','20000','36','0','volcanoes, lava rivers, mountains, caves'),(14,'tropical',NULL,'12765',NULL,'1 standard','Kashyyyk','381','410000000','26','60','jungle, forests, lakes, rivers'),(15,'artificial temperate ',NULL,'0',NULL,'0.56 standard','Polis Massa','590','1000000','24','0','airless asteroid'),(16,'frigid',NULL,'10088',NULL,'1 standard','Mygeeto','167','19000000','12','unknown','glaciers, mountains, ice canyons'),(17,'hot, humid',NULL,'9100',NULL,'0.75 standard','Felucia','231','81000000','34','unknown','fungus forests'),(18,'temperate, moist',NULL,'0',NULL,'1 standard','Cato Neimoidia','278','10000000','25','unknown','mountains, fields, forests, rock arches'),(19,'hot',NULL,'14920',NULL,'unknown','Saleucami','392','1400000000','26','unknown','caves, desert, mountains, volcanoes'),(20,'temperate',NULL,'0',NULL,'1 standard','Stewjon','unknown','unknown','unknown','unknown','grass'),(21,'polluted',NULL,'13490',NULL,'1 standard','Eriadu','360','22000000000','24','unknown','cityscape'),(22,'temperate',NULL,'11000',NULL,'1 standard','Corellia','329','3000000000','25','70','plains, urban, hills, forests'),(23,'hot',NULL,'7549',NULL,'1 standard','Rodia','305','1300000000','29','60','jungles, oceans, urban, swamps'),(24,'temperate',NULL,'12150',NULL,'1 standard','Nal Hutta','413','7000000000','87','unknown','urban, oceans, swamps, bogs'),(25,'temperate',NULL,'9830',NULL,'1 standard','Dantooine','378','1000','25','unknown','oceans, savannas, mountains, grasslands'),(26,'temperate',NULL,'6400',NULL,'unknown','Bestine IV','680','62000000','26','98','rocky islands, oceans'),(27,'temperate',NULL,'14050',NULL,'1 standard','Ord Mantell','334','4000000000','26','10','plains, seas, mesas'),(28,'unknown',NULL,'0',NULL,'unknown','unknown','0','unknown','0','unknown','unknown'),(29,'arid',NULL,'0',NULL,'0.62 standard','Trandosha','371','42000000','25','unknown','mountains, seas, grasslands, deserts'),(30,'arid',NULL,'0',NULL,'1 standard','Socorro','326','300000000','20','unknown','deserts, mountains'),(31,'temperate',NULL,'11030',NULL,'1','Mon Cala','398','27000000000','21','100','oceans, reefs, islands'),(32,'temperate',NULL,'13500',NULL,'1','Chandrila','368','1200000000','20','40','plains, forests'),(33,'superheated',NULL,'12780',NULL,'1','Sullust','263','181000000000','20','5','mountains, volcanoes, rocky deserts'),(34,'temperate',NULL,'7900',NULL,'1','Toydaria','184','11000000','21','unknown','swamps, lakes'),(35,'arid, temperate, tropical',NULL,'18880',NULL,'1.56','Malastare','201','2000000000','26','unknown','swamps, deserts, jungles, mountains'),(36,'temperate',NULL,'10480',NULL,'0.9','Dathomir','491','5200','24','unknown','forests, deserts, savannas'),(37,'temperate, arid, subartic',NULL,'10600',NULL,'1','Ryloth','305','11000000000','30','5','mountains, valleys, deserts, tundra'),(38,'unknown',NULL,'unknown',NULL,'unknown','Aleen Minor','unknown','unknown','unknown','unknown','unknown'),(39,'temperate, artic',NULL,'14900',NULL,'1','Vulpter','391','421000000','22','unknown','urban, barren'),(40,'unknown',NULL,'unknown',NULL,'unknown','Troiken','unknown','unknown','unknown','unknown','desert, tundra, rainforests, mountains'),(41,'unknown',NULL,'12190',NULL,'unknown','Tund','1770','0','48','unknown','barren, ash'),(42,'temperate',NULL,'10120',NULL,'0.98','Haruun Kal','383','705300','25','unknown','toxic cloudsea, plateaus, volcanoes'),(43,'temperate',NULL,'unknown',NULL,'1','Cerea','386','4100000000','27','20','verdant'),(44,'tropical, temperate',NULL,'15600',NULL,'1','Glee Anselm','206','1000000000','33','80','lakes, islands, swamps, seas'),(45,'unknown',NULL,'unknown',NULL,'unknown','Iridonia','413','unknown','29','unknown','rocky canyons, acid pools'),(46,'unknown',NULL,'unknown',NULL,'unknown','Tholoth','unknown','unknown','unknown','unknown','unknown'),(47,'arid, rocky, windy',NULL,'unknown',NULL,'1','Iktotch','481','unknown','22','unknown','rocky'),(48,'unknown',NULL,'unknown',NULL,'unknown','Quermia','unknown','unknown','unknown','unknown','unknown'),(49,'temperate',NULL,'13400',NULL,'1','Dorin','409','unknown','22','unknown','unknown'),(50,'temperate',NULL,'unknown',NULL,'1','Champala','318','31000000000','27','unknown','oceans, rainforests, plateaus'),(51,'unknown',NULL,'unknown',NULL,'unknown','Mirial','unknown','unknown','unknown','unknown','deserts'),(52,'unknown',NULL,'unknown',NULL,'unknown','Serenno','unknown','unknown','unknown','unknown','rainforests, rivers, mountains'),(53,'unknown',NULL,'unknown',NULL,'unknown','Concord Dawn','unknown','unknown','unknown','unknown','jungles, forests, deserts'),(54,'unknown',NULL,'unknown',NULL,'unknown','Zolan','unknown','unknown','unknown','unknown','unknown'),(55,'frigid',NULL,'unknown',NULL,'unknown','Ojom','unknown','1000000000','unknown','100','oceans, glaciers'),(56,'temperate',NULL,'unknown',NULL,'1','Skako','384','1000000000000','27','unknown','urban, vines'),(57,'temperate',NULL,'13800',NULL,'1','Muunilinst','412','10000000000','28','25','plains, forests, hills, mountains'),(58,'temperate',NULL,'unknown',NULL,'1','Shili','unknown','unknown','unknown','unknown','cities, savannahs, seas, plains'),(59,'arid, temperate, tropical',NULL,'13850',NULL,'1','Kalee','378','4000000000','23','unknown','rainforests, cliffs, canyons, seas'),(60,'unknown',NULL,'unknown',NULL,'unknown','Umbara','unknown','unknown','unknown','unknown','unknown');
/*!40000 ALTER TABLE `planets` ENABLE KEYS */;
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
