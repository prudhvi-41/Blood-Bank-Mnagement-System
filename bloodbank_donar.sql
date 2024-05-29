-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: bloodbank
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `donar`
--

DROP TABLE IF EXISTS `donar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donar` (
  `DFName` varchar(20) NOT NULL,
  `DLname` varchar(20) DEFAULT NULL,
  `Donar_id` int NOT NULL AUTO_INCREMENT,
  `D_Password` varchar(15) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `D_age` int DEFAULT NULL,
  `DBlood_group` varchar(3) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `phnumber` char(10) DEFAULT NULL,
  PRIMARY KEY (`Donar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=211230005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donar`
--

LOCK TABLES `donar` WRITE;
/*!40000 ALTER TABLE `donar` DISABLE KEYS */;
INSERT INTO `donar` VALUES ('Franklin','Wong',211230001,'9876','M',30,'O+','Franklin@123Gmail.com','Narela,nitdelhi','8143699288'),('Sesha','Sai',211230002,'1234','M',20,'O+','Sesha@123Gmail.com','ap,nitdelhi','8143699289'),('Prudhvi','Sai',211230003,'3456','M',20,'O+','Prudhvi@123Gmail.com','vizayawada,nitdelhi','8143699287'),('Honey','Chelli',211230004,'5432','F',17,'AB+','Honey@123Gmail.com','Vizag,nitdelhi','8143699286');
/*!40000 ALTER TABLE `donar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-29 11:05:21
