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
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_date` date NOT NULL,
  `expiration_date` date DEFAULT NULL,
  `price` decimal(7,2) NOT NULL,
  `owner_id` int(10) unsigned NOT NULL,
  `grave_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ownerID` (`owner_id`),
  KEY `grave_id` (`grave_id`),
  CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE,
  CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`grave_id`) REFERENCES `grave` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (1,'2013-12-11','2038-12-11',5500.00,20,1),(2,'2010-10-19','2035-10-19',5660.00,19,11),(3,'2002-06-12','2027-06-12',6700.00,18,2),(4,'2004-05-11','2029-05-15',4990.00,17,12),(5,'2012-07-15','2037-07-15',9875.00,16,3),(6,'2012-07-15','2042-07-15',10200.00,15,13),(7,'2008-09-11','2033-09-11',7880.00,12,4),(8,'2005-09-29','2030-09-29',9990.00,11,14),(9,'2010-04-22','2040-04-22',14990.00,10,5),(10,'2007-05-15','2032-05-15',11875.00,9,15),(11,'2000-03-08','2025-03-08',3300.00,8,6),(12,'2001-02-08','2026-02-08',5000.00,7,16),(13,'2006-07-12','2031-07-12',4500.00,6,7),(14,'2001-01-22','2026-01-22',3760.00,5,17),(15,'2000-09-30','2025-09-30',8000.00,4,8),(16,'2015-04-30','2050-04-30',19000.00,3,18),(17,'2016-06-14','2041-06-14',4400.00,2,9),(18,'2014-02-22','2054-02-22',20000.00,1,19),(19,'2009-09-11','2049-09-11',12200.00,13,10),(20,'2018-01-10','2043-01-10',7200.00,14,20);
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
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
