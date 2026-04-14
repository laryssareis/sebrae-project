CREATE DATABASE  IF NOT EXISTS `morrowdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `morrowdb`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: morrowdb
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `cadastro_conteudo`
--

DROP TABLE IF EXISTS `cadastro_conteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_conteudo` (
  `id_cadastro` int NOT NULL AUTO_INCREMENT,
  `nome_conteudo` varchar(50) DEFAULT NULL,
  `categoria` enum('filme','serie','musica') DEFAULT NULL,
  `descricao` text,
  `ultima_atualizacao` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_cadastro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro_conteudo`
--

LOCK TABLES `cadastro_conteudo` WRITE;
/*!40000 ALTER TABLE `cadastro_conteudo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cadastro_conteudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadastro_usuario`
--

DROP TABLE IF EXISTS `cadastro_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cadastro_usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `sobrenome` varchar(45) NOT NULL,
  `data_nasc` date NOT NULL,
  `email` varchar(40) NOT NULL,
  `data_cadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro_usuario`
--

LOCK TABLES `cadastro_usuario` WRITE;
/*!40000 ALTER TABLE `cadastro_usuario` DISABLE KEYS */;
INSERT INTO `cadastro_usuario` VALUES (1,'Diego','Ignácio','1986-06-28','dyego@gmail.com','2026-04-04 23:06:26'),(2,'Ana','Victoria','2004-02-25','ana@gmail.com','2026-04-10 02:35:56'),(3,'Laryssa','Reis','2002-09-10','lary@gmail.com','2026-04-10 02:40:09'),(4,'Vinicius','Salomão','2000-10-18','salomao@gmail.com','2026-04-08 00:21:53'),(5,'Yasmim','Souza','2004-10-12','yasmin@gmail.com','2026-04-08 00:25:24');
/*!40000 ALTER TABLE `cadastro_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `id_filme` int DEFAULT NULL,
  `id_serie` int DEFAULT NULL,
  `id_cadastro` int DEFAULT NULL,
  PRIMARY KEY (`id_categoria`),
  KEY `fk_id_filme_idx` (`id_filme`),
  KEY `fk_id_serie_idx` (`id_serie`),
  KEY `fk_id_cadastro_idx` (`id_cadastro`),
  CONSTRAINT `fk_id_cadastro` FOREIGN KEY (`id_cadastro`) REFERENCES `cadastro_conteudo` (`id_cadastro`),
  CONSTRAINT `fk_id_filme` FOREIGN KEY (`id_filme`) REFERENCES `filme` (`id_filme`),
  CONSTRAINT `fk_id_serie` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id_serie`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,NULL,NULL,NULL),(2,NULL,NULL,NULL),(3,NULL,NULL,NULL);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credencial`
--

DROP TABLE IF EXISTS `credencial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credencial` (
  `id_credencial` int NOT NULL AUTO_INCREMENT,
  `login` varchar(40) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `ultimo_login` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id_credencial`),
  KEY `fk_id_usuario_idx` (`id_usuario`),
  CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `cadastro_usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credencial`
--

LOCK TABLES `credencial` WRITE;
/*!40000 ALTER TABLE `credencial` DISABLE KEYS */;
INSERT INTO `credencial` VALUES (1,'larisa@gmail.com','larymaster','2026-04-10 02:25:16',3);
/*!40000 ALTER TABLE `credencial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme` (
  `id_filme` int NOT NULL AUTO_INCREMENT,
  `titulo_filme` varchar(150) NOT NULL,
  `descricao` text,
  PRIMARY KEY (`id_filme`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (1,'Harry Potter - Pedra Filosoval','primeiro filme da serie'),(2,'Harry Potter - Câmera Secreta','segundo filme da serie'),(3,'Harry Potter - Prisioneiro Azkaban','terceiro filme da serie'),(4,'Harry Potter - Calice de Fogo','quarto filme da serie'),(5,'Harry Potter - Ordem da Fenix','quinto filme da serie'),(6,'Harry Potter - Principe Mestiço','sexto filme da serie'),(7,'Harry Potter - Reliquia da morte part 1','Sétimo filme da serie'),(8,'Harry Potter - Teliquia da morte part 2','Sétimo filme da serie'),(11,'Harry Potter - Reliquia da morte part 1','Sétimo filme da serie'),(12,'Harry Potter - Teliquia da morte part 2','Sétimo filme da serie');
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_vocabulario`
--

DROP TABLE IF EXISTS `quiz_vocabulario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_vocabulario` (
  `id_quiz` int NOT NULL AUTO_INCREMENT,
  `pergunta` varchar(250) NOT NULL,
  `opcao_1` varchar(200) NOT NULL,
  `opcao_2` varchar(200) NOT NULL,
  `opcao_3` varchar(200) NOT NULL,
  `resposta` char(1) NOT NULL,
  `explicacao` text,
  PRIMARY KEY (`id_quiz`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_vocabulario`
--

LOCK TABLES `quiz_vocabulario` WRITE;
/*!40000 ALTER TABLE `quiz_vocabulario` DISABLE KEYS */;
INSERT INTO `quiz_vocabulario` VALUES (1,'Qual é o significado de Morrow?','Amanhã','ontem','semana que vem','A','Morrow é uma palavra erudita do inglês britanico'),(3,'Significado da expressão In any case?','Amo minha casa','Em todo caso','caso de Any','B','Tradução literal');
/*!40000 ALTER TABLE `quiz_vocabulario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serie`
--

DROP TABLE IF EXISTS `serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serie` (
  `id_serie` int NOT NULL AUTO_INCREMENT,
  `titulo_serie` varchar(150) NOT NULL,
  `descricao` text,
  PRIMARY KEY (`id_serie`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serie`
--

LOCK TABLES `serie` WRITE;
/*!40000 ALTER TABLE `serie` DISABLE KEYS */;
INSERT INTO `serie` VALUES (1,'friends','Historia de seis amigos sobre as armadilhas da vida');
/*!40000 ALTER TABLE `serie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int NOT NULL AUTO_INCREMENT,
  `tipo` enum('Admin','Comum') DEFAULT NULL,
  `id_credencial` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id_tipo_usuario`),
  KEY `fk_id_credencial_idx` (`id_credencial`),
  KEY `fk_id_usuario_idx` (`id_usuario`),
  CONSTRAINT `fk_id_credencial` FOREIGN KEY (`id_credencial`) REFERENCES `credencial` (`id_credencial`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `cadastro_usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-11 16:26:07
