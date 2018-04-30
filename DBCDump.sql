-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dbc_db
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE SCHEMA `dbc_db`;

--
-- Table structure for table `tb_cliente`
--

DROP TABLE IF EXISTS `tb_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `rendimento` decimal(10,2) DEFAULT NULL,
  `risco` varchar(1) DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cliente`
--

LOCK TABLES `tb_cliente` WRITE;
/*!40000 ALTER TABLE `tb_cliente` DISABLE KEYS */;
INSERT INTO `tb_cliente` VALUES (1,'Anderson Virginio Martins',4000.00,'B'),(2,'Anderson Virginio Martins',8000.00,'B');
/*!40000 ALTER TABLE `tb_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cliente_endereco`
--

DROP TABLE IF EXISTS `tb_cliente_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cliente_endereco` (
  `id_cliente_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_endereco` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente_endereco`),
  KEY `fk_tb_cliente_endereco_tb_cliente_idx` (`id_cliente`),
  KEY `fk_tb_cliente_endereco_tb_enderco_idx` (`id_endereco`),
  CONSTRAINT `FK_h0p63hn2jngipdtnk5f6iefal` FOREIGN KEY (`id_cliente_endereco`) REFERENCES `tb_endereco` (`id`),
  CONSTRAINT `fk_tb_cliente_endereco_tb_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tb_cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_cliente_endereco_tb_enderco` FOREIGN KEY (`id_endereco`) REFERENCES `tb_endereco` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cliente_endereco`
--

LOCK TABLES `tb_cliente_endereco` WRITE;
/*!40000 ALTER TABLE `tb_cliente_endereco` DISABLE KEYS */;
INSERT INTO `tb_cliente_endereco` VALUES (1,2,1),(2,2,2),(9,1,14),(10,1,15),(12,1,17),(14,1,19);
/*!40000 ALTER TABLE `tb_cliente_endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_endereco`
--

DROP TABLE IF EXISTS `tb_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_endereco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cep` varchar(8) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `cidade` varchar(120) DEFAULT NULL,
  `bairro` varchar(120) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cidade` (`cidade`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_endereco`
--

LOCK TABLES `tb_endereco` WRITE;
/*!40000 ALTER TABLE `tb_endereco` DISABLE KEYS */;
INSERT INTO `tb_endereco` VALUES (1,'23088370','RJ','Rio de Janeiro','Campo Grande','R Rodrigo Ulysses de carv','295'),(2,'233333','AC','fdffdf','fddfd','fdfdf','333'),(3,'2323232','AP','dfef','fdfe','ewfwefw','33'),(9,'23088370','RJ','Rio de Janeiro','xxxxx','R Rodrigo Ulysses de carv','343'),(10,'55555555','RJ','Rio de Janeiro','xxxxx','R Rodrigo Ulysses de carv','343'),(11,'55555555','AL','fff','fff','fff','565'),(12,'55555555','AL','fff','fff','fff','565'),(13,'55555555','AL','fff','gggg','fff','565'),(14,'55555555','AL','fff','gggg','fff','565'),(15,'55555555','AL','fff','gggg','fff','565'),(17,'77788999','AM','7777','7777','777','123'),(19,'xx','MG','xx','xx','xx','99');
/*!40000 ALTER TABLE `tb_endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_funcao`
--

DROP TABLE IF EXISTS `tb_funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_funcao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `descricao` varchar(120) NOT NULL,
  `ativo` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_funcao`
--

LOCK TABLES `tb_funcao` WRITE;
/*!40000 ALTER TABLE `tb_funcao` DISABLE KEYS */;
INSERT INTO `tb_funcao` VALUES (1,'CLIENTE_LST','CLIENTE_LST','\0'),(2,'CLIENTE_ADD','CLIENTE_ADD','\0'),(3,'CLIENTE_EDT','CLIENTE_EDT','\0'),(4,'CLIENTE_DEL','CLIENTE_DEL','\0'),(5,'ADMINISTRACAO_FUNCAO_LST','ADMINISTRACAO_FUNCAO_LST','\0'),(6,'ADMINISTRACAO_FUNCAO_EDT','ADMINISTRACAO_FUNCAO_EDT','\0'),(7,'ADMINISTRACAO_PERFIL_LST','ADMINISTRACAO_PERFIL_LST','\0'),(8,'ADMINISTRACAO_PERFIL_ADD','ADMINISTRACAO_PERFIL_ADD','\0'),(9,'ADMINISTRACAO_PERFIL_EDT','ADMINISTRACAO_PERFIL_EDT','\0'),(10,'ADMINISTRACAO_PERFIL_DEL','ADMINISTRACAO_PERFIL_DEL','\0'),(11,'ADMINISTRACAO_PERFILUSUARIO_LST','ADMINISTRACAO_PERFILUSUARIO_LST','\0'),(12,'ADMINISTRACAO_PERFILUSUARIO_ADD','ADMINISTRACAO_PERFILUSUARIO_ADD','\0'),(13,'ADMINISTRACAO_PERFILUSUARIO_EDT','ADMINISTRACAO_PERFILUSUARIO_EDT','\0'),(14,'ADMINISTRACAO_PERFILUSUARIO_DEL','ADMINISTRACAO_PERFILUSUARIO_DEL','\0'),(15,'ADMINISTRACAO_USUARIO_LST','ADMINISTRACAO_USUARIO_LST','\0'),(16,'ADMINISTRACAO_USUARIO_ADD','ADMINISTRACAO_USUARIO_ADD','\0'),(17,'ADMINISTRACAO_USUARIO_EDT','ADMINISTRACAO_USUARIO_EDT','\0'),(18,'ADMINISTRACAO_USUARIO_DEL','ADMINISTRACAO_USUARIO_DEL','\0');
/*!40000 ALTER TABLE `tb_funcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_log`
--

DROP TABLE IF EXISTS `tb_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chave_usuario` varchar(255) DEFAULT NULL,
  `data_log` datetime DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_log`
--

LOCK TABLES `tb_log` WRITE;
/*!40000 ALTER TABLE `tb_log` DISABLE KEYS */;
INSERT INTO `tb_log` VALUES (1,'Usuario1','2018-04-17 00:37:18','LOGIN'),(2,'adm','2018-04-26 21:46:35','LOGIN'),(3,'adm','2018-04-26 21:58:01','LOGIN'),(4,'admin','2018-04-26 22:04:12','LOGIN'),(5,'admin','2018-04-26 22:13:47','LOGIN'),(6,'admin','2018-04-26 22:27:31','LOGIN'),(7,'admin','2018-04-26 22:33:09','LOGIN'),(8,'admin','2018-04-26 22:40:23','LOGIN'),(9,'admin','2018-04-26 22:48:23','LOGIN'),(10,'admin','2018-04-26 22:59:45','LOGIN'),(11,'admin','2018-04-26 23:05:29','LOGIN'),(12,'admin','2018-04-26 23:11:47','LOGIN'),(13,'admin','2018-04-26 23:18:55','LOGIN'),(14,'admin','2018-04-26 23:19:13','ALTERAR_USUARIO'),(15,'admin','2018-04-26 23:19:41','ALTERAR_USUARIO'),(16,'admin','2018-04-26 23:21:49','ALTERAR_USUARIO'),(17,'admin','2018-04-26 23:25:26','ALTERAR_USUARIO'),(18,'admin','2018-04-26 23:28:05','ALTERAR_USUARIO'),(19,'admin','2018-04-26 23:31:47','LOGIN'),(20,'admin','2018-04-26 23:32:22','ALTERAR_USUARIO'),(21,'admin','2018-04-26 23:32:51','CADASTRAR_USUARIO'),(22,'admin','2018-04-26 23:32:58','EXCLUIR_USUARIO'),(23,'admin','2018-04-26 23:38:26','LOGIN'),(24,'admin','2018-04-26 23:44:32','LOGIN'),(25,'admin','2018-04-27 00:29:05','LOGIN'),(26,'admin','2018-04-27 00:33:58','LOGIN'),(27,'admin','2018-04-27 00:37:39','LOGIN'),(28,'admin','2018-04-27 19:12:29','LOGIN'),(29,'admin','2018-04-27 19:27:12','LOGIN'),(30,'admin','2018-04-27 19:29:50','LOGIN'),(31,'admin','2018-04-28 07:40:59','LOGIN'),(32,'admin','2018-04-28 11:06:01','LOGIN'),(33,'admin','2018-04-28 11:24:48','LOGIN'),(34,'admin','2018-04-28 11:49:48','LOGIN'),(35,'admin','2018-04-28 11:54:04','LOGIN'),(36,'admin','2018-04-28 11:56:20','LOGIN'),(37,'admin','2018-04-28 11:57:53','LOGIN'),(38,'admin','2018-04-28 12:04:51','LOGIN'),(39,'admin','2018-04-28 12:09:11','LOGIN'),(40,'admin','2018-04-28 12:15:49','LOGIN'),(41,'admin','2018-04-28 12:23:22','LOGIN'),(42,'admin','2018-04-28 12:26:08','LOGIN'),(43,'admin','2018-04-28 12:30:30','LOGIN'),(44,'admin','2018-04-28 13:33:52','LOGIN'),(45,'admin','2018-04-28 13:37:16','LOGIN'),(46,'admin','2018-04-28 13:42:05','LOGIN'),(47,'admin','2018-04-28 13:55:23','LOGIN'),(48,'admin','2018-04-28 13:58:24','LOGIN'),(49,'admin','2018-04-28 14:02:09','LOGIN'),(50,'admin','2018-04-28 14:06:44','LOGIN'),(51,'admin','2018-04-28 14:10:41','LOGIN'),(52,'admin','2018-04-28 14:24:32','LOGIN'),(53,'admin','2018-04-28 14:28:20','LOGIN'),(54,'admin','2018-04-28 14:31:07','LOGIN'),(55,'admin','2018-04-28 15:16:33','LOGIN'),(56,'admin','2018-04-28 15:22:56','LOGIN'),(57,'admin','2018-04-28 15:25:03','LOGIN'),(58,'admin','2018-04-28 15:28:05','LOGIN'),(59,'admin','2018-04-28 20:08:35','LOGIN'),(60,'admin','2018-04-28 20:10:42','LOGIN'),(61,'admin','2018-04-28 20:11:39','CADASTRAR_USUARIO'),(62,'admin','2018-04-28 20:12:30','EXCLUIR_USUARIO'),(63,'admin','2018-04-28 20:15:26','LOGIN'),(64,'admin','2018-04-28 20:23:54','LOGIN'),(65,'admin','2018-04-28 20:34:14','LOGIN'),(66,'admin','2018-04-28 20:50:11','LOGIN'),(67,'admin','2018-04-28 20:53:50','LOGIN'),(68,'admin','2018-04-28 21:01:12','LOGIN'),(69,'admin','2018-04-28 22:40:52','LOGIN'),(70,'admin','2018-04-28 22:42:58','LOGIN'),(71,'admin','2018-04-28 22:45:51','LOGIN'),(72,'admin','2018-04-28 22:48:19','LOGIN'),(73,'admin','2018-04-28 22:53:47','LOGIN'),(74,'admin','2018-04-28 23:02:20','LOGIN'),(75,'admin','2018-04-28 23:05:30','LOGIN'),(76,'admin','2018-04-28 23:29:02','LOGIN'),(77,'admin','2018-04-29 10:23:48','LOGIN'),(78,'admin','2018-04-29 10:29:57','LOGIN'),(79,'admin','2018-04-29 10:46:58','LOGIN'),(80,'admin','2018-04-29 10:55:16','LOGIN'),(81,'admin','2018-04-29 11:03:45','LOGIN'),(82,'admin','2018-04-29 11:21:51','LOGIN'),(83,'admin','2018-04-29 11:24:11','LOGIN'),(84,'admin','2018-04-29 11:29:45','LOGIN'),(85,'admin','2018-04-29 12:26:18','LOGIN'),(86,'admin','2018-04-29 12:34:51','LOGIN'),(87,'admin','2018-04-29 12:45:57','LOGIN'),(88,'admin','2018-04-29 13:16:20','LOGIN'),(89,'admin','2018-04-29 13:20:22','LOGIN'),(90,'admin','2018-04-29 13:28:41','LOGIN'),(91,'admin','2018-04-29 13:33:08','LOGIN'),(92,'admin','2018-04-29 13:41:19','LOGIN'),(93,'admin','2018-04-29 16:32:39','LOGIN'),(94,'admin','2018-04-29 16:40:39','LOGIN'),(95,'admin','2018-04-29 16:54:17','LOGIN'),(96,'admin','2018-04-29 16:59:08','LOGIN'),(97,'admin','2018-04-29 17:09:36','LOGIN'),(98,'admin','2018-04-29 17:15:07','LOGIN'),(99,'admin','2018-04-29 18:35:00','LOGIN'),(100,'admin','2018-04-29 18:41:34','LOGIN'),(101,'admin','2018-04-29 19:06:33','LOGIN'),(102,'admin','2018-04-29 19:13:12','LOGIN'),(103,'admin','2018-04-29 19:29:28','LOGIN'),(104,'admin','2018-04-29 19:37:06','LOGIN'),(105,'admin','2018-04-29 19:41:15','LOGIN'),(106,'admin','2018-04-29 19:47:17','LOGIN'),(107,'admin','2018-04-29 19:51:11','LOGIN'),(108,'admin','2018-04-29 19:53:27','LOGIN'),(109,'admin','2018-04-29 20:04:56','LOGIN'),(110,'admin','2018-04-29 20:14:57','LOGIN'),(111,'admin','2018-04-29 20:49:57','LOGIN'),(112,'admin','2018-04-29 21:03:26','LOGIN'),(113,'admin','2018-04-29 21:12:09','LOGIN'),(114,'admin','2018-04-29 21:17:18','LOGIN'),(115,'admin','2018-04-29 21:19:10','LOGIN'),(116,'admin','2018-04-29 21:29:10','LOGIN'),(117,'admin','2018-04-29 21:42:25','LOGIN'),(118,'admin','2018-04-29 21:46:19','LOGIN'),(119,'admin','2018-04-29 21:53:07','LOGIN'),(120,'admin','2018-04-29 21:59:24','LOGIN'),(121,'admin','2018-04-29 22:07:40','LOGIN'),(122,'admin','2018-04-29 22:14:20','LOGIN'),(123,'admin','2018-04-29 22:20:12','LOGIN'),(124,'admin','2018-04-29 22:25:48','LOGIN'),(125,'admin','2018-04-29 22:28:00','LOGIN'),(126,'admin','2018-04-29 22:39:55','LOGIN'),(127,'admin','2018-04-29 22:44:04','LOGIN'),(128,'admin','2018-04-29 22:51:48','LOGIN'),(129,'admin','2018-04-29 22:53:59','LOGIN'),(130,'admin','2018-04-29 23:09:36','LOGIN'),(131,'admin','2018-04-29 23:22:45','LOGIN'),(132,'admin','2018-04-29 23:37:21','LOGIN'),(133,'admin','2018-04-29 23:41:59','LOGIN'),(134,'admin','2018-04-29 23:47:41','LOGIN'),(135,'admin','2018-04-30 00:31:02','LOGIN'),(136,'admin','2018-04-30 00:38:29','LOGIN'),(137,'admin','2018-04-30 00:50:58','LOGIN'),(138,'admin','2018-04-30 01:07:50','LOGIN'),(139,'admin','2018-04-30 01:21:11','LOGIN'),(140,'admin','2018-04-30 01:34:08','LOGIN'),(141,'admin','2018-04-30 01:39:34','LOGIN'),(142,'admin','2018-04-30 01:45:13','LOGIN');
/*!40000 ALTER TABLE `tb_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_perfil`
--

DROP TABLE IF EXISTS `tb_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `ativo` bit(1) NOT NULL,
  `codigo_perfil` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_perfil`
--

LOCK TABLES `tb_perfil` WRITE;
/*!40000 ALTER TABLE `tb_perfil` DISABLE KEYS */;
INSERT INTO `tb_perfil` VALUES (1,'ADM','ADM','\0',''),(2,'BASICO','BASICO','\0','');
/*!40000 ALTER TABLE `tb_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_perfil_funcao`
--

DROP TABLE IF EXISTS `tb_perfil_funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perfil_funcao` (
  `id_perfil_funcao` int(11) NOT NULL AUTO_INCREMENT,
  `id_funcao` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  PRIMARY KEY (`id_perfil_funcao`),
  KEY `fk_tb_perfil_funcao_tb_perfil_idx` (`id_perfil`),
  KEY `fk_tb_perfil_funcao_tb_funcao_idx` (`id_funcao`),
  CONSTRAINT `fk_tb_perfil_funcao_tb_funcao` FOREIGN KEY (`id_funcao`) REFERENCES `tb_funcao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_perfil_funcao_tb_perfil` FOREIGN KEY (`id_perfil`) REFERENCES `tb_perfil` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_perfil_funcao`
--

LOCK TABLES `tb_perfil_funcao` WRITE;
/*!40000 ALTER TABLE `tb_perfil_funcao` DISABLE KEYS */;
INSERT INTO `tb_perfil_funcao` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,1,2),(6,5,1),(7,6,1),(8,7,1),(9,8,1),(10,9,1),(11,10,1),(12,11,1),(13,12,1),(14,13,1),(15,14,1),(16,15,1),(17,16,1),(18,17,1),(19,18,1);
/*!40000 ALTER TABLE `tb_perfil_funcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `senha` varchar(60) DEFAULT NULL,
  `perfil_id` int(11) NOT NULL,
  `confirmarsenha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tb_usuario_tb_perfil_idx` (`perfil_id`),
  CONSTRAINT `fk_tb_usuario_tb_perfil` FOREIGN KEY (`perfil_id`) REFERENCES `tb_perfil` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (1,'admin','admin',1,'admin'),(2,'usr','123',2,NULL);
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-30  7:05:30
