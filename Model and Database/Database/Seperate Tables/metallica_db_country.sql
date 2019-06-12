-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: metallica_db
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'United States\r'),(2,'Canada\r'),(3,'Finland\r'),(4,'Sweden\r'),(5,'Norway\r'),(6,'Germany\r'),(7,'Poland\r'),(8,'Switzerland\r'),(9,'Hungary\r'),(10,'Czech Republic\r'),(11,'Austria\r'),(12,'Denmark\r'),(13,'Italy\r'),(14,'Spain\r'),(15,'Portugal\r'),(16,'Belgium\r'),(17,'England\r'),(18,'Scotland\r'),(19,'France\r'),(20,'Netherlands\r'),(21,'Chile\r'),(22,'Argentina\r'),(23,'Brazil\r'),(24,'Mexico\r'),(25,'Singapore\r'),(26,'Hong Kong\r'),(27,'China\r'),(28,'South Korea\r'),(29,'Costa Rica\r'),(30,'Guatemala\r'),(31,'Colombia\r'),(32,'Ecuador\r'),(33,'Puerto Rico\r'),(34,'Russia\r'),(35,'Turkey\r'),(36,'Paraguay\r'),(37,'Peru\r'),(38,'Antarctica\r'),(39,'Indonesia\r'),(40,'Malaysia\r'),(41,'Japan\r'),(42,'South Africa\r'),(43,'United Arab Emirates'),(44,'Australia\r'),(45,'Serbia\r'),(46,'India\r'),(47,'New Zealand\r'),(48,'Romania\r'),(49,'Greece\r'),(50,'Bulgaria\r'),(51,'Israel\r'),(52,'Croatia\r'),(53,'Northern Ireland\r'),(54,'Lithuania\r'),(55,'Estonia\r'),(56,'Latvia\r'),(57,'Venezuela\r'),(58,'Panama\r'),(59,'Ireland\r'),(60,'Iceland\r'),(61,'Ukraine\r'),(62,'Slovenia\r'),(63,'Wales\r'),(64,'Slovakia\r'),(65,'Phillippines\r'),(66,'Thailand\r');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-04  1:03:08
