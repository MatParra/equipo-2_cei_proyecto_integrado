-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: relacional
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividad` (
  `Codigo` int NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_de_trabajo`
--

DROP TABLE IF EXISTS `base_de_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_de_trabajo` (
  `Nombre` int NOT NULL,
  `Longitud` varchar(45) DEFAULT NULL,
  `zona` varchar(45) DEFAULT NULL,
  `latitud` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_de_trabajo`
--

LOCK TABLES `base_de_trabajo` WRITE;
/*!40000 ALTER TABLE `base_de_trabajo` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_de_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brigadista`
--

DROP TABLE IF EXISTS `brigadista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brigadista` (
  `Rut` varchar(12) NOT NULL,
  `Nombre` varchar(25) DEFAULT NULL,
  `Fono` int DEFAULT NULL,
  `Empresa_pertenece` varchar(45) DEFAULT NULL,
  `Rol` varchar(30) DEFAULT NULL,
  `Empresa_codigo` int NOT NULL,
  PRIMARY KEY (`Rut`),
  KEY `fk_brigadista_Empresa1_idx` (`Empresa_codigo`),
  CONSTRAINT `fk_brigadista_Empresa1` FOREIGN KEY (`Empresa_codigo`) REFERENCES `empresa` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brigadista`
--

LOCK TABLES `brigadista` WRITE;
/*!40000 ALTER TABLE `brigadista` DISABLE KEYS */;
/*!40000 ALTER TABLE `brigadista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `codigo` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'Borland'),(2,'Lycos'),(3,'Macromedia'),(4,'Lycos'),(5,'Lycos'),(6,'Chami'),(7,'Chami'),(8,'Borland'),(9,'Microsoft'),(10,'Yahoo'),(11,'Adobe'),(12,'Google'),(13,'Apple Systems'),(14,'Sibelius'),(15,'Google'),(16,'Cakewalk'),(17,'Chami'),(18,'Cakewalk'),(19,'Lavasoft'),(20,'Cakewalk'),(21,'Finale'),(22,'Google'),(23,'Apple Systems'),(24,'Finale'),(25,'Macromedia'),(26,'Google'),(27,'Borland'),(28,'Macromedia'),(29,'Macromedia'),(30,'Yahoo'),(31,'Macromedia'),(32,'Adobe'),(33,'Sibelius'),(34,'Cakewalk'),(35,'Apple Systems'),(36,'Apple Systems'),(37,'Finale'),(38,'Borland'),(39,'Cakewalk'),(40,'Macromedia'),(41,'Borland'),(42,'Lavasoft'),(43,'Lycos'),(44,'Borland'),(45,'Finale'),(46,'Chami'),(47,'Finale'),(48,'Cakewalk'),(49,'Adobe'),(50,'Yahoo'),(51,'Finale'),(52,'Apple Systems'),(53,'Adobe'),(54,'Finale'),(55,'Lavasoft'),(56,'Altavista'),(57,'Adobe'),(58,'Borland'),(59,'Borland'),(60,'Yahoo'),(61,'Finale'),(62,'Chami'),(63,'Macromedia'),(64,'Google'),(65,'Lycos'),(66,'Cakewalk'),(67,'Lavasoft'),(68,'Google'),(69,'Chami'),(70,'Chami'),(71,'Adobe'),(72,'Macromedia'),(73,'Lavasoft'),(74,'Cakewalk'),(75,'Microsoft'),(76,'Sibelius'),(77,'Sibelius'),(78,'Google'),(79,'Borland'),(80,'Yahoo'),(81,'Altavista'),(82,'Apple Systems'),(83,'Google'),(84,'Lycos'),(85,'Borland'),(86,'Adobe'),(87,'Google'),(88,'Sibelius'),(89,'Chami'),(90,'Apple Systems'),(91,'Adobe'),(92,'Macromedia'),(93,'Microsoft'),(94,'Macromedia'),(95,'Macromedia'),(96,'Apple Systems'),(97,'Sibelius'),(98,'Yahoo'),(99,'Finale'),(100,'Lycos');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipamiento`
--

DROP TABLE IF EXISTS `equipamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipamiento` (
  `Motobomba` varchar(45) DEFAULT NULL,
  `Motocierra` varchar(45) DEFAULT NULL,
  `Stock_de_combustible` varchar(45) DEFAULT NULL,
  `Kit_meteorologico` varchar(45) DEFAULT NULL,
  `Stock_de_espuma` varchar(45) DEFAULT NULL,
  `Codigo` int NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamiento`
--

LOCK TABLES `equipamiento` WRITE;
/*!40000 ALTER TABLE `equipamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_brigada`
--

DROP TABLE IF EXISTS `tipo_de_brigada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_de_brigada` (
  `N_personal` int NOT NULL,
  `cap_maxima` int DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`N_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_brigada`
--

LOCK TABLES `tipo_de_brigada` WRITE;
/*!40000 ALTER TABLE `tipo_de_brigada` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_de_brigada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_movil`
--

DROP TABLE IF EXISTS `tipo_movil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_movil` (
  `Matricula_patente` varchar(8) NOT NULL,
  `Tipo` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`Matricula_patente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_movil`
--

LOCK TABLES `tipo_movil` WRITE;
/*!40000 ALTER TABLE `tipo_movil` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_movil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad`
--

DROP TABLE IF EXISTS `unidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidad` (
  `Codigo` int NOT NULL,
  `Tipo_de_brigada_N_personal` int NOT NULL,
  `base_de_trabajo_Nombre` int NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `fk_Unidad_Tipo_de_brigada1_idx` (`Tipo_de_brigada_N_personal`),
  KEY `fk_Unidad_base_de_trabajo1_idx` (`base_de_trabajo_Nombre`),
  CONSTRAINT `fk_Unidad_base_de_trabajo1` FOREIGN KEY (`base_de_trabajo_Nombre`) REFERENCES `base_de_trabajo` (`Nombre`),
  CONSTRAINT `fk_Unidad_Tipo_de_brigada1` FOREIGN KEY (`Tipo_de_brigada_N_personal`) REFERENCES `tipo_de_brigada` (`N_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad`
--

LOCK TABLES `unidad` WRITE;
/*!40000 ALTER TABLE `unidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `unidad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-21 15:02:16
