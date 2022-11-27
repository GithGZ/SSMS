-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ssms
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exam` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL,
  `stu_id` int NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `foreign_key_name` (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (3,'考试','Java',3,90),(4,'考试','Java',8,77),(5,'考试','Java',5,55),(6,'考察','python',1,67),(7,'考察','python',2,77),(8,'考察','python',3,88),(9,'考察','python',4,99),(10,'考察','python',5,22),(12,'考试','Java',3,55),(13,'考试','Java',8,44),(14,'考试','Java',5,44),(15,'考察','python',1,66),(16,'考察','python',2,33),(17,'考察','python',3,22),(18,'考察','python',4,66),(19,'考察','python',5,56),(20,'考试','Java',3,65),(21,'考试','Java',8,67),(22,'考试','Java',5,76),(23,'考察','python',1,78),(24,'考察','python',2,87),(25,'考察','python',3,89),(26,'考察','python',4,98),(27,'考察','python',5,87),(28,'考试','Java',3,76),(29,'考试','Java',8,67),(30,'考试','Java',5,65),(31,'考察','python',1,65),(32,'考察','python',2,54),(33,'考察','python',3,45),(34,'考察','python',4,54),(35,'考察','python',5,45),(36,'考试','Java',3,43),(37,'考试','Java',8,34),(38,'考试','Java',5,100),(39,'考察','python',1,99),(40,'考察','python',2,98),(41,'考察','python',3,97),(42,'考察','python',4,96),(43,'考察','python',5,95),(44,'考试','Java',3,94),(45,'考试','Java',8,93),(46,'考试','Java',5,92),(47,'考察','python',1,91),(48,'考察','python',2,90),(49,'考察','python',3,89),(50,'考察','python',4,88),(51,'考察','python',5,87);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `qq` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL DEFAULT 'student',
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (4,'20201410004','a3','11','3123131','231231','student'),(5,'20201410005','a4','12','32131312','21312312','student'),(6,'20201410006','a5','13','213123123','2312312','student'),(7,'20201410007','a6','14','11111111111111111','21312312','student'),(9,'20201410009','a8','16','21312312','2312312','student'),(10,'2','a9','14','7777777777777','1312312312','student'),(12,'111','111','111','111','111','student'),(13,'1111111','111111','11111111','44444444444','111111','student'),(15,'6666','666666','66666666','555555555555555','66666666','student'),(26,'123123','123414','42342','234234','42423','student'),(27,'3452423425','wrqrqwr','41','124','414','student'),(28,'2523523','qwr','412244','1241','1241','student'),(29,'5235','rqr','241','141','4141412','student'),(30,'2352','rqw','qwrq2','12412','12412','student'),(31,'5325235','qwr','qwr','14','412414','student'),(32,'23523','qwrqrqr','qwrqwr','414','12414','student'),(33,'523525','qwrqwr','rqwrwr','4','41412','student'),(34,'2352352','rqr','qwrqwrqw','14','414','student'),(35,'5555555','r','rqrqwr','14','1412','student'),(36,'52352352','wrqrqqrqwrq','1241','1','41','student'),(37,'1231231','21112','212','211221','22222','student');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `qq` varchar(200) NOT NULL,
  `type` varchar(200) DEFAULT 'teacher',
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'20011410001','b2','33','1123131','13131231','teacher'),(2,'1','b1','34','8888888888','31231231','teacher');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uaername` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'20201410001','123456',2),(2,'20201410002','123456',2),(3,'20201410003','123456',2),(4,'20201410004','123456',2),(5,'20201410005','123456',2),(6,'20201410006','123456',2),(7,'20201410007','123456',2),(8,'20201410008','123456',2),(9,'20201410009','123456',2),(10,'20011410001','123456',1),(11,'1','123',1),(12,'2','2',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-27 22:57:57
