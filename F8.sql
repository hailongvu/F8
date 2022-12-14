CREATE DATABASE  IF NOT EXISTS `swp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `swp`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: swp
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `blogid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(600) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `comment` varchar(600) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `time` date DEFAULT NULL,
  `excerpt` varchar(500) DEFAULT NULL,
  `img` varchar(1000) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `category_Id` int DEFAULT NULL,
  `tag_Id` int DEFAULT NULL,
  `is_Display` int DEFAULT NULL,
  PRIMARY KEY (`blogid`),
  KEY `user_idx` (`user_id`),
  CONSTRAINT `author` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'See you again','It\'s been a long day without you, my friend','No comment',3,'2022-12-05','It\'s been a long day without you, my friend','https://i.ytimg.com/vi/cPyovQwFmhE/maxresdefault.jpg',1,1,1,1),(2,'A Thousand Years','Heart beats fast','Have comment',4,'2022-12-05','Heart beats fast','http://img.youtube.com/vi/rtOvBOTyX00/sddefault.jpg',1,1,1,1),(3,'So s??nh JavaScript v???i nh???ng ?????i th??? kh??c','JavaScript v?? C C ???????c compile (bi??n d???ch) tr?????c. C??n JavaScript ???????c interpret (th??ng d???ch) v?? ????i khi ???????c bi??n d???ch trong th???i gian ch???y b???ng just-in-time (JIT) compiler. C l?? static typing. C??n JavaScript l?? dynamic typing. C y??u c???u l???p tr??nh vi??n ph???i c???p ph??t v?? l???y l???i c??c kh???i b??? nh???. JavaScript x??? l?? ??i???u n??y t??? ?????ng. Code C ph???i ???????c bi??n d???ch l???i khi chuy???n sang m???t b??? x??? l?? kh??c. JavaScript th?? kh??ng c???n thi???t. C ???????c thi???t k??? ????? ho???t ?????ng tr???c ti???p v???i b??? nh??? c???a m??y t??nh th??ng qua c??c con tr???. JavaScript th?? kh??ng. C th?????ng ???????c s??? d???ng cho c??c ???ng d???ng nh??ng v??o m??y t??nh v?? c??c ???ng d???ng ????i h???i hi???u su???t cao nh?? h??? ??i???u h??nh. C??n JavaScript ch??? ???????c nh??ng v??o c??c trang web, nh??ng n?? ???? t??m th???y vai tr?? m???i trong c??c ???ng d???ng ph??a m??y ch??? ???????c ph??t tri???n b???i Node.js. C cung c???p kh??? n??ng ki???m so??t r?? r??ng c??c lu???ng, trong khi JavaScript khuy???n kh??ch ng?????i d??ng s???p x???p nhi???u task b???ng c??ch chia c??c t??c v??? th??nh c??c h??m kh??ng ?????ng b??? v?? ???????c g???i khi d??? li???u ???? s???n s??ng.','No comment',3,'2022-12-04','Trong t????ng lai n???u b???n kh??ng n???m ???????c JavaScript l?? g?? th?? kh?? m?? ti???n xa ???????c trong l??nh v???c c??ng ngh??? th??ng tin. Tin t???t l??: JavaScript kh??ng ????ng s??? nh?? m???i ng?????i ?????n. Nh??ng tr?????c h???t b???n c???n n???m ???????c nh???ng ??i???u c?? b???n v??? JavaScript ????? l??m n???n t???ng.','https://images-na.ssl-images-amazon.com/images/I/61W6yrlC0qL._AC_UL600_SR600,600_.jpg',1,1,1,1),(4,'[C?? b???n] Memory cache l?? g???','M???c ????ch c???a s??? d???ng memory cache hay b???t k??? lo???i cache n??o l?? ?????u mu???n c???i thi???n hi???u su???t ch????ng tr??nh. V?? d???: l???y ra danh s??ch 100 s???n ph???m b??n ch???y m???i th??ng. (d??? li???u n??y th???a m??n ti??u ch?? ??t thay ?????i (1 th??ng thay ?????i 1 l???n) + truy c???p th?????ng xuy??n khi ng?????i d??ng filter danh s??ch s???n ph???m b??n ch???y). Ta c?? th??? l??u cache cho data n??y ????? gi???m th???i gian truy c???p xu???ng database ????? l???y d??? li???u. L??u ??: In-memory cache ph?? h???p cho 1 server duy nh???t ho???c nhi???u server c?? s??? d???ng sticky sessions. Ch??? n??y m??nh s??? gi???i th??ch s?? qua sticky session l?? g???(Ph???n n??y li??n quan ?????n ki???n th???c v??? load balancin) . Sticky session l?? m???t trong nh???ng t??nh n??ng c?? b???n c???a load balancing cho ph??p ?????nh tuy???n m???t m??y ch??? ????n l??? cho m???t ng?????i d??ng c??? th???, d???a tr??n HTTP session ho???c IP c???a h???. T???i sao m??nh ph???i l??u ?? v???n ????? ??? tr??n: N???u ch??? c?? 1 m??y server th?? khi ta l??u cache ch??? l??u tr??n b??? nh??? c???a m??y server duy nh???t ???? => kh??ng x???y ra v???n ????? g??. Trong tr?????ng h???p c?? nhi???u m??y server (th??ng th?????ng c??c h??? th???ng l???n ?????u x??i multiple servers). Server A, B, C, D??? Khi ta l??u cache th?? ta s??? ch??? l??u ??? m???t m??y server A. V???y khi l???y cache ra l??m sao bi???t ???????c ta s??? l???y ??? m??y server n??o trong nhi???u servers. Sticky session s??? gi??p ta l??m vi???c ????. Th??m 1 l??u ?? khi s??? d???ng n???u ta l??u qu?? nhi???u memory cache th?? s??? t???n dung l?????ng l??u tr??? d???n ?????n server b??? ch???m.','No comment',3,'2022-11-04','1. Memory cache l?? g??: In-memory cache s??? d???ng b??? nh???(RAM) c???a m??y server ????? l??u tr??? data. Nh???ng data n??o th?????ng ???????c l??u cache th???a m??n 2 y???u t???: data ???????c truy c???p th?????ng xuy??n v?? ??t thay ?????i.','https://cdn.tgdd.vn/Files/2019/11/30/1223727/bo-nho-dem-cache-la-gi-co-nen-xoa-khong-cach-xoa-bo-nho-dem-tren-dien-thoai.jpg',1,1,1,1),(5,'LED Desk lamp','Ch??o m???i ng?????i, nay m??nh mu???n chia s??? cho nh???ng ng?????i ??ang h???c ??? F8 m???t project m?? m??nh ???? l??m qua. M??nh ???? c??y h???t F8 v?? nhi???u ngu???n kh??c ????? ho??n th??nh webiste demo n??y. M??nh l??m ??? v??? tr?? tester ???????c 4 n??m cho ng??nh vi???n th??ng nh??ng th???y kh??ng c?? ??am m?? v?? m??nh quy???t ?????nh ngh??? ngang c??ng vi???c 2 th??ng nay t??? m??y m?? h???c code. May m???n ???? ????a m??nh ?????n v???i F8, n?? kh??i d???y ni???m ??am m?? code c???a m??nh b???i v?? c?? gi??o vi??n t??m huy???t. 2 th??ng nay ??? nh?? m??nh h???c 1 ng??y trung b??nh h??n 12 ti???ng v?? 7 ng??y/tu???n. V?? b???t ?????u t??? s??? 0 n??n m???i th??? ?????u m???i m??? v?? kh?? kh??n ?????i v???i m??nh, h??n n???a l???i t??? m??y m?? m???i th??? v???i v???n ki???n th???c n???n = 0 n??n l???i c??ng kh?? kh??n h??n. Nh??ng m??nh ???? kh??ng b??? cu???c v?? gi??? sau 2 th??ng m??nh ???? b???t ?????u quen d???n v???i nhi???u th???, bi???t front-end l?? sao, back-end l?? g??, html, css, javascript??? Gi??? m??nh ???? c?? c??i nh??n t???ng quan h??n v?? hi???u h??n ????i ch??t v??? l???p tr??nh web.','No comment',1,'2022-11-07','N??i s?? qua th?? m??nh c??n thi???u nhi???u ki???n th???c v??? back-end n??n ph???n x??? l?? back-end l??m m??nh t???n kh?? nhi???u th???i gian n???n mang ti???ng h???c ??? F8 nh??ng giao di???n nh??n kh?? x???u x?? do m??nh ch??a ????? t??m ?????n n??. C??i n??y m??nh ??ang n??? l???c c???i thi???n.','https://techvccloud.mediacdn.vn/2019/8/31/318f-15672288774411049559850-crop-15672288854071281759790.png',1,1,1,1),(6,'Vocanic Clay','?????t v???n ?????: C??ng ty TNHH TT c?? m???t c?? s??? d??? li???u SQL Server(csdl) dbHotGirl v?? th???c hi???n ??p d???ng c??ng ngh??? ????? qu???n l?? kh??ch h??ng th??n thi???t. Tuy nhi??n d??? li???u c?? c???a h??? l?? m???t file excel v???i 101 kh??ch h??ng th??n thi???t. C??ng ty mu???n c?? t??nh n??ng import d??? li???u t??? file excel l??n c?? s??? d??? li???u c???a c??ng ty. Theo b???n, b???n s??? ??p d???ng c??ch n??o? ???i gi???i, th?? tui s??? l??n t??m ???How to import data from an excel file into sql server??? - tr??n stackoverflow => C??ch hay n?? => Gi??? s???, n???u c??ng ty mu???n l??m th??nh m???t t??nh cho nh??n vi??n h??? d??ng th?? sao? Gi???i ph??p: S??? d???ng Microsoft.Office.Interop.Excel.dll ?????c d??? li???u sau ???? th???c hi???n y??u c???u.','No comment',1,'2022-11-09','Ch??o m???i ng?????i, trong m???t l???n l??m vi???c v?? ???????c y??u c???u l??m m???t t??nh n??ng X v?? s??? d???ng th?? vi???n Microsoft.Office.Interop.Excel ????? th???c hi???n t????ng t??c v???i file excel. D?????i ????y l?? c??ch m??nh ??p d???ng th?? vi???n Interop Excel v??o ????? gi???m t???i thao t??c tr??n ph???n m???m.','https://atpweb.vn/blog/wp-content/uploads/2022/05/wordpress-caching.png',1,1,1,1);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `name` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapter`
--

DROP TABLE IF EXISTS `chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapter` (
  `chapter_id` int NOT NULL,
  `content` varchar(450) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `display_oder` varchar(450) DEFAULT NULL,
  `description` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`chapter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter`
--

LOCK TABLES `chapter` WRITE;
/*!40000 ALTER TABLE `chapter` DISABLE KEYS */;
INSERT INTO `chapter` VALUES (1,'1. LIFE, Scope',NULL,NULL,NULL),(2,'2. Hosting, strict mode',NULL,NULL,NULL),(3,'3. This, bind, call API',NULL,NULL,NULL),(4,'1. Window terminal & WSL',NULL,NULL,NULL),(5,'2. C??c l???nh c?? b???n',NULL,NULL,NULL);
/*!40000 ALTER TABLE `chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapter_lesson`
--

DROP TABLE IF EXISTS `chapter_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapter_lesson` (
  `chapter_lesson_id` int NOT NULL,
  `chapter_id` int DEFAULT NULL,
  `lesson_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`chapter_lesson_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter_lesson`
