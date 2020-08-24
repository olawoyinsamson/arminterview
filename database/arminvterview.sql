CREATE DATABASE  IF NOT EXISTS `arm_interview` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `arm_interview`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: arm_interview
-- ------------------------------------------------------
-- Server version	5.7.26-log

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog` (
  `BlogId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Banner` text NOT NULL,
  `Content` longtext NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` int(10) unsigned NOT NULL,
  PRIMARY KEY (`BlogId`),
  KEY `blog_ibfk_1_idx` (`CreatedBy`),
  CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`CreatedBy`) REFERENCES `user` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'Creating light weight application testing one','assets/img/b1.jpg','Recently, lots of light-weight Apps succeed in the background of the Internet decentralizing, lots of lightweight Apps succeeded. In a way, light-weight design is the current mainstream. Lightweight design not only means the App should be in a style of simplicity, more importantly, it represents a more visualized and accurate information communication and a more well-bedded framework. On the one hand, it helps users to be directly guided to what is the most important and needed. On the other hand, a concise interface is far more friendly to ensure a satisfying user experience.\r\n\r\nHere are 5 most important principles on designing a possibly perfect Lightweight App.\r\n\r\n1.Color minimalism\r\nWhy the Jet-black iPhone 7P is so admired? The answer may be summarized in a word— purity. It’s the same story in design field. Since the rainbow-colored era has passed, designers need to attract users with simplicity and purity. Every single color should be very carefully used. The following are three questions we designers should asked ourselves before the work is done:\r\n\r\nIs there any redundant color that leads uses to something unimportant?\r\n\r\nIs there any color not harmonious with the operational mood?','2020-08-24 12:59:00',1),(2,'GoLang','data:image/jpeg;base64,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','Go is an open source programming language that makes it easy to build simple, reliable, and efficient software.\r\nFeatured articles\r\nGo 1.15 is released\r\nPublished 11 August 2020\r\nKeeping Your Modules Compatible\r\nPublished 7 July 2020','2020-08-24 13:39:44',1);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiry`
--

DROP TABLE IF EXISTS `inquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inquiry` (
  `InquiryId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ClientName` varchar(45) NOT NULL,
  `ClientEmail` varchar(45) NOT NULL,
  `ClientMessage` longtext NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`InquiryId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry`
--

LOCK TABLES `inquiry` WRITE;
/*!40000 ALTER TABLE `inquiry` DISABLE KEYS */;
INSERT INTO `inquiry` VALUES (5,'Olawoyin Adewunmi','sammy4living@gmail.com','fsdfsdfdsfds','2020-08-24 13:41:53'),(6,'Olawoyin Samson','sammy4living@gmail.com','Testing contact us page','2020-08-24 13:52:19');
/*!40000 ALTER TABLE `inquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login` (
  `LoginId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UserId` int(10) unsigned NOT NULL,
  `Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`LoginId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,1,'33172F03B6B473DECF2F2587BC5E1A2F');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `UserId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Administrator','admin@abccompany.com','2020-08-24 12:17:55');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'arm_interview'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-24 15:13:01
