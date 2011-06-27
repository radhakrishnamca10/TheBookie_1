CREATE DATABASE  IF NOT EXISTS `locanda` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `locanda`;
-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: locanda
-- ------------------------------------------------------
-- Server version	5.1.49-1ubuntu8.1

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
-- Table structure for table `roomImage`
--

DROP TABLE IF EXISTS `roomImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `id_room` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomImage`
--

LOCK TABLES `roomImage` WRITE;
/*!40000 ALTER TABLE `roomImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `roomImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipCode` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `idNumber` varchar(255) DEFAULT NULL,
  `id_structure` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,'Paolino','Rossi','paolo@rossi.it','06-6789458','Roma, Via Rossini 84','Italy','09123',NULL,NULL,1),(2,'rossini','paolini',NULL,'4444','sdddds','Bangladesh','sddsds',NULL,NULL,1),(3,'rossini','paolini',NULL,'4444','sdddds','Andorra','sddsds',NULL,NULL,1),(4,'ddssd','dsdsdds',NULL,'sdsdsd','sdsdsd','Bangladesh','sdsdsd',NULL,NULL,1),(5,'sandro','pinna',NULL,'23444','4444','Algeria','4444',NULL,NULL,1),(6,'dsdsds','sdsdsd',NULL,'sddssd','sddsds','Barbados','sdssd',NULL,NULL,1),(7,'ddsds','sdsdsd',NULL,'sdssd','fdffd','Angola Republica','cxcxxc',NULL,NULL,1),(8,'dsdsd','ssd',NULL,'sdsd','sdsd','Belarus','ssdsd',NULL,NULL,1),(9,'sd','sdds',NULL,'dssdsd','sdsdsd','Bahrain','sdsdsd',NULL,NULL,1),(10,'dsaa','assad',NULL,'aa','add','Algeria','adda',NULL,NULL,1),(11,'ffdfd','dffdfd',NULL,'fdfdfd','fdfdfd','Barbados','ffddf',NULL,NULL,1),(12,'dsdsd','sddsd',NULL,'sdssd','sddd','Algeria','dsds',NULL,NULL,1),(13,'fdfdf','fdfdfd',NULL,'fdfdfd','dffdfd','Algeria','fdfdf',NULL,NULL,1),(14,'sdsds','dsdsds',NULL,'dsdsds','dsdsd','Angola Republica','dsds',NULL,NULL,1);
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extra`
--

DROP TABLE IF EXISTS `extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `timePriceType` varchar(255) DEFAULT NULL,
  `resourcePriceType` varchar(255) DEFAULT NULL,
  `id_structure` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `availableOnline` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extra`
--

LOCK TABLES `extra` WRITE;
/*!40000 ALTER TABLE `extra` DISABLE KEYS */;
INSERT INTO `extra` VALUES (1,'Breakfast','per Night','per Person',1,'breakfast description',1),(2,'Parking','per Night','per Room',1,'Parking description',NULL);
/*!40000 ALTER TABLE `extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `season` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `id_structure` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES (46,'Bassa Stagione',2011,1),(47,'Alta Stagione',2011,1);
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploadedFacility`
--

DROP TABLE IF EXISTS `uploadedFacility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uploadedFacility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `id_structure` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploadedFacility`
--

LOCK TABLES `uploadedFacility` WRITE;
/*!40000 ALTER TABLE `uploadedFacility` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploadedFacility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `period`
--

DROP TABLE IF EXISTS `period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `id_season` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_period_1` (`id_season`),
  CONSTRAINT `fk_period_1` FOREIGN KEY (`id_season`) REFERENCES `season` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period`
--

LOCK TABLES `period` WRITE;
/*!40000 ALTER TABLE `period` DISABLE KEYS */;
INSERT INTO `period` VALUES (68,'2011-09-01','2011-12-31',46),(69,'2011-05-01','2011-08-31',47);
/*!40000 ALTER TABLE `period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomTypeImage`
--

DROP TABLE IF EXISTS `roomTypeImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomTypeImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `id_roomType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomTypeImage`
--

LOCK TABLES `roomTypeImage` WRITE;
/*!40000 ALTER TABLE `roomTypeImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `roomTypeImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `structureImage`
--

DROP TABLE IF EXISTS `structureImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structureImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `id_structure` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structureImage`
--

LOCK TABLES `structureImage` WRITE;
/*!40000 ALTER TABLE `structureImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `structureImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomTypeFacility`
--

DROP TABLE IF EXISTS `roomTypeFacility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomTypeFacility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_uploadedFacility` int(11) DEFAULT NULL,
  `id_roomType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomTypeFacility`
--

LOCK TABLES `roomTypeFacility` WRITE;
/*!40000 ALTER TABLE `roomTypeFacility` DISABLE KEYS */;
/*!40000 ALTER TABLE `roomTypeFacility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'locanda@locanda.it','locanda');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomFacility`
--

DROP TABLE IF EXISTS `roomFacility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomFacility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_uploadedFacility` int(11) DEFAULT NULL,
  `id_room` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomFacility`
--

LOCK TABLES `roomFacility` WRITE;
/*!40000 ALTER TABLE `roomFacility` DISABLE KEYS */;
/*!40000 ALTER TABLE `roomFacility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `structureFacility`
--

DROP TABLE IF EXISTS `structureFacility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structureFacility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `id_structure` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structureFacility`
--

LOCK TABLES `structureFacility` WRITE;
/*!40000 ALTER TABLE `structureFacility` DISABLE KEYS */;
/*!40000 ALTER TABLE `structureFacility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `structure`
--

DROP TABLE IF EXISTS `structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipCode` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structure`
--

LOCK TABLES `structure` WRITE;
/*!40000 ALTER TABLE `structure` DISABLE KEYS */;
INSERT INTO `structure` VALUES (1,'Polaris','locanda@labos.it','http://www.locanda.it','+39 073','+39 076','Laboratorio Software Open Source ','Pula','Italy','09135','Agriturismo Pixinamanna',1);
/*!40000 ALTER TABLE `structure` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-06-27 18:05:23
