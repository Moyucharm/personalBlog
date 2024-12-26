-- MySQL dump 10.13  Distrib 8.4.0, for Win64 (x86_64)
--
-- Host: localhost    Database: blog_user
-- ------------------------------------------------------
-- Server version	8.4.0

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

CREATE DATABASE blog_user;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'admin','hahahaha','2024-12-13 08:27:23'),(2,'admin','666666','2024-12-13 08:27:27'),(3,'xukeli','admin\r\n','2024-12-13 08:28:29'),(4,'xukeli','hahahah','2024-12-13 08:28:44'),(5,'admin','111','2024-12-13 10:46:25'),(6,'admin','111','2024-12-13 10:50:03'),(7,'admin','222','2024-12-13 10:57:27'),(8,'admin','333','2024-12-13 11:04:59'),(9,'admin','444','2024-12-13 11:17:18'),(10,'admin','111','2024-12-13 11:27:56'),(11,'admin','111','2024-12-13 11:29:17'),(12,'admin','123','2024-12-13 11:29:44'),(13,'admin','233','2024-12-13 11:32:26'),(14,'admin','中文的测试','2024-12-13 11:35:15'),(15,'admin','啊啊','2024-12-13 11:41:28'),(16,'ha','这个真不错','2024-12-13 11:53:11'),(17,'admin','中文的测试11111','2024-12-13 12:15:52'),(18,'小可爱','博主太帅了666','2024-12-13 14:37:21'),(19,'admin','111','2024-12-15 01:57:52'),(20,'admin','测试','2024-12-16 11:07:38'),(21,'admin','123123','2024-12-19 00:31:57'),(22,'lala1','哈哈','2024-12-26 07:43:53'),(23,'test11','这个博客太厉害了','2024-12-26 08:21:02');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'ChatGPT-o1来啦','新的ChatGPT模型上线，经过博主的使用，发现o1模型可以进行深度的思考！经过思考后才会输出结果。但是，这个新模型思考的时间有时候过长了，甚至要1分钟。\r\n与这个新模型同步推出的还有ChatGPT的新套餐ChatGPT Pro，每个月的费用高达200美元！这个套餐可以无限量使用o1模型，而原来旧的20美元一个月的套餐ChatGPT Plus，一周只可以用几十次o1模型。博主表示，买不起，用不起。','2024-12-13 13:01:43'),(3,'期末周了又开新课','随着这个学期的课程接近尾声，同学们陆续开始准备期末考试。在这个节骨眼上，老师通知我们要在期末周上实践课，虽然是意料之内，但这件事还是让不少同学苦不堪言。大家需要在上实践课之外的时间准备考试，甚至有些考试时间和上课的时间冲突了。同学纷纷表示，不知道教务科怎么排的课，一个学期上那么多实践课，不如减少水课的数目，让实践课安排的工作日。计算机学院的同学纷纷表示：破学院还我完整周末！\r\n\r\n免责声明：本文章只针对教务科，和任课老师无关。','2024-12-13 14:12:37'),(4,'黑神话悟空惜败','今天2024TGA的奖项结果出炉了，首先恭喜黑神话悟空获得今年的“最佳动作游戏”奖项。但是，在5个获得“年度最佳游戏”提名的游戏中，TGA把最终的奖项颁给了大家最不看好的宇宙机器人。网友坚决认为：“有黑幕！”。虽然黑神话悟空没有获得“年度最佳游戏”奖项，但是在大家的心目中，黑神话悟空已然是最佳的游戏了，好的作品无需这件“袈裟”。','2024-12-13 14:29:38'),(5,'【公告】用户注册须知','由于本博客不知道是不是开发者比较懒的原因，数据库中用户密码的储存方式居然采用了极为先进的明文储存，对标国内的大论坛CSDN的密码存储方式。所以请大家在注册账号的时候不要使用自己常用的密码（反正账号也只能拿来留言）。以上！','2024-12-14 11:43:28'),(6,'【公告】可以使用网址访问本博客啦！','经过博主的一些小小的尝试，成功在自己的开发版上部署了本博客，大家可以在链接温大内网时，在非断网时间使用网址打开本博客！但是注意，使用网址访问的博客使用的数据库不同，大家需要重新创建账号！访问网址：http://xukeli.zapto.org:7979/','2024-12-14 15:15:01'),(12,'OMG it\'s 考试周','饱受每个大学生期待的考试周终于来力，这个学期人工智能专业的考试安排非常抽象，最早的科目居然在12月25号，但是最晚的科目在1月13号。好多同学吐槽：明明只有两门考试，中间差这么多时间，都可以放半个寒假了！博主要考三门，在这两门课中间多了一门，但是每门课考试的间隔时间都快达到一星期了，这可能是所有同学目前经历了，最轻松的一次考试周。','2024-12-22 02:06:32');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','root','2024-12-13 06:50:03'),(2,'xukeli','123','2024-12-13 08:28:01'),(3,'ha','233','2024-12-13 11:52:49'),(4,'小可爱','123','2024-12-13 14:36:51'),(5,'lala1','123','2024-12-26 07:43:15'),(6,'test11','123','2024-12-26 07:58:35');
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

-- Dump completed on 2024-12-26 16:39:02
