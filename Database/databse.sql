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
  KEY `id_pedido_cliente_idx` (`id_pedido_cliente`),
  CONSTRAINT `id_pedido_cliente` FOREIGN KEY (`id_pedido_cliente`) REFERENCES `tbpedidocliente` (`id_pedido_cliente`),
  CONSTRAINT `id_pizza` FOREIGN KEY (`id_pizza`) REFERENCES `tbpizzas` (`id_pizza`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpedido`
--

LOCK TABLES `tbpedido` WRITE;
/*!40000 ALTER TABLE `tbpedido` DISABLE KEYS */;
INSERT INTO `tbpedido` VALUES (2,1,2,2),(5,3,2,2),(6,3,3,2),(7,3,3,2),(8,3,17,2),(9,3,17,2),(10,7,17,2),(11,8,17,2),(12,9,17,2),(13,18,17,2),(14,7,18,2),(15,8,18,2),(16,18,20,2),(17,10,20,2),(18,1,21,2),(19,1,22,1),(20,2,22,1),(21,3,22,1),(22,38,22,3),(23,1,22,2),(24,1,22,2),(25,2,22,2),(26,3,22,2),(27,3,22,2),(28,2,23,3),(29,7,23,2),(30,2,23,1),(31,2,24,3),(32,57,25,1),(33,1,25,3),(34,3,25,1),(35,2,25,1),(36,2,26,1),(37,2,28,1),(38,45,28,1),(39,45,28,1),(40,32,28,1),(41,2,28,1),(42,1,28,1),(43,1,28,1),(44,2,28,1),(45,1,28,1),(46,1,29,1),(47,39,30,7),(48,39,30,7),(49,39,30,7),(50,39,30,7),(51,39,30,7),(52,39,30,7),(53,39,30,7),(54,39,30,7),(55,39,30,7),(56,39,30,7),(57,39,30,7),(58,39,30,7),(59,39,30,7),(60,39,30,7),(61,39,30,7),(62,39,30,7),(63,39,30,7),(64,39,30,7),(65,39,30,7),(66,39,30,7),(67,39,30,7),(68,39,30,7),(69,39,30,7),(70,39,30,7),(71,1,30,1),(72,1,30,1),(73,1,30,1),(74,1,30,1),(75,9,30,1),(76,1,30,1),(77,1,30,1),(78,1,30,1),(79,1,30,2),(80,1,30,1),(81,7,31,1),(82,1,31,2),(83,45,31,1),(84,42,31,1),(85,47,31,7),(86,1,31,1),(87,1,32,3),(88,45,33,2),(89,2,33,1),(90,1,34,3),(91,3,35,1),(92,2,36,1),(93,1,36,4),(94,2,36,1),(95,2,36,3),(96,2,36,1),(97,2,37,1),(98,2,38,1),(99,2,38,1),(100,2,38,1),(101,2,39,2),(102,1,39,4),(103,3,40,1),(104,1,40,5),(105,18,40,11),(106,2,40,1);
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
  `valor_total` varchar(45) DEFAULT NULL,
  `tipo_pagamento` varchar(70) DEFAULT NULL,
  `pagamento` tinyint NOT NULL,
  PRIMARY KEY (`id_pedido_cliente`),
  KEY `id_usuario_idx` (`id_usuario`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbusuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpedidocliente`
--

LOCK TABLES `tbpedidocliente` WRITE;
/*!40000 ALTER TABLE `tbpedidocliente` DISABLE KEYS */;
INSERT INTO `tbpedidocliente` VALUES (2,11,'2024-05-08 15:14:40',1,'0','debito',0),(3,25,'2024-05-08 15:14:40',1,'0','debito',0),(4,25,'2024-05-08 15:14:40',1,NULL,NULL,0),(5,25,'2024-05-08 15:14:39',1,NULL,NULL,0),(6,11,'2024-05-10 09:53:17',1,NULL,NULL,0),(7,11,'2024-05-10 09:54:05',1,NULL,NULL,0),(8,25,'2024-05-10 09:55:24',1,NULL,NULL,0),(9,25,'2024-05-10 10:02:25',1,NULL,NULL,0),(10,25,'2024-05-10 10:02:56',1,NULL,NULL,0),(11,25,'2024-05-10 10:03:39',1,NULL,NULL,0),(12,25,'2024-05-10 10:03:46',1,NULL,NULL,0),(13,25,'2024-05-10 10:06:03',1,NULL,NULL,0),(14,25,'2024-05-10 10:38:32',1,NULL,NULL,0),(15,25,'2024-05-10 10:40:54',1,NULL,NULL,0),(16,25,'2024-05-10 11:13:41',1,NULL,NULL,0),(17,25,'2024-05-10 13:16:32',1,NULL,NULL,0),(18,25,'2024-05-10 22:59:23',1,NULL,NULL,0),(19,25,'2024-05-08 15:14:39',1,NULL,NULL,0),(20,25,'2024-05-11 22:51:04',1,NULL,NULL,0),(21,25,'2024-05-12 21:06:26',1,NULL,NULL,0),(22,11,'2024-05-15 23:37:50',1,NULL,NULL,0),(23,11,'2024-05-16 00:00:16',1,NULL,NULL,0),(24,11,'2024-05-16 09:33:02',1,NULL,NULL,0),(25,11,'2024-05-16 09:37:18',1,NULL,NULL,0),(26,11,'2024-05-16 11:55:44',1,NULL,NULL,0),(27,51,'2024-05-22 17:19:14',1,NULL,NULL,0),(28,51,'2024-05-22 17:20:08',1,NULL,NULL,0),(29,52,'2024-05-22 17:28:26',1,NULL,NULL,0),(30,53,'2024-05-23 09:53:35',1,NULL,NULL,0),(31,11,'2024-05-23 10:29:48',1,NULL,NULL,0),(32,11,'2024-05-23 19:52:22',1,NULL,NULL,0),(33,54,'2024-05-27 23:21:55',1,NULL,NULL,0),(34,55,'2024-05-30 13:11:22',1,NULL,NULL,0),(35,11,'2024-06-03 22:35:13',1,NULL,NULL,0),(36,11,'2024-06-04 21:08:42',1,NULL,NULL,0),(37,11,'2024-06-04 21:59:09',1,NULL,NULL,0),(38,11,'2024-06-04 22:19:58',1,'120.0','debito',1),(39,11,'2024-06-04 22:36:31',1,'240.0','debito',1),(40,11,'2024-06-05 10:01:49',1,'1340.0','debito',1);
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
  `caminho_img_pizza` varchar(600) NOT NULL,
  `descricao_pizza` varchar(300) NOT NULL,
  `valor_pizza` decimal(20,0) NOT NULL,
  `estoque_pizza` tinyint NOT NULL,
  `tipo_pizza` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pizza`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpizzas`
--

LOCK TABLES `tbpizzas` WRITE;
/*!40000 ALTER TABLE `tbpizzas` DISABLE KEYS */;
INSERT INTO `tbpizzas` VALUES (1,'Portuguesa sasssss','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','1 portuguesa muito boa confia',40,1,'salgada'),(2,'Portuguesa sauda','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','1 portuguesa muito boa confia',40,1,'doce'),(3,'Catupiry as','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','molho Ã',40,1,'salgada'),(7,'Leotestando','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','Agora a Descrição das pizzas funciona pontuação',35,1,'doce'),(8,'Napolithanos','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','Tu vira Pó depois de comer',58,1,'doce'),(9,'Napolithanos','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','Chocolate e M&Ms',58,1,'doce'),(10,'Brocolis','https://th.bing.com/th/id/OIP.paK_UK5Hnf_fGUCkmZ-hFAHaEK?w=333&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7','Pizza Brocolis',58,1,'doce'),(18,'Naty','uploads/pizza2.jpeg','Vamo pra academia',1000000,1,'doce'),(19,'Portuguesa sa sa','uploads/pizza2.jpeg','Vamo pra academia',100,1,'doce'),(20,'Portuguesa sa sa','uploads/pizza2.jpeg','Vamo pra academia',100,1,'doce'),(21,'Portuguesa sa sa','uploads/pizza2.jpeg','Vamo pra academia',100,1,'doce'),(32,'a','uploads/fondo-de-pantalla-de-1080x1920.-fondo-para-movil-de-rick-y-morty-576x1024.jpg','asdsa',123,1,'doce'),(33,'a','uploads/rick-and-morty-wallpaper-01.png','asdsa',123,1,'doce'),(34,'a','uploads/Captura de tela 2024-04-04 173445.png','asdsa',123,1,'doce'),(35,'a','uploads/Captura de tela 2024-04-04 173445.png','asdsa',123,1,'doce'),(36,'a','uploads/fondo-de-pantalla-de-1080x1920.-fondo-para-movil-de-rick-y-morty-576x1024.jpg','asdsa',123,1,'doce'),(38,'Marcos Pizza Marcos','uploads/pizza2.jpeg','com bastante personalidade e pelos',500,1,'salgada'),(39,'leo','uploads/pizza2.jpeg','com bastante personalidade e pelos',500,1,'salgada'),(40,'Calabresa','uploads/pizza3.jpeg','as',20,1,'doce'),(41,'Calabresa','uploads/pizza5.jpeg','as',20,1,'doce'),(42,'a','uploads/pizza4.jpeg','asdsa',123,1,''),(43,'a','uploads/pizza4.jpeg','asdsa',123,1,''),(44,'a','uploads/pizza4.jpeg','asdsa',123,1,'doce'),(45,'a','uploads/img2.jpg','asdsa',123,1,'doce'),(46,'a','C:\\Users\\gugab\\OneDrive\\Área de Trabalho\\Projeto-Uninove\\Pizzaria\\Projeto_3Semestre\\Project\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\PizzariaCalabresos\\uploads\\img1.jpg','asdsa',500,1,'salgada'),(47,'a','uploads/img1.jpg','das',123,1,'doce'),(48,'a','uploads/logo.jpg','das',123,1,'doce'),(49,'a','uploads/images.webp','das',123,1,'doce'),(50,'Marcos Pizza Marcos','uploads/pizza5.jpeg','com bastante personalidade e pelos',500,1,'doce'),(51,'Ednaldo','uploads/ednaldo.webp','com bastante personalidade e pelos',500,1,'doce'),(52,'Ednaldo','uploads/images.webp','com bastante personalidade e pelos',500,1,'doce'),(53,'Calabresa','uploads/Card�pio.png','com bastante personalidade e pelos',123,1,''),(54,'Calabresa','uploads/Card�pio.png','com bastante personalidade e pelos',123,1,'doce'),(55,'Calabresa','uploads/Card�pio.png','com bastante personalidade e pelos',123,1,'doce'),(56,'Marcos Pizza Marcos','uploads/pizza fundo.png','132',20,0,'Doce'),(57,'Marcos Pizza Marcos','uploads/Imagem pizza.png','dasdasdfasdfdsfsf',12,1,'Doce'),(58,'Calabresa','uploads/slogan.png','GHJKDHASKJJKDADJAKJKDDSJK',123,1,'Salgada'),(59,'Marcos de Borda Queimada','uploads/img1.jpg','a',20,1,'Doce');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbusuario`
--

LOCK TABLES `tbusuario` WRITE;
/*!40000 ALTER TABLE `tbusuario` DISABLE KEYS */;
INSERT INTO `tbusuario` VALUES (11,'user','4f90060015d5a57767d889f4d17ecfbe',2,'GusTavo','12345678910','rua do cara mais lindo de todos','11961535779','Rua Elias checone','Vila rosalina',25),(25,'user123','5a4bcb095f3936badc27e5d580dedd86',2,'Gus','12345678910','rua do cara mais lindo de todos','11961535779','Rua Elias checone','Vila rosalina',25),(44,'user12345','5a4bcb095f3936badc27e5d580dedd86',1,'Gus','12345678910','rua do cara mais lindo de todos','11961535779','Rua Elias checone','Vila rosalina',25),(45,'user1234556','5a4bcb095f3936badc27e5d580dedd86',1,'Gus','12345678910','rua do cara mais lindo de todos','11961535779','Rua Elias checone','Vila rosalina',25),(46,'user1234556test','5a4bcb095f3936badc27e5d580dedd86',1,'Gus','12345678910','rua do cara mais lindo de todos','11961535779','Rua Elias checone','Vila rosalina',25),(50,'user1234556test3','5a4bcb095f3936badc27e5d580dedd86',1,'Gus','12345678910','rua do cara mais lindo de todos','11961535779','Rua Elias checone','Vila rosalina',25),(51,'testCad','cc03e747a6afbbcbf8be7668acfebee5',1,'Teste Cadastro Manual','54755353882','Próximo ao Posto UBS','11961535779','Rua Elias Chicone','Vila Rosalina',25),(52,'Leo','2b7ec156d236ae2b942f28a5391bca76',1,'Leonardo','54755353882','Próximo ao Posto UBS','11961535779','Rua Elias Chicone','Vila Rosalina',25),(53,'testCad2','60474c9c10d7142b7508ce7a50acf414',1,'aka','54755353883','cu','11961535779','Avenida Santa Mônica','Jardim Santa Mônica',593),(54,'sara','312dc6ec7c900fb9017bf43c6b1f81bb',1,'Sara','54755353882','(Vl Angélica)','11961535779','Rua Gonçalves de Magalhães','Laranjeiras',1),(55,'video','2d114ed71f600e896d9045e88a54465d',1,'video','12312111111','fdsads','11961535779','Avenida Santa Mônica','Jardim Santa Mônica',12321);
/*!40000 ALTER TABLE `tbusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_pizzaria_calabresos'
--

--
-- Dumping routines for database 'db_pizzaria_calabresos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-05 15:26:46
