
DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `id` int NOT NULL,
  `created` datetime DEFAULT NULL,
  `director` text,
  `edited` datetime DEFAULT NULL,
  `episode_id` int DEFAULT NULL,
  `opening_crawl` text,
  `producer` text,
  `release_date` datetime DEFAULT NULL,
  `title` text,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'2014-12-10 00:00:00','George Lucas','2014-12-20 00:00:00',4,'It is a period of civil war.\nRebel spaceships, striking\nfrom a hidden base, have won\ntheir first victory against\nthe evil Galactic Empire.\nDuring the battle, Rebel\nspies managed to steal secret\nplans to the Empire\'s\nultimate weapon, the DEATH\nSTAR, an armored space\nstation with enough power\nto destroy an entire planet.\nPursued by the Empire\'s\nsinister agents, Princess\nLeia races home aboard her\nstarship, custodian of the\nstolen plans that can save her\npeople and restore\nfreedom to the galaxy....','Gary Kurtz, Rick McCallum','1977-05-25 00:00:00','A New Hope'),(2,'2014-12-12 00:00:00','Irvin Kershner','2014-12-15 00:00:00',5,'It is a dark time for the\nRebellion. Although the Death\nStar has been destroyed,\nImperial troops have driven the\nRebel forces from their hidden\nbase and pursued them across\nthe galaxy.\nEvading the dreaded Imperial\nStarfleet, a group of freedom\nfighters led by Luke Skywalker\nhas established a new secret\nbase on the remote ice world\nof Hoth.\nThe evil lord Darth Vader,\nobsessed with finding young\nSkywalker, has dispatched\nthousands of remote probes into\nthe far reaches of space....','Gary Kurtz, Rick McCallum','1980-05-17 00:00:00','The Empire Strikes Back'),(3,'2014-12-18 00:00:00','Richard Marquand','2014-12-20 00:00:00',6,'Luke Skywalker has returned to\nhis home planet of Tatooine in\nan attempt to rescue his\nfriend Han Solo from the\nclutches of the vile gangster\nJabba the Hutt.\nLittle does Luke know that the\nGALACTIC EMPIRE has secretly\nbegun construction on a new\narmored space station even\nmore powerful than the first\ndreaded Death Star.\nWhen completed, this ultimate\nweapon will spell certain doom\nfor the small band of rebels\nstruggling to restore freedom\nto the galaxy...','Howard G. Kazanjian, George Lucas, Rick McCallum','1983-05-25 00:00:00','Return of the Jedi'),(4,'2014-12-19 00:00:00','George Lucas','2014-12-20 00:00:00',1,'Turmoil has engulfed the\nGalactic Republic. The taxation\nof trade routes to outlying star\nsystems is in dispute.\nHoping to resolve the matter\nwith a blockade of deadly\nbattleships, the greedy Trade\nFederation has stopped all\nshipping to the small planet\nof Naboo.\nWhile the Congress of the\nRepublic endlessly debates\nthis alarming chain of events,\nthe Supreme Chancellor has\nsecretly dispatched two Jedi\nKnights, the guardians of\npeace and justice in the\ngalaxy, to settle the conflict....','Rick McCallum','1999-05-19 00:00:00','The Phantom Menace'),(5,'2014-12-20 00:00:00','George Lucas','2014-12-20 00:00:00',2,'There is unrest in the Galactic\nSenate. Several thousand solar\nsystems have declared their\nintentions to leave the Republic.\nThis separatist movement,\nunder the leadership of the\nmysterious Count Dooku, has\nmade it difficult for the limited\nnumber of Jedi Knights to maintain \npeace and order in the galaxy.\nSenator Amidala, the former\nQueen of Naboo, is returning\nto the Galactic Senate to vote\non the critical issue of creating\nan ARMY OF THE REPUBLIC\nto assist the overwhelmed\nJedi....','Rick McCallum','2002-05-16 00:00:00','Attack of the Clones'),(6,'2014-12-20 00:00:00','George Lucas','2014-12-20 00:00:00',3,'War! The Republic is crumbling\nunder attacks by the ruthless\nSith Lord, Count Dooku.\nThere are heroes on both sides.\nEvil is everywhere.\nIn a stunning move, the\nfiendish droid leader, General\nGrievous, has swept into the\nRepublic capital and kidnapped\nChancellor Palpatine, leader of\nthe Galactic Senate.\nAs the Separatist Droid Army\nattempts to flee the besieged\ncapital with their valuable\nhostage, two Jedi Knights lead a\ndesperate mission to rescue the\ncaptive Chancellor....','Rick McCallum','2005-05-19 00:00:00','Revenge of the Sith');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
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
