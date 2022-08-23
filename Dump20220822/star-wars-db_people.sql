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
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `id` int NOT NULL,
  `birth_year` text,
  `created` datetime DEFAULT NULL,
  `edited` datetime DEFAULT NULL,
  `eye_color` text,
  `gender` text,
  `hair_color` text,
  `height` text,
  `homeworld` int DEFAULT NULL,
  `mass` text,
  `name` text,
  `skin_color` text,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'19BBY',NULL,NULL,'blue','male','blond','172',1,'77','Luke Skywalker','fair'),(2,'112BBY',NULL,NULL,'yellow','n/a','n/a','167',1,'75','C-3PO','gold'),(3,'33BBY',NULL,NULL,'red','n/a','n/a','96',8,'32','R2-D2','white, blue'),(4,'41.9BBY',NULL,NULL,'yellow','male','none','202',1,'136','Darth Vader','white'),(5,'19BBY',NULL,NULL,'brown','female','brown','150',2,'49','Leia Organa','light'),(6,'52BBY',NULL,NULL,'blue','male','brown, grey','178',1,'120','Owen Lars','light'),(7,'47BBY',NULL,NULL,'blue','female','brown','165',1,'75','Beru Whitesun lars','light'),(8,'unknown',NULL,NULL,'red','n/a','n/a','97',1,'32','R5-D4','white, red'),(9,'24BBY',NULL,NULL,'brown','male','black','183',1,'84','Biggs Darklighter','light'),(10,'57BBY',NULL,NULL,'blue-gray','male','auburn, white','182',20,'77','Obi-Wan Kenobi','fair'),(11,'41.9BBY',NULL,NULL,'blue','male','blond','188',1,'84','Anakin Skywalker','fair'),(12,'64BBY',NULL,NULL,'blue','male','auburn, grey','180',21,'unknown','Wilhuff Tarkin','fair'),(13,'200BBY',NULL,NULL,'blue','male','brown','228',14,'112','Chewbacca','unknown'),(14,'29BBY',NULL,NULL,'brown','male','brown','180',22,'80','Han Solo','fair'),(15,'44BBY',NULL,NULL,'black','male','n/a','173',23,'74','Greedo','green'),(16,'600BBY',NULL,NULL,'orange','hermaphrodite','n/a','175',24,'1,358','Jabba Desilijic Tiure','green-tan, brown'),(18,'21BBY',NULL,NULL,'hazel','male','brown','170',22,'77','Wedge Antilles','fair'),(19,'unknown',NULL,NULL,'blue','male','brown','180',26,'110','Jek Tono Porkins','fair'),(20,'896BBY',NULL,NULL,'brown','male','white','66',28,'17','Yoda','green'),(21,'82BBY',NULL,NULL,'yellow','male','grey','170',8,'75','Palpatine','pale'),(22,'31.5BBY',NULL,NULL,'brown','male','black','183',10,'78.2','Boba Fett','fair'),(23,'15BBY',NULL,NULL,'red','none','none','200',28,'140','IG-88','metal'),(24,'53BBY',NULL,NULL,'red','male','none','190',29,'113','Bossk','green'),(25,'31BBY',NULL,NULL,'brown','male','black','177',30,'79','Lando Calrissian','dark'),(26,'37BBY',NULL,NULL,'blue','male','none','175',6,'79','Lobot','light'),(27,'41BBY',NULL,NULL,'orange','male','none','180',31,'83','Ackbar','brown mottle'),(28,'48BBY',NULL,NULL,'blue','female','auburn','150',32,'unknown','Mon Mothma','fair'),(29,'unknown',NULL,NULL,'brown','male','brown','unknown',28,'unknown','Arvel Crynyd','fair'),(30,'8BBY',NULL,NULL,'brown','male','brown','88',7,'20','Wicket Systri Warrick','brown'),(31,'unknown',NULL,NULL,'black','male','none','160',33,'68','Nien Nunb','grey'),(32,'92BBY',NULL,NULL,'blue','male','brown','193',28,'89','Qui-Gon Jinn','fair'),(33,'unknown',NULL,NULL,'red','male','none','191',18,'90','Nute Gunray','mottled green'),(34,'91BBY',NULL,NULL,'blue','male','blond','170',9,'unknown','Finis Valorum','fair'),(35,'46BBY',NULL,NULL,'brown','female','brown','185',8,'45','Padm� Amidala','light'),(36,'52BBY',NULL,NULL,'orange','male','none','196',8,'66','Jar Jar Binks','orange'),(37,'unknown',NULL,NULL,'orange','male','none','224',8,'82','Roos Tarpals','grey'),(38,'unknown',NULL,NULL,'orange','male','none','206',8,'unknown','Rugor Nass','green'),(39,'unknown',NULL,NULL,'blue','male','brown','183',8,'unknown','Ric Oli�','fair'),(40,'unknown',NULL,NULL,'yellow','male','black','137',34,'unknown','Watto','blue, grey'),(41,'unknown',NULL,NULL,'orange','male','none','112',35,'40','Sebulba','grey, red'),(42,'62BBY',NULL,NULL,'brown','male','black','183',8,'unknown','Quarsh Panaka','dark'),(43,'72BBY',NULL,NULL,'brown','female','black','163',1,'unknown','Shmi Skywalker','fair'),(44,'54BBY',NULL,NULL,'yellow','male','none','175',36,'80','Darth Maul','red'),(45,'unknown',NULL,NULL,'pink','male','none','180',37,'unknown','Bib Fortuna','pale'),(46,'48BBY',NULL,NULL,'hazel','female','none','178',37,'55','Ayla Secura','blue'),(47,'unknown',NULL,NULL,'unknown','male','none','79',38,'15','Ratts Tyerel','grey, blue'),(48,'unknown',NULL,NULL,'yellow','male','none','94',39,'45','Dud Bolt','blue, grey'),(49,'unknown',NULL,NULL,'black','male','none','122',40,'unknown','Gasgano','white, blue'),(50,'unknown',NULL,NULL,'orange','male','none','163',41,'65','Ben Quadinaros','grey, green, yellow'),(51,'72BBY',NULL,NULL,'brown','male','none','188',42,'84','Mace Windu','dark'),(52,'92BBY',NULL,NULL,'yellow','male','white','198',43,'82','Ki-Adi-Mundi','pale'),(53,'unknown',NULL,NULL,'black','male','none','196',44,'87','Kit Fisto','green'),(54,'unknown',NULL,NULL,'brown','male','black','171',45,'unknown','Eeth Koth','brown'),(55,'unknown',NULL,NULL,'blue','female','none','184',9,'50','Adi Gallia','dark'),(56,'unknown',NULL,NULL,'orange','male','none','188',47,'unknown','Saesee Tiin','pale'),(57,'unknown',NULL,NULL,'yellow','male','none','264',48,'unknown','Yarael Poof','white'),(58,'22BBY',NULL,NULL,'black','male','none','188',49,'80','Plo Koon','orange'),(59,'unknown',NULL,NULL,'blue','male','none','196',50,'unknown','Mas Amedda','blue'),(60,'unknown',NULL,NULL,'brown','male','black','185',8,'85','Gregar Typho','dark'),(61,'unknown',NULL,NULL,'brown','female','brown','157',8,'unknown','Cord�','light'),(62,'82BBY',NULL,NULL,'blue','male','brown','183',1,'unknown','Cliegg Lars','fair'),(63,'unknown',NULL,NULL,'yellow','male','none','183',11,'80','Poggle the Lesser','green'),(64,'58BBY',NULL,NULL,'blue','female','black','170',51,'56.2','Luminara Unduli','yellow'),(65,'40BBY',NULL,NULL,'blue','female','black','166',51,'50','Barriss Offee','yellow'),(66,'unknown',NULL,NULL,'brown','female','brown','165',8,'unknown','Dorm�','light'),(67,'102BBY',NULL,NULL,'brown','male','white','193',52,'80','Dooku','fair'),(68,'67BBY',NULL,NULL,'brown','male','black','191',2,'unknown','Bail Prestor Organa','tan'),(69,'66BBY',NULL,NULL,'brown','male','black','183',53,'79','Jango Fett','tan'),(70,'unknown',NULL,NULL,'yellow','female','blonde','168',54,'55','Zam Wesell','fair, green, yellow'),(71,'unknown',NULL,NULL,'yellow','male','none','198',55,'102','Dexter Jettster','brown'),(72,'unknown',NULL,NULL,'black','male','none','229',10,'88','Lama Su','grey'),(73,'unknown',NULL,NULL,'black','female','none','213',10,'unknown','Taun We','grey'),(74,'unknown',NULL,NULL,'blue','female','white','167',9,'unknown','Jocasta Nu','fair'),(75,'unknown',NULL,NULL,'red, blue','female','none','96',28,'unknown','R4-P17','silver, red'),(76,'unknown',NULL,NULL,'unknown','male','none','193',56,'48','Wat Tambor','green, grey'),(77,'unknown',NULL,NULL,'gold','male','none','191',57,'unknown','San Hill','grey'),(78,'unknown',NULL,NULL,'black','female','none','178',58,'57','Shaak Ti','red, blue, white'),(79,'unknown',NULL,NULL,'green, yellow','male','none','216',59,'159','Grievous','brown, white'),(80,'unknown',NULL,NULL,'blue','male','brown','234',14,'136','Tarfful','brown'),(81,'unknown',NULL,NULL,'brown','male','brown','188',2,'79','Raymus Antilles','light'),(82,'unknown',NULL,NULL,'white','female','none','178',60,'48','Sly Moore','pale'),(83,'unknown',NULL,NULL,'black','male','none','206',12,'80','Tion Medon','grey');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
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
