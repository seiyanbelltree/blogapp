-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: blogdb
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add post',7,'add_post'),(26,'Can change post',7,'change_post'),(27,'Can delete post',7,'delete_post'),(28,'Can view post',7,'view_post'),(29,'Can add genre',8,'add_genre'),(30,'Can change genre',8,'change_genre'),(31,'Can delete genre',8,'delete_genre'),(32,'Can view genre',8,'view_genre'),(33,'Can add entry model',9,'add_entrymodel'),(34,'Can change entry model',9,'change_entrymodel'),(35,'Can delete entry model',9,'delete_entrymodel'),(36,'Can view entry model',9,'view_entrymodel'),(37,'Can add image',10,'add_image'),(38,'Can change image',10,'change_image'),(39,'Can delete image',10,'delete_image'),(40,'Can view image',10,'view_image'),(41,'Can add test model',11,'add_testmodel'),(42,'Can change test model',11,'change_testmodel'),(43,'Can delete test model',11,'delete_testmodel'),(44,'Can view test model',11,'view_testmodel');
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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$ZSsvB9UBtzpj$809wV6VfWZ5cGHLPsqiHSuLjq/ZHD2+Eo/9J91Nykyk=','2020-04-20 14:07:39.378863',1,'seiya','','','oasis0611@keio.jp',1,1,'2020-04-05 09:44:04.308107');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  `id` int NOT NULL AUTO_INCREMENT,
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
-- Table structure for table `blogapp_entrymodel`
--

DROP TABLE IF EXISTS `blogapp_entrymodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogapp_entrymodel` (
  `articleNumber` int NOT NULL AUTO_INCREMENT,
  `recommend` int DEFAULT NULL,
  `genreNumber` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `text1` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `published_date` datetime(6) DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `genre_id` int NOT NULL,
  `h1` varchar(200) DEFAULT NULL,
  `h2` varchar(200) DEFAULT NULL,
  `h3` varchar(200) DEFAULT NULL,
  `h4` varchar(200) DEFAULT NULL,
  `h5` varchar(200) DEFAULT NULL,
  `text2` longtext,
  `text3` longtext,
  `text4` longtext,
  `text5` longtext,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`articleNumber`),
  UNIQUE KEY `blogApp_entrymodel_genre_id_genreNumber_e931fa3b_uniq` (`genre_id`,`genreNumber`),
  KEY `blogApp_entrymodel_author_id_c61e1a60_fk_auth_user_id` (`author_id`),
  CONSTRAINT `blogApp_entrymodel_author_id_c61e1a60_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blogApp_entrymodel_genre_id_bef062a9_fk_blogApp_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `blogapp_genre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_entrymodel`
--

LOCK TABLES `blogapp_entrymodel` WRITE;
/*!40000 ALTER TABLE `blogapp_entrymodel` DISABLE KEYS */;
INSERT INTO `blogapp_entrymodel` VALUES (1,0,0,'初投稿','seiyaです。\r\nこれから投稿していこうと思います。\r\nよろしくお願いします。','2020-04-15 13:49:12.000000','2020-04-15 13:53:22.000000',1,3,'よろしくお願いします','はじめたきっかけ',NULL,NULL,NULL,'ゲーム制作をきっかけにパソコン関連の知識に興味を持ちました。\r\n今はpythonを使ってのwebスクレイピング機能等に一番興味があります。','','','','media/websitethumb.jpg');
/*!40000 ALTER TABLE `blogapp_entrymodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapp_genre`
--

DROP TABLE IF EXISTS `blogapp_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogapp_genre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `genre` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blogApp_genre_genre_b1da5f1a_uniq` (`genre`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_genre`
--

