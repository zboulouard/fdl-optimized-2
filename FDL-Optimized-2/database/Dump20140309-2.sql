CREATE DATABASE  IF NOT EXISTS `lhou` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lhou`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: lhou
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `graph`
--

DROP TABLE IF EXISTS `graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph`
--

LOCK TABLES `graph` WRITE;
/*!40000 ALTER TABLE `graph` DISABLE KEYS */;
/*!40000 ALTER TABLE `graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_has_link`
--

DROP TABLE IF EXISTS `graph_has_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_has_link` (
  `graph_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  PRIMARY KEY (`graph_id`,`link_id`),
  KEY `FK708F6E5035085C` (`graph_id`),
  KEY `FK708F6E5021E41D8` (`link_id`),
  CONSTRAINT `FK708F6E5021E41D8` FOREIGN KEY (`link_id`) REFERENCES `link` (`Id`),
  CONSTRAINT `FK708F6E5035085C` FOREIGN KEY (`graph_id`) REFERENCES `graph` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_has_link`
--

LOCK TABLES `graph_has_link` WRITE;
/*!40000 ALTER TABLE `graph_has_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `graph_has_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph_has_node`
--

DROP TABLE IF EXISTS `graph_has_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph_has_node` (
  `graph_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  PRIMARY KEY (`graph_id`,`node_id`),
  KEY `FK70906C58759924D8` (`node_id`),
  KEY `FK70906C5835085C` (`graph_id`),
  CONSTRAINT `FK70906C5835085C` FOREIGN KEY (`graph_id`) REFERENCES `graph` (`id`),
  CONSTRAINT `FK70906C58759924D8` FOREIGN KEY (`node_id`) REFERENCES `node` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph_has_node`
--

LOCK TABLES `graph_has_node` WRITE;
/*!40000 ALTER TABLE `graph_has_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `graph_has_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `source` int(11) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` (`Id`, `source`, `target`, `value`) VALUES (1,0,1,1),(5,0,2,2);
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groups` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nodeDescription_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK33AE022AC6963C` (`nodeDescription_id`),
  CONSTRAINT `FK33AE022AC6963C` FOREIGN KEY (`nodeDescription_id`) REFERENCES `nodedescription` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node`
--

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
INSERT INTO `node` (`id`, `groups`, `name`, `nodeDescription_id`) VALUES (1,0,'N1',NULL),(2,0,'N2',NULL),(3,0,'N3',NULL);
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodedescription`
--

DROP TABLE IF EXISTS `nodedescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodedescription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc1` varchar(255) DEFAULT NULL,
  `desc2` varchar(255) DEFAULT NULL,
  `desc3` varchar(255) DEFAULT NULL,
  `desc4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodedescription`
--

LOCK TABLES `nodedescription` WRITE;
/*!40000 ALTER TABLE `nodedescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `nodedescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lhou'
--

--
-- Dumping routines for database 'lhou'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-09  0:42:10
