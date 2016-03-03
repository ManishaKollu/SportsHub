CREATE DATABASE  IF NOT EXISTS `sportshub` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sportshub`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: sportshub
-- ------------------------------------------------------
-- Server version	5.5.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `applyemployment`
--

DROP TABLE IF EXISTS `applyemployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applyemployment` (
  `studemail` varchar(30) DEFAULT NULL,
  `enumber` int(11) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `game` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  KEY `studemail` (`studemail`),
  KEY `applyemployment_ibfk_2` (`enumber`),
  CONSTRAINT `applyemployment_ibfk_2` FOREIGN KEY (`enumber`) REFERENCES `employment` (`employmentid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `applyemployment_ibfk_1` FOREIGN KEY (`studemail`) REFERENCES `studentaccount` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applyemployment`
--

/*!40000 ALTER TABLE `applyemployment` DISABLE KEYS */;
INSERT INTO `applyemployment` VALUES ('abhi@ram.com',NULL,'abhi','ram','Real Madrid Vs FC Barcilona','Official'),('abhi@ram.com',NULL,'aa','ram','Real Madrid Vs FC Barcilona','Score Keeper'),('abhi@ram.com',NULL,'abhi','ram','Real Madrid Vs FC Barcilona','Official'),('abhi@ram.com',NULL,'aa','aaa','Real Madrid Vs FC Barcilona','Official'),('abhi@ram.com',NULL,'ram','a','Real Madrid Vs FC Barcilona','Official');
/*!40000 ALTER TABLE `applyemployment` ENABLE KEYS */;

--
-- Table structure for table `applytraining`
--

DROP TABLE IF EXISTS `applytraining`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applytraining` (
  `stuemail` varchar(30) NOT NULL,
  `availability` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stuemail`),
  KEY `tnumber` (`availability`),
  CONSTRAINT `applytraining_ibfk_1` FOREIGN KEY (`stuemail`) REFERENCES `studentaccount` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applytraining`
--

/*!40000 ALTER TABLE `applytraining` DISABLE KEYS */;
INSERT INTO `applytraining` VALUES ('abhi@ram.com','Evening 6:00 PM - 9:00 PM','nasar','Professional',' smnamndsasda                       ');
/*!40000 ALTER TABLE `applytraining` ENABLE KEYS */;

--
-- Table structure for table `employment`
--

DROP TABLE IF EXISTS `employment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employment` (
  `employmentid` int(11) NOT NULL AUTO_INCREMENT,
  `etype` varchar(30) DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`employmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employment`
--

/*!40000 ALTER TABLE `employment` DISABLE KEYS */;
INSERT INTO `employment` VALUES (101,'Official',NULL,'20','Real Madrid Vs FC Barcilona','Recfields'),(112,'Score Keeper',NULL,'4','Real Madrid Vs FC Barcilona','College ground');
/*!40000 ALTER TABLE `employment` ENABLE KEYS */;

--
-- Table structure for table `livescore`
--

DROP TABLE IF EXISTS `livescore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livescore` (
  `gameID` int(11) NOT NULL DEFAULT '100',
  `TeamA` varchar(50) DEFAULT NULL,
  `TeamB` varchar(50) DEFAULT NULL,
  `ScoreA` int(11) DEFAULT NULL,
  `ScoreB` varchar(50) DEFAULT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`gameID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livescore`
--

/*!40000 ALTER TABLE `livescore` DISABLE KEYS */;
INSERT INTO `livescore` VALUES (100,'FCB','ReamMadrid',2,'3','Its going good');
/*!40000 ALTER TABLE `livescore` ENABLE KEYS */;

--
-- Table structure for table `newsdata`
--

DROP TABLE IF EXISTS `newsdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsdata` (
  `number` int(11) NOT NULL AUTO_INCREMENT,
  `ndescription` varchar(500) DEFAULT NULL,
  `ntype` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `nemail` varchar(30) NOT NULL,
  PRIMARY KEY (`number`),
  KEY `nemail` (`nemail`),
  CONSTRAINT `newsdata_ibfk_1` FOREIGN KEY (`nemail`) REFERENCES `staffaccount` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsdata`
--

/*!40000 ALTER TABLE `newsdata` DISABLE KEYS */;
INSERT INTO `newsdata` VALUES (1,'Leo Messi has been named amongst the short list of three candidates for the FIFA Ballon d’Or 2014. The other two contenders are Real Madrid’s Cristiano Ronaldo and Bayern Munich’s Manuel Neuer. The organisers of the award made public this Monday the final three names selected from an original list of 23 candidates which also included Messi’s team mates Javier Mascherano, Andrés Iniesta and Neymar. ',NULL,NULL,'prof1@gmail.com'),(2,'Real Madrid came from behind to overwhelm a Luis Suarez-boosted Barcelona en route to a 3-1 Clasico triumph in La Liga.',NULL,NULL,'prof1@gmail.com'),(3,'           sfdfsfsf             ',NULL,NULL,'prof1@gmail.com');
/*!40000 ALTER TABLE `newsdata` ENABLE KEYS */;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `productnumber` varchar(20) NOT NULL DEFAULT '',
  `sdescription` varchar(50) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `semail` varchar(30) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`productnumber`),
  KEY `shop_ibfk_1` (`semail`),
  CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`semail`) REFERENCES `staffaccount` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES ('1XX1','abc',200.00,3,'prof@gmail.com','bisket'),('1XX4','def',200.00,3,'prof1@gmail.com','item'),('xbox one','better performance',320.00,1,'prof1@gmail.com','xbox one');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `email` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('aaa',NULL),('bbb',NULL);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;

--
-- Table structure for table `staffaccount`
--

DROP TABLE IF EXISTS `staffaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffaccount` (
  `email` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `sport` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffaccount`
--

/*!40000 ALTER TABLE `staffaccount` DISABLE KEYS */;
INSERT INTO `staffaccount` VALUES ('prof1@gmail.com','hgf','John','MR','xyz','1234546','cricket'),('prof@gmail.com','hgf','Paul','MR','xyz','1234546','soccer');
/*!40000 ALTER TABLE `staffaccount` ENABLE KEYS */;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `email` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('aaaq'),('qq');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

--
-- Table structure for table `studentaccount`
--

DROP TABLE IF EXISTS `studentaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentaccount` (
  `email` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `position` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentaccount`
--

/*!40000 ALTER TABLE `studentaccount` DISABLE KEYS */;
INSERT INTO `studentaccount` VALUES ('abhi@ram.com','abhi','abhiram','pulijala','9342','0431','1');
/*!40000 ALTER TABLE `studentaccount` ENABLE KEYS */;

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training` (
  `trainingnumber` int(11) NOT NULL AUTO_INCREMENT,
  `ttype` varchar(200) DEFAULT NULL,
  `tdescription` varchar(50) DEFAULT NULL,
  `tday` varchar(10) DEFAULT NULL,
  `ttime` varchar(50) DEFAULT NULL,
  `instructor` varchar(30) DEFAULT NULL,
  `staffemail` varchar(30) DEFAULT NULL,
  `positions` int(11) DEFAULT NULL,
  PRIMARY KEY (`trainingnumber`),
  KEY `staffemail` (`staffemail`),
  CONSTRAINT `training_ibfk_1` FOREIGN KEY (`staffemail`) REFERENCES `staffaccount` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training`
--

/*!40000 ALTER TABLE `training` DISABLE KEYS */;
INSERT INTO `training` VALUES (2,NULL,NULL,'Oct 15','afternoon 3:00 PM - 6:00 PM','Paul',NULL,5),(3,NULL,NULL,'Dec 15','Evening 6:00 PM - 9:00 PM','maher',NULL,10),(4,NULL,NULL,'Jan 10','Night  8:00 PM - 11:00 PM','Paul',NULL,15),(1002,NULL,NULL,'12-03-214','afternoon 3:00 PM - 6:00 PM','John',NULL,20);
/*!40000 ALTER TABLE `training` ENABLE KEYS */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userID` varchar(50) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `emailAddr` varchar(100) DEFAULT NULL,
  `address1Field` varchar(80) DEFAULT NULL,
  `address2Field` varchar(80) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipPostalCode` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Abhiram','Abhiram','Pulijala','abhiram.003@gmail.com','UT_Drive','charlotte,NC','Charlotte','NC','28262','USA','abhiram123'),('Manisha','Manisha','Kollu','manisha.002@gmail.com','UT_Drive','charlotte,NC','Charlotte','NC','28262','USA','manisha123'),('Radhika','Radhika','bhattar','radhika.007@gmail.com','UT_Drive','charlotte,NC','Charlotte','NC','28262','USA','radhika123'),('Santoshi','Santoshi','Reddy','santoshi.001@gmail.com','UT_Drive','charlotte,NC','Charlotte','NC','28262','USA','santoshi123'),('Sourabh','Sourabh','Shah','sourabh.004@gmail.com','UT_Drive','charlotte,NC','Charlotte','NC','28262','USA','sourabh123'),('Vivek','Vivek','vk','vivek.005@gmail.com','UT_Drive','charlotte,NC','Charlotte','NC','28262','USA','vivek123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

--
-- Table structure for table `userpass`
--

DROP TABLE IF EXISTS `userpass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpass` (
  `Username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpass`
--

/*!40000 ALTER TABLE `userpass` DISABLE KEYS */;
INSERT INTO `userpass` VALUES ('david','david123'),('radhika','radhika123'),('vivek','vivek123');
/*!40000 ALTER TABLE `userpass` ENABLE KEYS */;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrole` (
  `Username` varchar(15) NOT NULL,
  `Rolename` varchar(15) NOT NULL,
  PRIMARY KEY (`Username`,`Rolename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES ('david','user'),('radhika','admin'),('vivek','admin');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
