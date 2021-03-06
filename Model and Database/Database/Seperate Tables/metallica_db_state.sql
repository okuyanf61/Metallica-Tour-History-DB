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
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(22) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`state_id`),
  KEY `fk_state_country1_idx` (`country_id`),
  CONSTRAINT `fk_state_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'California',1),(2,'Oregon',1),(3,'Washington',1),(4,'Utah',1),(5,'Idaho',1),(6,'Nevada',1),(7,'New York',1),(8,'Pennsylvania',1),(9,'North Carolina',1),(10,'Wisconsin',1),(11,'Texas',1),(12,'Saskatchewan',2),(13,'Manitoba',2),(14,'South Dakota',1),(15,'North Dakota',1),(16,'Nebraska',1),(17,'Minnesota',1),(18,'Helsinki',3),(19,'Stockholm',4),(20,'Oslo',5),(21,'Leipzig',6),(22,'Kraków',7),(23,'Munich',6),(24,'Geneva',8),(25,'Stuttgart',6),(26,'Budapest',9),(27,'Prague',10),(28,'Vienna',11),(29,'Hamburg',6),(30,'Herning',12),(31,'Mannheim',6),(32,'Bologna',13),(33,'Turin',13),(34,'Barcelona',14),(35,'Madrid',14),(36,'Lisbon',15),(37,'Antwerp',16),(38,'Birmingham',17),(39,'Manchester',17),(40,'Scotland',18),(41,'London',17),(42,'Cologne',6),(43,'Lyon',19),(44,'Paris',19),(45,'Amsterdam',20),(46,'Copenhagen',12),(47,'Alberta',2),(48,'British Columbia',2),(49,'Arizona',1),(50,'Quebec',2),(51,'Ontario',2),(52,'Michigan',1),(53,'Georgia',1),(54,'Florida',1),(55,'Illinois',1),(56,'Iowa',1),(57,'Colorado',1),(58,'Missouri',1),(59,'Ohio',1),(60,'Massachusetts',1),(61,'New Jersey',1),(62,'Maryland',1),(63,'Santiago',21),(64,'Buenos Aires',22),(65,'São Paulo',23),(66,'Mexico City',24),(67,'Singapore',25),(68,'Chek Lap Kok',26),(69,'Beijing',27),(70,'Shanghai',27),(71,'Seoul',28),(72,'Berlin',6),(73,'San José',29),(74,'Guatemala City',30),(75,'Bogotá',31),(76,'Quito',32),(77,'San Juan',33),(78,'Rio De Janeiro',23),(79,'Leeds',17),(80,'Reading',17),(81,'Moscow',34),(82,'St. Petersburg',34),(83,'Gothenburg',4),(84,'Bergen',5),(85,'Milan',13),(86,'Gelsenkirchen',6),(87,'D.C.',1),(88,'Istanbul',35),(89,'Warsaw',7),(90,'Stevenage',17),(91,'Basel',8),(92,'Werchter',16),(93,'Rome',13),(94,'Pilton',17),(95,'Landgraaf',20),(96,'Nürburg',6),(97,'Nuremberg',6),(98,'Horsens',12),(99,'Asunción',36),(100,'Lima',37),(101,'South Shetland Islands',38),(102,'Jakarta',39),(103,'Kuala Lumpur',40),(104,'Osaka',41),(105,'Tokyo',41),(106,'Roskilde',12),(107,'Johannesburg',42),(108,'Cape Town',42),(109,'Abu Dhabi',43),(110,'Perth',44),(111,'Adelaide',44),(112,'Melbourne',44),(113,'Sydney',44),(114,'Brisbane',44),(115,'Louisiana',1),(116,'Nickelsdorf',11),(117,'Castle Donington',17),(118,'Yverdon-Les-Bains',8),(119,'Udine',13),(120,'Belgrade',45),(121,'Bangalore',46),(122,'Delhi',46),(123,'Nova Scotia',2),(124,'Amnéville',19),(125,'Auckland',47),(126,'Christchurch',47),(127,'Bucharest',48),(128,'Athens',49),(129,'Sofia',50),(130,'Jonschwil',8),(131,'Tel Aviv',51),(132,'Zagreb',52),(133,'Northern Ireland',53),(134,'Vilnius',54),(135,'Tallinn',55),(136,'Riga',56),(137,'Caracas',57),(138,'Panama City',58),(139,'Monterrey',24),(140,'Guadalajara',24),(141,'Porto Alegre',23),(142,'Córdoba',22),(143,'Virginia',1),(144,'Indiana',1),(145,'Tennessee',1),(146,'Dublin',59),(147,'Pori',3),(148,'Hultsfred',4),(149,'Zürich',8),(150,'Nimes',19),(151,'Hockenheim',6),(152,'Nijmegen',20),(153,'Oberhausen',6),(154,'Frankfurt',6),(155,'Rotterdam',20),(156,'Newcastle',17),(157,'Sheffield',17),(158,'Nottingham',17),(159,'Arkansas',1),(160,'Oklahoma',1),(161,'New Mexico',1),(162,'Saint-Denis',19),(163,'Hasselt',16),(164,'Arras',19),(165,'Chorzów',7),(166,'Aarhus',12),(167,'Bilbao',14),(168,'Imola',13),(169,'Arnhem',20),(170,'Durban',42),(171,'Centurion',42),(172,'Kansas',1),(173,'Reykjavik',60),(174,'Padova',13),(175,'Zaragoza',14),(176,'Bremen',6),(177,'Ludwigshafen',6),(178,'Kentucky',1),(179,'Wyoming',1),(180,'Gold Coast',44),(181,'Erfurt',6),(182,'Hanover',6),(183,'Nagoya',41),(184,'Sapporo',41),(185,'Gräfenhainichen',6),(186,'Konstanz',6),(187,'Salzburg',11),(188,'Vigo',14),(189,'Gijón',14),(190,'Milton Keynes',17),(191,'Belfort',19),(192,'Turku',3),(193,'Kiev',61),(194,'Minden',6),(195,'St. Gallen',8),(196,'Plovdiv',50),(197,'Ljubljana',62),(198,'Eindhoven',20),(199,'Alaska',1),(200,'Hawaii',1),(201,'Connecticut',1),(202,'Fukuoka',41),(203,'Hiroshima',41),(204,'Yokohama',41),(205,'Wellington',47),(206,'Mississippi',1),(207,'Rhode Island',1),(208,'Utrecht',20),(209,'Bielefeld',6),(210,'Oldenburg',6),(211,'Dortmund',6),(212,'Cardiff',63),(213,'Marseille',19),(214,'San Sebastian',14),(215,'Gent',16),(216,'Kiel',6),(217,'Brunssum',20),(218,'Katowice',7),(219,'West Virginia',1),(220,'Vermont',1),(221,'Northwest Territories',2),(222,'New Hampshire',1),(223,'Torhout',16),(224,'Bratislava',64),(225,'Brno',10),(226,'Dusseldorf',6),(227,'Manila',65),(228,'Bangkok',66),(229,'South Carolina',1),(230,'New Brunswick',2),(231,'Den Bosch',20),(232,'Alabama',1),(233,'Montana',1),(234,'Maine',1),(235,'Modena',13),(236,'Graz',11),(237,'Mainz',6),(238,'Leiden',20),(239,'Zwolle',20),(240,'Delaware',1),(241,'Kawasaki',41),(242,'Regensburg',6),(243,'Brussels',16),(244,'Heidelberg',6),(245,'Würzburg',6),(246,'Saarbrücken',6),(247,'Lillestrom',5),(248,'Newport',63),(249,'Bradford',17),(250,'Montpellier',19),(251,'Toulon',19),(252,'Pamplona',14),(253,'Bern',8),(254,'Pforzheim',6),(255,'Clermont-Ferrand',19),(256,'Strasbourg',19),(257,'Essen',6),(258,'Nice',19),(259,'Bordeaux',19),(260,'Osnabrück',6),(261,'Holstebro',12),(262,'Genk',16),(263,'Offenbach',6),(264,'Toulouse',19),(265,'Lund',4),(266,'Jyväskylä',3),(267,'St. Goarshausen',6),(268,'Nivala',3),(269,'Lieto',3),(270,'Sindelfingen',6),(271,'Marseilles',19),(272,'Poperinge',16),(273,'Rouen',19),(274,'Le Bourget',19),(275,'Zwaagwesteinde',20),(276,'Oldenzaal',20),(277,'Blackburn',17),(278,'Dunstable',17),(279,'Hanley',17);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-04  1:03:10
