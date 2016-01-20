CREATE DATABASE  IF NOT EXISTS `billionfun` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `billionfun`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: billionfun
-- ------------------------------------------------------
-- Server version	5.5.47

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

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` date NOT NULL,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistent_logins`
--

LOCK TABLES `persistent_logins` WRITE;
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_data_dictionary`
--

DROP TABLE IF EXISTS `sys_data_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_data_dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(32) DEFAULT NULL COMMENT '字典名称',
  `code` varchar(32) DEFAULT NULL COMMENT '字典编号',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父id',
  `status` int(11) DEFAULT NULL COMMENT '状态：0-无效1-有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_data_dictionary`
--

LOCK TABLES `sys_data_dictionary` WRITE;
/*!40000 ALTER TABLE `sys_data_dictionary` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_data_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_func`
--

DROP TABLE IF EXISTS `sys_func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_func` (
  `id` varchar(16) NOT NULL COMMENT '功能编号',
  `parent_id` varchar(16) DEFAULT NULL COMMENT '父功能编号',
  `name` varchar(32) DEFAULT NULL COMMENT '功能名称',
  `level` int(11) DEFAULT NULL COMMENT '功能级别',
  `type` int(11) DEFAULT NULL COMMENT '功能类型1.菜单2-按钮',
  `url` varchar(256) DEFAULT NULL COMMENT '跳转url',
  `status` int(11) DEFAULT NULL COMMENT '状态：0-无效1-有效',
  `img_url` varchar(256) DEFAULT NULL,
  `style_class` varchar(256) DEFAULT NULL COMMENT '样式表class',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_func`
--

LOCK TABLES `sys_func` WRITE;
/*!40000 ALTER TABLE `sys_func` DISABLE KEYS */;
INSERT INTO `sys_func` VALUES ('97','0','控制台',1,NULL,'index.html',1,NULL,'icon-dashboard'),('98','0','业务模块',1,NULL,NULL,1,NULL,'icon-cog'),('9801','98','产品管理',2,1,NULL,1,NULL,'icon-list-alt'),('99','0','系统模块',1,NULL,NULL,1,NULL,'icon-desktop'),('9901','99','用户管理',2,1,'system/searchSysUser.html?funcode=9901',1,NULL,'icon-desktop'),('9902','99','角色管理',2,1,'system/searchSysRole.html?funcode=9902',1,NULL,'icon-desktop'),('9903','99','功能菜单管理',2,1,'system/func/query.html',1,NULL,'icon-desktop');
/*!40000 ALTER TABLE `sys_func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `LOG_NAME` varchar(1000) DEFAULT NULL COMMENT '名称',
  `LOG_IP` varchar(1000) DEFAULT NULL COMMENT 'ip',
  `LOG_DATE` varchar(1000) DEFAULT NULL COMMENT '时间',
  `LOG_LEVEL` varchar(1000) DEFAULT NULL COMMENT '级别',
  `LOG_CLASS` varchar(1000) DEFAULT NULL COMMENT '类',
  `LOG_MESSAGE` varchar(1000) DEFAULT NULL COMMENT '信息',
  `LOG_DESC` varchar(1000) DEFAULT NULL COMMENT '详细描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,'Administrator','192.168.1.1','2015-12-20 18:08:11,354','ERROR','com.billionfun.bms.product.mall.controllers.DefaultController','-----------error-------------','7'),(2,'Administrator','192.168.1.1','2015-12-20 18:22:20,588','ERROR','com.billionfun.bms.product.mall.controllers.DefaultController','-----------error-------------','com.billionfun.bms.product.mall.controllers.DefaultController.login(DefaultController.java:25)'),(3,'Administrator','192.168.1.1','2015-12-20 18:27:29,968','ERROR','com.billionfun.bms.product.mall.controllers.DefaultController','-----------error-------------','com.billionfun.bms.product.mall.controllers.DefaultController.login(DefaultController.java:25)'),(4,'Administrator','192.168.1.1','2015-12-20 18:27:41,961','ERROR','com.billionfun.bms.product.mall.controllers.DefaultController','-----------error-------------','com.billionfun.bms.product.mall.controllers.DefaultController.login(DefaultController.java:25)'),(5,'Administrator','','2015/12/20 20:35:11','ERROR','com.billionfun.bms.product.mall.controllers.DefaultController','-----------error-------------','com.billionfun.bms.product.mall.controllers.DefaultController.login(DefaultController.java:25)'),(6,'Administrator','','2015/12/20 23:03:28','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(7,'Administrator','','2015/12/20 23:09:28','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(8,'Administrator','','2015/12/20 23:21:57','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(9,'Administrator','','2015/12/20 23:23:43','ERROR','com.billionfun.bms.product.mall.controllers.DefaultController','-----------error-------------','com.billionfun.bms.product.mall.controllers.DefaultController.login(DefaultController.java:24)'),(10,'Administrator','0:0:0:0:0:0:0:1','2015/12/20 23:25:59','ERROR','com.billionfun.bms.product.mall.controllers.DefaultController','-----------error-------------','com.billionfun.bms.product.mall.controllers.DefaultController.login(DefaultController.java:24)'),(11,'Administrator','','2015/12/20 23:31:37','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(12,'Administrator','0:0:0:0:0:0:0:1','2015/12/20 23:39:18','ERROR','com.billionfun.bms.product.mall.controllers.DefaultController','-----------error-------------','com.billionfun.bms.product.mall.controllers.DefaultController.login(DefaultController.java:24)'),(13,'Administrator','0:0:0:0:0:0:0:1','2015/12/20 23:43:42','ERROR','com.billionfun.bms.product.mall.controllers.DefaultController','-----------error-------------','com.billionfun.bms.product.mall.controllers.DefaultController.login(DefaultController.java:24)'),(14,'Administrator','','2015/12/21 15:40:55','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(15,'Administrator','','2015/12/21 15:43:32','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(16,'Administrator','','2015/12/21 15:46:48','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(17,'Administrator','','2015/12/21 15:47:56','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(18,'Administrator','','2015/12/21 15:49:23','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(19,'Administrator','','2015/12/21 15:51:24','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(20,'Administrator','','2015/12/21 15:52:15','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(21,'Administrator','','2015/12/21 15:53:26','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(22,'Administrator','','2015/12/21 15:54:06','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(23,'Administrator','','2015/12/21 15:59:18','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(24,'Administrator','','2015/12/21 15:59:57','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(25,'Administrator','','2015/12/21 19:12:44','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(26,'Administrator','','2015/12/21 21:30:26','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(27,'Administrator','','2015/12/21 21:54:50','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(28,'Administrator','','2015/12/21 21:55:37','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(29,'Administrator','','2015/12/21 22:24:39','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(30,'Administrator','','2015/12/21 23:50:06','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(31,'Administrator','','2015/12/22 00:05:14','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(32,'Administrator','','2015/12/22 21:12:06','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(33,'Administrator','','2015/12/22 21:15:52','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(34,'Administrator','','2015/12/22 21:22:37','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(35,'Administrator','','2015/12/22 21:24:29','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(36,'Administrator','','2015/12/22 21:30:21','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(37,'Administrator','','2015/12/22 22:20:26','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(38,'Administrator','','2015/12/22 22:21:21','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(39,'Administrator','','2015/12/22 22:23:46','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(40,'Administrator','','2015/12/22 22:36:57','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(41,'Administrator','','2015/12/22 23:22:28','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(42,'Administrator','','2015/12/22 23:23:13','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(43,'Administrator','','2015/12/22 23:25:46','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(44,'Administrator','','2015/12/22 23:27:11','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(45,'Administrator','','2015/12/22 23:28:10','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(46,'Administrator','','2015/12/22 23:33:43','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(47,'Administrator','','2015/12/22 23:36:39','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(48,'Administrator','','2015/12/22 23:43:19','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(49,'Administrator','','2015/12/22 23:43:43','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(50,'Administrator','','2015/12/23 00:43:54','ERROR','org.springframework.web.servlet.DispatcherServlet','Context initialization failed','org.springframework.web.servlet.FrameworkServlet.initServletBean(FrameworkServlet.java:497)'),(51,'Administrator','0:0:0:0:0:0:0:1','2015/12/23 01:02:49','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(52,'Administrator','','2015/12/23 01:04:48','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(53,'Administrator','','2015/12/23 01:15:15','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(54,'Administrator','','2015/12/23 01:15:54','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(55,'Administrator','','2015/12/23 01:32:01','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(56,'Administrator','','2015/12/23 01:37:20','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(57,'Administrator','','2015/12/23 01:38:24','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(58,'Administrator','','2015/12/23 01:41:08','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(59,'Administrator','','2015/12/23 01:46:10','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(60,'Administrator','','2015/12/23 01:46:23','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(61,'Administrator','','2015/12/23 01:46:46','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(62,'Administrator','','2015/12/23 01:46:54','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(63,'Administrator','','2015/12/23 01:48:15','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(64,'Administrator','','2015/12/23 01:49:16','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(65,'Administrator','','2015/12/23 01:54:40','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(66,'Administrator','','2015/12/23 01:59:31','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(67,'Administrator','','2015/12/23 01:59:35','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(68,'Administrator','','2015/12/23 01:59:57','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(69,'Administrator','0:0:0:0:0:0:0:1','2015/12/23 02:05:48','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(70,'Administrator','','2015/12/23 02:09:14','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(71,'Administrator','','2015/12/23 02:11:59','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(72,'Administrator','','2015/12/23 02:12:07','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(73,'Administrator','','2015/12/23 02:12:08','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(74,'Administrator','','2015/12/23 02:13:48','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(75,'Administrator','','2015/12/23 02:13:53','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(76,'Administrator','','2015/12/23 02:14:55','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(77,'Administrator','','2015/12/23 02:14:56','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(78,'Administrator','0:0:0:0:0:0:0:1','2015/12/23 22:13:46','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(79,'Administrator','0:0:0:0:0:0:0:1','2015/12/23 23:04:00','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(80,'Administrator','','2015/12/23 23:11:07','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(81,'Administrator','0:0:0:0:0:0:0:1','2015/12/23 23:12:12','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(82,'Administrator','0:0:0:0:0:0:0:1','2015/12/23 23:12:35','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(83,'Administrator','','2015/12/23 23:14:06','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(84,'Administrator','','2015/12/23 23:15:24','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(85,'Administrator','','2015/12/23 23:22:24','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(86,'Administrator','','2015/12/23 23:23:17','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(87,'Administrator','','2015/12/23 23:26:21','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(88,'Administrator','','2015/12/23 23:29:55','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(89,'Administrator','','2015/12/23 23:31:50','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(90,'Administrator','','2015/12/23 23:36:33','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(91,'Administrator','','2015/12/23 23:37:27','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(92,'Administrator','','2015/12/23 23:39:41','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(93,'Administrator','','2015/12/23 23:40:36','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(94,'Administrator','','2015/12/23 23:41:26','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(95,'Administrator','','2015/12/23 23:43:10','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(96,'Administrator','','2015/12/23 23:44:58','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(97,'Administrator','','2015/12/23 23:58:46','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(98,'Administrator','','2015/12/24 00:03:29','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(99,'Administrator','','2015/12/24 00:19:24','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(100,'Administrator','','2015/12/24 00:31:11','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(101,'Administrator','','2015/12/24 00:32:06','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(102,'Administrator','','2015/12/24 00:46:34','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(103,'Administrator','','2015/12/24 00:53:41','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(104,'Administrator','','2015/12/24 01:02:41','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(105,'Administrator','','2015/12/24 23:19:58','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(106,'Administrator','','2015/12/25 01:00:41','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(107,'Administrator','','2015/12/25 01:05:10','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(108,'Administrator','','2015/12/25 01:08:20','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(109,'Administrator','0:0:0:0:0:0:0:1','2015/12/25 01:21:58','ERROR','freemarker.runtime','Error executing FreeMarker template','freemarker.log._Log4jLoggerFactory$Log4jLogger.error(_Log4jLoggerFactory.java:60)'),(110,'Administrator','0:0:0:0:0:0:0:1','2015/12/27 21:59:27','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(111,'Administrator','0:0:0:0:0:0:0:1','2015/12/27 23:44:23','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(112,'Administrator','0:0:0:0:0:0:0:1','2015/12/27 23:59:51','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(113,'Administrator','0:0:0:0:0:0:0:1','2015/12/28 00:00:11','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(114,'Administrator','0:0:0:0:0:0:0:1','2015/12/28 00:00:14','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(115,'Administrator','0:0:0:0:0:0:0:1','2015/12/28 00:00:25','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(116,'Administrator','0:0:0:0:0:0:0:1','2015/12/28 00:09:36','ERROR','org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter','An internal error occurred while trying to authenticate the user.','org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:226)'),(117,'Administrator','','2015/12/28 22:27:34','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(118,'Administrator','','2015/12/28 23:35:31','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(119,'Administrator','','2015/12/28 23:38:25','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(120,'Administrator','','2015/12/28 23:38:58','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(121,'Administrator','','2015/12/28 23:39:57','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(122,'Administrator','','2015/12/28 23:41:10','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(123,'Administrator','','2015/12/28 23:42:05','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(124,'Administrator','','2015/12/28 23:42:27','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(125,'Administrator','','2015/12/28 23:42:45','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(126,'Administrator','','2015/12/28 23:44:33','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(127,'Administrator','','2015/12/28 23:47:45','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(128,'Administrator','','2015/12/28 23:48:42','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(129,'Administrator','','2015/12/28 23:51:27','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(130,'Administrator','','2016/01/05 00:58:40','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(131,'Administrator','','2016/01/17 15:54:55','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(132,'Administrator','','2016/01/17 16:50:51','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:65: unexpected token: adn','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:78)'),(133,'Administrator','','2016/01/17 16:50:51','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:65: unexpected token: adn','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:73)'),(134,'Administrator','','2016/01/18 13:52:52','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(135,'Administrator','0:0:0:0:0:0:0:1','2016/01/18 15:41:21','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:65: unexpected token: adn','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:78)'),(136,'Administrator','0:0:0:0:0:0:0:1','2016/01/18 15:41:22','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:65: unexpected token: adn','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:73)'),(137,'Administrator','','2016/01/18 15:42:54','ERROR','org.springframework.web.context.ContextLoader','Context initialization failed','org.springframework.web.context.ContextLoader.initWebApplicationContext(ContextLoader.java:331)'),(138,'Administrator','','2016/01/18 15:58:07','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:65: unexpected token: adn','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:78)'),(139,'Administrator','','2016/01/18 15:58:07','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:65: unexpected token: adn','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:73)'),(140,'Administrator','','2016/01/18 15:58:29','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:65: unexpected token: adn','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:78)'),(141,'Administrator','','2016/01/18 15:58:29','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:65: unexpected token: adn','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:73)'),(142,'Administrator','','2016/01/18 16:10:35','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:84: unexpected token: :','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:78)'),(143,'Administrator','','2016/01/18 16:10:35','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:84: unexpected token: :','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:73)'),(144,'Administrator','','2016/01/18 16:10:35','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:85: unexpected token: funcName','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:78)'),(145,'Administrator','','2016/01/18 16:10:35','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:85: unexpected token: funcName','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:73)'),(146,'Administrator','','2016/01/18 16:13:02','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:81: unexpected token: %','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:78)'),(147,'Administrator','','2016/01/18 16:13:02','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:81: unexpected token: %','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:73)'),(148,'Administrator','','2016/01/18 16:13:02','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:83: unexpected token: funcName','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:78)'),(149,'Administrator','','2016/01/18 16:13:02','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:83: unexpected token: funcName','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:73)'),(150,'Administrator','','2016/01/18 16:15:37','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:84: unexpected token: :','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:78)'),(151,'Administrator','','2016/01/18 16:15:37','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:84: unexpected token: :','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:73)'),(152,'Administrator','','2016/01/18 16:15:37','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:85: unexpected token: funcName','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:78)'),(153,'Administrator','','2016/01/18 16:15:37','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:85: unexpected token: funcName','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:73)'),(154,'Administrator','0:0:0:0:0:0:0:1','2016/01/18 16:44:29','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:84: unexpected token: :','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:78)'),(155,'Administrator','0:0:0:0:0:0:0:1','2016/01/18 16:44:29','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:84: unexpected token: :','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:73)'),(156,'Administrator','0:0:0:0:0:0:0:1','2016/01/18 16:44:29','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:85: unexpected token: funcName','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:78)'),(157,'Administrator','0:0:0:0:0:0:0:1','2016/01/18 16:44:29','ERROR','org.hibernate.hql.internal.ast.ErrorCounter','line 1:85: unexpected token: funcName','org.hibernate.hql.internal.ast.ErrorCounter.reportError(ErrorCounter.java:73)');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `code` varchar(32) DEFAULT NULL COMMENT '角色编码',
  `status` int(11) DEFAULT NULL COMMENT '状态：1-有效0-无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'系统管理员','ROLE_ADMIN',1),(2,'普通用户','ROLE_USER',1),(1000,'超级管理员','ROLE_SA',1);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_func`
--

DROP TABLE IF EXISTS `sys_role_func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_func` (
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  `func_id` varchar(16) NOT NULL COMMENT '功能id',
  PRIMARY KEY (`role_id`,`func_id`),
  KEY `FK_ik2pik6cd0lmlap002xm565vu` (`func_id`),
  CONSTRAINT `FK_c79dtu8k91x613960ir5eny93` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`),
  CONSTRAINT `FK_ik2pik6cd0lmlap002xm565vu` FOREIGN KEY (`func_id`) REFERENCES `sys_func` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色功能关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_func`
--

LOCK TABLES `sys_role_func` WRITE;
/*!40000 ALTER TABLE `sys_role_func` DISABLE KEYS */;
INSERT INTO `sys_role_func` VALUES (1000,'97'),(1000,'98'),(1000,'9801'),(1,'99'),(1000,'99'),(1,'9901'),(1000,'9901'),(1,'9902'),(1000,'9902'),(1000,'9903');
/*!40000 ALTER TABLE `sys_role_func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `username` varchar(32) DEFAULT NULL COMMENT '用户名',
  `password` varchar(128) DEFAULT NULL COMMENT '密码',
  `full_name` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `user_type` int(11) DEFAULT NULL COMMENT '用户类型1-系统用户',
  `prov_code` int(11) DEFAULT NULL COMMENT '省编号',
  `city_code` int(11) DEFAULT NULL COMMENT '市编号',
  `effect_start_date` date DEFAULT NULL COMMENT '用户生效开始时间',
  `effect_end_date` date DEFAULT NULL COMMENT '用户生效结束时间',
  `telephone` varchar(32) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(256) DEFAULT NULL COMMENT '详细地址',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_optr` varchar(32) DEFAULT NULL COMMENT '创建人',
  `modify_optr` varchar(32) DEFAULT NULL COMMENT '修改人',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `status` int(11) DEFAULT NULL COMMENT '状态：1-有效 0-无效',
  `dist_code` int(11) DEFAULT NULL COMMENT '区编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'zhuyi','1353e154e737b532853783c8b726cdb1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL),(55,'p','853f983e8c693323c809603eed12bf5c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'p',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'','d41d8cd98f00b204e9800998ecf8427e',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'11','8597e4ac90e7568b1534788f5c87765d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `role_id` bigint(20) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_fxu3td9m5o7qov1kbdvmn0g0x` (`role_id`),
  CONSTRAINT `FK_fethvr269t6stivlddbo5pxry` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FK_fxu3td9m5o7qov1kbdvmn0g0x` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(1,2),(1,1000);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-20 14:33:25
