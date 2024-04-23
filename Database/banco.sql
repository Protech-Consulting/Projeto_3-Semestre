CREATE DATABASE  IF NOT EXISTS `db_pizzaria_calabresos` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_pizzaria_calabresos`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: db_pizzaria_calabresos
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `tbentrega`
--

DROP TABLE IF EXISTS `tbentrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbentrega` (
  `id_entrega` int NOT NULL AUTO_INCREMENT,
  `id_pedido_cliente` varchar(45) NOT NULL,
  `id_usuario` varchar(45) NOT NULL,
  PRIMARY KEY (`id_entrega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbentrega`
--

LOCK TABLES `tbentrega` WRITE;
/*!40000 ALTER TABLE `tbentrega` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbentrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpagamento`
--

DROP TABLE IF EXISTS `tbpagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbpagamento` (
  `id_tbpagamento` int NOT NULL AUTO_INCREMENT,
  `forma_pagamento` varchar(70) NOT NULL,
  `cartao` char(70) NOT NULL,
  PRIMARY KEY (`id_tbpagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpagamento`
--

LOCK TABLES `tbpagamento` WRITE;
/*!40000 ALTER TABLE `tbpagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbpagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpedido`
--

DROP TABLE IF EXISTS `tbpedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbpedido` (
  `id_tbpedido` int NOT NULL AUTO_INCREMENT,
  `id_pizza` int NOT NULL,
  `id_pedido_cliente` int NOT NULL,
  `quantidade_pizza` int NOT NULL,
  PRIMARY KEY (`id_tbpedido`),
  UNIQUE KEY `id_tbpedido` (`id_tbpedido`),
  KEY `id_pizza_idx` (`id_pizza`),
  CONSTRAINT `id_pizza` FOREIGN KEY (`id_pizza`) REFERENCES `tbpizzas` (`id_pizza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpedido`
--

LOCK TABLES `tbpedido` WRITE;
/*!40000 ALTER TABLE `tbpedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbpedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpedidocliente`
--

DROP TABLE IF EXISTS `tbpedidocliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbpedidocliente` (
  `id_pedido_cliente` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `hora_pedido` datetime NOT NULL,
  `status_pedido` int NOT NULL,
  `valor_total` varchar(45) NOT NULL,
  `tipo_pagamento` varchar(70) NOT NULL,
  `pagamento` tinyint NOT NULL,
  PRIMARY KEY (`id_pedido_cliente`),
  KEY `id_usuario_idx` (`id_usuario`),
  CONSTRAINT `id_pedido_cliente` FOREIGN KEY (`id_pedido_cliente`) REFERENCES `tbpedido` (`id_tbpedido`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbusuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpedidocliente`
--

LOCK TABLES `tbpedidocliente` WRITE;
/*!40000 ALTER TABLE `tbpedidocliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbpedidocliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpizzas`
--

DROP TABLE IF EXISTS `tbpizzas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbpizzas` (
  `id_pizza` int NOT NULL AUTO_INCREMENT,
  `nome_pizza` varchar(200) NOT NULL,
  `caminho_img_pizza` varchar(200) NOT NULL,
  `descricao_pizza` varchar(300) NOT NULL,
  `valor_pizza` decimal(20,0) NOT NULL,
  `estoque_pizza` tinyint NOT NULL,
  `tipo_pizza` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pizza`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpizzas`
--

LOCK TABLES `tbpizzas` WRITE;
/*!40000 ALTER TABLE `tbpizzas` DISABLE KEYS */;
INSERT INTO `tbpizzas` VALUES (1,'Portuguesa sasssss','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','1 portuguesa muito boa confia',40,1,'salgada'),(2,'Portuguesa sauda','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','1 portuguesa muito boa confia',40,1,'doce'),(3,'Catupiry as','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','molho Ã',40,1,'salgada'),(7,'Leotestando','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','Agora a Descrição das pizzas funciona pontuação',35,1,'doce'),(8,'Napolithanos','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','Tu vira Pó depois de comer',58,1,'doce'),(9,'Napolithanos','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','Chocolate e M&Ms',58,1,'doce'),(10,'Brocolis','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','Pizza Brocolis',58,1,'doce'),(11,'Brocolis','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','Pizza Brocolis Ã',58,1,'doce'),(12,'Bdsa','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','Pizza Brocolis Ã',58,1,'doce'),(13,'Portuguesa','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','pontuação',58,1,'salgada'),(14,'Portuguesa','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','Ação',58,1,'salgada'),(16,'Naty','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','Vamo pra academia',1000,1,'doce'),(17,'Naty','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','Vamo pra academia',100,1,'doce'),(18,'Naty','ing.com/th/id/OIP.','Vamo pra academia',100,1,'doce'),(19,'Portuguesa sa sa','ing.com/th/id/OIP.','Vamo pra academia',100,1,'doce'),(20,'Portuguesa sa sa','ing.com/th/id/OIP.','Vamo pra academia',100,1,'doce'),(21,'Portuguesa sa sa','ing.com/th/id/OIP.','Vamo pra academia',100,1,'doce'),(22,'Felicidade ','ing.com/th/id/OIP.','Vamo pra academia',100,1,'doce');
/*!40000 ALTER TABLE `tbpizzas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbusuario`
--

DROP TABLE IF EXISTS `tbusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbusuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `user_usuario` varchar(100) DEFAULT NULL,
  `password_usuario` varchar(300) DEFAULT NULL,
  `nivel_acesso_usuario` int DEFAULT NULL,
  `nome_usuario` varchar(200) DEFAULT NULL,
  `cpf_usuario` char(11) DEFAULT NULL,
  `complemento_usuario` varchar(200) DEFAULT NULL,
  `celular_usuario` char(11) DEFAULT NULL,
  `rua_usuario` varchar(200) DEFAULT NULL,
  `bairro_usuario` varchar(200) DEFAULT NULL,
  `numeroCasa_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `user_usuario_UNIQUE` (`user_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbusuario`
--

LOCK TABLES `tbusuario` WRITE;
/*!40000 ALTER TABLE `tbusuario` DISABLE KEYS */;
INSERT INTO `tbusuario` VALUES (11,'user','5a4bcb095f3936badc27e5d580dedd86',1,'Gus','12345678910','rua do cara mais lindo de todos','11961535779','Rua Elias checone','Vila rosalina',25);
/*!40000 ALTER TABLE `tbusuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-23 19:17:16
