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
-- Table structure for table `gravedigger`
--

DROP TABLE IF EXISTS `gravedigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gravedigger` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `surname` varchar(40) NOT NULL,
  `pesel` char(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gravedigger`
--

LOCK TABLES `gravedigger` WRITE;
/*!40000 ALTER TABLE `gravedigger` DISABLE KEYS */;
INSERT INTO `gravedigger` VALUES (1,'Rajan','Gosling','12345678931'),(2,'Dzon','Lennon','12345678932'),(3,'Joko','Ono','12345678933'),(4,'Mefju','Makkonehej','12345678934'),(5,'Mat','Dejmon','12345678935'),(6,'Dzony','Dep','12345678936'),(7,'Orlando','Blum','12345678937'),(8,'Robert','Dalnej-Dzunior','12345678938'),(9,'Kira','Najtli','12345678939'),(10,'Dzenifer','Aninston','12345678940'),(11,'Win','Dizel','12345678941'),(12,'Dzet','Li','12345678942'),(13,'Antonio','Banderas','12345678943'),(14,'Monika','Beluczczi','12345678944'),(15,'Aszton','Kaczer','12345678945'),(16,'Meryl','Strip','12345678946'),(17,'Harison','Ford','12345678947'),(18,'Pepe','DiStefano','12345678948'),(19,'Maryla','Rodowicz','12345678949'),(20,'Litnej','Hjuston','12345678950');
/*!40000 ALTER TABLE `gravedigger` ENABLE KEYS */;
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
