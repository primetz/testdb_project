-- MySQL dump 10.13  Distrib 8.1.0, for Linux (x86_64)
--
-- Host: localhost    Database: testdb
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `NL_HOUSES`
--

DROP TABLE IF EXISTS `NL_HOUSES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NL_HOUSES` (
  `ID_NL_HOUSES` int NOT NULL AUTO_INCREMENT,
  `NL_HOUSES_SHORT` varchar(25) NOT NULL,
  PRIMARY KEY (`ID_NL_HOUSES`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NL_HOUSES`
--

LOCK TABLES `NL_HOUSES` WRITE;
/*!40000 ALTER TABLE `NL_HOUSES` DISABLE KEYS */;
INSERT INTO `NL_HOUSES` VALUES (1,'Коттедж'),(2,'Вилла'),(3,'Особняк');
/*!40000 ALTER TABLE `NL_HOUSES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NL_LOG`
--

DROP TABLE IF EXISTS `NL_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NL_LOG` (
  `ID_NL_LOG` int NOT NULL AUTO_INCREMENT,
  `NL_LOG_DATE` date NOT NULL,
  `NL_LOG_TIME` time NOT NULL,
  `NL_LOG_IP` varchar(255) NOT NULL,
  `NL_LOG_IUD` varchar(255) NOT NULL,
  `NL_LOG_TABLE_NAME` varchar(255) NOT NULL,
  `ID_NL_USER` int NOT NULL,
  PRIMARY KEY (`ID_NL_LOG`) USING BTREE,
  KEY `ID_NL_USER` (`ID_NL_USER`) USING BTREE,
  CONSTRAINT `NL_LOG_IBFK_1` FOREIGN KEY (`ID_NL_USER`) REFERENCES `NL_USER` (`ID_NL_USER`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NL_LOG`
--

LOCK TABLES `NL_LOG` WRITE;
/*!40000 ALTER TABLE `NL_LOG` DISABLE KEYS */;
INSERT INTO `NL_LOG` VALUES (1,'2023-09-06','20:42:56','172.19.0.1','add','NL_HOUSES',1),(2,'2023-09-06','20:43:10','172.19.0.1','add','NL_HOUSES',1),(3,'2023-09-06','20:43:26','172.19.0.1','add','NL_HOUSES',1),(4,'2023-09-06','20:44:09','172.19.0.1','add','NL_MATERIAL',1),(5,'2023-09-06','20:44:19','172.19.0.1','add','NL_MATERIAL',1),(6,'2023-09-06','20:44:32','172.19.0.1','add','NL_MATERIAL',1),(7,'2023-09-06','20:52:31','172.19.0.1','add','NL_PROP_RESALE',1),(8,'2023-09-06','20:53:18','172.19.0.1','add','NL_PROP_RESALE',1),(9,'2023-09-06','20:59:53','172.19.0.1','add','NL_PROP_RESALE',1),(10,'2023-09-06','21:00:35','172.19.0.1','add','NL_PROP_RESALE',1),(11,'2023-09-06','21:09:18','172.19.0.1','add','NL_PROP_RESALE',1),(12,'2023-09-06','21:13:15','172.19.0.1','add','NL_PROP_RESALE',1),(13,'2023-09-06','21:13:55','172.19.0.1','add','NL_PROP_RESALE',1),(14,'2023-09-06','21:14:31','172.19.0.1','add','NL_PROP_RESALE',1),(15,'2023-09-06','21:15:05','172.19.0.1','add','NL_PROP_RESALE',1),(16,'2023-09-06','21:15:34','172.19.0.1','add','NL_PROP_RESALE',1),(17,'2023-09-06','21:16:07','172.19.0.1','add','NL_PROP_RESALE',1),(18,'2023-09-06','21:16:43','172.19.0.1','add','NL_PROP_RESALE',1),(19,'2023-09-06','21:17:10','172.19.0.1','add','NL_PROP_RESALE',1),(20,'2023-09-06','21:17:38','172.19.0.1','add','NL_PROP_RESALE',1),(21,'2023-09-06','21:18:05','172.19.0.1','add','NL_PROP_RESALE',1),(22,'2023-09-06','21:18:31','172.19.0.1','add','NL_PROP_RESALE',1),(23,'2023-09-06','21:18:57','172.19.0.1','add','NL_PROP_RESALE',1),(24,'2023-09-06','21:19:24','172.19.0.1','add','NL_PROP_RESALE',1),(25,'2023-09-06','21:19:56','172.19.0.1','add','NL_PROP_RESALE',1),(26,'2023-09-06','21:20:21','172.19.0.1','add','NL_PROP_RESALE',1),(27,'2023-09-06','21:20:49','172.19.0.1','add','NL_PROP_RESALE',1),(28,'2023-09-06','21:21:18','172.19.0.1','add','NL_PROP_RESALE',1),(29,'2023-09-06','23:06:16','172.19.0.1','add','NL_PROP_RESALE',1),(30,'2023-09-06','23:06:44','172.19.0.1','del','NL_PROP_RESALE',1);
/*!40000 ALTER TABLE `NL_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NL_LOG_DETAIL`
--

DROP TABLE IF EXISTS `NL_LOG_DETAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NL_LOG_DETAIL` (
  `ID_NL_LOG_DETAIL` int NOT NULL AUTO_INCREMENT,
  `ID_NL_LOG` int NOT NULL,
  `NL_LOG_DETAIL_OLD` varchar(2550) NOT NULL,
  `NL_LOG_DETAIL_NEW` varchar(2550) NOT NULL,
  `NL_LOG_DETAIL_FIELD` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_NL_LOG_DETAIL`) USING BTREE,
  KEY `ID_NL_LOG` (`ID_NL_LOG`) USING BTREE,
  CONSTRAINT `NL_LOG_DETAIL_IBFK_1` FOREIGN KEY (`ID_NL_LOG`) REFERENCES `NL_LOG` (`ID_NL_LOG`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NL_LOG_DETAIL`
--

LOCK TABLES `NL_LOG_DETAIL` WRITE;
/*!40000 ALTER TABLE `NL_LOG_DETAIL` DISABLE KEYS */;
INSERT INTO `NL_LOG_DETAIL` VALUES (1,1,'','','ID_NL_HOUSES'),(2,1,'','Коттедж','NL_HOUSES_SHORT'),(3,2,'','','ID_NL_HOUSES'),(4,2,'','Вилла','NL_HOUSES_SHORT'),(5,3,'','','ID_NL_HOUSES'),(6,3,'','Особняк','NL_HOUSES_SHORT'),(7,4,'','','ID_NL_MATERIAL'),(8,4,'','Кирпич','NL_MATERIAL_SHORT'),(9,5,'','','ID_NL_MATERIAL'),(10,5,'','Газобетон','NL_MATERIAL_SHORT'),(11,6,'','','ID_NL_MATERIAL'),(12,6,'','Дерево','NL_MATERIAL_SHORT'),(13,7,'','','ID_NL_PROP_RESALE'),(14,7,'','234','NL_PROP_RESALE_AREA_FULL'),(15,7,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(16,7,'','22','NL_PROP_RESALE_FLOOR'),(17,7,'','1213123123','NL_PROP_RESALE_COST_TOTAL'),(18,7,'','','NL_PROP_RESALE_PHONE_OWNER'),(19,7,'','1','ID_NL_VIEW'),(20,7,'','1','ID_NL_USER'),(21,7,'','1','ID_NL_HOUSES'),(22,7,'','1','ID_NL_MATERIAL'),(23,7,'','+79282601474','NL_PROP_RESALE_PHONE'),(24,7,'','[\"/img/prop_resale/PHOTO_URLS__230906_085229.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(25,7,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(26,8,'','','ID_NL_PROP_RESALE'),(27,8,'','2323','NL_PROP_RESALE_AREA_FULL'),(28,8,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(29,8,'','11','NL_PROP_RESALE_FLOOR'),(30,8,'','123123','NL_PROP_RESALE_COST_TOTAL'),(31,8,'','','NL_PROP_RESALE_PHONE_OWNER'),(32,8,'','2','ID_NL_VIEW'),(33,8,'','1','ID_NL_USER'),(34,8,'','2','ID_NL_HOUSES'),(35,8,'','2','ID_NL_MATERIAL'),(36,8,'','+79282601474','NL_PROP_RESALE_PHONE'),(37,8,'','[\"/img/prop_resale/PHOTO_URLS__230906_085310.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(38,8,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(39,9,'','','ID_NL_PROP_RESALE'),(40,9,'','123','NL_PROP_RESALE_AREA_FULL'),(41,9,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(42,9,'','11','NL_PROP_RESALE_FLOOR'),(43,9,'','123233','NL_PROP_RESALE_COST_TOTAL'),(44,9,'','','NL_PROP_RESALE_PHONE_OWNER'),(45,9,'','1','ID_NL_VIEW'),(46,9,'','1','ID_NL_USER'),(47,9,'','3','ID_NL_HOUSES'),(48,9,'','3','ID_NL_MATERIAL'),(49,9,'','+79282601474','NL_PROP_RESALE_PHONE'),(50,9,'','[\"/img/prop_resale/PHOTO_URLS__230906_085945.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(51,9,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(52,10,'','','ID_NL_PROP_RESALE'),(53,10,'','2323','NL_PROP_RESALE_AREA_FULL'),(54,10,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(55,10,'','22','NL_PROP_RESALE_FLOOR'),(56,10,'','22222222','NL_PROP_RESALE_COST_TOTAL'),(57,10,'','','NL_PROP_RESALE_PHONE_OWNER'),(58,10,'','1','ID_NL_VIEW'),(59,10,'','1','ID_NL_USER'),(60,10,'','2','ID_NL_HOUSES'),(61,10,'','2','ID_NL_MATERIAL'),(62,10,'','+79282601474','NL_PROP_RESALE_PHONE'),(63,10,'','[\"/img/prop_resale/PHOTO_URLS__230906_090020.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(64,10,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(65,11,'','','ID_NL_PROP_RESALE'),(66,11,'','323','NL_PROP_RESALE_AREA_FULL'),(67,11,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(68,11,'','22','NL_PROP_RESALE_FLOOR'),(69,11,'','22222222','NL_PROP_RESALE_COST_TOTAL'),(70,11,'','','NL_PROP_RESALE_PHONE_OWNER'),(71,11,'','2','ID_NL_VIEW'),(72,11,'','1','ID_NL_USER'),(73,11,'','1','ID_NL_HOUSES'),(74,11,'','3','ID_NL_MATERIAL'),(75,11,'','+79282601475','NL_PROP_RESALE_PHONE'),(76,11,'','[\"/img/prop_resale/PHOTO_URLS__230906_090858.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(77,11,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(78,12,'','','ID_NL_PROP_RESALE'),(79,12,'','434','NL_PROP_RESALE_AREA_FULL'),(80,12,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(81,12,'','22','NL_PROP_RESALE_FLOOR'),(82,12,'','22323323','NL_PROP_RESALE_COST_TOTAL'),(83,12,'','','NL_PROP_RESALE_PHONE_OWNER'),(84,12,'','2','ID_NL_VIEW'),(85,12,'','1','ID_NL_USER'),(86,12,'','1','ID_NL_HOUSES'),(87,12,'','3','ID_NL_MATERIAL'),(88,12,'','+79282601474','NL_PROP_RESALE_PHONE'),(89,12,'','[\"/img/prop_resale/PHOTO_URLS__230906_091310.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(90,12,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(91,13,'','','ID_NL_PROP_RESALE'),(92,13,'','233','NL_PROP_RESALE_AREA_FULL'),(93,13,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(94,13,'','22','NL_PROP_RESALE_FLOOR'),(95,13,'','22121221','NL_PROP_RESALE_COST_TOTAL'),(96,13,'','','NL_PROP_RESALE_PHONE_OWNER'),(97,13,'','1','ID_NL_VIEW'),(98,13,'','1','ID_NL_USER'),(99,13,'','2','ID_NL_HOUSES'),(100,13,'','1','ID_NL_MATERIAL'),(101,13,'','+79282601474','NL_PROP_RESALE_PHONE'),(102,13,'','','NL_PROP_RESALE_PHOTO_URLS'),(103,13,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(104,14,'','','ID_NL_PROP_RESALE'),(105,14,'','344','NL_PROP_RESALE_AREA_FULL'),(106,14,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(107,14,'','33','NL_PROP_RESALE_FLOOR'),(108,14,'','23232323','NL_PROP_RESALE_COST_TOTAL'),(109,14,'','','NL_PROP_RESALE_PHONE_OWNER'),(110,14,'','1','ID_NL_VIEW'),(111,14,'','1','ID_NL_USER'),(112,14,'','1','ID_NL_HOUSES'),(113,14,'','2','ID_NL_MATERIAL'),(114,14,'','+79282601474','NL_PROP_RESALE_PHONE'),(115,14,'','','NL_PROP_RESALE_PHOTO_URLS'),(116,14,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(117,15,'','','ID_NL_PROP_RESALE'),(118,15,'','3434','NL_PROP_RESALE_AREA_FULL'),(119,15,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(120,15,'','32','NL_PROP_RESALE_FLOOR'),(121,15,'','4343434','NL_PROP_RESALE_COST_TOTAL'),(122,15,'','','NL_PROP_RESALE_PHONE_OWNER'),(123,15,'','1','ID_NL_VIEW'),(124,15,'','1','ID_NL_USER'),(125,15,'','1','ID_NL_HOUSES'),(126,15,'','1','ID_NL_MATERIAL'),(127,15,'','+79282601474','NL_PROP_RESALE_PHONE'),(128,15,'','[\"/img/prop_resale/PHOTO_URLS__230906_091457.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(129,15,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(130,16,'','','ID_NL_PROP_RESALE'),(131,16,'','434','NL_PROP_RESALE_AREA_FULL'),(132,16,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(133,16,'','34','NL_PROP_RESALE_FLOOR'),(134,16,'','4343434','NL_PROP_RESALE_COST_TOTAL'),(135,16,'','','NL_PROP_RESALE_PHONE_OWNER'),(136,16,'','1','ID_NL_VIEW'),(137,16,'','1','ID_NL_USER'),(138,16,'','1','ID_NL_HOUSES'),(139,16,'','1','ID_NL_MATERIAL'),(140,16,'','+79282601474','NL_PROP_RESALE_PHONE'),(141,16,'','','NL_PROP_RESALE_PHOTO_URLS'),(142,16,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(143,17,'','','ID_NL_PROP_RESALE'),(144,17,'','444','NL_PROP_RESALE_AREA_FULL'),(145,17,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(146,17,'','33','NL_PROP_RESALE_FLOOR'),(147,17,'','4343434','NL_PROP_RESALE_COST_TOTAL'),(148,17,'','','NL_PROP_RESALE_PHONE_OWNER'),(149,17,'','1','ID_NL_VIEW'),(150,17,'','1','ID_NL_USER'),(151,17,'','1','ID_NL_HOUSES'),(152,17,'','2','ID_NL_MATERIAL'),(153,17,'','+79282601474','NL_PROP_RESALE_PHONE'),(154,17,'','[\"/img/prop_resale/PHOTO_URLS__230906_091601.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(155,17,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(156,18,'','','ID_NL_PROP_RESALE'),(157,18,'','333','NL_PROP_RESALE_AREA_FULL'),(158,18,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(159,18,'','22','NL_PROP_RESALE_FLOOR'),(160,18,'','3213131','NL_PROP_RESALE_COST_TOTAL'),(161,18,'','','NL_PROP_RESALE_PHONE_OWNER'),(162,18,'','1','ID_NL_VIEW'),(163,18,'','1','ID_NL_USER'),(164,18,'','2','ID_NL_HOUSES'),(165,18,'','3','ID_NL_MATERIAL'),(166,18,'','+79282601474','NL_PROP_RESALE_PHONE'),(167,18,'','[\"/img/prop_resale/PHOTO_URLS__230906_091633.jpg\"]','NL_PROP_RESALE_PHOTO_URLS'),(168,18,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(169,19,'','','ID_NL_PROP_RESALE'),(170,19,'','3434','NL_PROP_RESALE_AREA_FULL'),(171,19,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(172,19,'','22','NL_PROP_RESALE_FLOOR'),(173,19,'','22232323','NL_PROP_RESALE_COST_TOTAL'),(174,19,'','','NL_PROP_RESALE_PHONE_OWNER'),(175,19,'','1','ID_NL_VIEW'),(176,19,'','1','ID_NL_USER'),(177,19,'','1','ID_NL_HOUSES'),(178,19,'','2','ID_NL_MATERIAL'),(179,19,'','+79282601474','NL_PROP_RESALE_PHONE'),(180,19,'','','NL_PROP_RESALE_PHOTO_URLS'),(181,19,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(182,20,'','','ID_NL_PROP_RESALE'),(183,20,'','2323','NL_PROP_RESALE_AREA_FULL'),(184,20,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(185,20,'','32','NL_PROP_RESALE_FLOOR'),(186,20,'','32321323','NL_PROP_RESALE_COST_TOTAL'),(187,20,'','','NL_PROP_RESALE_PHONE_OWNER'),(188,20,'','1','ID_NL_VIEW'),(189,20,'','1','ID_NL_USER'),(190,20,'','1','ID_NL_HOUSES'),(191,20,'','3','ID_NL_MATERIAL'),(192,20,'','+79282601474','NL_PROP_RESALE_PHONE'),(193,20,'','','NL_PROP_RESALE_PHOTO_URLS'),(194,20,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(195,21,'','','ID_NL_PROP_RESALE'),(196,21,'','2323','NL_PROP_RESALE_AREA_FULL'),(197,21,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(198,21,'','2','NL_PROP_RESALE_FLOOR'),(199,21,'','2312313','NL_PROP_RESALE_COST_TOTAL'),(200,21,'','','NL_PROP_RESALE_PHONE_OWNER'),(201,21,'','1','ID_NL_VIEW'),(202,21,'','1','ID_NL_USER'),(203,21,'','3','ID_NL_HOUSES'),(204,21,'','3','ID_NL_MATERIAL'),(205,21,'','+79282601474','NL_PROP_RESALE_PHONE'),(206,21,'','','NL_PROP_RESALE_PHOTO_URLS'),(207,21,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(208,22,'','','ID_NL_PROP_RESALE'),(209,22,'','2323','NL_PROP_RESALE_AREA_FULL'),(210,22,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(211,22,'','22','NL_PROP_RESALE_FLOOR'),(212,22,'','12312313','NL_PROP_RESALE_COST_TOTAL'),(213,22,'','','NL_PROP_RESALE_PHONE_OWNER'),(214,22,'','2','ID_NL_VIEW'),(215,22,'','1','ID_NL_USER'),(216,22,'','1','ID_NL_HOUSES'),(217,22,'','1','ID_NL_MATERIAL'),(218,22,'','+79282601474','NL_PROP_RESALE_PHONE'),(219,22,'','','NL_PROP_RESALE_PHOTO_URLS'),(220,22,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(221,23,'','','ID_NL_PROP_RESALE'),(222,23,'','222','NL_PROP_RESALE_AREA_FULL'),(223,23,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(224,23,'','23','NL_PROP_RESALE_FLOOR'),(225,23,'','23232323','NL_PROP_RESALE_COST_TOTAL'),(226,23,'','','NL_PROP_RESALE_PHONE_OWNER'),(227,23,'','2','ID_NL_VIEW'),(228,23,'','1','ID_NL_USER'),(229,23,'','1','ID_NL_HOUSES'),(230,23,'','2','ID_NL_MATERIAL'),(231,23,'','+79282601474','NL_PROP_RESALE_PHONE'),(232,23,'','','NL_PROP_RESALE_PHOTO_URLS'),(233,23,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(234,24,'','','ID_NL_PROP_RESALE'),(235,24,'','323','NL_PROP_RESALE_AREA_FULL'),(236,24,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(237,24,'','33','NL_PROP_RESALE_FLOOR'),(238,24,'','34324234','NL_PROP_RESALE_COST_TOTAL'),(239,24,'','','NL_PROP_RESALE_PHONE_OWNER'),(240,24,'','2','ID_NL_VIEW'),(241,24,'','1','ID_NL_USER'),(242,24,'','1','ID_NL_HOUSES'),(243,24,'','2','ID_NL_MATERIAL'),(244,24,'','+79282601474','NL_PROP_RESALE_PHONE'),(245,24,'','','NL_PROP_RESALE_PHOTO_URLS'),(246,24,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(247,25,'','','ID_NL_PROP_RESALE'),(248,25,'','3223','NL_PROP_RESALE_AREA_FULL'),(249,25,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(250,25,'','44','NL_PROP_RESALE_FLOOR'),(251,25,'','323232323','NL_PROP_RESALE_COST_TOTAL'),(252,25,'','','NL_PROP_RESALE_PHONE_OWNER'),(253,25,'','1','ID_NL_VIEW'),(254,25,'','1','ID_NL_USER'),(255,25,'','1','ID_NL_HOUSES'),(256,25,'','2','ID_NL_MATERIAL'),(257,25,'','+79282601474','NL_PROP_RESALE_PHONE'),(258,25,'','','NL_PROP_RESALE_PHOTO_URLS'),(259,25,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(260,26,'','','ID_NL_PROP_RESALE'),(261,26,'','343','NL_PROP_RESALE_AREA_FULL'),(262,26,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(263,26,'','33','NL_PROP_RESALE_FLOOR'),(264,26,'','32232323','NL_PROP_RESALE_COST_TOTAL'),(265,26,'','','NL_PROP_RESALE_PHONE_OWNER'),(266,26,'','1','ID_NL_VIEW'),(267,26,'','1','ID_NL_USER'),(268,26,'','1','ID_NL_HOUSES'),(269,26,'','2','ID_NL_MATERIAL'),(270,26,'','+79282601474','NL_PROP_RESALE_PHONE'),(271,26,'','','NL_PROP_RESALE_PHOTO_URLS'),(272,26,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(273,27,'','','ID_NL_PROP_RESALE'),(274,27,'','434','NL_PROP_RESALE_AREA_FULL'),(275,27,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(276,27,'','32','NL_PROP_RESALE_FLOOR'),(277,27,'','323424234','NL_PROP_RESALE_COST_TOTAL'),(278,27,'','','NL_PROP_RESALE_PHONE_OWNER'),(279,27,'','1','ID_NL_VIEW'),(280,27,'','1','ID_NL_USER'),(281,27,'','1','ID_NL_HOUSES'),(282,27,'','2','ID_NL_MATERIAL'),(283,27,'','+79282601474','NL_PROP_RESALE_PHONE'),(284,27,'','','NL_PROP_RESALE_PHOTO_URLS'),(285,27,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(286,28,'','','ID_NL_PROP_RESALE'),(287,28,'','3434','NL_PROP_RESALE_AREA_FULL'),(288,28,'','г.Сочи ул.Ленина','NL_PROP_RESALE_ADDRESS'),(289,28,'','23','NL_PROP_RESALE_FLOOR'),(290,28,'','2323223','NL_PROP_RESALE_COST_TOTAL'),(291,28,'','','NL_PROP_RESALE_PHONE_OWNER'),(292,28,'','1','ID_NL_VIEW'),(293,28,'','1','ID_NL_USER'),(294,28,'','1','ID_NL_HOUSES'),(295,28,'','3','ID_NL_MATERIAL'),(296,28,'','+79282601474','NL_PROP_RESALE_PHONE'),(297,28,'','','NL_PROP_RESALE_PHOTO_URLS'),(298,28,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(299,29,'','','ID_NL_PROP_RESALE'),(300,29,'','232','NL_PROP_RESALE_AREA_FULL'),(301,29,'','','NL_PROP_RESALE_ADDRESS'),(302,29,'','','NL_PROP_RESALE_FLOOR'),(303,29,'','','NL_PROP_RESALE_COST_TOTAL'),(304,29,'','','NL_PROP_RESALE_PHONE_OWNER'),(305,29,'','','ID_NL_VIEW'),(306,29,'','1','ID_NL_USER'),(307,29,'','','ID_NL_HOUSES'),(308,29,'','','ID_NL_MATERIAL'),(309,29,'','+79282601474','NL_PROP_RESALE_PHONE'),(310,29,'','','NL_PROP_RESALE_PHOTO_URLS'),(311,29,'','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22qwer%5Cn%22%7D%5D%7D','NL_PROP_RESALE_DESCRIPTION'),(312,30,'24','','ID_NL_PROP_RESALE'),(313,30,'232.00','','NL_PROP_RESALE_AREA_FULL'),(314,30,'','','NL_PROP_RESALE_ADDRESS'),(315,30,'','','NL_PROP_RESALE_FLOOR'),(316,30,'','','NL_PROP_RESALE_COST_TOTAL'),(317,30,'','','NL_PROP_RESALE_PHONE_OWNER'),(318,30,'','','ID_NL_VIEW'),(319,30,'1','','ID_NL_USER'),(320,30,'','','ID_NL_HOUSES'),(321,30,'','','ID_NL_MATERIAL'),(322,30,'+79282601474','','NL_PROP_RESALE_PHONE'),(323,30,'','','NL_PROP_RESALE_PHOTO_URLS'),(324,30,'%7B%22ops%22%3A%5B%7B%22insert%22%3A%22qwer%5Cn%22%7D%5D%7D','','NL_PROP_RESALE_DESCRIPTION');
/*!40000 ALTER TABLE `NL_LOG_DETAIL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NL_MATERIAL`
--

DROP TABLE IF EXISTS `NL_MATERIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NL_MATERIAL` (
  `ID_NL_MATERIAL` int NOT NULL AUTO_INCREMENT,
  `NL_MATERIAL_SHORT` varchar(25) NOT NULL,
  PRIMARY KEY (`ID_NL_MATERIAL`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NL_MATERIAL`
--

LOCK TABLES `NL_MATERIAL` WRITE;
/*!40000 ALTER TABLE `NL_MATERIAL` DISABLE KEYS */;
INSERT INTO `NL_MATERIAL` VALUES (1,'Кирпич'),(2,'Газобетон'),(3,'Дерево');
/*!40000 ALTER TABLE `NL_MATERIAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NL_PROP_RESALE`
--

DROP TABLE IF EXISTS `NL_PROP_RESALE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NL_PROP_RESALE` (
  `ID_NL_PROP_RESALE` int NOT NULL AUTO_INCREMENT,
  `ID_NL_VIEW` int DEFAULT NULL,
  `NL_PROP_RESALE_FLOOR` varchar(25) DEFAULT NULL,
  `NL_PROP_RESALE_AREA_FULL` decimal(6,2) NOT NULL,
  `NL_PROP_RESALE_PHOTO_URLS` varchar(5100) DEFAULT NULL,
  `NL_PROP_RESALE_COST_TOTAL` int DEFAULT NULL,
  `NL_PROP_RESALE_ADDRESS` varchar(2550) DEFAULT NULL,
  `NL_PROP_RESALE_DESCRIPTION` varchar(5100) DEFAULT NULL,
  `ID_NL_USER` int DEFAULT NULL,
  `NL_PROP_RESALE_PHONE` varchar(50) DEFAULT NULL,
  `NL_PROP_RESALE_PHONE_OWNER` varchar(255) DEFAULT NULL,
  `NL_PROP_RESALE_DATE_INSERT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `NL_PROP_RESALE_DATE_UPDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ID_NL_HOUSES` int DEFAULT NULL,
  `ID_NL_MATERIAL` int DEFAULT NULL,
  PRIMARY KEY (`ID_NL_PROP_RESALE`) USING BTREE,
  KEY `ID_NL_VIEW` (`ID_NL_VIEW`) USING BTREE,
  KEY `ID_NL_HOUSES` (`ID_NL_HOUSES`) USING BTREE,
  KEY `ID_NL_MATERIAL` (`ID_NL_MATERIAL`) USING BTREE,
  CONSTRAINT `nl_prop_resale_ibfk_1` FOREIGN KEY (`ID_NL_VIEW`) REFERENCES `NL_VIEW` (`ID_NL_VIEW`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `nl_prop_resale_ibfk_2` FOREIGN KEY (`ID_NL_HOUSES`) REFERENCES `NL_HOUSES` (`ID_NL_HOUSES`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `nl_prop_resale_ibfk_3` FOREIGN KEY (`ID_NL_MATERIAL`) REFERENCES `NL_MATERIAL` (`ID_NL_MATERIAL`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NL_PROP_RESALE`
--

LOCK TABLES `NL_PROP_RESALE` WRITE;
/*!40000 ALTER TABLE `NL_PROP_RESALE` DISABLE KEYS */;
INSERT INTO `NL_PROP_RESALE` VALUES (1,NULL,'1',555.00,'[\"/img/prop_resale/PHOTO_URLS_3_191201_024304.jpg\"]',1000000,'Россия, Краснодарский край, Анапа, Советская улица ','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%A5%D0%BE%D1%80%D0%BE%D1%88%D0%B0%D1%8F%20%D0%BA%D0%B2%D0%B0%D1%80%D1%82%D0%B8%D1%80%D0%B0%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2019-12-01 11:44:02','2019-12-01 11:44:02',NULL,NULL),(2,1,'22',234.00,'[\"/img/prop_resale/PHOTO_URLS__230906_085229.jpg\"]',1213123123,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 17:52:31','2023-09-06 17:52:31',1,1),(3,2,'11',2323.00,'[\"/img/prop_resale/PHOTO_URLS__230906_085310.jpg\"]',123123,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 17:53:18','2023-09-06 17:53:18',2,2),(4,1,'11',123.00,'[\"/img/prop_resale/PHOTO_URLS__230906_085945.jpg\"]',123233,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 17:59:53','2023-09-06 17:59:53',3,3),(5,1,'22',2323.00,'[\"/img/prop_resale/PHOTO_URLS__230906_090020.jpg\"]',22222222,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:00:35','2023-09-06 18:00:35',2,2),(6,2,'22',323.00,'[\"/img/prop_resale/PHOTO_URLS__230906_090858.jpg\"]',22222222,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601475',NULL,'2023-09-06 18:09:18','2023-09-06 18:09:18',1,3),(7,2,'22',434.00,'[\"/img/prop_resale/PHOTO_URLS__230906_091310.jpg\"]',22323323,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:13:15','2023-09-06 18:13:15',1,3),(8,1,'22',233.00,NULL,22121221,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:13:55','2023-09-06 18:13:55',2,1),(9,1,'33',344.00,NULL,23232323,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:14:31','2023-09-06 18:14:31',1,2),(10,1,'32',3434.00,'[\"/img/prop_resale/PHOTO_URLS__230906_091457.jpg\"]',4343434,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:15:05','2023-09-06 18:15:05',1,1),(11,1,'34',434.00,NULL,4343434,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:15:34','2023-09-06 18:15:34',1,1),(12,1,'33',444.00,'[\"/img/prop_resale/PHOTO_URLS__230906_091601.jpg\"]',4343434,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:16:07','2023-09-06 18:16:07',1,2),(13,1,'22',333.00,'[\"/img/prop_resale/PHOTO_URLS__230906_091633.jpg\"]',3213131,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:16:43','2023-09-06 18:16:43',2,3),(14,1,'22',3434.00,NULL,22232323,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:17:10','2023-09-06 18:17:10',1,2),(15,1,'32',2323.00,NULL,32321323,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:17:38','2023-09-06 18:17:38',1,3),(16,1,'2',2323.00,NULL,2312313,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:18:05','2023-09-06 18:18:05',3,3),(17,2,'22',2323.00,NULL,12312313,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:18:31','2023-09-06 18:18:31',1,1),(18,2,'23',222.00,NULL,23232323,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:18:58','2023-09-06 18:18:58',1,2),(19,2,'33',323.00,NULL,34324234,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:19:24','2023-09-06 18:19:24',1,2),(20,1,'44',3223.00,NULL,323232323,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:19:56','2023-09-06 18:19:56',1,2),(21,1,'33',343.00,NULL,32232323,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:20:21','2023-09-06 18:20:21',1,2),(22,1,'32',434.00,NULL,323424234,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:20:49','2023-09-06 18:20:49',1,2),(23,1,'23',3434.00,NULL,2323223,'г.Сочи ул.Ленина','%7B%22ops%22%3A%5B%7B%22insert%22%3A%22%D0%9E%D1%82%D0%BB%D0%B8%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B4%D0%BE%D0%BC%5Cn%22%7D%5D%7D',1,'+79282601474',NULL,'2023-09-06 18:21:18','2023-09-06 18:21:18',1,3);
/*!40000 ALTER TABLE `NL_PROP_RESALE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NL_USER`
--

DROP TABLE IF EXISTS `NL_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NL_USER` (
  `ID_NL_USER` int NOT NULL AUTO_INCREMENT,
  `ID_NL_USER_PERMISSION` int NOT NULL,
  `NL_USER_LOGIN` varchar(50) NOT NULL,
  `NL_USER_PASSWORD` blob NOT NULL,
  `NL_USER_SHORT` varchar(25) NOT NULL,
  `NL_USER_FULL` varchar(2550) NOT NULL,
  `NL_USER_PHONE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_NL_USER`) USING BTREE,
  KEY `ID_NL_USER_PERMISSION` (`ID_NL_USER_PERMISSION`) USING BTREE,
  CONSTRAINT `NL_USER_IBFK_1` FOREIGN KEY (`ID_NL_USER_PERMISSION`) REFERENCES `NL_USER_PERMISSION` (`ID_NL_USER_PERMISSION`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NL_USER`
--

LOCK TABLES `NL_USER` WRITE;
/*!40000 ALTER TABLE `NL_USER` DISABLE KEYS */;
INSERT INTO `NL_USER` VALUES (1,2,'admin',_binary '�p\�r��*�y�\�ûy','Администратор','Администратор','+79282601474');
/*!40000 ALTER TABLE `NL_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NL_USER_PERMISSION`
--

DROP TABLE IF EXISTS `NL_USER_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NL_USER_PERMISSION` (
  `ID_NL_USER_PERMISSION` int NOT NULL AUTO_INCREMENT,
  `NL_USER_PERMISSION_SHORT` varchar(25) NOT NULL,
  `NL_USER_PERMISSION_FULL` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_NL_USER_PERMISSION`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NL_USER_PERMISSION`
--

LOCK TABLES `NL_USER_PERMISSION` WRITE;
/*!40000 ALTER TABLE `NL_USER_PERMISSION` DISABLE KEYS */;
INSERT INTO `NL_USER_PERMISSION` VALUES (1,'Пользователь','Пользователь'),(2,'Администратор','Администратор'),(3,'Гость','Гость');
/*!40000 ALTER TABLE `NL_USER_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NL_VIEW`
--

DROP TABLE IF EXISTS `NL_VIEW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NL_VIEW` (
  `ID_NL_VIEW` int NOT NULL AUTO_INCREMENT,
  `NL_VIEW_SHORT` varchar(25) NOT NULL,
  PRIMARY KEY (`ID_NL_VIEW`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NL_VIEW`
--

LOCK TABLES `NL_VIEW` WRITE;
/*!40000 ALTER TABLE `NL_VIEW` DISABLE KEYS */;
INSERT INTO `NL_VIEW` VALUES (1,'На море'),(2,'В город');
/*!40000 ALTER TABLE `NL_VIEW` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-06 23:21:22
