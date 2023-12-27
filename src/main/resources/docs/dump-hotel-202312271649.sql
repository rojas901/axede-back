-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `habitaciones`
--

DROP TABLE IF EXISTS `habitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitaciones` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cupo_maximo` int NOT NULL,
  `disponible` bit(1) NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `tarifa_base` double NOT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `sede_id` bigint DEFAULT NULL,
  `temporada_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpcssd8bu8lhtyno6lfyscjfou` (`sede_id`),
  KEY `FKbb8dbcb3qhbkq5txubr9h8w7x` (`temporada_id`),
  CONSTRAINT `FKbb8dbcb3qhbkq5txubr9h8w7x` FOREIGN KEY (`temporada_id`) REFERENCES `temporadas` (`id`),
  CONSTRAINT `FKpcssd8bu8lhtyno6lfyscjfou` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitaciones`
--

LOCK TABLES `habitaciones` WRITE;
/*!40000 ALTER TABLE `habitaciones` DISABLE KEYS */;
INSERT INTO `habitaciones` VALUES (1,4,_binary '',NULL,NULL,5000,'estandar',1,1),(2,4,_binary '',NULL,NULL,5000,'estandar',1,1),(3,4,_binary '',NULL,NULL,5000,'estandar',1,1),(4,4,_binary '',NULL,NULL,5000,'estandar',1,1),(5,4,_binary '',NULL,NULL,5000,'estandar',1,1),(6,4,_binary '',NULL,NULL,5000,'estandar',1,1),(7,4,_binary '',NULL,NULL,5000,'estandar',1,1),(8,4,_binary '',NULL,NULL,5000,'estandar',1,1),(9,4,_binary '',NULL,NULL,5000,'estandar',1,1),(10,4,_binary '',NULL,NULL,5000,'estandar',1,1),(11,4,_binary '',NULL,NULL,5000,'estandar',1,1),(12,4,_binary '',NULL,NULL,5000,'estandar',1,1),(13,4,_binary '',NULL,NULL,5000,'estandar',1,1),(14,4,_binary '',NULL,NULL,5000,'estandar',1,1),(15,4,_binary '',NULL,NULL,5000,'estandar',1,1),(16,4,_binary '',NULL,NULL,5000,'estandar',1,1),(17,4,_binary '',NULL,NULL,5000,'estandar',1,1),(18,4,_binary '',NULL,NULL,5000,'estandar',1,1),(19,4,_binary '',NULL,NULL,5000,'estandar',1,1),(20,4,_binary '',NULL,NULL,5000,'estandar',1,1),(21,4,_binary '',NULL,NULL,5000,'estandar',1,1),(22,4,_binary '',NULL,NULL,5000,'estandar',1,1),(23,4,_binary '',NULL,NULL,5000,'estandar',1,1),(24,4,_binary '',NULL,NULL,5000,'estandar',1,1),(25,4,_binary '',NULL,NULL,5000,'estandar',1,1),(26,4,_binary '',NULL,NULL,5000,'estandar',1,1),(27,4,_binary '',NULL,NULL,5000,'estandar',1,1),(28,4,_binary '',NULL,NULL,5000,'estandar',1,1),(29,4,_binary '',NULL,NULL,5000,'estandar',1,1),(30,4,_binary '',NULL,NULL,5000,'estandar',1,1),(31,4,_binary '',NULL,NULL,10000,'premium',1,1),(32,4,_binary '',NULL,NULL,10000,'premium',1,1),(33,4,_binary '',NULL,NULL,10000,'premium',1,1);
/*!40000 ALTER TABLE `habitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sedes`
--

DROP TABLE IF EXISTS `sedes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sedes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sedes`
--

LOCK TABLES `sedes` WRITE;
/*!40000 ALTER TABLE `sedes` DISABLE KEYS */;
INSERT INTO `sedes` VALUES (1,'Barranquilla'),(2,'Cali'),(3,'Cartagena');
/*!40000 ALTER TABLE `sedes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporadas`
--

DROP TABLE IF EXISTS `temporadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporadas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_fin` date DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `recargo_temporada` double DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporadas`
--

LOCK TABLES `temporadas` WRITE;
/*!40000 ALTER TABLE `temporadas` DISABLE KEYS */;
INSERT INTO `temporadas` VALUES (1,'2024-03-01','2023-12-01',10000,'alta'),(2,'2024-03-02','2024-11-30',2000,'baja');
/*!40000 ALTER TABLE `temporadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hotel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-27 16:49:26
