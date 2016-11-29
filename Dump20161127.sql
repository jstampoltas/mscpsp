-- MySQL dump 10.13  Distrib 5.7.13, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: mscpsp
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.19-MariaDB

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
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `status` tinytext NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `school` int(10) unsigned NOT NULL,
  `email` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_members_1_idx` (`school`),
  CONSTRAINT `fk_members_1` FOREIGN KEY (`school`) REFERENCES `school` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,0,'act','Admin','Admin','6948157841',1,'admin@sb.gr','admin','12345'),(2,1,'act','School','1','6924815672',1,'school1@sb.gr','school1','12345'),(3,1,'act','School','2','6921846759',2,'school2@sb.gr','school2','12345'),(4,1,'act','School','3','6924875158',3,'school3@sb.gr','school3','1234'),(5,2,'act','Student','1','6978418514',1,'student1@sb.gr','student1','12345'),(6,2,'act','Student','2','6934879584',2,'student2@sb.gr','student2','12345'),(7,2,'act','Student','3','6985481846',3,'student3@sb.gr','student3','12345'),(8,3,'act','Teacher','1','6948784515',1,'teacher1@sb.gr','teacher1','12345'),(9,3,'act','Teacher','2','6391846697',2,'teacher2@sb.gr','teacher2','12345'),(10,3,'act','Teacher','3','6978413485',3,'teacher3@sb.gr','teacher3','12345'),(11,4,'act','Parent','1','6948751548',1,'parent1@sb.gr','parent1','12345'),(12,4,'act','Parent','2','6948215543',2,'parent2@sb.gr','parent2','12345'),(13,4,'act','Parent','3','6984156485',3,'parent3@sb.gr','parent3','12345');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `status` tinytext NOT NULL,
  `county` varchar(45) NOT NULL,
  `town` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'2ο Λύκειο','Λύκειο','act','Αττικής','Ζωγράφου','Σολωμού 25','2107858424'),(2,'3ο Γυμνάσιο','Γυμνάσιο','act','Λάρισας','Λάρισα','Κοντολιού 5','2108754258'),(3,'3ο Δημοτικό','Δημοτικό','act','Αττικής','Αθήνα','Ποσειδώνος 37','2109856845'),(15,'Πανεπιστήμιο Πειραιώς','Α.Ε.Ι.','act','Αττικής','Πειραιάς','Θράκης 52','2109485784'),(19,'4ο Λύκειο','Λύκειο','tem','Λάρισας','Λάρισα','Ιωακείμ 23','2104857484');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL,
  `type` tinyint(4) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  CONSTRAINT `fk_messages_1` FOREIGN KEY (`user`) REFERENCES `members` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-27 20:39:27
