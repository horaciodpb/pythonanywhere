-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: elecciones
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'Acceso Completo');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,48),(49,1,49),(50,1,50),(51,1,51),(52,1,52),(53,1,53),(54,1,54),(55,1,55),(56,1,56),(57,1,57),(58,1,58),(59,1,59),(60,1,60);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add candidatos',6,'add_candidatos'),(22,'Can change candidatos',6,'change_candidatos'),(23,'Can delete candidatos',6,'delete_candidatos'),(24,'Can view candidatos',6,'view_candidatos'),(25,'Can add escrutinio',7,'add_escrutinio'),(26,'Can change escrutinio',7,'change_escrutinio'),(27,'Can delete escrutinio',7,'delete_escrutinio'),(28,'Can view escrutinio',7,'view_escrutinio'),(29,'Can add mesas',8,'add_mesas'),(30,'Can change mesas',8,'change_mesas'),(31,'Can delete mesas',8,'delete_mesas'),(32,'Can view mesas',8,'view_mesas'),(33,'Can add candidatos',9,'add_candidatos'),(34,'Can change candidatos',9,'change_candidatos'),(35,'Can delete candidatos',9,'delete_candidatos'),(36,'Can view candidatos',9,'view_candidatos'),(37,'Can add escrutinio',10,'add_escrutinio'),(38,'Can change escrutinio',10,'change_escrutinio'),(39,'Can delete escrutinio',10,'delete_escrutinio'),(40,'Can view escrutinio',10,'view_escrutinio'),(41,'Can add mesas',11,'add_mesas'),(42,'Can change mesas',11,'change_mesas'),(43,'Can delete mesas',11,'delete_mesas'),(44,'Can view mesas',11,'view_mesas'),(45,'Can add candidatos',12,'add_candidatos'),(46,'Can change candidatos',12,'change_candidatos'),(47,'Can delete candidatos',12,'delete_candidatos'),(48,'Can view candidatos',12,'view_candidatos'),(49,'Can add escrutinio',13,'add_escrutinio'),(50,'Can change escrutinio',13,'change_escrutinio'),(51,'Can delete escrutinio',13,'delete_escrutinio'),(52,'Can view escrutinio',13,'view_escrutinio'),(53,'Can add mesas',14,'add_mesas'),(54,'Can change mesas',14,'change_mesas'),(55,'Can delete mesas',14,'delete_mesas'),(56,'Can view mesas',14,'view_mesas'),(57,'Can add session',15,'add_session'),(58,'Can change session',15,'change_session'),(59,'Can delete session',15,'delete_session'),(60,'Can view session',15,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$f9jsJZ8fpYv6qOsc8SQn92$Dub6SQTAWnTr57zPDkQc1gv6OfsyJc6CPDHBUOzEjQc=','2023-08-31 20:06:02.264491',1,'horacio','','','horacio.dpb@gmail.com',1,1,'2023-08-17 19:12:03.595954'),(2,'pbkdf2_sha256$600000$jebUDXrZZWl1xEZTpIjv7Z$JfPSzhKeNdVwVlUjSvbFqM+d5R8y5AhlujcWOzYQH1w=','2023-10-10 04:10:47.468369',0,'max','','','',0,1,'2023-08-17 19:26:53.403008');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidatos`
--

DROP TABLE IF EXISTS `candidatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatos` (
  `id_cand` int NOT NULL AUTO_INCREMENT,
  `candidato_nombre` varchar(255) NOT NULL,
  `lista_nombre` varchar(255) NOT NULL,
  `partido` varchar(255) NOT NULL,
  PRIMARY KEY (`id_cand`),
  KEY `candidato_nombre` (`candidato_nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatos`
--

LOCK TABLES `candidatos` WRITE;
/*!40000 ALTER TABLE `candidatos` DISABLE KEYS */;
INSERT INTO `candidatos` VALUES (1,'Mondotte Francisco','501A','Cambia Mendoza 501A'),(2,'Consejales 501A','501A','Cambia Mendoza'),(3,'Freidemberg Abel','501B','Cambia Mendoza'),(4,'Consejales 501B','501B','Cambia Mendoza'),(5,'Andion Alfredo','501C','Cambia Mendoza'),(6,'Consejales 501C','501C','Cambia Mendoza'),(7,'Consejales 501D','501D','Cambia Mendoza'),(8,'Baldovin Juan','503A','Frente Libertario Democrata y Jubilados'),(9,'Consejales 503A','503A','Frente Libertario Democrata y Jubilados'),(10,'Bianchi Rodolfo','503B','Frente Libertario Democrata y Jubilados'),(11,'Consejales 503B','503B','Frente Libertario Democrata y Jubilados'),(12,'Benegas Maria','502A','Frente de Izquierda'),(13,'Consejales ','502A','Frente de Izquierda'),(14,'Bautista Franco','502B','Frente de Izquierda'),(15,'Consejales 502B','502B','Frente de Izquierda'),(16,'Sorroche Miguel','506A','Elegi San Rafael Avanza'),(17,'Consejales 506A','506A','Elegi San Rafael Avanza'),(18,'Yasuff Nadir','506B','Elegi San Rafael Avanza'),(19,'Consejales 506B','506B','Elegi San Rafael Avanza'),(20,'Felix Omar','506C','Elegi San Rafael Avanza'),(21,'Consejales 506C','506C','Elegi San Rafael Avanza'),(22,'Carrieri Sandra','181','Partido Verde'),(23,'Consejales 181','181','Partido Verde'),(24,'Sanchez Alberto','327','Partido Valle Grande'),(25,'Consejales 327','327','Partido Valle Grande'),(26,'Votos en Blanco','',''),(27,'Votos Nulos','',''),(28,'ID. Impugnada','',''),(29,'Recurridos','','');
/*!40000 ALTER TABLE `candidatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-08-17 19:21:32.245953','1','Acceso Completo',1,'[{\"added\": {}}]',3,1),(2,'2023-08-17 19:26:53.945954','2','max',1,'[{\"added\": {}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'crud_escrutinio','candidatos'),(10,'crud_escrutinio','escrutinio'),(11,'crud_escrutinio','mesas'),(6,'elecciones','candidatos'),(7,'elecciones','escrutinio'),(8,'elecciones','mesas'),(12,'grafico','candidatos'),(13,'grafico','escrutinio'),(14,'grafico','mesas'),(15,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-08-17 19:08:37.405955'),(2,'auth','0001_initial','2023-08-17 19:08:37.820006'),(3,'admin','0001_initial','2023-08-17 19:08:37.929956'),(4,'admin','0002_logentry_remove_auto_add','2023-08-17 19:08:37.938954'),(5,'admin','0003_logentry_add_action_flag_choices','2023-08-17 19:08:37.947954'),(6,'contenttypes','0002_remove_content_type_name','2023-08-17 19:08:38.023955'),(7,'auth','0002_alter_permission_name_max_length','2023-08-17 19:08:38.082959'),(8,'auth','0003_alter_user_email_max_length','2023-08-17 19:08:38.120954'),(9,'auth','0004_alter_user_username_opts','2023-08-17 19:08:38.131954'),(10,'auth','0005_alter_user_last_login_null','2023-08-17 19:08:38.248954'),(11,'auth','0006_require_contenttypes_0002','2023-08-17 19:08:38.253963'),(12,'auth','0007_alter_validators_add_error_messages','2023-08-17 19:08:38.266955'),(13,'auth','0008_alter_user_username_max_length','2023-08-17 19:08:38.359954'),(14,'auth','0009_alter_user_last_name_max_length','2023-08-17 19:08:38.429954'),(15,'auth','0010_alter_group_name_max_length','2023-08-17 19:08:38.457953'),(16,'auth','0011_update_proxy_permissions','2023-08-17 19:08:38.469954'),(17,'auth','0012_alter_user_first_name_max_length','2023-08-17 19:08:38.531954'),(18,'crud_escrutinio','0001_initial','2023-08-17 19:08:38.538954'),(19,'elecciones','0001_initial','2023-08-17 19:08:38.545954'),(20,'grafico','0001_initial','2023-08-17 19:08:38.554954'),(21,'sessions','0001_initial','2023-08-17 19:16:17.212953');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('z3swqpgd8whrz2c3gxxfic7kxbkjmjg2','.eJxVjDsOwjAQBe_iGln-rh1Kes5geb0bHECOFCcV4u4QKQW0b2beS6S8rTVtnZc0kTgLI06_G-by4LYDuud2m2WZ27pMKHdFHrTL60z8vBzu30HNvX5rDtkX5ciVzGBsQEMKwLL3miOB1aPXQ0TAqBAAR8U6OFRQClsaMIr3B-UKN_8:1qq451:v8lSnJcqIgF_OIJdvggQx1NwiO006iF3eBIHR7wF6OQ','2023-10-24 04:10:47.472369');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escrutinio`
--

DROP TABLE IF EXISTS `escrutinio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escrutinio` (
  `id_registro_votos` int NOT NULL AUTO_INCREMENT,
  `mesa` int NOT NULL,
  `id_cand` int NOT NULL,
  `votos` int NOT NULL,
  PRIMARY KEY (`id_registro_votos`),
  KEY `escrutinio_ibfk_1` (`mesa`),
  KEY `escrutinio_ibfk_2` (`id_cand`),
  CONSTRAINT `escrutinio_ibfk_1` FOREIGN KEY (`mesa`) REFERENCES `mesas` (`mesa`) ON DELETE CASCADE,
  CONSTRAINT `escrutinio_ibfk_2` FOREIGN KEY (`id_cand`) REFERENCES `candidatos` (`id_cand`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=733 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escrutinio`
--

LOCK TABLES `escrutinio` WRITE;
/*!40000 ALTER TABLE `escrutinio` DISABLE KEYS */;
INSERT INTO `escrutinio` VALUES (110,1,1,5555),(111,1,2,20),(112,1,3,30),(113,1,4,40),(114,1,5,50),(115,1,6,60),(116,1,7,70),(117,1,8,80),(118,1,9,90),(119,1,10,100),(120,1,11,110),(121,1,12,120),(122,1,13,130),(123,1,14,140),(124,1,15,150),(125,1,16,160),(126,1,17,170),(127,1,18,180),(128,1,19,190),(129,1,20,200),(130,1,21,210),(131,1,22,220),(132,1,23,230),(133,1,24,240),(134,1,25,250),(135,1,26,260),(136,1,27,270),(137,1,28,280),(138,1,29,290),(139,379,1,50),(140,379,2,611),(141,379,3,45),(142,379,4,98),(143,379,5,152),(144,379,6,35),(145,379,7,456),(146,379,8,65),(147,379,9,32),(148,379,10,45),(149,379,11,32),(150,379,12,45),(151,379,13,12),(152,379,14,32),(153,379,15,45),(154,379,16,78),(155,379,17,65),(156,379,18,32),(157,379,19,45),(158,379,20,12),(159,379,21,65),(160,379,22,78),(161,379,23,65),(162,379,24,75),(163,379,25,65),(164,379,26,32),(165,379,27,45),(166,379,28,32),(167,379,29,12),(168,410,1,45),(169,410,2,32),(170,410,3,78),(171,410,4,65),(172,410,5,45),(173,410,6,98),(174,410,7,78),(175,410,8,65),(176,410,9,32),(177,410,10,45),(178,410,11,32),(179,410,12,45),(180,410,13,32),(181,410,14,12),(182,410,15,45),(183,410,16,65),(184,410,17,87),(185,410,18,65),(186,410,19,32),(187,410,20,45),(188,410,21,123),(189,410,22,2),(190,410,23,65),(191,410,24,789),(192,410,25,65),(193,410,26,32),(194,410,27,12),(195,410,28,45),(196,410,29,65),(197,5,6,7),(198,5,6,99),(700,5,6,777),(701,5,6,777),(704,2,1,1),(705,2,2,2),(706,2,3,12),(707,2,4,6),(708,2,5,5),(709,2,6,4),(710,2,7,76),(711,2,8,6),(712,2,9,5),(713,2,10,4),(714,2,11,6),(715,2,12,5),(716,2,13,4),(717,2,14,6),(718,2,15,7),(719,2,16,6),(720,2,17,5),(721,2,18,4),(722,2,19,7),(723,2,20,76),(724,2,21,6),(725,2,22,0),(726,2,23,5),(727,2,24,7),(728,2,25,6),(729,2,26,5),(730,2,27,7),(731,2,28,6),(732,2,29,5);
/*!40000 ALTER TABLE `escrutinio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesas`
--

DROP TABLE IF EXISTS `mesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesas` (
  `mesa` int NOT NULL,
  `circuito` varchar(255) NOT NULL,
  `distrito` varchar(255) NOT NULL,
  PRIMARY KEY (`mesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesas`
--

LOCK TABLES `mesas` WRITE;
/*!40000 ALTER TABLE `mesas` DISABLE KEYS */;
INSERT INTO `mesas` VALUES (1,'107','CIUDAD IRIGOYEN AL NORTE'),(2,'107','CIUDAD IRIGOYEN AL NORTE'),(3,'107','CIUDAD IRIGOYEN AL NORTE'),(4,'107','CIUDAD IRIGOYEN AL NORTE'),(5,'107','CIUDAD IRIGOYEN AL NORTE'),(6,'107','CIUDAD IRIGOYEN AL NORTE'),(7,'107','CIUDAD IRIGOYEN AL NORTE'),(8,'107','CIUDAD IRIGOYEN AL NORTE'),(9,'107','CIUDAD IRIGOYEN AL NORTE'),(10,'107','CIUDAD IRIGOYEN AL NORTE'),(11,'107','CIUDAD IRIGOYEN AL NORTE'),(12,'107','CIUDAD IRIGOYEN AL NORTE'),(13,'107','CIUDAD IRIGOYEN AL NORTE'),(14,'107','CIUDAD IRIGOYEN AL NORTE'),(15,'107','CIUDAD IRIGOYEN AL NORTE'),(16,'107','CIUDAD IRIGOYEN AL NORTE'),(17,'107','CIUDAD IRIGOYEN AL NORTE'),(18,'107','CIUDAD IRIGOYEN AL NORTE'),(19,'107','CIUDAD IRIGOYEN AL NORTE'),(20,'107','CIUDAD IRIGOYEN AL NORTE'),(21,'107','CIUDAD IRIGOYEN AL NORTE'),(22,'107','CIUDAD IRIGOYEN AL NORTE'),(23,'107','CIUDAD IRIGOYEN AL NORTE'),(24,'107','CIUDAD IRIGOYEN AL NORTE'),(25,'107','CIUDAD IRIGOYEN AL NORTE'),(26,'107','CIUDAD IRIGOYEN AL NORTE'),(27,'107','CIUDAD IRIGOYEN AL NORTE'),(28,'107','CIUDAD IRIGOYEN AL NORTE'),(29,'107','CIUDAD IRIGOYEN AL NORTE'),(30,'107','CIUDAD IRIGOYEN AL NORTE'),(31,'107','CIUDAD IRIGOYEN AL NORTE'),(32,'107','CIUDAD IRIGOYEN AL NORTE'),(33,'107','CIUDAD IRIGOYEN AL NORTE'),(34,'107','CIUDAD IRIGOYEN AL NORTE'),(35,'107','CIUDAD IRIGOYEN AL NORTE'),(36,'107','CIUDAD IRIGOYEN AL NORTE'),(37,'107','CIUDAD IRIGOYEN AL NORTE'),(38,'107','CIUDAD IRIGOYEN AL NORTE'),(39,'107','CIUDAD IRIGOYEN AL NORTE'),(40,'107','CIUDAD IRIGOYEN AL NORTE'),(41,'107','CIUDAD IRIGOYEN AL NORTE'),(42,'107','CIUDAD IRIGOYEN AL NORTE'),(43,'107','CIUDAD IRIGOYEN AL NORTE'),(44,'107','CIUDAD IRIGOYEN AL NORTE'),(45,'107','CIUDAD IRIGOYEN AL NORTE'),(46,'107','CIUDAD IRIGOYEN AL NORTE'),(47,'107','CIUDAD IRIGOYEN AL NORTE'),(48,'107','CIUDAD IRIGOYEN AL NORTE'),(49,'107','CIUDAD IRIGOYEN AL NORTE'),(50,'107','CIUDAD IRIGOYEN AL NORTE'),(51,'107','CIUDAD MITRE AL NORTE'),(52,'107A','CIUDAD MITRE AL NORTE'),(53,'107A','CIUDAD MITRE AL NORTE'),(54,'107A','CIUDAD MITRE AL NORTE'),(55,'107A','CIUDAD MITRE AL NORTE'),(56,'107A','CIUDAD MITRE AL NORTE'),(57,'107A','CIUDAD MITRE AL NORTE'),(58,'107A','CIUDAD MITRE AL NORTE'),(59,'107A','CIUDAD MITRE AL NORTE'),(60,'107A','CIUDAD MITRE AL NORTE'),(61,'107A','CIUDAD MITRE AL NORTE'),(62,'107A','CIUDAD MITRE AL NORTE'),(63,'107A','CIUDAD MITRE AL NORTE'),(64,'107A','CIUDAD MITRE AL NORTE'),(65,'107A','CIUDAD MITRE AL NORTE'),(66,'107A','CIUDAD MITRE AL NORTE'),(67,'107A','CIUDAD MITRE AL NORTE'),(68,'107A','CIUDAD MITRE AL NORTE'),(69,'107A','CIUDAD MITRE AL NORTE'),(70,'107A','CIUDAD MITRE AL NORTE'),(71,'107A','CIUDAD MITRE AL NORTE'),(72,'107A','CIUDAD MITRE AL NORTE'),(73,'107A','CIUDAD MITRE AL NORTE'),(74,'107A','CIUDAD MITRE AL NORTE'),(75,'107A','CIUDAD MITRE AL NORTE'),(76,'107A','CIUDAD MITRE AL NORTE'),(77,'107A','CIUDAD MITRE AL NORTE'),(78,'107A','CIUDAD MITRE AL NORTE'),(79,'107A','CIUDAD MITRE AL NORTE'),(80,'107A','CIUDAD MITRE AL NORTE'),(81,'107A','CIUDAD MITRE AL NORTE'),(82,'107A','CIUDAD MITRE AL NORTE'),(83,'107A','CIUDAD MITRE AL NORTE'),(84,'107A','CIUDAD MITRE AL NORTE'),(85,'107A','CIUDAD MITRE AL NORTE'),(86,'107A','CIUDAD MITRE AL NORTE'),(87,'107A','CIUDAD MITRE AL NORTE'),(88,'107A','CIUDAD MITRE AL NORTE'),(89,'107A','CIUDAD MITRE AL NORTE'),(90,'107A','CIUDAD MITRE AL NORTE'),(91,'107A','CIUDAD MITRE AL NORTE'),(92,'107A','CIUDAD MITRE AL NORTE'),(93,'107B','CIUDAD MITRE AL SUR'),(94,'107B','CIUDAD MITRE AL SUR'),(95,'107B','CIUDAD MITRE AL SUR'),(96,'107B','CIUDAD MITRE AL SUR'),(97,'107B','CIUDAD MITRE AL SUR'),(98,'107B','CIUDAD MITRE AL SUR'),(99,'107B','CIUDAD MITRE AL SUR'),(100,'107B','CIUDAD MITRE AL SUR'),(101,'107B','CIUDAD MITRE AL SUR'),(102,'107B','CIUDAD MITRE AL SUR'),(103,'107B','CIUDAD MITRE AL SUR'),(104,'107B','CIUDAD MITRE AL SUR'),(105,'107B','CIUDAD MITRE AL SUR'),(106,'107B','CIUDAD MITRE AL SUR'),(107,'107B','CIUDAD MITRE AL SUR'),(108,'107B','CIUDAD MITRE AL SUR'),(109,'107B','CIUDAD MITRE AL SUR'),(110,'107B','CIUDAD MITRE AL SUR'),(111,'107B','CIUDAD MITRE AL SUR'),(112,'107B','CIUDAD MITRE AL SUR'),(113,'107B','CIUDAD MITRE AL SUR'),(114,'107B','CIUDAD MITRE AL SUR'),(115,'107B','CIUDAD MITRE AL SUR'),(116,'107B','CIUDAD MITRE AL SUR'),(117,'107B','CIUDAD MITRE AL SUR'),(118,'107B','CIUDAD MITRE AL SUR'),(119,'107B','CIUDAD MITRE AL SUR'),(120,'107B','CIUDAD MITRE AL SUR'),(121,'107B','CIUDAD MITRE AL SUR'),(122,'107B','CIUDAD MITRE AL SUR'),(123,'107B','CIUDAD MITRE AL SUR'),(124,'107B','CIUDAD MITRE AL SUR'),(125,'107B','CIUDAD MITRE AL SUR'),(126,'107B','CIUDAD MITRE AL SUR'),(127,'107B','CIUDAD MITRE AL SUR'),(128,'107B','CIUDAD MITRE AL SUR'),(129,'107B','CIUDAD MITRE AL SUR'),(130,'107B','CIUDAD MITRE AL SUR'),(131,'107B','CIUDAD MITRE AL SUR'),(132,'107B','CIUDAD MITRE AL SUR'),(133,'107B','CIUDAD MITRE AL SUR'),(134,'107B','CIUDAD MITRE AL SUR'),(135,'107B','CIUDAD MITRE AL SUR'),(136,'107B','CIUDAD MITRE AL SUR'),(137,'107B','CIUDAD MITRE AL SUR'),(138,'107B','CIUDAD MITRE AL SUR'),(139,'107B','CIUDAD MITRE AL SUR'),(140,'107B','CIUDAD MITRE AL SUR'),(141,'107B','CIUDAD MITRE AL SUR'),(142,'107B','CIUDAD MITRE AL SUR'),(143,'107B','CIUDAD MITRE AL SUR'),(144,'107B','CIUDAD MITRE AL SUR'),(145,'107B','CIUDAD MITRE AL SUR'),(146,'107B','CIUDAD MITRE AL SUR'),(147,'107B','CIUDAD MITRE AL SUR'),(148,'107B','CIUDAD MITRE AL SUR'),(149,'107B','CIUDAD MITRE AL SUR'),(150,'107B','CIUDAD MITRE AL SUR'),(151,'107B','CIUDAD MITRE AL SUR'),(152,'107B','CIUDAD MITRE AL SUR'),(153,'107B','CIUDAD MITRE AL SUR'),(154,'107B','CIUDAD MITRE AL SUR'),(155,'107B','CIUDAD MITRE AL SUR'),(156,'107B','CIUDAD MITRE AL SUR'),(157,'107B','CIUDAD MITRE AL SUR'),(158,'107B','CIUDAD MITRE AL SUR'),(159,'107B','CIUDAD MITRE AL SUR'),(160,'107B','CIUDAD MITRE AL SUR'),(161,'107C','CIUDAD IRIGOYEN AL SUR'),(162,'107C','CIUDAD IRIGOYEN AL SUR'),(163,'107C','CIUDAD IRIGOYEN AL SUR'),(164,'107C','CIUDAD IRIGOYEN AL SUR'),(165,'107C','CIUDAD IRIGOYEN AL SUR'),(166,'107C','CIUDAD IRIGOYEN AL SUR'),(167,'107C','CIUDAD IRIGOYEN AL SUR'),(168,'107C','CIUDAD IRIGOYEN AL SUR'),(169,'107C','CIUDAD IRIGOYEN AL SUR'),(170,'107C','CIUDAD IRIGOYEN AL SUR'),(171,'107C','CIUDAD IRIGOYEN AL SUR'),(172,'107C','CIUDAD IRIGOYEN AL SUR'),(173,'107C','CIUDAD IRIGOYEN AL SUR'),(174,'107C','CIUDAD IRIGOYEN AL SUR'),(175,'107C','CIUDAD IRIGOYEN AL SUR'),(176,'107C','CIUDAD IRIGOYEN AL SUR'),(177,'107C','CIUDAD IRIGOYEN AL SUR'),(178,'107C','CIUDAD IRIGOYEN AL SUR'),(179,'107C','CIUDAD IRIGOYEN AL SUR'),(180,'107C','CIUDAD IRIGOYEN AL SUR'),(181,'107C','CIUDAD IRIGOYEN AL SUR'),(182,'107C','CIUDAD IRIGOYEN AL SUR'),(183,'107C','CIUDAD IRIGOYEN AL SUR'),(184,'107C','CIUDAD IRIGOYEN AL SUR'),(185,'107C','CIUDAD IRIGOYEN AL SUR'),(186,'107C','CIUDAD IRIGOYEN AL SUR'),(187,'107C','CIUDAD IRIGOYEN AL SUR'),(188,'107C','CIUDAD IRIGOYEN AL SUR'),(189,'107C','CIUDAD IRIGOYEN AL SUR'),(190,'107C','CIUDAD IRIGOYEN AL SUR'),(191,'107C','CIUDAD IRIGOYEN AL SUR'),(192,'107C','CIUDAD IRIGOYEN AL SUR'),(193,'107C','CIUDAD IRIGOYEN AL SUR'),(194,'107C','CIUDAD IRIGOYEN AL SUR'),(195,'107C','CIUDAD IRIGOYEN AL SUR'),(196,'107C','CIUDAD IRIGOYEN AL SUR'),(197,'107C','CIUDAD IRIGOYEN AL SUR'),(198,'107C','CIUDAD IRIGOYEN AL SUR'),(199,'107C','CIUDAD IRIGOYEN AL SUR'),(200,'107C','CIUDAD IRIGOYEN AL SUR'),(201,'107C','CIUDAD IRIGOYEN AL SUR'),(202,'107C','CIUDAD IRIGOYEN AL SUR'),(203,'107C','CIUDAD IRIGOYEN AL SUR'),(204,'107C','CIUDAD IRIGOYEN AL SUR'),(205,'107C','CIUDAD IRIGOYEN AL SUR'),(206,'107C','CIUDAD IRIGOYEN AL SUR'),(207,'107C','CIUDAD IRIGOYEN AL SUR'),(208,'107C','CIUDAD IRIGOYEN AL SUR'),(209,'107C','CIUDAD IRIGOYEN AL SUR'),(210,'107C','CIUDAD IRIGOYEN AL SUR'),(211,'107C','CIUDAD IRIGOYEN AL SUR'),(212,'107C','CIUDAD IRIGOYEN AL SUR'),(213,'107C','CIUDAD IRIGOYEN AL SUR'),(214,'107C','CIUDAD IRIGOYEN AL SUR'),(215,'107C','CIUDAD IRIGOYEN AL SUR'),(216,'107C','CIUDAD IRIGOYEN AL SUR'),(217,'107C','CIUDAD IRIGOYEN AL SUR'),(218,'107C','CIUDAD IRIGOYEN AL SUR'),(219,'107C','CIUDAD IRIGOYEN AL SUR'),(220,'107C','CIUDAD IRIGOYEN AL SUR'),(221,'107C','CIUDAD IRIGOYEN AL SUR'),(222,'107C','CIUDAD IRIGOYEN AL SUR'),(223,'107C','CIUDAD IRIGOYEN AL SUR'),(224,'107C','CIUDAD IRIGOYEN AL SUR'),(225,'107C','CIUDAD IRIGOYEN AL SUR'),(226,'107C','CIUDAD IRIGOYEN AL SUR'),(227,'107C','CIUDAD IRIGOYEN AL SUR'),(228,'107C','CIUDAD IRIGOYEN AL SUR'),(229,'107C','CIUDAD IRIGOYEN AL SUR'),(230,'107C','CIUDAD IRIGOYEN AL SUR'),(231,'107C','CIUDAD IRIGOYEN AL SUR'),(232,'107C','CIUDAD IRIGOYEN AL SUR'),(233,'107C','CIUDAD IRIGOYEN AL SUR'),(234,'107C','CIUDAD IRIGOYEN AL SUR'),(235,'107C','CIUDAD IRIGOYEN AL SUR'),(236,'107C','CIUDAD IRIGOYEN AL SUR'),(237,'107C','CIUDAD IRIGOYEN AL SUR'),(238,'107C','CIUDAD IRIGOYEN AL SUR'),(239,'107C','CIUDAD IRIGOYEN AL SUR'),(240,'107C','CIUDAD IRIGOYEN AL SUR'),(241,'107C','CIUDAD IRIGOYEN AL SUR'),(242,'107C','CIUDAD IRIGOYEN AL SUR'),(243,'107C','CIUDAD IRIGOYEN AL SUR'),(244,'107C','CIUDAD IRIGOYEN AL SUR'),(245,'107C','CIUDAD IRIGOYEN AL SUR'),(246,'107C','CIUDAD IRIGOYEN AL SUR'),(247,'107C','CIUDAD IRIGOYEN AL SUR'),(248,'107C','CIUDAD IRIGOYEN AL SUR'),(249,'107C','CIUDAD IRIGOYEN AL SUR'),(250,'107C','CIUDAD IRIGOYEN AL SUR'),(251,'107C','CIUDAD IRIGOYEN AL SUR'),(252,'107C','CIUDAD IRIGOYEN AL SUR'),(253,'107C','CIUDAD IRIGOYEN AL SUR'),(254,'107C','CIUDAD IRIGOYEN AL SUR'),(255,'107C','CIUDAD IRIGOYEN AL SUR'),(256,'107C','CIUDAD IRIGOYEN AL SUR'),(257,'107C','CIUDAD IRIGOYEN AL SUR'),(258,'107C','CIUDAD IRIGOYEN AL SUR'),(259,'108','CUADRO NACIONAL'),(260,'108','CUADRO NACIONAL'),(261,'108','CUADRO NACIONAL'),(262,'108','CUADRO NACIONAL'),(263,'108','CUADRO NACIONAL'),(264,'108','CUADRO NACIONAL'),(265,'108','CUADRO NACIONAL'),(266,'108','CUADRO NACIONAL'),(267,'108','CUADRO NACIONAL'),(268,'108','CUADRO NACIONAL'),(269,'108','CUADRO NACIONAL'),(270,'108','CUADRO NACIONAL'),(271,'108','CUADRO NACIONAL'),(272,'108','CUADRO NACIONAL'),(273,'108','CUADRO NACIONAL'),(274,'108','CUADRO NACIONAL'),(275,'108','CUADRO NACIONAL'),(276,'108','CUADRO NACIONAL'),(277,'108','CUADRO NACIONAL'),(278,'108','CUADRO NACIONAL'),(279,'108','CUADRO NACIONAL'),(280,'108','CUADRO NACIONAL'),(281,'108','CUADRO NACIONAL'),(282,'108','CUADRO NACIONAL'),(283,'108','CUADRO NACIONAL'),(284,'108','CUADRO NACIONAL'),(285,'109','El CERRITO'),(286,'109','El CERRITO'),(287,'109','El CERRITO'),(288,'109','El CERRITO'),(289,'109','El CERRITO'),(290,'109','El CERRITO'),(291,'109','El CERRITO'),(292,'109','El CERRITO'),(293,'109','El CERRITO'),(294,'110','LAS PAREDES'),(295,'110','LAS PAREDES'),(296,'110','LAS PAREDES'),(297,'110','LAS PAREDES'),(298,'110','LAS PAREDES'),(299,'110','LAS PAREDES'),(300,'110','LAS PAREDES'),(301,'110','LAS PAREDES'),(302,'110','LAS PAREDES'),(303,'110','LAS PAREDES'),(304,'110','LAS PAREDES'),(305,'110','LAS PAREDES'),(306,'110','LAS PAREDES'),(307,'110','LAS PAREDES'),(308,'110','LAS PAREDES'),(309,'110','LAS PAREDES'),(310,'110','LAS PAREDES'),(311,'110','LAS PAREDES'),(312,'110','LAS PAREDES'),(313,'110','LAS PAREDES'),(314,'110','LAS PAREDES'),(315,'110','LAS PAREDES'),(316,'110','LAS PAREDES'),(317,'110','LAS PAREDES'),(318,'110','LAS PAREDES'),(319,'110','LAS PAREDES'),(320,'110','LAS PAREDES'),(321,'110','LAS PAREDES'),(322,'110','LAS PAREDES'),(323,'110','LAS PAREDES'),(324,'110','LAS PAREDES'),(325,'110','LAS PAREDES'),(326,'111','RAMA CAIDA'),(327,'111','RAMA CAIDA'),(328,'111','RAMA CAIDA'),(329,'111','RAMA CAIDA'),(330,'111','RAMA CAIDA'),(331,'111','RAMA CAIDA'),(332,'111','RAMA CAIDA'),(333,'111','RAMA CAIDA'),(334,'111','RAMA CAIDA'),(335,'111','RAMA CAIDA'),(336,'111','RAMA CAIDA'),(337,'111','RAMA CAIDA'),(338,'111','RAMA CAIDA'),(339,'111','RAMA CAIDA'),(340,'111','RAMA CAIDA'),(341,'111','RAMA CAIDA'),(342,'111','RAMA CAIDA'),(343,'111','RAMA CAIDA'),(344,'112','CAÑADA SECA'),(345,'112','CAÑADA SECA'),(346,'112','CAÑADA SECA'),(347,'112','CAÑADA SECA'),(348,'112','CAÑADA SECA'),(349,'112','CAÑADA SECA'),(350,'112','CAÑADA SECA'),(351,'112','CAÑADA SECA'),(352,'112','CAÑADA SECA'),(353,'112','CAÑADA SECA'),(354,'112','CAÑADA SECA'),(355,'112','CAÑADA SECA'),(356,'112','CAÑADA SECA'),(357,'112','CAÑADA SECA'),(358,'112','CAÑADA SECA'),(359,'112','CAÑADA SECA'),(360,'112','CAÑADA SECA'),(361,'112','CAÑADA SECA'),(362,'112','CAÑADA SECA'),(363,'112','CAÑADA SECA'),(364,'112','CAÑADA SECA'),(365,'112','CAÑADA SECA'),(366,'112','CAÑADA SECA'),(367,'112','CAÑADA SECA'),(368,'112','CAÑADA SECA'),(369,'113','MONTE COMAN'),(370,'113','MONTE COMAN'),(371,'113','MONTE COMAN'),(372,'113','MONTE COMAN'),(373,'113','MONTE COMAN'),(374,'113','MONTE COMAN'),(375,'113','MONTE COMAN'),(376,'113','MONTE COMAN'),(377,'113','MONTE COMAN'),(378,'113','MONTE COMAN'),(379,'114','LA LLAVE'),(380,'114','LA LLAVE'),(381,'114','LA LLAVE'),(382,'114','LA LLAVE'),(383,'114','LA LLAVE'),(384,'115','GOUGE'),(385,'115','GOUGE'),(386,'115','GOUGE'),(387,'115','GOUGE'),(388,'115','GOUGE'),(389,'115','GOUGE'),(390,'115','GOUGE'),(391,'115','GOUGE'),(392,'115','GOUGE'),(393,'116','25 DE MAYO'),(394,'116','25 DE MAYO'),(395,'116','25 DE MAYO'),(396,'116','25 DE MAYO'),(397,'116','25 DE MAYO'),(398,'117','CUADRO BENEGAS'),(399,'117','CUADRO BENEGAS'),(400,'117','CUADRO BENEGAS'),(401,'117','CUADRO BENEGAS'),(402,'117','CUADRO BENEGAS'),(403,'117','CUADRO BENEGAS'),(404,'117','CUADRO BENEGAS'),(405,'117','CUADRO BENEGAS'),(406,'117','CUADRO BENEGAS'),(407,'117','CUADRO BENEGAS'),(408,'117','CUADRO BENEGAS'),(409,'117A','EL NIHUIL'),(410,'117A','EL NIHUIL'),(411,'117A','EL NIHUIL'),(412,'118','LAS MALVINAS'),(413,'118','LAS MALVINAS'),(414,'118','LAS MALVINAS'),(415,'118','LAS MALVINAS'),(416,'119','PUNTA DEL AGUA'),(417,'119','PUNTA DEL AGUA'),(418,'120','VILLA ATUEL'),(419,'120','VILLA ATUEL'),(420,'120','VILLA ATUEL'),(421,'120','VILLA ATUEL'),(422,'120','VILLA ATUEL'),(423,'120','VILLA ATUEL'),(424,'120','VILLA ATUEL'),(425,'120','VILLA ATUEL'),(426,'120','VILLA ATUEL'),(427,'120','VILLA ATUEL'),(428,'120','VILLA ATUEL'),(429,'120','VILLA ATUEL'),(430,'121','REAL DEL PADRE'),(431,'121','REAL DEL PADRE'),(432,'121','REAL DEL PADRE'),(433,'121','REAL DEL PADRE'),(434,'121','REAL DEL PADRE'),(435,'121','REAL DEL PADRE'),(436,'121','REAL DEL PADRE'),(437,'121','REAL DEL PADRE'),(438,'121','REAL DEL PADRE'),(439,'121','REAL DEL PADRE'),(440,'121','REAL DEL PADRE'),(441,'121','REAL DEL PADRE'),(442,'121','REAL DEL PADRE'),(443,'122','JAIME PRATS'),(444,'122','JAIME PRATS'),(445,'122','JAIME PRATS'),(446,'123','LA GUEVARINA'),(447,'124','EL SOSNEADO');
/*!40000 ALTER TABLE `mesas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-30 11:31:45
