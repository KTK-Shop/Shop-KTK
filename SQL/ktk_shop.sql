-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ktk_shop
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branddes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Iphone','Iphone product',1),(2,'Samsung','Samsung product',1),(3,'Xiaomi','Xiaomi product',1),(4,'Oppo','Oppo product',1),(5,'Bphone','Bphone is a brand in Vietnam',1),(6,'LG','LG product',1);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BA388B7A76ED395` (`user_id`),
  CONSTRAINT `FK_BA388B7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (46,10),(47,11),(48,12),(49,13),(50,15);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_detail`
--

DROP TABLE IF EXISTS `cart_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_20821DCC1AD5CDBF` (`cart_id`),
  KEY `IDX_20821DCC4584665A` (`product_id`),
  CONSTRAINT `FK_20821DCC1AD5CDBF` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `FK_20821DCC4584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_detail`
--

LOCK TABLES `cart_detail` WRITE;
/*!40000 ALTER TABLE `cart_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20220623135136','2022-06-23 15:51:52',217),('DoctrineMigrations\\Version20220624045716','2022-06-24 06:57:25',1132),('DoctrineMigrations\\Version20220624050203','2022-06-24 07:02:25',374),('DoctrineMigrations\\Version20220624051136','2022-06-24 07:11:44',103),('DoctrineMigrations\\Version20220624051437','2022-06-24 07:14:44',98),('DoctrineMigrations\\Version20220624051849','2022-06-24 07:18:55',117),('DoctrineMigrations\\Version20220624052141','2022-06-24 07:21:48',177),('DoctrineMigrations\\Version20220624052705','2022-06-24 07:27:12',102),('DoctrineMigrations\\Version20220624053146','2022-06-24 07:31:52',153),('DoctrineMigrations\\Version20220624053356','2022-06-24 07:34:01',160),('DoctrineMigrations\\Version20220624053608','2022-06-24 07:36:13',165),('DoctrineMigrations\\Version20220624053729','2022-06-24 07:37:34',172),('DoctrineMigrations\\Version20220624053849','2022-06-24 07:38:55',167),('DoctrineMigrations\\Version20220626034224','2022-06-26 05:42:33',64),('DoctrineMigrations\\Version20220626034300','2022-06-26 05:43:05',100),('DoctrineMigrations\\Version20220628074052','2022-06-28 09:40:58',128),('DoctrineMigrations\\Version20220628102616','2022-06-28 12:26:23',134),('DoctrineMigrations\\Version20220628102802','2022-06-28 12:28:07',92),('DoctrineMigrations\\Version20220630122316','2022-06-30 14:23:26',1094),('DoctrineMigrations\\Version20220702070225','2022-07-02 09:02:34',690),('DoctrineMigrations\\Version20220702073420','2022-07-02 09:34:28',62);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderdate` datetime NOT NULL,
  `deliverydate` datetime DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` int(100) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F5299398A76ED395` (`user_id`),
  CONSTRAINT `FK_F5299398A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (37,'2022-07-03 05:17:06',NULL,'1',29990001,'0',10),(38,'2022-07-03 07:30:47',NULL,'1',3,'0',10),(39,'2022-07-03 08:41:11',NULL,'Can Tho',29990000,'0',10);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oder_pro_quan` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `orderid_id` int(11) DEFAULT NULL,
  `productid_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ED896F466F90D45B` (`orderid_id`),
  KEY `IDX_ED896F46AF89CCED` (`productid_id`),
  CONSTRAINT `FK_ED896F466F90D45B` FOREIGN KEY (`orderid_id`) REFERENCES `order` (`id`),
  CONSTRAINT `FK_ED896F46AF89CCED` FOREIGN KEY (`productid_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (11,1,29990000,29990000,37,9),(12,1,1,1,37,12),(13,3,1,3,38,12),(14,1,29990000,29990000,39,9);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `old_price` int(11) DEFAULT NULL,
  `productdes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productdate` datetime NOT NULL,
  `productquantity` int(11) NOT NULL,
  `productimage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brandid_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04AD506E4F3` (`brandid_id`),
  CONSTRAINT `FK_D34A04AD506E4F3` FOREIGN KEY (`brandid_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (9,'Iphone 13 Pro Max',29990000,0,'The iPhone 13 Pro Max is Apple\'s biggest phone in the lineup with a massive, 6.7\" screen that for the first time in an iPhone comes with 120Hz ProMotion display that ensures super smooth scrolling. The benefit of such a gigantic phone is that it also come','2022-06-28 00:00:00',82,'iphone_13_pro_max.jpg',1,1),(12,'iPhone 12',19999000,0,'OS: iOS 14\r\nDisplay: 6.1-inch OLED (2532x1170)\r\nCPU: A14 Bionic\r\nStorage: 64GB, 128GB, 256GB\r\nRear camera: 12MP wide (╞Æ/1.6), 12MP ultrawide (╞Æ/2.4)\r\nFront camera: 12MP (╞Æ/2.2)\r\nBattery: 2,815 mAh\r\nBattery life: 8:25 (5G), 10:23 (4G)\r\nSize: 5.78 x 2.81 x','2022-06-29 00:00:00',97,'iphone-12-den-new-2-600x600.jpg',1,1),(14,'Xiaomi Mi 12 Pro',25990000,NULL,'Storage & RAM 8GB + 128GB, 8GB + 256GB, 12GB+256GBLPDDR5 RAM + UFS 3.1 storage\r\nDimensions Height: 152.7mm Width: 69.9mm Thickness: 8.16mm Weight: 180g\r\nDisplay FHD+ 6.28\" AMOLED DotDisplay\r\nProcessor Snapdragon┬« 8 Gen 1\r\nRear Camera 50MP wide angle camer','2022-07-03 00:00:00',100,'xiaomi_12_pro.jpg',3,1),(15,'Samsung Galaxy S20 FE',10990000,NULL,'Samsung Galaxy S20 FE (Fan Edition) is the successor of Galaxy S10 Lite. Specifications include a 6.5-inch FHD+ display, Snapdragon 865 chipset with 6GB/8GB RAM and 128GB/256GB storage, and 4500 battery. There is a triple-camera setup on the back, with th','2022-07-03 00:00:00',100,'samsung-galaxy-s20-fe.jpg',2,1),(16,'Samsung Galaxy Z Flip 3',16790000,NULL,'The 6.7-inch display of the Galaxy Z Flip 3 bends around the horizontal axis and has a small 1.9-inch screen on the outside for date/time/notification purposes. Under the hood, the phone offers Qualcomm Snapdragon 888 processor, 3300mAh battery, Android 1','2022-07-03 00:00:00',100,'samsung_galaxy_z_flipp_3.jpg',2,1),(17,'Samsung Galaxy S22',16990000,NULL,'The Samsung Galaxy S22 specs are top-notch including a Snapdragon 8 Gen 1 chipset, 8GB RAM coupled with 128/256GB storage, and a 3700mAh battery with 25W charging speed. The phone sports a 6.1-inch Dynamic AMOLED display with an adaptive 120Hz refresh rat','2022-07-03 00:00:00',100,'samsung_galaxy_S22.jpg',1,1),(18,'Samsung Galaxy S22 Ultra',24990000,NULL,'The Samsung Galaxy S22 Ultra is the headliner of the S22 series. It\'s the first S series phone to include Samsung\'s S Pen. Specifications are top-notch including 6.8-inch Dynamic AMOLED display with 120Hz refresh rate, Snapdragon 8 Gen 1 processor, 5000mA','2022-07-03 00:00:00',100,'samsung_gaaxy_s22_ultra.jpg',2,1),(19,'Samsung Galaxy Z Fold',28990000,NULL,'The Samsung Galaxy Z Fold 3 is is the successor of the Galaxy Z Fold 2 and it comes with 6.2-inch AMOLED front cover display and big 7.6-inch Dynamic AMOLED display with 120Hz refresh rate when unfolded. Under the inner foldable display sits SamsungΓÇÖs fir','2022-07-03 00:00:00',100,'samsung_galaxy_fold_3.jpg',2,1),(20,'OPPO Find X5 Pro',32990000,NULL,'The OPPO Find X5 Pro comes with 6.7-inch AMOLED display with 120Hz refresh rate and Qualcomm Snapdragon 8 Gen 1 processor. Specs also include 5000mAh battery with 80W charging speed, Triple camera setup on the back with 50MP main sensor and 32MP front sel','2022-07-03 00:00:00',100,'oppo_find_x5_pro.jpg',4,1),(21,'OPPO Reno 7 Z',10490000,NULL,'The phone is packed with 8 GB RAM with 256 GB of internal storage. Oppo Reno 7 includes sensors such as Fingerprint (under display, optical), accelerometer, gyro, proximity, and compass. It is powered by Qualcomm SM6225 Snapdragon 680 4G Octa-core and the','2022-07-03 00:00:00',100,'oppo_reno_7.jpg',4,1),(22,'iPhone SE 2022',11390000,NULL,'The Apple iPhone SE (2022) is a powerful yet pocket-sized iPhone. The new iPhone SE 3 retains the design from the previous model with a 4.7-inch LCD display and Touch ID. The rear camera is a 12-megapixel one, while the selfie shooter is 7MP. The phone is','2022-07-03 00:00:00',100,'iphone_se_2022.jpeg',1,1),(23,'Bphone A60',4990000,NULL,'5000mAh battery capacity\r\nBphone brand\r\nGraphics chip (GPU) Mali-G52\r\nChipset Mediatek Helio G85\r\nType C . charging port\r\n6GB RAM\r\nROM 128GB\r\nFull HD+ resolution (2160 x 1080 pixels)\r\nScreen size 6.67 inches','2022-07-03 00:00:00',100,'bphone_a60.png',1,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (10,'admin','[\"ROLE_ADMIN\"]','$2y$13$aVc2NTj8SE4gHT/yVyM15erY38hvKYrQHIQQZIzEvhhf5AdRIglYm','Admin','Male','Can Tho','0999999999','ktkshop@123ktkgmail.com','2022-07-02 00:00:00'),(11,'phuonganh','[\"ROLE_USER\"]','$2y$13$36oL1CLDKO1uWSnzjvkEoeDIOr4mGbOuMHB3TDelXG03qZB3sYvqa','Nguyen Thi Phuong Anh','female','Cantho','0366677788','ntpanh@gmail.com','2002-01-01 00:00:00'),(12,'tuankiet','[\"ROLE_USER\"]','$2y$13$kN76/ZKWOl4GCGzrAm1eTeB/bIZadfyMkpUrYEC/C.NHS4vDG77le','Truong Van Tuan Kiet','Male','Can Tho','0333444555','tvtkiet@gmail.com','2002-01-01 00:00:00'),(13,'minhthai','[\"ROLE_USER\"]','$2y$13$XWqnw3goYILbILDmmpRNduu3TFwPbZctJQm6JrwJFzTMnu9maP3m2','Mai Hoang Minh Thai','Male','Can Tho','0399888777','mhmthai@gmail.com','2002-07-05 00:00:00'),(15,'dangkhoi','[\"ROLE_USER\"]','$2y$13$w.LILRgFc9evQDBJ5Eg/QeISgzn4gxSLwYBaeKfHyBl3Vwh2vNWUS','Dang Nguyen Dang Khoi','Male','Can Tho','0123456789','dndkhoi@gmail.com','2007-01-08 00:00:00');
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

-- Dump completed on 2022-07-09 13:54:16