LOCK TABLES `blogapp_genre` WRITE;
/*!40000 ALTER TABLE `blogapp_genre` DISABLE KEYS */;
INSERT INTO `blogapp_genre` VALUES (1,'Django'),(5,'アプリ制作'),(4,'ブログ制作'),(2,'競技プログラミング'),(3,'雑談');
/*!40000 ALTER TABLE `blogapp_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapp_image`
--

DROP TABLE IF EXISTS `blogapp_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogapp_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_image`
--

LOCK TABLES `blogapp_image` WRITE;
/*!40000 ALTER TABLE `blogapp_image` DISABLE KEYS */;
INSERT INTO `blogapp_image` VALUES (1,'photos/Atcoder_logo.png','\"{% static \"media/Atcoder_Logo.png\" %}\"'),(2,'photos/pythonLogo.png','\"{% static \"media/pythonLogo.png\" %}\"'),(3,'photos/websitethumb.jpg','\"{% static \"media/websitethumb.jpg\" %}\"'),(4,'photos/frontend.png','\"{% static \"media/frontend.png\" %}\"'),(5,'photos/djangoLogo.png','\"{% static \"media/djangoLogo.png\" %}\"');
/*!40000 ALTER TABLE `blogapp_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapp_post`
--

DROP TABLE IF EXISTS `blogapp_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogapp_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `published_date` datetime(6) DEFAULT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogapp_post_author_id_5ec80b2c_fk_auth_user_id` (`author_id`),
  CONSTRAINT `blogapp_post_author_id_5ec80b2c_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_post`
--

LOCK TABLES `blogapp_post` WRITE;
/*!40000 ALTER TABLE `blogapp_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogapp_post` ENABLE KEYS */;
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
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-04-15 12:34:27.325077','1','Django',1,'[{\"added\": {}}]',8,1),(2,'2020-04-15 12:34:36.324184','2','競技プログラミング',1,'[{\"added\": {}}]',8,1),(3,'2020-04-15 12:35:00.901109','3','雑談',1,'[{\"added\": {}}]',8,1),(4,'2020-04-15 12:35:19.489912','4','ブログ制作',1,'[{\"added\": {}}]',8,1),(5,'2020-04-15 12:35:39.299799','5','アプリ製作',1,'[{\"added\": {}}]',8,1),(6,'2020-04-15 12:36:03.893673','5','アプリ制作',2,'[{\"changed\": {\"fields\": [\"genre\"]}}]',8,1),(7,'2020-04-15 12:44:44.706747','1','Image object (1)',1,'[{\"added\": {}}]',10,1),(8,'2020-04-15 12:45:18.256433','2','Image object (2)',1,'[{\"added\": {}}]',10,1),(9,'2020-04-15 12:52:40.623379','3','Image object (3)',1,'[{\"added\": {}}]',10,1),(10,'2020-04-15 12:54:14.549320','4','Image object (4)',1,'[{\"added\": {}}]',10,1),(11,'2020-04-15 12:55:06.734951','5','Image object (5)',1,'[{\"added\": {}}]',10,1),(12,'2020-04-15 13:53:25.155530','1','初投稿',1,'[{\"added\": {}}]',9,1),(13,'2020-04-15 13:55:11.607859','1','初投稿',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(14,'2020-04-15 15:30:24.095819','1','初投稿',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(15,'2020-04-15 15:32:05.573311','1','初投稿',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(16,'2020-04-15 15:55:25.469395','1','初投稿',2,'[]',9,1),(17,'2020-04-15 16:01:55.736710','1','初投稿',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(18,'2020-04-15 16:08:15.250938','1','初投稿',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1),(19,'2020-04-15 16:46:56.930675','1','初投稿',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'blogApp','entrymodel'),(8,'blogApp','genre'),(10,'blogApp','image'),(7,'blogApp','post'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(11,'testApp','testmodel');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-04-05 09:32:13.197909'),(2,'auth','0001_initial','2020-04-05 09:32:14.269733'),(3,'admin','0001_initial','2020-04-05 09:32:14.533467'),(4,'admin','0002_logentry_remove_auto_add','2020-04-05 09:32:14.553466'),(5,'admin','0003_logentry_add_action_flag_choices','2020-04-05 09:32:14.565471'),(6,'contenttypes','0002_remove_content_type_name','2020-04-05 09:32:14.733440'),(7,'auth','0002_alter_permission_name_max_length','2020-04-05 09:32:14.837440'),(8,'auth','0003_alter_user_email_max_length','2020-04-05 09:32:14.917441'),(9,'auth','0004_alter_user_username_opts','2020-04-05 09:32:14.937438'),(10,'auth','0005_alter_user_last_login_null','2020-04-05 09:32:15.021474'),(11,'auth','0006_require_contenttypes_0002','2020-04-05 09:32:15.025439'),(12,'auth','0007_alter_validators_add_error_messages','2020-04-05 09:32:15.041471'),(13,'auth','0008_alter_user_username_max_length','2020-04-05 09:32:15.153472'),(14,'auth','0009_alter_user_last_name_max_length','2020-04-05 09:32:15.269440'),(16,'blogApp','0002_entrymodel_genre','2020-04-05 09:32:15.714114'),(17,'blogApp','0003_auto_20191016_1933','2020-04-05 09:32:16.138107'),(18,'blogApp','0004_auto_20191016_2132','2020-04-05 09:32:16.202105'),(19,'blogApp','0005_auto_20191019_0109','2020-04-05 09:32:16.374105'),(20,'blogApp','0006_image_path','2020-04-05 09:32:16.410143'),(21,'blogApp','0007_auto_20191021_1846','2020-04-05 09:32:16.642412'),(22,'blogApp','0008_auto_20191021_1916','2020-04-05 09:32:16.778445'),(23,'blogApp','0009_auto_20191021_1922','2020-04-05 09:32:16.798449'),(24,'sessions','0001_initial','2020-04-05 09:32:16.898444'),(25,'testApp','0001_initial','2020-04-05 09:32:16.962410'),(26,'blogApp','0010_auto_20200420_2201','2020-04-20 13:01:50.839757'),(27,'blogApp','0011_auto_20200421_2315','2020-04-21 14:15:52.919780'),(28,'blogApp','0012_auto_20200421_2349','2020-04-21 14:49:15.567163'),(30,'blogapp','0001_initial','2020-04-22 04:36:42.229928'),(31,'blogapp','0002_entrymodel_genre','2020-04-22 04:36:42.239613'),(32,'blogapp','0003_auto_20191016_1933','2020-04-22 04:36:42.247605'),(33,'blogapp','0004_auto_20191016_2132','2020-04-22 04:36:42.252592'),(34,'blogapp','0005_auto_20191019_0109','2020-04-22 04:36:42.257607'),(35,'blogapp','0006_image_path','2020-04-22 04:36:42.263593'),(36,'blogapp','0007_auto_20191021_1846','2020-04-22 04:36:42.269546'),(37,'blogapp','0008_auto_20191021_1916','2020-04-22 04:36:42.274532'),(38,'blogapp','0009_auto_20191021_1922','2020-04-22 04:36:42.279520'),(39,'blogapp','0010_auto_20200420_2201','2020-04-22 04:36:42.285521'),(40,'testapp','0001_initial','2020-04-22 04:37:07.555833');
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
INSERT INTO `django_session` VALUES ('k5vts7oyttaqx6jqxs9yczh9uztsi37v','NDU5NWEyYmI3YzhhZGQ2YWJmNDIwZjNhYWM4MjFjN2YxZGM4YzBhMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Y2VlODRhZWRjYTJmM2IxZTQ1ZWViNjM0ZGJiODkxNjdkYjg4YmNiIn0=','2020-04-19 10:01:21.040143'),('m51gg6r2i34ocymksh57wndtrtrtiu3p','ZDY5ZjdjZmMxNzgwMmU2OTBjMWI1Y2I1MDE4Y2QwY2FiODg2NzllZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTg5MjQ3ZmIwZGIxMTYyZmI0YmQyNTQzNTdkMjlhNzNkMDc3ODgzIn0=','2020-05-04 14:07:39.387815');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testapp_testmodel`
--

DROP TABLE IF EXISTS `testapp_testmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testapp_testmodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `testNumber` int NOT NULL,
  `text` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `testNumber` (`testNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testapp_testmodel`
--

LOCK TABLES `testapp_testmodel` WRITE;
/*!40000 ALTER TABLE `testapp_testmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `testapp_testmodel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-22 13:39:05
