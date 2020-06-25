-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: sample
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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `boardCode` varchar(20) NOT NULL,
  `boardName` varchar(50) NOT NULL,
  `boardMaker` varchar(20) DEFAULT NULL,
  `boardColor` varchar(20) DEFAULT NULL,
  `boardType` varchar(20) DEFAULT NULL,
  `boardRegdate` datetime DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (42,'BBB','테스트입니다','관리자','#B00020','겔러리게시판','2020-05-12 11:32:02'),(44,'CCC','테스트입니다','관리자','#1A237E','겔러리게시판','2020-05-12 11:32:28'),(47,'DDD','테스트입니다','관리자','#2962FF','겔러리게시판','2020-05-12 11:33:31'),(49,'FFF','테스트입니다','관리자','#FFE277','겔러리게시판','2020-05-12 12:19:25'),(50,'GGG','테스트입니다','관리자','#FFD8A6','겔러리게시판','2020-05-12 14:02:23'),(61,'HHH','H테스트','관리자','#C70039','겔러리게시판','2020-05-19 09:09:29');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_article_bbb`
--

DROP TABLE IF EXISTS `gat_article_bbb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_article_bbb` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_article_bbb`
--

LOCK TABLES `gat_article_bbb` WRITE;
/*!40000 ALTER TABLE `gat_article_bbb` DISABLE KEYS */;
/*!40000 ALTER TABLE `gat_article_bbb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_article_ccc`
--

DROP TABLE IF EXISTS `gat_article_ccc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_article_ccc` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_article_ccc`
--

LOCK TABLES `gat_article_ccc` WRITE;
/*!40000 ALTER TABLE `gat_article_ccc` DISABLE KEYS */;
INSERT INTO `gat_article_ccc` VALUES (1,'kkhjk','관리자','<p>khjkh</p>\r\n','2020-05-15 17:52:05',5,NULL,NULL,NULL,1,0,0),(2,'oluhj','관리자','<p>phj</p>\r\n','2020-05-15 17:56:37',7,NULL,NULL,NULL,2,0,0);
/*!40000 ALTER TABLE `gat_article_ccc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_article_ddd`
--

DROP TABLE IF EXISTS `gat_article_ddd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_article_ddd` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_article_ddd`
--

LOCK TABLES `gat_article_ddd` WRITE;
/*!40000 ALTER TABLE `gat_article_ddd` DISABLE KEYS */;
/*!40000 ALTER TABLE `gat_article_ddd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_article_fff`
--

DROP TABLE IF EXISTS `gat_article_fff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_article_fff` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_article_fff`
--

LOCK TABLES `gat_article_fff` WRITE;
/*!40000 ALTER TABLE `gat_article_fff` DISABLE KEYS */;
INSERT INTO `gat_article_fff` VALUES (1,'khj','관리자','<p>kjhkh</p>\r\n','2020-05-15 17:46:36',1,NULL,NULL,NULL,1,0,0);
/*!40000 ALTER TABLE `gat_article_fff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_article_ggg`
--

DROP TABLE IF EXISTS `gat_article_ggg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_article_ggg` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_article_ggg`
--

LOCK TABLES `gat_article_ggg` WRITE;
/*!40000 ALTER TABLE `gat_article_ggg` DISABLE KEYS */;
INSERT INTO `gat_article_ggg` VALUES (5,'파일 테스트 입니다 ','관리자','<p>테스트</p>\r\n','2020-05-19 11:03:11',2,'duK5TB68Xy35lOptpg7j3j35ZBUP4AJ8.jpg','코로나감염예방_협조문_heart_A2.jpg','C:\\Users\\user\\git\\test\\sample\\src\\main\\resources\\static\\upload\\',1,0,0),(7,'11111순서 바꾸어본 게시판  board &aid','관리자','<p>입니다&nbsp;</p>\r\n','2020-05-19 11:05:19',2,'x5P8vdOyPSlm8geezQKIu9pIdVyNxtZu.jpg','코로나감염예방_협조문_heart_A2.jpg','C:\\Users\\user\\git\\test\\sample\\src\\main\\resources\\static\\upload\\',3,0,0);
/*!40000 ALTER TABLE `gat_article_ggg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_article_hhh`
--

DROP TABLE IF EXISTS `gat_article_hhh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_article_hhh` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_article_hhh`
--

LOCK TABLES `gat_article_hhh` WRITE;
/*!40000 ALTER TABLE `gat_article_hhh` DISABLE KEYS */;
INSERT INTO `gat_article_hhh` VALUES (1,'처음 테스트 입니다','관리자','<p>111111111111111111111</p>\r\n','2020-05-19 09:09:46',2,NULL,NULL,NULL,1,0,0),(2,'[답변] 처음 테스트 입니다','','<p>ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</p>\r\n',NULL,2,NULL,NULL,NULL,1,1,1),(3,'ㅇㅇㅇㅇㅇㅇㅇㅇㅇ','관리자','<p>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>\r\n','2020-05-19 09:12:07',0,NULL,NULL,NULL,2,0,0),(4,'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ','관리자','<p>dㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>\r\n','2020-05-19 09:12:12',0,NULL,NULL,NULL,3,0,0),(5,'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ','관리자','<p>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>\r\n','2020-05-19 09:12:16',0,NULL,NULL,NULL,4,0,0),(6,'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ','관리자','<p>ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>\r\n','2020-05-19 09:12:20',0,NULL,NULL,NULL,5,0,0),(7,'ㄷㅂㅈㅈㅈㅈㅈㅈㅈㅈㅈㅈㅈ','관리자','<p>ㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂ</p>\r\n','2020-05-19 09:12:24',2,NULL,NULL,NULL,6,0,0),(8,'ㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂ','관리자','<p>ㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂ</p>\r\n','2020-05-19 09:12:28',0,NULL,NULL,NULL,7,0,0),(9,'ㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂ','관리자','<p>ㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂ</p>\r\n','2020-05-19 09:12:32',0,NULL,NULL,NULL,8,0,0),(10,'ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ','관리자','<p>rㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ</p>\r\n','2020-05-19 09:12:36',1,NULL,NULL,NULL,9,0,0),(11,'ㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅ','관리자','<p>ㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅㅅ</p>\r\n','2020-05-19 09:12:40',0,NULL,NULL,NULL,10,0,0),(12,'ㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛ','관리자','<p>ㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛㅛ</p>\r\n','2020-05-19 09:12:52',3,NULL,NULL,NULL,11,0,0),(13,'테스트1테스트1테스트1테스트1','관리자','<p>ㅇㄴㅁㅇㅁ</p>\r\n','2020-05-19 09:59:18',3,'MEayjpD9etnXOCxv5Adyt3x2g2SPlrmq.jpg','코로나감염예방_협조문_heart_A2.jpg','C:\\Users\\user\\git\\test\\sample\\src\\main\\resources\\static\\upload\\',12,0,0),(14,'파일 한글 이름 확인하기','관리자','<p>확인</p>\r\n','2020-05-19 10:17:43',5,'TN7INSBdjD27QFgpJX1Idjm0UbK2o5Kp.xlsm','실전모의고사1회 (1).xlsm','C:\\Users\\user\\git\\test\\sample\\src\\main\\resources\\static\\upload\\',13,0,0),(15,'[답변] 파일 한글 이름 확인하기','','<p>ㄹ홍ㅀ</p>\r\n',NULL,1,NULL,NULL,NULL,13,1,1);
/*!40000 ALTER TABLE `gat_article_hhh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_comment_bbb`
--

DROP TABLE IF EXISTS `gat_comment_bbb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_comment_bbb` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_comment_bbb`
--

LOCK TABLES `gat_comment_bbb` WRITE;
/*!40000 ALTER TABLE `gat_comment_bbb` DISABLE KEYS */;
/*!40000 ALTER TABLE `gat_comment_bbb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_comment_ccc`
--

DROP TABLE IF EXISTS `gat_comment_ccc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_comment_ccc` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_comment_ccc`
--

LOCK TABLES `gat_comment_ccc` WRITE;
/*!40000 ALTER TABLE `gat_comment_ccc` DISABLE KEYS */;
INSERT INTO `gat_comment_ccc` VALUES (1,1,'						kjh','관리자','2020-05-15 17:52:13'),(2,1,'						kjh','관리자','2020-05-15 17:52:13'),(3,1,'						\r\n\'l;kj','관리자','2020-05-15 17:52:52'),(4,2,'						lkj;\'\r\n','관리자','2020-05-15 17:57:18'),(5,2,'						lkj;\'\r\n','관리자','2020-05-15 17:57:19'),(6,2,'						lkj;\'\r\n','관리자','2020-05-15 17:57:19'),(7,2,'						lkj;\'\r\n','관리자','2020-05-15 17:57:19'),(8,2,'						lkj;\'\r\n','관리자','2020-05-15 17:57:20'),(9,2,'						fsa','관리자','2020-05-15 17:57:42'),(10,2,'						fsa','관리자','2020-05-15 18:00:58');
/*!40000 ALTER TABLE `gat_comment_ccc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_comment_ddd`
--

DROP TABLE IF EXISTS `gat_comment_ddd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_comment_ddd` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_comment_ddd`
--

LOCK TABLES `gat_comment_ddd` WRITE;
/*!40000 ALTER TABLE `gat_comment_ddd` DISABLE KEYS */;
/*!40000 ALTER TABLE `gat_comment_ddd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_comment_fff`
--

DROP TABLE IF EXISTS `gat_comment_fff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_comment_fff` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_comment_fff`
--

LOCK TABLES `gat_comment_fff` WRITE;
/*!40000 ALTER TABLE `gat_comment_fff` DISABLE KEYS */;
INSERT INTO `gat_comment_fff` VALUES (1,1,'						kjh','관리자','2020-05-15 17:46:47'),(2,1,'						kjh','관리자','2020-05-15 17:46:47');
/*!40000 ALTER TABLE `gat_comment_fff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_comment_ggg`
--

DROP TABLE IF EXISTS `gat_comment_ggg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_comment_ggg` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_comment_ggg`
--

LOCK TABLES `gat_comment_ggg` WRITE;
/*!40000 ALTER TABLE `gat_comment_ggg` DISABLE KEYS */;
/*!40000 ALTER TABLE `gat_comment_ggg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gat_comment_hhh`
--

DROP TABLE IF EXISTS `gat_comment_hhh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gat_comment_hhh` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gat_comment_hhh`
--

LOCK TABLES `gat_comment_hhh` WRITE;
/*!40000 ALTER TABLE `gat_comment_hhh` DISABLE KEYS */;
INSERT INTO `gat_comment_hhh` VALUES (1,1,'댓글 댓글 입니다 다다닫','관리자','2020-05-19 09:10:02'),(2,2,'와와ㅓ와ㅓ와','관리자','2020-05-19 09:10:41'),(3,14,'kjhkhkjhkjhkhkhkhkhkhkhhk','관리자','2020-05-21 09:23:09');
/*!40000 ALTER TABLE `gat_comment_hhh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `majorcate`
--

DROP TABLE IF EXISTS `majorcate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `majorcate` (
  `majorCode` varchar(10) DEFAULT NULL,
  `majorName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majorcate`
--

LOCK TABLES `majorcate` WRITE;
/*!40000 ALTER TABLE `majorcate` DISABLE KEYS */;
INSERT INTO `majorcate` VALUES ('100','WOMEN'),('200','MEN'),('300','KIDS'),('400','ACCESSORIES'),('500','BOOKS'),('600','COMPUTER'),('700','FOOD');
/*!40000 ALTER TABLE `majorcate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minorcate`
--

DROP TABLE IF EXISTS `minorcate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `minorcate` (
  `minorCode` varchar(10) DEFAULT NULL,
  `minorName` varchar(30) DEFAULT NULL,
  `majorName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minorcate`
--

LOCK TABLES `minorcate` WRITE;
/*!40000 ALTER TABLE `minorcate` DISABLE KEYS */;
INSERT INTO `minorcate` VALUES ('200','SHOES','WOMEN'),('300','BAG','WOMEN'),('100','CLOTHES','MEN'),('200','SHOES','MEN'),('300','BAG','MEN'),('100','CLOTHES','KIDS'),('200','BAG','KIDS'),('100','RING','ACCESSORIES'),('200','BRACELET','ACCESSORIES'),('300','NAIL','ACCESSORIES'),('100','KOREA','BOOKS'),('200','FOREIGN','BOOKS'),('100','NOTEBOOK','COMPUTER'),('200','DESKTOP','COMPUTER'),('100','KOREAN','FOOD'),('200','AMERICAN','FOOD'),('300','ITALIAN','FOOD'),('100','WOMEN','WOMEN');
/*!40000 ALTER TABLE `minorcate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `majorName` varchar(20) DEFAULT NULL,
  `minorName` varchar(20) DEFAULT NULL,
  `productSeller` varchar(20) DEFAULT NULL,
  `productName` varchar(200) DEFAULT NULL,
  `productPrice` int DEFAULT '0',
  `productStatus` varchar(20) DEFAULT NULL,
  `productDC` int DEFAULT '0',
  `productAmount` int DEFAULT '0',
  `productStock` int DEFAULT '0',
  `productDisplay` varchar(20) DEFAULT NULL,
  `productStar` int DEFAULT '3',
  `productDelivery` varchar(20) DEFAULT NULL,
  `productColor` varchar(50) DEFAULT NULL,
  `productSize` varchar(50) DEFAULT NULL,
  `originFileName` varchar(500) DEFAULT NULL,
  `fileSize` varchar(500) DEFAULT NULL,
  `safeFile` varchar(500) DEFAULT NULL,
  `productDetail` text,
  `productRegdate` date DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (46,'WOMEN','BAG',NULL,'  [공식]FILA S/S 패션 로고 반팔티셔츠 외 의류/슈즈 모음',1111110,'new',0,10,0,'main',4,NULL,'Red; Green;black','S;M;L','n18.jpg;n19.jpg;n20.jpg;','313127;255415;178758;','1590550856756n18.jpg;1590550856756n19.jpg;1590550856757n20.jpg;',' \r\n[공식]FILA S/S 패션 로고 반팔티셔츠 외 의류/슈즈 모음','2020-05-27'),(47,'MEN','BAG',NULL,'[휠라]성인 남녀 인기 여름 반팔티/슬리퍼/운동화 베스트 특집!',1111110,'new',0,10,0,'main',3,NULL,'Red; Green;black','S;M;L','22.jpg;n1.jpg;n2.jpg;','150022;217634;135109;','159055088551222.jpg;1590550885513n1.jpg;1590550885514n2.jpg;','[휠라]성인 남녀 인기 여름 반팔티/슬리퍼/운동화 베스트 특집!','2020-05-27'),(78,'WOMEN','BAG',NULL,'배너1',110,'new',0,10,0,'banner',1,NULL,'Red; Green;black','S;M;L','banner1.jpg;','23915;','1590555118331banner1.jpg;','베너입니다. 확인 하세요','2020-05-27'),(79,'WOMEN','BAG',NULL,'베너2',11111,'new',0,10,0,'banner',5,NULL,'Red; Green;black','S;M;L','banner2.jpg;','20027;','1590555151593banner2.jpg;','베너 2 입니다 확인하세요.','2020-05-27'),(80,'MEN','CLOTHES',NULL,'[갤러리아] [2020년 출시제품] 젠 남성 아이스 롱 폴로 티셔츠 DMP20273',31900,'new',5,100,0,'main',5,NULL,'Red; Green;black','S;M;L','n4.jpg;n5.jpg;','209332;106228;','1590555385163n4.jpg;1590555385164n5.jpg;','상품상태	새상품	상품번호	2788336433\r\n배송방법	택배	배송가능지역	전국\r\n영수증발행	온라인 현금영수증 발급	원산지	각 상품별 원산지는 상세설명 참조\r\n제조일자/유효기간	판매자에게 문의\r\nA/S안내	상세설명참조\r\n브랜드	아이더','2020-05-27'),(82,'MEN','CLOTHES',NULL,'dsasasasasasasasasasasasasasa',110,'new',0,10,0,'basic',3,'2000','Red; Green;black','S;M;L','n4.jpg;n5.jpg;n6.jpg;','209332;106228;129854;','1590565638209n4.jpg;1590565638210n5.jpg;1590565638211n6.jpg;','dsadsadsadsadsadsadsadsadsadsadsadsadsadsadsadsadsa','2020-05-27'),(83,'MEN','BAG',NULL,'dsasasasasasasasasasasasasasasasa',1110,'new',0,10,0,'basic',3,'2000','Red; Green;black','S;M;L','n8.jpg;n9.jpg;n10.jpg;','66662;227474;92380;','1590565663997n8.jpg;1590565663998n9.jpg;1590565663999n10.jpg;','saddddddddddddddddddddddddddddd','2020-05-27'),(84,'WOMEN','WOMEN',NULL,'dddddddddddddddd',2222220,'new',50,1,0,'basic',4,'3000','Red; Green;black','S;M;L','n1.jpg;n2.jpg;n3.jpg;n4.jpg;','217634;135109;140805;209332;','1590626540372n1.jpg;1590626540373n2.jpg;1590626540374n3.jpg;1590626540375n4.jpg;','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','2020-05-28'),(85,'ACCESSORIES','NAIL',NULL,'aaaaaaaaaaa1111111111',11110,'new',0,10,0,'basic',2,'free','Red; Green;black','S;M;L','n17.jpg;n18.jpg;n19.jpg;','275620;313127;255415;','1590626574657n17.jpg;1590626574658n18.jpg;1590626574659n19.jpg;','aaaaaaaaaaaaaaaaaaaaaa','2020-05-28'),(86,'FOOD','ITALIAN',NULL,'aaaaaaaaaa',11110,'new',0,20,0,'basic',1,'free','Red; Green;black','S;M;L','n10.jpg;n11.jpg;n12.jpg;','92380;107803;139787;','1590626624108n10.jpg;1590626624109n11.jpg;1590626624110n12.jpg;','ffffffffffffffffffff','2020-05-28'),(87,'WOMEN','SHOES',NULL,'sssssssssssssssssssssssssssss',1110,'sale',10,10,0,'basic',2,'2000','Red; Green;black','S;M;L','n1.jpg;n8.jpg;','217634;66662;','1590633049887n1.jpg;1590633049888n8.jpg;','aaaaaaaaaaaaaaaaaaaaaaaaaa','2020-05-28'),(88,'BOOKS','FOREIGN',NULL,'aaaaaaaaa',11111,'new',0,10,0,'basic',1,'free','Red; Green;black','S;M;L','n3.jpg;n10.jpg;','140805;92380;','1590633475181n3.jpg;1590633475183n10.jpg;','qaaaaaaaaaaaaaa','2020-05-28'),(89,'COMPUTER','DESKTOP',NULL,'qqqqqqqqqqq',1111110,'new',0,1,0,'basic',1,'free','Red; Green;black','S;M;L','22.jpg;n1.jpg;n2.jpg;n3.jpg;n4.jpg;','150022;217634;135109;140805;209332;','159063349606422.jpg;1590633496065n1.jpg;1590633496069n2.jpg;1590633496070n3.jpg;1590633496071n4.jpg;','aaaaaaaaaaaaaaaaaa','2020-05-28'),(90,'KIDS','CLOTHES',NULL,'aaaaaaaaa',1,'new',0,1,0,'basic',1,'free','Red; Green;black','S;M;L','22.jpg;n1.jpg;n2.jpg;','150022;217634;135109;','159063351388522.jpg;1590633513886n1.jpg;1590633513887n2.jpg;','aaaaaaaaaa','2020-05-28'),(91,'KIDS','CLOTHES',NULL,'dadsadsad',111110,'new',20,100,0,'basic',3,'2000','Red; Green;black','S;M;L','n2.jpg;n3.jpg;n4.jpg;n5.jpg;n6.jpg;','135109;140805;209332;106228;129854;','1590644737075n2.jpg;1590644737076n3.jpg;1590644737077n4.jpg;1590644737078n5.jpg;1590644737079n6.jpg;','sadsaddddddddddddddd','2020-05-28');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduler`
--

DROP TABLE IF EXISTS `scheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduler` (
  `startDate` varchar(20) DEFAULT NULL,
  `endDate` varchar(20) DEFAULT NULL,
  `scheduleContent` varchar(200) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduler`
--

LOCK TABLES `scheduler` WRITE;
/*!40000 ALTER TABLE `scheduler` DISABLE KEYS */;
INSERT INTO `scheduler` VALUES ('2020-05-04','2020-05-07','asdfasdfsadf','관리자'),('2020-05-11','2020-05-14','4444444','관리자'),('2020-05-11','2020-05-15','4e4','관리자'),('2020-05-04','2020-05-29','dddddddddddddddddddddddd','관리자'),('2020-05-15','2020-06-19','ddddddddddddddddddd','관리자'),('2020-06-30','2020-07-03','nnnn','관리자');
/*!40000 ALTER TABLE `scheduler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siteinfo`
--

DROP TABLE IF EXISTS `siteinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `siteinfo` (
  `siteName` varchar(50) DEFAULT NULL,
  `sitePhone` varchar(20) DEFAULT NULL,
  `siteEmail` varchar(50) DEFAULT NULL,
  `siteCopy` varchar(100) DEFAULT NULL,
  `siteUrl` varchar(100) DEFAULT NULL,
  `siteMainBanner` varchar(100) DEFAULT NULL,
  `siteManager` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siteinfo`
--

LOCK TABLES `siteinfo` WRITE;
/*!40000 ALTER TABLE `siteinfo` DISABLE KEYS */;
INSERT INTO `siteinfo` VALUES ('Green Shopping Mall','051-912-1200','greenart @ greenart.co.kr','2020 Green Clothin Mall. All Rights Reserved','http://www.greenart.co.kr','40,000원 이상 구매시 무료로 배송해 드립니다.','admin');
/*!40000 ALTER TABLE `siteinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(20) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userPhone` char(15) NOT NULL,
  `userEmail` varchar(50) DEFAULT NULL,
  `userDomain` varchar(50) DEFAULT NULL,
  `auth` varchar(20) DEFAULT '일반',
  `userRegdate` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','1111','관리자','010-1234-1234','HHHH','naver.com','관리자',NULL),(2,'aa','11','ㄴㅁㅇㄹㅇㄴㄹ','123','11','naver.com','일반','2020-06-15 10:02:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-25 11:44:59
