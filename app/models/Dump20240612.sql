CREATE DATABASE  IF NOT EXISTS `gestionferreteria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestionferreteria`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: gestionferreteria
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
-- Table structure for table `tclientesxcompras`
--

DROP TABLE IF EXISTS `tclientesxcompras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tclientesxcompras` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `IDpersona` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_tClientesxVentas_tPersonas1_idx` (`IDpersona`),
  CONSTRAINT `fk_tClientesxVentas_tPersonas1` FOREIGN KEY (`IDpersona`) REFERENCES `tpersonas` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tclientesxcompras`
--

LOCK TABLES `tclientesxcompras` WRITE;
/*!40000 ALTER TABLE `tclientesxcompras` DISABLE KEYS */;
/*!40000 ALTER TABLE `tclientesxcompras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testadoproductos`
--

DROP TABLE IF EXISTS `testadoproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testadoproductos` (
  `ID` int NOT NULL,
  `estadoPro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testadoproductos`
--

LOCK TABLES `testadoproductos` WRITE;
/*!40000 ALTER TABLE `testadoproductos` DISABLE KEYS */;
/*!40000 ALTER TABLE `testadoproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testadousuarios`
--

DROP TABLE IF EXISTS `testadousuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testadousuarios` (
  `ID` int NOT NULL,
  `estadoUs` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testadousuarios`
--

LOCK TABLES `testadousuarios` WRITE;
/*!40000 ALTER TABLE `testadousuarios` DISABLE KEYS */;
INSERT INTO `testadousuarios` VALUES (1,'activo');
/*!40000 ALTER TABLE `testadousuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tgenero`
--

DROP TABLE IF EXISTS `tgenero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tgenero` (
  `ID` int NOT NULL,
  `genero` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tgenero`
--

LOCK TABLES `tgenero` WRITE;
/*!40000 ALTER TABLE `tgenero` DISABLE KEYS */;
INSERT INTO `tgenero` VALUES (1,'femenino');
/*!40000 ALTER TABLE `tgenero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpersonas`
--

DROP TABLE IF EXISTS `tpersonas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpersonas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `IDtipoDoc` int DEFAULT NULL,
  `numDocumento` int DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDtipoDoc_idx` (`IDtipoDoc`),
  CONSTRAINT `IDtipoDoc` FOREIGN KEY (`IDtipoDoc`) REFERENCES `ttiposdoc` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpersonas`
--

LOCK TABLES `tpersonas` WRITE;
/*!40000 ALTER TABLE `tpersonas` DISABLE KEYS */;
INSERT INTO `tpersonas` VALUES (1,'leidi lizcano',1,1043434038,'calle11',3232);
/*!40000 ALTER TABLE `tpersonas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tproductos`
--

DROP TABLE IF EXISTS `tproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tproductos` (
  `ID` int NOT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `IDestado` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_tProductos_tEstadoProductos1_idx` (`IDestado`),
  CONSTRAINT `fk_tProductos_tEstadoProductos1` FOREIGN KEY (`IDestado`) REFERENCES `testadoproductos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproductos`
--

LOCK TABLES `tproductos` WRITE;
/*!40000 ALTER TABLE `tproductos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tproductosxventas`
--

DROP TABLE IF EXISTS `tproductosxventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tproductosxventas` (
  `ID` int NOT NULL,
  `tVentas_ID` int NOT NULL,
  `tProductos_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_tProductosxVentas_tVentas1_idx` (`tVentas_ID`),
  KEY `fk_tProductosxVentas_tProductos1_idx` (`tProductos_ID`),
  CONSTRAINT `fk_tProductosxVentas_tProductos1` FOREIGN KEY (`tProductos_ID`) REFERENCES `tproductos` (`ID`),
  CONSTRAINT `fk_tProductosxVentas_tVentas1` FOREIGN KEY (`tVentas_ID`) REFERENCES `tventas` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproductosxventas`
--

LOCK TABLES `tproductosxventas` WRITE;
/*!40000 ALTER TABLE `tproductosxventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tproductosxventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tproveedores`
--

DROP TABLE IF EXISTS `tproveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tproveedores` (
  `ID` int NOT NULL,
  `nit` int DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `contacto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproveedores`
--

LOCK TABLES `tproveedores` WRITE;
/*!40000 ALTER TABLE `tproveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tproveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `troles`
--

DROP TABLE IF EXISTS `troles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `troles` (
  `ID` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `troles`
--

LOCK TABLES `troles` WRITE;
/*!40000 ALTER TABLE `troles` DISABLE KEYS */;
INSERT INTO `troles` VALUES (1,'admin');
/*!40000 ALTER TABLE `troles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttiposdoc`
--

DROP TABLE IF EXISTS `ttiposdoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttiposdoc` (
  `ID` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttiposdoc`
--

LOCK TABLES `ttiposdoc` WRITE;
/*!40000 ALTER TABLE `ttiposdoc` DISABLE KEYS */;
INSERT INTO `ttiposdoc` VALUES (1,'cedula de ciudadania');
/*!40000 ALTER TABLE `ttiposdoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ttrabajadores`
--

DROP TABLE IF EXISTS `ttrabajadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttrabajadores` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `contrasenia` varchar(45) DEFAULT NULL,
  `IDrol` int NOT NULL,
  `IDestado` int NOT NULL,
  `IDpersona` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_tTrabajadores_tRoles1_idx` (`IDrol`),
  KEY `fk_tTrabajadores_tEstado1_idx` (`IDestado`),
  KEY `fk_tTrabajadores_tPersonas1_idx` (`IDpersona`),
  CONSTRAINT `fk_tTrabajadores_tEstado1` FOREIGN KEY (`IDestado`) REFERENCES `testadousuarios` (`ID`),
  CONSTRAINT `fk_tTrabajadores_tPersonas1` FOREIGN KEY (`IDpersona`) REFERENCES `tpersonas` (`ID`),
  CONSTRAINT `fk_tTrabajadores_tRoles1` FOREIGN KEY (`IDrol`) REFERENCES `troles` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttrabajadores`
--

LOCK TABLES `ttrabajadores` WRITE;
/*!40000 ALTER TABLE `ttrabajadores` DISABLE KEYS */;
INSERT INTO `ttrabajadores` VALUES (1,'xan','123',1,1,1);
/*!40000 ALTER TABLE `ttrabajadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tventas`
--

DROP TABLE IF EXISTS `tventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tventas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `IDtrabajador` int NOT NULL,
  `cantidadProd` int DEFAULT NULL,
  `totalPagado` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_tVentas_tTrabajadores1_idx` (`IDtrabajador`),
  CONSTRAINT `fk_tVentas_tTrabajadores1` FOREIGN KEY (`IDtrabajador`) REFERENCES `ttrabajadores` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tventas`
--

LOCK TABLES `tventas` WRITE;
/*!40000 ALTER TABLE `tventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12 10:46:05
