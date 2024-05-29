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
-- Table structure for table `blood_samples`
--

DROP TABLE IF EXISTS `blood_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_samples` (
  `Bds_id` int NOT NULL AUTO_INCREMENT,
  `Collection_date` date DEFAULT NULL,
  `Expiry_date` date DEFAULT NULL,
  `Bloodgroup` varchar(3) DEFAULT NULL,
  `A_id` int DEFAULT NULL,
  `C_id` int DEFAULT NULL,
  `Donar_id` int DEFAULT NULL,
  `D_id` int DEFAULT NULL,
  PRIMARY KEY (`Bds_id`),
  KEY `A_id` (`A_id`),
  KEY `C_id` (`C_id`),
  KEY `D_id` (`D_id`),
  KEY `Donar_id` (`Donar_id`),
  CONSTRAINT `blood_samples_ibfk_1` FOREIGN KEY (`A_id`) REFERENCES `analysis_team` (`A_id`),
  CONSTRAINT `blood_samples_ibfk_2` FOREIGN KEY (`C_id`) REFERENCES `camp` (`C_id`),
  CONSTRAINT `blood_samples_ibfk_3` FOREIGN KEY (`D_id`) REFERENCES `doctor` (`D_id`),
  CONSTRAINT `blood_samples_ibfk_4` FOREIGN KEY (`Donar_id`) REFERENCES `donar` (`Donar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=211260005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_samples`
--

LOCK TABLES `blood_samples` WRITE;
/*!40000 ALTER TABLE `blood_samples` DISABLE KEYS */;
INSERT INTO `blood_samples` VALUES (211260001,'2022-11-01','2022-12-01','O+',211270001,211280001,211230002,NULL),(211260002,'2022-11-02','2022-12-02','O+',211270001,211280002,211230001,NULL),(211260003,'2022-11-03','2022-12-03','AB+',211270001,211280001,211230004,NULL),(211260004,'2022-11-04','2022-12-04','O+',211270001,211280001,211230003,NULL);
/*!40000 ALTER TABLE `blood_samples` ENABLE KEYS */;
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
