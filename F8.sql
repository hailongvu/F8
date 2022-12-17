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
INSERT INTO `blog` VALUES (1,'See you again','It\'s been a long day without you, my friend','No comment',3,'2022-12-05','It\'s been a long day without you, my friend','https://i.ytimg.com/vi/cPyovQwFmhE/maxresdefault.jpg',1,1,1,1),(2,'A Thousand Years','Heart beats fast','Have comment',4,'2022-12-05','Heart beats fast','http://img.youtube.com/vi/rtOvBOTyX00/sddefault.jpg',1,1,1,1),(3,'So sánh JavaScript với những đối thủ khác','JavaScript và C C được compile (biên dịch) trước. Còn JavaScript được interpret (thông dịch) và đôi khi được biên dịch trong thời gian chạy bằng just-in-time (JIT) compiler. C là static typing. Còn JavaScript là dynamic typing. C yêu cầu lập trình viên phải cấp phát và lấy lại các khối bộ nhớ. JavaScript xử lý điều này tự động. Code C phải được biên dịch lại khi chuyển sang một bộ xử lý khác. JavaScript thì không cần thiết. C được thiết kế để hoạt động trực tiếp với bộ nhớ của máy tính thông qua các con trỏ. JavaScript thì không. C thường được sử dụng cho các ứng dụng nhúng vào máy tính và các ứng dụng đòi hỏi hiệu suất cao như hệ điều hành. Còn JavaScript chỉ được nhúng vào các trang web, nhưng nó đã tìm thấy vai trò mới trong các ứng dụng phía máy chủ được phát triển bởi Node.js. C cung cấp khả năng kiểm soát rõ ràng các luồng, trong khi JavaScript khuyến khích người dùng sắp xếp nhiều task bằng cách chia các tác vụ thành các hàm không đồng bộ và được gọi khi dữ liệu đã sẵn sàng.','No comment',3,'2022-12-04','Trong tương lai nếu bạn không nắm được JavaScript là gì thì khó mà tiến xa được trong lĩnh vực công nghệ thông tin. Tin tốt là: JavaScript không đáng sợ như mọi người đồn. Nhưng trước hết bạn cần nắm được những điều cơ bản về JavaScript để làm nền tảng.','https://images-na.ssl-images-amazon.com/images/I/61W6yrlC0qL._AC_UL600_SR600,600_.jpg',1,1,1,1),(4,'[Cơ bản] Memory cache là gì?','Mục đích của sử dụng memory cache hay bất kỳ loại cache nào là đều muốn cải thiện hiệu suất chương trình. Ví dụ: lấy ra danh sách 100 sản phẩm bán chạy mỗi tháng. (dữ liệu này thỏa mãn tiêu chí ít thay đổi (1 tháng thay đổi 1 lần) + truy cập thường xuyên khi người dùng filter danh sách sản phẩm bán chạy). Ta có thể lưu cache cho data này để giảm thời gian truy cập xuống database để lấy dữ liệu. Lưu ý: In-memory cache phù hợp cho 1 server duy nhất hoặc nhiều server có sử dụng sticky sessions. Chỗ này mình sẽ giải thích sơ qua sticky session là gì?(Phần này liên quan đến kiến thức về load balancin) . Sticky session là một trong những tính năng cơ bản của load balancing cho phép định tuyến một máy chủ đơn lẻ cho một người dùng cụ thể, dựa trên HTTP session hoặc IP của họ. Tại sao mình phải lưu ý vấn đề ở trên: Nếu chỉ có 1 máy server thì khi ta lưu cache chỉ lưu trên bộ nhớ của máy server duy nhất đó => không xảy ra vấn đề gì. Trong trường hợp có nhiều máy server (thông thường các hệ thống lớn đều xài multiple servers). Server A, B, C, D… Khi ta lưu cache thì ta sẽ chỉ lưu ở một máy server A. Vậy khi lấy cache ra làm sao biết được ta sẽ lấy ở máy server nào trong nhiều servers. Sticky session sẽ giúp ta làm việc đó. Thêm 1 lưu ý khi sử dụng nếu ta lưu quá nhiều memory cache thì sẽ tốn dung lượng lưu trữ dẫn đến server bị chậm.','No comment',3,'2022-11-04','1. Memory cache là gì: In-memory cache sử dụng bộ nhớ(RAM) của máy server để lưu trữ data. Những data nào thường được lưu cache thỏa mãn 2 yếu tố: data được truy cập thường xuyên và ít thay đổi.','https://cdn.tgdd.vn/Files/2019/11/30/1223727/bo-nho-dem-cache-la-gi-co-nen-xoa-khong-cach-xoa-bo-nho-dem-tren-dien-thoai.jpg',1,1,1,1),(5,'LED Desk lamp','Chào mọi người, nay mình muốn chia sẻ cho những người đang học ở F8 một project mà mình đã làm qua. Mình đã cày hết F8 và nhiều nguồn khác để hoàn thành webiste demo này. Mình làm ở vị trí tester được 4 năm cho ngành viễn thông nhưng thấy không có đam mê và mình quyết định nghỉ ngang công việc 2 tháng nay tự mày mò học code. May mắn đã đưa mình đến với F8, nó khơi dậy niềm đam mê code của mình bởi vì có giáo viên tâm huyết. 2 tháng nay ở nhà mình học 1 ngày trung bình hơn 12 tiếng và 7 ngày/tuần. Vì bắt đầu từ số 0 nên mọi thứ đều mới mẻ và khó khăn đối với mình, hơn nữa lại tự mày mò mọi thứ với vốn kiến thức nền = 0 nên lại càng khó khăn hơn. Nhưng mình đã không bỏ cuộc và giờ sau 2 tháng mình đã bắt đầu quen dần với nhiều thứ, biết front-end là sao, back-end là gì, html, css, javascript… Giờ mình đã có cái nhìn tổng quan hơn và hiểu hơn đôi chút về lập trình web.','No comment',1,'2022-11-07','Nói sơ qua thì mình còn thiếu nhiều kiến thức về back-end nên phần xử lý back-end làm mình tốn khá nhiều thời gian nền mang tiếng học ở F8 nhưng giao diện nhìn khá xấu xí do mình chưa để tâm đến nó. Cái này mình đang nỗ lực cải thiện.','https://techvccloud.mediacdn.vn/2019/8/31/318f-15672288774411049559850-crop-15672288854071281759790.png',1,1,1,1),(6,'Vocanic Clay','Đặt vấn đề: Công ty TNHH TT có một cơ sở dữ liệu SQL Server(csdl) dbHotGirl và thực hiện áp dụng công nghệ để quản lý khách hàng thân thiết. Tuy nhiên dữ liệu cũ của họ là một file excel với 101 khách hàng thân thiết. Công ty muốn có tính năng import dữ liệu từ file excel lên cơ sở dữ liệu của công ty. Theo bạn, bạn sẽ áp dụng cách nào? Ối giời, thì tui sẽ lên tìm “How to import data from an excel file into sql server” - trên stackoverflow => Cách hay nè => Giả sử, nếu công ty muốn làm thành một tính cho nhân viên họ dùng thì sao? Giải pháp: Sử dụng Microsoft.Office.Interop.Excel.dll đọc dữ liệu sau đó thực hiện yêu cầu.','No comment',1,'2022-11-09','Chào mọi người, trong một lần làm việc và được yêu cầu làm một tính năng X và sử dụng thư viện Microsoft.Office.Interop.Excel để thực hiện tương tác với file excel. Dưới đây là cách mình áp dụng thư viện Interop Excel vào để giảm tải thao tác trên phần mềm.','https://atpweb.vn/blog/wp-content/uploads/2022/05/wordpress-caching.png',1,1,1,1);
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
INSERT INTO `chapter` VALUES (1,'1. LIFE, Scope',NULL,NULL,NULL),(2,'2. Hosting, strict mode',NULL,NULL,NULL),(3,'3. This, bind, call API',NULL,NULL,NULL),(4,'1. Window terminal & WSL',NULL,NULL,NULL),(5,'2. Các lệnh cơ bản',NULL,NULL,NULL);
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
INSERT INTO `course_target` VALUES (1,'Nắm chắc lý thuyết chung trong việc xây dựng web',1,'https://www.youtube.com/watch?v=x0fSBAgBrOQ','Máy vi tính kết nối internet (Windows, Ubuntu hoặc MacOS)'),(2,'Xây dựng web với Express bằng kiến thức thực tế',1,'https://www.youtube.com/watch?v=x0fSBAgBrOQ','Ý thức tự học cao, trách nhiệm cao, kiên trì bền bỉ không ngại cái khó'),(3,'Nắm chắc lý thuyết về API và RESTful API',1,'https://www.youtube.com/watch?v=x0fSBAgBrOQ','Không được nóng vội, bình tĩnh học, làm bài tập sau mỗi bài học'),(4,'Nắm chắc khái niệm về giao thức HTTP',1,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL),(5,'Được chia sẻ lại kinh nghiệm làm việc thực tế',2,'https://www.youtube.com/watch?v=x0fSBAgBrOQ','Khi học nếu có khúc mắc hãy tham gia hỏi/đáp tại group FB: Học lập trình web (fullstack.edu.vn)'),(6,'Hiểu rõ tư tưởng và cách hoạt động của mô hình MVC',2,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL),(7,'Biết cách deploy (triển khai) website lên internet',2,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL),(8,'Biết cách xây dựng API theo chuẩn RESTful API',2,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL),(9,'Biết cách làm việc với Mongoose, MongoDB trong NodeJS',3,'https://www.youtube.com/watch?v=x0fSBAgBrOQ','Bạn không cần biết gì hơn nữa, trong khóa học tôi sẽ chỉ cho bạn những gì bạn cần phải biết'),(10,'Làm được tool cảnh báo khi sờ tay lên mặt',3,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL),(11,'Làm quen với tư tưởng \"Máy học\"',3,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL),(12,'Biết thêm một số kỹ thuật với Javascript',3,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL),(13,'aloaloalo',4,'https://www.youtube.com/watch?v=x0fSBAgBrOQ',NULL);
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
INSERT INTO `lesson` VALUES (1,1,'1. Giới thiệu','video',1,1,'https://drive.google.com/file/d/1gVUwDBvMrJCDJC_u1TbeC7cyQQmlGMnD/preview'),(2,1,'2. IIFE là gì?','video',2,1,'https://drive.google.com/file/d/13Db2jcE_JaeNRWKwVk0Y41RYj6dIH8nu/preview'),(3,1,'3. Ôn tập về IIFE #1','video',3,1,'https://drive.google.com/file/d/15_FcUZpEjQfGMItvuJb5NBCKX8z2CyDM/preview'),(4,1,'4. Scope là gì?','video',4,1,'https://drive.google.com/file/d/1uHP1mNW5j5cPio-POFeXSl_XWSO2P78M/preview'),(5,1,'5.Ôn tập về scope #1','video',5,1,'https://drive.google.com/file/d/1xD5YHnGM0IAjyV6gKHY-0yADjX2rw-Ak/preview'),(6,1,'6. Khái niệm Closure?','video',6,1,'https://drive.google.com/file/d/1wN9Fb3EIOVhawlflPcUTZNIogUQmscHY/preview'),(7,1,'7.11. Hoisting là gì?','video',7,1,'https://drive.google.com/file/d/1MTso-6YXGg3aRXT3PDmaz7-ocLHxKOiT/preview'),(8,1,'1. Giới thiệu Course 1','video',8,1,'https://www.youtube.com/embed/O_DC-o2LROQ'),(9,1,'2. Giới thiệu Course 2','video',9,1,'https://www.youtube.com/embed/O_DC-o2LROQ'),(10,1,'3. Giới thiệu Course 3','video',10,1,'https://www.youtube.com/embed/O_DC-o2LROQ'),(11,1,'4. Giới thiệu Course 4','video',11,1,'https://www.youtube.com/embed/O_DC-o2LROQ');
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
INSERT INTO `lesson_note` VALUES (1,'Inittical commit',1,1,'2022-11-19'),(3,'Official Bootstrap documentation does not contain a Sidebar component, but it\'s possible to create fully-functional side navigation from the existing components, and with the little help of Material Design for Bootstrap - free and powerfull UI KIT.',1,3,'2022-11-25'),(4,'third input',1,1,'2022-12-10'),(5,'third input aloa tui day ne ong oi',1,2,'2022-12-11'),(6,'Tham gia các cộng đồng để cùng học hỏi, chia sẻ và “thám thính” xem F8 sắp có gì mới nhé! 1231231312',1,5,'2022-12-04'),(9,'Hom nay toi buon',1,1,'2022-12-16'),(25,'<p>Lan nay k <strong>dc nua thi thoi nay</strong></p>\r\n',1,1,'2022-12-16'),(26,'<p>day la dau</p>\r\n',NULL,NULL,'2022-12-16'),(27,'<p>alo tui day ne 123</p>\r\n',1,1,'2022-12-16'),(28,'<p>Anh ta&nbsp;<strong>Bá» em&nbsp;</strong><em>&nbsp;rá»i</em></p>\r\n',1,1,'2022-12-16'),(29,'<p>DÆ°Æ¡c chua may con vo oi</p>\r\n',1,1,'2022-12-16'),(30,'<p>aloo &ocirc;i báº¡n Æ¡i</p>\r\n',1,1,'2022-12-16'),(34,'<h2>Alo tui la LongVH nhe</h2>\r\n',2,1,'2022-12-17');
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
INSERT INTO `training_program` VALUES (1,'Lộ trình học Front-end','Lập trình viên Front-end là người xây dựng ra giao diện websites. Trong phần này F8 sẽ chia sẻ cho bạn lộ trình để trở thành lập trình viên Front-end nhé.','https://res.cloudinary.com/kimwy/image/upload/v1624063424/easyfrontend/lo-trinh-fe_zzhxml.png'),(2,'Lộ trình học Back-end','Trái với Front-end thì lập trình viên Back-end là người làm việc với dữ liệu, công việc thường nặng tính logic hơn. Chúng ta sẽ cùng tìm hiểu thêm về lộ trình học Back-end nhé.','https://hrchannels.com/uptalent/attachments/images/20210714/1626231329437-ky-nang-cua-back-end.PNG'),(3,'Lo trinh android','Lo Trinh Kotlin','https://hrchannels.com/uptalent/attachments/images/20210714/1626231329437-ky-nang-cua-back-end.PNG');
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
INSERT INTO `traning_program_detail` VALUES (1,'Để theo ngành IT - Phần mềm cần rèn luyện những kỹ năng nào? Bạn đã có sẵn tố chất phù hợp với ngành chưa? Cùng thăm quan các công ty IT và tìm hiểu về văn hóa, tác phong làm việc của ngành này nhé các bạn.','Tìm hiểu về ngành IT',1),(2,'Để học web Front-end chúng ta luôn bắt đầu với ngôn ngữ HTML và CSS, đây là 2 ngôn ngữ có mặt trong mọi website trên internet. Trong khóa học này F8 sẽ chia sẻ từ những kiến thức cơ bản nhất. Sau khóa học này bạn sẽ tự làm được 2 giao diện websites là The Band và Shopee.','HTML và CSS',2),(3,'Với HTML, CSS bạn mới chỉ xây dựng được các websites tĩnh, chỉ bao gồm phần giao diện và gần như chưa có xử lý tương tác gì. Để thêm nhiều chức năng phong phú và tăng tính tương tác cho website bạn cần học Javascript.','JavaScript',2);
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
INSERT INTO `user` VALUES (1,'Vu Hai Long','long@gmail.com','0972417865','Quang Ninh','CEO','Apple','https://bom.so/WboH8c','123456',1,NULL,NULL),(2,'Nguyen Phuong Anh','phanh@gmail.com','0976571263','Ha Noi','Staff','Apple','https://cdn-icons-png.flaticon.com/512/194/194938.png','123456',1,NULL,NULL),(3,'Tran Phuong Nga','nga@gmail.com',NULL,NULL,NULL,NULL,'https://media1.popsugar-assets.com/files/thumbor/hnVKqXE-xPM5bi3w8RQLqFCDw_E/475x60:1974x1559/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2019/09/09/023/n/1922398/9f849ffa5d76e13d154137.01128738_/i/Taylor-Swift.jpg','123456',1,NULL,NULL),(4,'Tran Phuong Hoa','hoa@gmail.com',NULL,NULL,NULL,NULL,'https://www.creativefabrica.com/wp-content/uploads/2021/04/11/Woman-Avatar-Icon-Vector-Graphics-10677522-1-580x387.jpg','123456',2,NULL,NULL),(5,'Nguyen Van Thanh','thanh@gmail.com',NULL,NULL,NULL,NULL,NULL,'123456',2,NULL,NULL),(6,'Long Vu','long123@gmail.com',NULL,NULL,NULL,NULL,NULL,'123456',2,NULL,NULL),(7,'Huyá»n Pháº¡m','huyen@gmail.com',NULL,NULL,NULL,NULL,'https://cdn.icon-icons.com/icons2/2643/PNG/512/female_woman_person_people_avatar_icon_159366.png','123456',3,NULL,NULL),(30,'jame david','jame@gmail.com',NULL,NULL,NULL,NULL,'https://cdn.icon-icons.com/icons2/2643/PNG/512/male_boy_person_people_avatar_icon_159358.png','123456',1,NULL,NULL),(31,'Pham Lan Anh','anhpl@gmail.com',NULL,NULL,NULL,NULL,NULL,'123456',1,NULL,NULL),(32,'Pham Lan Anh','anhpl@gmail.com',NULL,NULL,NULL,NULL,NULL,'123',1,NULL,NULL),(33,'Pham Lan Anh','anhpl@gmail.com',NULL,NULL,NULL,NULL,NULL,'1234',1,NULL,NULL),(34,'Pham Lan Anh','anhpl@gmail.com1',NULL,NULL,NULL,NULL,NULL,'123456',1,NULL,NULL);
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
