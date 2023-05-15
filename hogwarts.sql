-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: hogwarts
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `ficha`
--

DROP TABLE IF EXISTS `ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ficha` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nomeCurso` varchar(150) NOT NULL,
  `turma` varchar(150) NOT NULL,
  `periodo` varchar(100) NOT NULL,
  `obs` text,
  `aluno` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha`
--

LOCK TABLES `ficha` WRITE;
/*!40000 ALTER TABLE `ficha` DISABLE KEYS */;
INSERT INTO `ficha` VALUES (1,'ti','a','tarde',NULL,'fuzari'),(2,'ti','b','noite',NULL,'henrique'),(3,'ti','c','manha',NULL,'kauan'),(4,'ti','a','tarde',NULL,NULL),(5,'ti','b','noite',NULL,NULL),(6,'ti','c','manha',NULL,NULL);
/*!40000 ALTER TABLE `ficha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inn`
--

DROP TABLE IF EXISTS `inn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inn` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nota_fk` bigint NOT NULL,
  `nivel_fk` bigint NOT NULL,
  `item_fk` bigint NOT NULL,
  `ficha_fk` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nota_fk` (`nota_fk`),
  KEY `nivel_fk` (`nivel_fk`),
  KEY `item_fk` (`item_fk`),
  KEY `ficha_fk` (`ficha_fk`),
  CONSTRAINT `inn_ibfk_1` FOREIGN KEY (`nota_fk`) REFERENCES `nota` (`id`),
  CONSTRAINT `inn_ibfk_2` FOREIGN KEY (`nivel_fk`) REFERENCES `nivel` (`id`),
  CONSTRAINT `inn_ibfk_3` FOREIGN KEY (`item_fk`) REFERENCES `items` (`id`),
  CONSTRAINT `inn_ibfk_4` FOREIGN KEY (`ficha_fk`) REFERENCES `ficha` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inn`
--

LOCK TABLES `inn` WRITE;
/*!40000 ALTER TABLE `inn` DISABLE KEYS */;
INSERT INTO `inn` VALUES (1,1,3,1,1),(2,1,2,2,1),(3,2,1,3,1),(4,2,2,4,1),(5,3,3,5,1),(6,3,3,6,1),(7,4,1,7,1),(8,4,2,8,1),(9,5,2,9,1),(10,3,3,10,1),(11,4,1,11,1),(12,2,1,12,1),(13,4,3,13,1),(14,5,3,1,2),(15,5,2,2,2),(16,4,1,3,2),(17,3,2,4,2),(18,2,1,5,2),(19,4,2,6,2),(20,1,1,7,2),(21,5,1,8,2),(22,4,2,9,2),(23,3,1,10,2),(24,4,1,11,2),(25,2,3,12,2),(26,1,3,13,2),(27,1,3,1,3),(28,2,3,2,3),(29,2,2,3,3),(30,3,3,4,3),(31,3,3,5,3),(32,5,2,6,3),(33,4,2,7,3),(34,3,2,8,3),(35,2,2,9,3),(36,2,2,10,3),(37,1,1,11,3),(38,1,1,12,3),(39,1,1,13,3),(40,2,1,1,4),(41,2,1,2,4),(42,2,1,3,4),(43,2,2,4,4),(44,2,2,5,4),(45,1,3,6,4),(46,1,1,7,4),(47,1,2,8,4),(48,1,2,9,4),(49,1,3,10,4),(50,1,1,11,4),(51,1,2,12,4),(52,1,2,13,4),(53,2,3,1,5),(54,2,2,2,5),(55,2,1,3,5),(56,2,1,4,5),(57,3,1,5,5),(58,3,2,6,5),(59,3,2,7,5),(60,3,2,8,5),(61,3,3,9,5),(62,3,3,10,5),(63,1,3,11,5),(64,1,3,12,5),(65,1,3,13,5),(66,4,1,1,6),(67,4,2,2,6),(68,3,3,3,6),(69,1,3,4,6),(70,2,3,5,6),(71,2,2,6,6),(72,2,2,7,6),(73,3,1,8,6),(74,3,1,9,6),(75,3,2,10,6),(76,3,2,11,6),(77,1,1,12,6),(78,1,3,13,6);
/*!40000 ALTER TABLE `inn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Limpeza e conservação da sala de aula e da oficina.'),(2,'Disponibilidade de equipamentos, máquinas e ferramentas para realização do curso'),(3,'Qualidade de apostilas, livros e textos, quanto a impressão e a adequação da informação'),(4,'Cumprimento do horário das aulas'),(5,'Cumprimento dos objetivos propostos para o curso'),(6,'Preocupação do docente com o aproveitamento dos alunos'),(7,'Domínio do docente sobre os assuntos tratados'),(8,'O aprendizado, na teoria e na prática, em relação ao esperado'),(9,'Conteúdo do curso, em relação às expectativas'),(10,'Atendimento da recepção/Secretaria da escola'),(11,'Atendimento telefônico da escola'),(12,'Atendimento da cantina/Lanchonete'),(13,'Atendimento da Biblioteca');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel`
--

DROP TABLE IF EXISTS `nivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nivel` enum('Alta','Media','Baixa') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel`
--

LOCK TABLES `nivel` WRITE;
/*!40000 ALTER TABLE `nivel` DISABLE KEYS */;
INSERT INTO `nivel` VALUES (1,'Baixa'),(2,'Media'),(3,'Alta'),(4,'Baixa'),(5,'Media'),(6,'Alta');
/*!40000 ALTER TABLE `nivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nota` enum('Ruim','Regular','Bom','otimo','NA') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
INSERT INTO `nota` VALUES (1,'Ruim'),(2,'Regular'),(3,'Bom'),(4,'otimo'),(5,'NA'),(6,'Ruim'),(7,'Regular'),(8,'Bom'),(9,'otimo'),(10,'NA');
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-14 21:23:42
