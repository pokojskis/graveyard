-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: graveyard
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deadman`
--

DROP TABLE IF EXISTS `deadman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deadman` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `second_name` varchar(20) DEFAULT NULL,
  `surname` varchar(40) DEFAULT NULL,
  `pesel` char(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `death` date DEFAULT NULL,
  `grave_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `grave_id` (`grave_id`),
  CONSTRAINT `deadman_ibfk_1` FOREIGN KEY (`grave_id`) REFERENCES `grave` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deadman`
--

LOCK TABLES `deadman` WRITE;
/*!40000 ALTER TABLE `deadman` DISABLE KEYS */;
INSERT INTO `deadman` VALUES (1,'Zenon','Rafal','Maserak','77070754326','1977-07-07','2009-07-04',1),(2,'Oskar','-','Chajzer','44030654326','1944-03-06','2013-06-05',5),(3,'Grzegorz','Jaroslaw','Schetyna','34050154322','1934-05-01','2012-02-12',20),(4,'Lech','Kamil','Kaczynski','43030454323','1943-03-04','2010-04-10',10),(5,'Donald','Kacper','Tusk','44040554324','1944-04-05','2009-06-10',15),(6,'Janusz','Marian','Rokita','45050654325','1945-05-06','2009-07-11',4),(7,'Jan','Trzeci','Sobieski','29081754326','1629-08-17','1696-06-17',19),(8,'Wladyslaw','Drugi','Jagiello','86030454327','1386-03-04','1434-06-01',3),(9,'Marian','-','Peszek','12030154328','1912-03-01','1999-05-01',18),(10,'Wojciech','Hieronim','Willas','09060554326','1909-06-05','1984-08-12',8),(11,'Mateusz','Wojciech','Mroczek','54030954329','1954-03-09','2004-08-09',13),(12,'Aleksander','Michal','Mroczek','66070954330','1966-07-09','2012-02-04',2),(13,'Olgierd','-','Zamachowski','35020954344','1935-02-09','1992-03-08',17),(14,'Janusz','Mikke','Korwin','55051054329','1955-05-10','2012-04-12',7),(15,'Tomasz','Karol','Kujawski','12041254329','1912-04-12','2009-01-27',12),(16,'Alfons','Oskar','Musial','22050454126','1922-05-04','2003-03-03',16),(17,'Konstanty','Michal','Morawiecki','34111954126','1934-11-19','2001-10-01',6),(18,'Michal','Filip','Koniecpolski','37121854426','1937-12-18','2004-12-16',11),(19,'Mieczyslaw','Adolf','Czarnopolski','29091254726','1929-09-12','2001-10-31',14),(20,'Kasandra','Weronika','Radziwillowna','36022951726','1936-02-29','2016-02-29',9);
/*!40000 ALTER TABLE `deadman` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-09 18:25:01
