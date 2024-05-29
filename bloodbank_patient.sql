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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `PFname` varchar(20) NOT NULL,
  `PLname` varchar(20) DEFAULT NULL,
  `Patient_id` int NOT NULL AUTO_INCREMENT,
  `PBlood_group` varchar(3) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `P_age` int DEFAULT NULL,
  `P_Password` varchar(15) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `P_contact` char(10) DEFAULT NULL,
  `P_email` varchar(25) DEFAULT NULL,
  `E_id` int DEFAULT NULL,
  `D_id` int DEFAULT NULL,
  PRIMARY KEY (`Patient_id`),
  KEY `E_id` (`E_id`),
  KEY `D_id` (`D_id`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`E_id`) REFERENCES `registerer` (`E_id`),
  CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`D_id`) REFERENCES `doctor` (`D_id`)
) ENGINE=InnoDB AUTO_INCREMENT=211220004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('John','Smith',211220001,'O+','731 Fondren,Houston',25,'1234','M','9876543210','John@123',211210002,211250001),('FRANKLIN','Smith',211220002,'O+','731 Fondren,Houston',25,'1234','M','9876543210','John@123',211210002,211250002),('James','Smith',211220003,'AB+','731 Fondren,Houston',25,'1234','M','9876543210','John@123',211210002,211250003);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
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