--

LOCK TABLES `chapter_lesson` WRITE;
/*!40000 ALTER TABLE `chapter_lesson` DISABLE KEYS */;
INSERT INTO `chapter_lesson` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,2,4,1),(5,2,5,1),(6,3,6,1),(7,3,7,1),(8,4,8,2),(9,4,9,2),(10,5,10,2),(11,5,11,2);
/*!40000 ALTER TABLE `chapter_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `contact_Id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `phone` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`contact_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `description` varchar(450) DEFAULT NULL,
  `enroll_count` int DEFAULT '0',
  `image` varchar(450) DEFAULT NULL,
  `sale_price` varchar(450) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Java Basic','Free','Course help you learn Basic Java',NULL,'https://codelearn.io/Upload/Blog/lap-trinh-java-for-beginner-63739300179.8416.jpg',NULL,NULL),(2,'C#','Free','Course help lear C#',NULL,'https://1.bp.blogspot.com/-mBmFaEm8z8M/Xg9WX1Gk0aI/AAAAAAAAAhM/69CpJZ1nHjonwzAeR-AkoX_4C6t9tGXKACLcBGAsYHQ/s1600/dark-days-oracle-kills-java-plug-in-dead-showcase_image-9-p-2047.jpg',NULL,NULL),(3,'Note JS','Free','Course help learn note js',NULL,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Node.js_logo.svg/1200px-Node.js_logo.svg.png',NULL,NULL),(4,'PHP','Free','Course help you learn PHP',NULL,'https://www.php.net/images/meta-image.png',NULL,NULL),(5,'Agular','Free','Course help you learn Agular',NULL,'https://techvccloud.mediacdn.vn/280518386289090560/2022/5/9/angular-la-gi-16520663425581137243315-0-29-314-588-crop-1652066511162493324011.jpg',NULL,NULL),(6,'Kotlin','50 $','Course help you learn Kotlin',NULL,'https://kotlinlang.org/assets/images/twitter/general.png',NULL,NULL),(7,'Font end','70 $','Course help you learn font end',NULL,'https://bizflyportal.mediacdn.vn/bizflyportal/375/470/2020/04/28/21/33/115880627863553.jpg',NULL,NULL),(8,'Database','Free','Course help you learn Database',NULL,'https://kb.pavietnam.vn/wp-content/uploads/2021/08/Database-la-gi-3.jpg',NULL,NULL),(9,'Java PLus','Free','Course help you learn professional Java',0,'https://cdn-skill.kynaenglish.vn/uploads/courses/625/img/image_url-1595228285.jpg',NULL,NULL),(10,'Kotlin Plus','20 $','Course help you learn Kotlin Plus',0,'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20210707194050/A-Complete-Guide-to-Learn-Kotlin-for-Android-App-Development.png',NULL,NULL),(11,'Kotlin Extra','40 $','Course help you learn Pro Kotlin',0,'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20210707194050/A-Complete-Guide-to-Learn-Kotlin-for-Android-App-Development.png',NULL,NULL),(12,'IT Basic','Free','Course about IT for beginner',0,'https://files.fullstack.edu.vn/f8-prod/courses/7.png',NULL,NULL),(13,'HTML ','Free','Course about HTML',0,'https://bizflyportal.mediacdn.vn/thumb_wm/1000,100/bizflyportal/images/htm16157919239459.jpg',NULL,NULL),(14,'CSS','Free','Course about CSS',0,'https://mona.media/wp-content/uploads/2021/07/css.png',NULL,NULL),(15,'Super Java Projessional','20 $','Course help you learn Basic Professional',0,'https://www.itprotoday.com/sites/itprotoday.com/files/Java_0.jpg',NULL,NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_chapter`
--

DROP TABLE IF EXISTS `course_chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_chapter` (
  `course_chapter_id` int NOT NULL,
  `course_Id` int DEFAULT NULL,
  `chapter_Id` int DEFAULT NULL,
  PRIMARY KEY (`course_chapter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_chapter`
--

LOCK TABLES `course_chapter` WRITE;
/*!40000 ALTER TABLE `course_chapter` DISABLE KEYS */;
INSERT INTO `course_chapter` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5);
/*!40000 ALTER TABLE `course_chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_target`
--

DROP TABLE IF EXISTS `course_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_target` (
  `course_target_id` int NOT NULL,
  `target` varchar(500) DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `vid_intro` varchar(500) DEFAULT NULL,
  `request` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`course_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_target`
--

LOCK TABLES `course_target` WRITE;
/*!40000 ALTER TABLE `course_target` DISABLE KEYS */;
INSERT INTO `course_target` VALUES (1,'N???m ch???c l?? thuy???t chung trong vi???c x??y d???ng web',1,'https://www.youtube.com/watch?v=x0fSBAgBrOQ','M??y vi t??nh k???t n???i internet (Windows, Ubuntu ho???c MacOS)'),(2,'X??y d???ng web v???i Express b???ng ki???n th???c th???c t???',1,'https://www.youtube.com/watch?v=x0fSBAgBrOQ','?? th???c t??? h???c cao, tr??ch nhi???m cao, ki??n tr?? b???n b??? kh??ng ng???i c??i kh??'),(3,'N???m ch???c l?? thuy???t v??? API v?? RESTful API',1,'https://www.youtube.com/watch?v=x0fSBAgBrOQ','Kh??ng ???????c n??ng v???i, b??nh t??nh h???c, l??m b??i t???p sau m???i b??i h???c'),(4,'N???m ch???c kh??i ni???m v??? giao th???c HTTP',1,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL),(5,'???????c chia s??? l???i kinh nghi???m l??m vi???c th???c t???',2,'https://www.youtube.com/watch?v=x0fSBAgBrOQ','Khi h???c n???u c?? kh??c m???c h??y tham gia h???i/????p t???i group FB: H???c l???p tr??nh web (fullstack.edu.vn)'),(6,'Hi???u r?? t?? t?????ng v?? c??ch ho???t ?????ng c???a m?? h??nh MVC',2,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL),(7,'Bi???t c??ch deploy (tri???n khai) website l??n internet',2,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL),(8,'Bi???t c??ch x??y d???ng API theo chu???n RESTful API',2,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL),(9,'Bi???t c??ch l??m vi???c v???i Mongoose, MongoDB trong NodeJS',3,'https://www.youtube.com/watch?v=x0fSBAgBrOQ','B???n kh??ng c???n bi???t g?? h??n n???a, trong kh??a h???c t??i s??? ch??? cho b???n nh???ng g?? b???n c???n ph???i bi???t'),(10,'L??m ???????c tool c???nh b??o khi s??? tay l??n m???t',3,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL),(11,'L??m quen v???i t?? t?????ng \"M??y h???c\"',3,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL),(12,'Bi???t th??m m???t s??? k??? thu???t v???i Javascript',3,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL),(13,'aloaloalo',4,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL);
/*!40000 ALTER TABLE `course_target` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson` (
  `lesson_id` int NOT NULL AUTO_INCREMENT,
  `lesson_note_id` int DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `link_video` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`lesson_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (1,1,'1. Gi???i thi???u','video',1,1,'https://drive.google.com/file/d/1gVUwDBvMrJCDJC_u1TbeC7cyQQmlGMnD/preview'),(2,1,'2. IIFE l?? g???','video',2,1,'https://drive.google.com/file/d/13Db2jcE_JaeNRWKwVk0Y41RYj6dIH8nu/preview'),(3,1,'3. ??n t???p v??? IIFE #1','video',3,1,'https://drive.google.com/file/d/15_FcUZpEjQfGMItvuJb5NBCKX8z2CyDM/preview'),(4,1,'4. Scope l?? g???','video',4,1,'https://drive.google.com/file/d/1uHP1mNW5j5cPio-POFeXSl_XWSO2P78M/preview'),(5,1,'5.??n t???p v??? scope #1','video',5,1,'https://drive.google.com/file/d/1xD5YHnGM0IAjyV6gKHY-0yADjX2rw-Ak/preview'),(6,1,'6. Kh??i ni???m Closure?','video',6,1,'https://drive.google.com/file/d/1wN9Fb3EIOVhawlflPcUTZNIogUQmscHY/preview'),(7,1,'7.11. Hoisting l?? g???','video',7,1,'https://drive.google.com/file/d/1MTso-6YXGg3aRXT3PDmaz7-ocLHxKOiT/preview'),(8,1,'1. Gi???i thi???u Course 1','video',8,1,'https://www.youtube.com/embed/O_DC-o2LROQ'),(9,1,'2. Gi???i thi???u Course 2','video',9,1,'https://www.youtube.com/embed/O_DC-o2LROQ'),(10,1,'3. Gi???i thi???u Course 3','video',10,1,'https://www.youtube.com/embed/O_DC-o2LROQ'),(11,1,'4. Gi???i thi???u Course 4','video',11,1,'https://www.youtube.com/embed/O_DC-o2LROQ');
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_note`
--

DROP TABLE IF EXISTS `lesson_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_note` (
  `lesson_note_id` int NOT NULL AUTO_INCREMENT,
  `note` text,
  `user_id` int DEFAULT NULL,
  `lesson_id` int DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`lesson_note_id`),
  KEY `uid_idx` (`user_id`),
  KEY `lesid_idx` (`lesson_id`),
  CONSTRAINT `uid` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_note`
--

LOCK TABLES `lesson_note` WRITE;
/*!40000 ALTER TABLE `lesson_note` DISABLE KEYS */;
INSERT INTO `lesson_note` VALUES (1,'Inittical commit',1,1,'2022-11-19'),(3,'Official Bootstrap documentation does not contain a Sidebar component, but it\'s possible to create fully-functional side navigation from the existing components, and with the little help of Material Design for Bootstrap - free and powerfull UI KIT.',1,3,'2022-11-25'),(4,'third input',1,1,'2022-12-10'),(5,'third input aloa tui day ne ong oi',1,2,'2022-12-11'),(6,'Tham gia c??c c???ng ?????ng ????? c??ng h???c h???i, chia s??? v?? ???th??m th??nh??? xem F8 s???p c?? g?? m???i nh??! 1231231312',1,5,'2022-12-04'),(9,'Hom nay toi buon',1,1,'2022-12-16'),(25,'<p>Lan nay k <strong>dc nua thi thoi nay</strong></p>\r\n',1,1,'2022-12-16'),(26,'<p>day la dau</p>\r\n',NULL,NULL,'2022-12-16'),(27,'<p>alo tui day ne 123</p>\r\n',1,1,'2022-12-16'),(28,'<p>Anh ta&nbsp;<strong>B?????? em&nbsp;</strong><em>&nbsp;r??????i</em></p>\r\n',1,1,'2022-12-16'),(29,'<p>D????????c chua may con vo oi</p>\r\n',1,1,'2022-12-16'),(30,'<p>aloo &ocirc;i b??????n ????i</p>\r\n',1,1,'2022-12-16'),(34,'<h2>Alo tui la LongVH nhe</h2>\r\n',2,1,'2022-12-17');
/*!40000 ALTER TABLE `lesson_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_social`
--

DROP TABLE IF EXISTS `link_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link_social` (
  `link_social_id` int NOT NULL AUTO_INCREMENT,
  `link_socialcol_name` varchar(450) DEFAULT NULL,
  `link_socialcol_link` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`link_social_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_social`
--

LOCK TABLES `link_social` WRITE;
/*!40000 ALTER TABLE `link_social` DISABLE KEYS */;
INSERT INTO `link_social` VALUES (1,'Fanpage','https://www.facebook.com/f8vnofficial'),(2,'Group','https://www.facebook.com/groups/649972919142215'),(3,'Youtube','https://www.youtube.com/F8VNOfficial'),(4,'Facebook','https://www.facebook.com/hailongvu111');
/*!40000 ALTER TABLE `link_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option`
--

DROP TABLE IF EXISTS `option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `option` (
  `option_Id` int NOT NULL AUTO_INCREMENT,
  `question_Id` int DEFAULT NULL,
  `content` varchar(600) DEFAULT NULL,
  `is_Correct` bit(1) DEFAULT NULL,
  PRIMARY KEY (`option_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option`
--

LOCK TABLES `option` WRITE;
/*!40000 ALTER TABLE `option` DISABLE KEYS */;
/*!40000 ALTER TABLE `option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_Id` int NOT NULL AUTO_INCREMENT,
  `placed` date DEFAULT NULL,
  `course_Id` int DEFAULT NULL,
  `sale_Price` varchar(450) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(450) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`order_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `course_Id` int DEFAULT NULL,
  `lesson_Id` int DEFAULT NULL,
  `content` varchar(450) DEFAULT NULL,
  `explanation` varchar(450) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`question_id`),
  KEY `asd_idx` (`lesson_Id`),
  CONSTRAINT `ques` FOREIGN KEY (`lesson_Id`) REFERENCES `lesson` (`lesson_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_Id` int NOT NULL,
  `role_Name` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`role_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'user'),(2,'admin'),(3,'manager');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slider` (
  `slider_id` int NOT NULL AUTO_INCREMENT,
  `backlink` varchar(500) DEFAULT NULL,
  `title` varchar(450) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `image` varchar(450) DEFAULT NULL,
  `user_Id` int DEFAULT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (1,'https://fullstack.edu.vn/static/media/f8-og-image.245ebc1d5d7a5240254c.png',NULL,NULL,NULL,NULL),(2,'https://cdn.tgdd.vn/Files/2020/02/28/1239138/fb_f8_conference_850x450-800-resize.jpg',NULL,NULL,NULL,NULL),(3,'https://i.ytimg.com/vi/gyOJ5C6d2ak/maxresdefault.jpg',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `tag_Id` int NOT NULL,
  `name` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`tag_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_program`
--

DROP TABLE IF EXISTS `training_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_program` (
  `training_program_id` int NOT NULL,
  `title` varchar(450) DEFAULT NULL,
  `description` varchar(900) DEFAULT NULL,
  `image` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`training_program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_program`
--

LOCK TABLES `training_program` WRITE;
/*!40000 ALTER TABLE `training_program` DISABLE KEYS */;
INSERT INTO `training_program` VALUES (1,'L??? tr??nh h???c Front-end','L???p tr??nh vi??n Front-end l?? ng?????i x??y d???ng ra giao di???n websites. Trong ph???n n??y F8 s??? chia s??? cho b???n l??? tr??nh ????? tr??? th??nh l???p tr??nh vi??n Front-end nh??.','https://res.cloudinary.com/kimwy/image/upload/v1624063424/easyfrontend/lo-trinh-fe_zzhxml.png'),(2,'L??? tr??nh h???c Back-end','Tr??i v???i Front-end th?? l???p tr??nh vi??n Back-end l?? ng?????i l??m vi???c v???i d??? li???u, c??ng vi???c th?????ng n???ng t??nh logic h??n. Ch??ng ta s??? c??ng t??m hi???u th??m v??? l??? tr??nh h???c Back-end nh??.','https://hrchannels.com/uptalent/attachments/images/20210714/1626231329437-ky-nang-cua-back-end.PNG'),(3,'Lo trinh android','Lo Trinh Kotlin','https://hrchannels.com/uptalent/attachments/images/20210714/1626231329437-ky-nang-cua-back-end.PNG');
/*!40000 ALTER TABLE `training_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traning_program_detail`
--

DROP TABLE IF EXISTS `traning_program_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `traning_program_detail` (
  `traning_program_detail_id` int NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `title` varchar(450) DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`traning_program_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traning_program_detail`
--

LOCK TABLES `traning_program_detail` WRITE;
/*!40000 ALTER TABLE `traning_program_detail` DISABLE KEYS */;
INSERT INTO `traning_program_detail` VALUES (1,'????? theo ng??nh IT - Ph???n m???m c???n r??n luy???n nh???ng k??? n??ng n??o? B???n ???? c?? s???n t??? ch???t ph?? h???p v???i ng??nh ch??a? C??ng th??m quan c??c c??ng ty IT v?? t??m hi???u v??? v??n h??a, t??c phong l??m vi???c c???a ng??nh n??y nh?? c??c b???n.','T??m hi???u v??? ng??nh IT',1),(2,'????? h???c web Front-end ch??ng ta lu??n b???t ?????u v???i ng??n ng??? HTML v?? CSS, ????y l?? 2 ng??n ng??? c?? m???t trong m???i website tr??n internet. Trong kh??a h???c n??y F8 s??? chia s??? t??? nh???ng ki???n th???c c?? b???n nh???t. Sau kh??a h???c n??y b???n s??? t??? l??m ???????c 2 giao di???n websites l?? The Band v?? Shopee.','HTML v?? CSS',2),(3,'V???i HTML, CSS b???n m???i ch??? x??y d???ng ???????c c??c websites t??nh, ch??? bao g???m ph???n giao di???n v?? g???n nh?? ch??a c?? x??? l?? t????ng t??c g??. ????? th??m nhi???u ch???c n??ng phong ph?? v?? t??ng t??nh t????ng t??c cho website b???n c???n h???c Javascript.','JavaScript',2);
/*!40000 ALTER TABLE `traning_program_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(500) DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `position` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `company` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `avatar` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `role_Id` int DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Vu Hai Long','long@gmail.com','0972417865','Quang Ninh','CEO','Apple','https://bom.so/WboH8c','123456',1,NULL,NULL),(2,'Nguyen Phuong Anh','phanh@gmail.com','0976571263','Ha Noi','Staff','Apple','https://cdn-icons-png.flaticon.com/512/194/194938.png','123456',1,NULL,NULL),(3,'Tran Phuong Nga','nga@gmail.com',NULL,NULL,NULL,NULL,'https://media1.popsugar-assets.com/files/thumbor/hnVKqXE-xPM5bi3w8RQLqFCDw_E/475x60:1974x1559/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2019/09/09/023/n/1922398/9f849ffa5d76e13d154137.01128738_/i/Taylor-Swift.jpg','123456',1,NULL,NULL),(4,'Tran Phuong Hoa','hoa@gmail.com',NULL,NULL,NULL,NULL,'https://www.creativefabrica.com/wp-content/uploads/2021/04/11/Woman-Avatar-Icon-Vector-Graphics-10677522-1-580x387.jpg','123456',2,NULL,NULL),(5,'Nguyen Van Thanh','thanh@gmail.com',NULL,NULL,NULL,NULL,NULL,'123456',2,NULL,NULL),(6,'Long Vu','long123@gmail.com',NULL,NULL,NULL,NULL,NULL,'123456',2,NULL,NULL),(7,'Huy??????n Ph??????m','huyen@gmail.com',NULL,NULL,NULL,NULL,'https://cdn.icon-icons.com/icons2/2643/PNG/512/female_woman_person_people_avatar_icon_159366.png','123456',3,NULL,NULL),(30,'jame david','jame@gmail.com',NULL,NULL,NULL,NULL,'https://cdn.icon-icons.com/icons2/2643/PNG/512/male_boy_person_people_avatar_icon_159358.png','123456',1,NULL,NULL),(31,'Pham Lan Anh','anhpl@gmail.com',NULL,NULL,NULL,NULL,NULL,'123456',1,NULL,NULL),(32,'Pham Lan Anh','anhpl@gmail.com',NULL,NULL,NULL,NULL,NULL,'123',1,NULL,NULL),(33,'Pham Lan Anh','anhpl@gmail.com',NULL,NULL,NULL,NULL,NULL,'1234',1,NULL,NULL),(34,'Pham Lan Anh','anhpl@gmail.com1',NULL,NULL,NULL,NULL,NULL,'123456',1,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'swp'
--

--
-- Dumping routines for database 'swp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-17 23:30:55
