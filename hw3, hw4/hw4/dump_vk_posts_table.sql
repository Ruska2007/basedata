-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: vk
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Shawna','Schmidt','elegros@example.org','(109)212-4671x7','9ee774f0c8fa64f','1997-01-14 10:07:14','2018-05-11 12:25:19'),(2,'Eulalia','Rosenbaum','suzanne.schultz@example.com','970-143-6091','a9938e924cf9eb6','2002-03-13 11:58:45','2020-02-20 12:16:03'),(3,'Joel','Grady','ross.ritchie@example.org','254.328.5235x24','f38a061b9e62134','1975-04-21 04:41:37','2020-02-20 12:16:03'),(4,'Ferne','Schowalter','vkuhlman@example.org','662.476.7110x21','000d71b0348e6ca','1974-07-22 06:53:24','2020-02-20 12:16:03'),(5,'Myles','Boyle','hrutherford@example.org','+50(7)085214566','89d99333a5ca7d2','1988-09-17 10:11:23','2012-06-18 19:17:45'),(6,'Marina','Hackett','aidan91@example.org','529-558-4133x74','cd173e7c179912e','1980-03-19 10:54:37','2020-02-20 12:16:03'),(7,'Rodrick','Maggio','mallory60@example.org','+85(5)255676662','88f216aa9e79d30','1986-05-20 21:02:56','1998-10-22 08:28:58'),(8,'Kayla','Kozey','anais73@example.net','01203274385','9721d90f13b16a3','1971-11-28 04:38:41','1991-03-26 21:04:12'),(9,'Earl','Tillman','maegan.huel@example.org','539-167-8713','de6a62d2fb8e539','2002-03-05 10:52:39','2020-02-20 12:16:03'),(10,'Marques','Ortiz','charlotte45@example.com','492-152-5052x09','1a7b57ac36ff8bf','1979-04-05 12:06:14','2020-02-20 12:16:03'),(11,'Elena','Fay','gudrun56@example.org','686-801-3185x71','d007de1de159d7a','1974-08-11 04:54:35','2020-02-20 12:16:03'),(12,'Hazel','Bogan','qbailey@example.org','654-744-7412','83fdb374f778450','1970-03-30 06:54:24','1987-10-23 08:38:07'),(13,'Nash','Pacocha','gabriel90@example.com','059-329-1048','b125c3d58c83178','2000-04-15 22:01:40','2020-02-20 12:16:03'),(14,'Lindsay','Conn','cstreich@example.org','+56(5)972395806','bf980ca4a930f55','1970-04-25 09:23:23','2009-10-22 23:18:05'),(15,'Ettie','Schamberger','marquardt.delta@example.net','234-323-5669','9a5de2f971e6d42','1992-07-26 06:15:31','1994-01-11 00:48:36'),(16,'Asia','Kuhlman','paige.roberts@example.net','233.488.6756x07','719251c9b433087','1984-09-27 08:42:57','2000-02-03 00:10:22'),(17,'Jordy','West','hudson.tia@example.org','(362)545-4088x5','d36a823744d39ee','1990-01-16 20:23:24','2017-03-25 02:28:25'),(18,'Lincoln','Lockman','eunice10@example.com','517.570.6181','7bf0da219fcdba0','1982-08-15 07:25:27','1999-05-11 12:48:14'),(19,'Newton','Gibson','darwin.pfeffer@example.com','(096)503-1617x6','49dbbcfeff5a9d6','1971-04-14 17:33:24','2004-11-17 05:44:42'),(20,'Claud','Kub','kattie15@example.org','656.617.3873x70','5b996858e9d82bd','1988-10-07 20:23:36','2020-02-20 12:16:03'),(21,'Ransom','Zemlak','elwyn.heathcote@example.net','151.591.8960','355bb0c2bb21168','1987-07-13 05:05:37','2010-05-11 21:25:21'),(22,'Emerald','Krajcik','hthiel@example.com','1-731-324-8632x','270f7f8d74ffd74','2003-02-19 05:14:03','2006-05-17 09:12:39'),(23,'Clinton','Hilll','sherman@example.com','1-841-930-9904','5dac1e9458b9362','1984-05-24 05:27:53','2020-02-20 12:16:03'),(24,'Maybelle','Weissnat','wwest@example.net','801.274.2455x22','45a26e0e84013c0','2012-11-11 04:14:30','2020-02-20 12:16:03'),(25,'Thelma','Lubowitz','rodriguez.pamela@example.org','+77(7)710698840','65fc63a05859a3e','1976-03-19 04:22:57','2020-02-20 12:16:03'),(26,'Adriana','Braun','uauer@example.org','881.505.5336x43','8ba09e929e33402','1978-04-14 19:49:07','2020-02-20 12:16:03'),(27,'Conor','Nitzsche','annabell07@example.org','1-297-423-6727','e0b8e95d33baf03','1977-09-17 20:56:52','2010-05-31 15:40:34'),(28,'Justina','Aufderhar','qkrajcik@example.net','+42(6)269726378','918368d16118b18','1987-02-25 22:18:16','2020-02-20 12:16:03'),(29,'Flavio','Hayes','frida.ferry@example.net','292.209.1304','035b5bdc722b095','1971-08-27 22:43:00','2010-06-13 12:37:18'),(30,'Myrna','Weissnat','yshanahan@example.org','1-419-724-0186','d5587110a6c82e8','1981-03-13 00:02:48','2001-03-22 23:29:52'),(31,'Isaiah','Huels','amari71@example.org','008.967.7934x63','134f84d22e6a5d9','1970-08-09 03:07:48','1983-12-16 18:53:50'),(32,'Verdie','Dickens','hyman28@example.com','233.618.9554x72','5e92ac6f6aa68b0','1971-10-19 13:00:37','2020-02-20 12:16:03'),(33,'Karina','Reichel','kristoffer.balistreri@example.org','09075557066','d5769a8c51dade1','1971-09-27 11:14:20','2020-02-20 12:16:03'),(34,'Mason','Rolfson','nicolas.esmeralda@example.org','1-713-091-1461','e86dc3d7e482501','2010-06-30 23:03:40','2020-02-20 12:16:03'),(35,'Oswald','Hansen','efren.schiller@example.com','981-602-5772','f786a5c90eecdb0','1977-12-23 14:50:45','2020-02-20 12:16:03'),(36,'Ivah','Kilback','dasia.jaskolski@example.org','509-057-1714x55','2336e589b3b0677','1986-09-07 02:11:20','2020-02-20 12:16:03'),(37,'Leif','Monahan','cgleason@example.net','07023807932','13699ee3f425641','1991-04-07 04:03:39','1993-08-11 05:15:34'),(38,'Ron','Hessel','stehr.eloisa@example.org','310-978-2457x18','d5e6373b66d127e','1980-06-07 08:32:46','2020-02-20 12:16:03'),(39,'Emilie','Hilll','goldner.arnulfo@example.com','1-160-775-0955x','f2eea593050fd04','1970-11-22 03:06:14','2020-02-20 12:16:03'),(40,'Tamia','Kreiger','vcarroll@example.net','06074977743','fb2cae3b668dc71','1982-10-30 13:31:39','2020-02-20 12:16:03'),(41,'Louie','Bernhard','oschmeler@example.com','749.664.9269x50','598d6815c1c0c36','1992-04-09 13:44:43','2020-02-20 12:16:03'),(42,'Elva','O\'Conner','dorian84@example.net','00752245761','713f3d49520103c','1995-12-22 14:44:40','2020-02-20 12:16:03'),(43,'Alvena','Runolfsdottir','okuneva.luz@example.com','644.766.0007','7e7946e5698f40e','1975-01-06 00:12:53','2020-02-20 12:16:03'),(44,'Brandyn','Nader','bmcglynn@example.com','(314)090-4308x0','4fde0ec4639557f','1999-06-13 11:14:43','2020-02-20 12:16:03'),(45,'Ricardo','Bernier','lizeth67@example.net','336-276-1906','9abcd18b55e77e7','1991-03-25 05:02:02','2020-02-20 12:16:03'),(46,'Misael','McLaughlin','predovic.mandy@example.net','(390)908-8675','fc0f7b0034fe452','2002-04-01 21:09:01','2006-06-20 19:59:21'),(47,'Colby','Wuckert','beau14@example.com','1-952-940-8971x','b41309a324f4c49','1982-05-22 23:25:18','2020-02-20 12:16:03'),(48,'Sidney','Bruen','syost@example.net','1-034-679-8730x','98ac01e33efd872','1975-12-13 19:14:05','1980-11-26 19:06:42'),(49,'Jaron','Paucek','idonnelly@example.com','1-967-528-5458x','dd29ff0e1876f07','1971-12-31 07:19:29','2013-07-22 14:28:10'),(50,'Frederic','Mante','hlakin@example.org','404.116.0651x30','868a89fd0ac66fb','1980-12-17 11:26:16','2020-02-20 12:16:03'),(51,'Cruz','Mitchell','moshe.herman@example.com','03587044760','8aaa24109bdd439','1980-10-13 17:46:06','2020-02-20 12:16:03'),(52,'Francisca','Wolf','jocelyn.berge@example.net','(330)823-8733x0','7924df1004cf7df','2001-03-30 18:31:18','2015-12-26 19:24:17'),(53,'Katrina','Terry','hannah.hodkiewicz@example.org','(770)361-6321','6ffc3e17bb7d121','1991-07-07 21:35:33','2020-02-20 12:16:03'),(54,'Rosalinda','Reynolds','lucius.mueller@example.org','+54(5)937010854','0bfd40e81210f72','1984-05-18 13:59:02','1994-03-03 00:38:14'),(55,'Al','Brekke','fcole@example.com','114-545-0914x16','130eb0e0d9a15d2','1972-06-02 14:02:35','1986-02-02 19:26:18'),(56,'Wilbert','Lueilwitz','maddison.emard@example.com','355.709.2437','cdd33b7affedb50','1984-01-14 11:38:11','2008-12-13 02:20:24'),(57,'Guido','Schroeder','arlo.hettinger@example.org','690.749.0661','65e5abf60cacd1e','1990-10-10 13:09:44','1991-01-30 05:05:43'),(58,'Rosina','McGlynn','jeff.haag@example.org','+63(5)906940095','340cfd0746c3add','1992-04-27 17:56:01','2020-02-20 12:16:03'),(59,'Cody','Mueller','nathanael75@example.com','676.932.1491x03','afee823282b0308','1980-11-03 19:22:25','1997-11-13 11:26:09'),(60,'Chad','Koss','mweber@example.org','621-987-8686x83','68aa9f969daf891','1973-02-21 03:29:19','1973-03-10 05:00:49'),(61,'Annabel','Gislason','stephania.deckow@example.net','191.248.4741x61','b98072cb98fe1d4','1992-11-17 13:28:06','2020-02-20 12:16:03'),(62,'Dylan','Brakus','pbeer@example.com','08132684586','6ed2c5265d5f2b7','1983-12-18 07:02:06','2003-03-16 00:00:00'),(63,'Kacie','Schamberger','fbauch@example.net','+72(3)022690018','b5bc9f7b0217666','2009-04-09 00:00:41','2015-11-28 19:02:45'),(64,'Morris','Gibson','heller.benton@example.net','171-807-1699x66','bb388d61175b45b','1994-05-11 09:54:50','2020-02-20 12:16:03'),(65,'Icie','Terry','kshlerin.myrtie@example.org','04728853578','da3b017e9256c7a','1999-12-12 09:37:13','2020-02-20 12:16:03'),(66,'Mariah','Farrell','christine.abbott@example.org','(084)247-1115x2','a74e014166e5619','1987-01-03 01:24:56','2002-08-14 11:26:29'),(67,'Frederic','Frami','troy97@example.org','1-069-041-4754','394548267666c7e','1981-05-14 03:10:31','2009-03-28 12:13:39'),(68,'Noble','Trantow','gideon27@example.net','08299781207','7b1229c28cb3276','1992-12-27 02:49:49','2020-01-22 13:43:56'),(69,'Luther','Howe','fritsch.lorna@example.net','327.072.4309x52','1214ef1ded64c6a','1983-12-28 19:11:20','2001-05-12 12:23:38'),(70,'Hyman','Berge','easton.hermann@example.net','1-196-729-8348x','2e1fdcba10e7eb4','1991-03-18 10:14:25','2020-02-20 12:16:03'),(71,'Eugenia','Bernhard','thamill@example.org','(523)267-1212','bba7f2d9da06540','1980-05-02 10:01:55','2020-02-20 12:16:03'),(72,'Earlene','Durgan','rohan.mitchell@example.org','(288)214-7927','4486a7f95ab4d30','1987-01-12 14:02:56','2018-03-13 19:57:03'),(73,'Bradley','Mertz','pblick@example.org','(246)599-8076','ec7f87677ab7c24','1974-06-21 11:32:20','2006-01-23 06:14:37'),(74,'Vanessa','Little','phyllis.gibson@example.org','873-797-7043x49','9335a07f1bb17db','1974-04-24 08:34:03','2020-02-20 12:16:03'),(75,'Pablo','Wyman','jesse32@example.com','376-705-2692x45','d596614e894a751','1978-09-09 18:26:56','2020-02-20 12:16:03'),(76,'Heidi','Lakin','shields.matilde@example.net','04361611205','bbe953340cf2dc8','1996-03-25 15:15:53','2002-12-30 16:43:41'),(77,'Kiley','Hegmann','merl.bailey@example.net','764.914.5399x13','399f86f133c8e8a','1981-06-03 18:23:33','2010-10-31 00:11:46'),(78,'Micaela','Kunde','verda.zulauf@example.com','515.982.9646x24','22c1fd5d4e34337','1986-11-12 05:01:30','2014-11-18 17:54:02'),(79,'Ida','Heaney','lempi99@example.org','889-246-6116','34164d05b66c043','1991-09-25 18:48:55','2020-02-20 12:16:03'),(80,'Jeffry','Gutmann','klocko.isai@example.net','1-639-970-3517x','977265c4dba778c','1980-04-01 06:54:36','2015-12-21 12:03:22'),(81,'Kobe','Bruen','jacobs.burnice@example.net','980-151-2232x90','4e709fbdfabd777','1991-07-03 16:14:31','2004-01-11 02:32:15'),(82,'Jameson','Kris','hildegard.wolff@example.net','(876)827-1350','fe03dcedde3e08b','1995-04-11 17:40:11','2011-07-11 10:58:15'),(83,'Keegan','Kertzmann','ybogan@example.net','460.670.3918','47ba3d816ebe6f7','1971-09-29 23:48:00','2010-10-15 22:03:48'),(84,'Anderson','Herman','fcummings@example.org','1-698-303-5758x','53cfe6e14f9042a','2000-07-24 09:10:30','2020-02-20 12:16:03'),(85,'Jordi','Daniel','sgaylord@example.com','864.091.2575x93','9f120f9d7073c44','1987-06-22 01:36:05','1994-08-04 10:04:13'),(86,'Benny','Ratke','maggio.nelle@example.net','(772)175-8700x1','46cd555b0aa9890','1974-11-10 03:55:51','2013-05-10 03:24:18'),(87,'Rosalia','Hane','colby77@example.org','584-438-4696','db3220e705fa185','1991-07-15 08:18:20','2020-02-20 12:16:03'),(88,'Guido','Conroy','samanta.d\'amore@example.net','(527)647-5211x8','a985dcd7dd715f4','1984-01-11 17:37:01','2005-08-12 17:35:52'),(89,'Mohammed','Rosenbaum','lawson.wisozk@example.org','752-991-1170x46','8223389b4bbb56d','1983-08-24 04:23:13','2013-03-16 00:13:27'),(90,'Chasity','Kilback','bednar.derek@example.org','(725)477-7168x3','60bde62fb638b99','1992-08-05 00:31:56','2020-02-20 12:16:03'),(91,'Roxanne','Bode','dean.wolff@example.org','1-554-032-8363','fe22da2c66805f1','1971-05-14 05:47:16','2020-02-20 12:16:03'),(92,'Reagan','Kilback','mwyman@example.com','1-407-604-8564x','d62e9c3e552981d','1986-05-07 10:25:46','2003-12-15 20:11:31'),(93,'Dimitri','Davis','randal33@example.net','1-850-104-6174x','724a33cc10598e2','1972-09-11 10:23:31','2020-02-20 12:16:03'),(94,'Yesenia','Goodwin','reinger.guido@example.org','753.129.0812x40','ddc76562aeed5f3','1974-05-17 12:02:33','1988-10-08 07:23:18'),(95,'Marianna','Douglas','ransom.trantow@example.net','570.927.1738x53','857b6abf25d3a9f','1973-07-13 09:24:48','2002-11-18 14:48:35'),(96,'Meghan','Kuhlman','micah.grady@example.net','539-090-2230','52342ffc978522e','1975-12-24 20:54:07','2020-02-20 12:16:03'),(97,'Else','Rice','lavon.konopelski@example.net','(981)556-0218x5','a04f731e1132aa0','1997-12-07 07:53:00','2005-10-31 05:25:21'),(98,'Rogelio','Jakubowski','xpfannerstill@example.org','04949080608','a5838664c20d6e8','1994-04-24 08:04:38','2020-02-20 12:16:03'),(99,'Harold','Turner','stacey.o\'keefe@example.com','888.721.8243','9a23ac538a9acb5','1978-04-19 15:21:57','2000-12-19 22:35:32'),(100,'Gudrun','Wilkinson','reinger.bart@example.org','1-596-446-6039','1275d81f03d3399','1984-02-03 20:19:54','2020-02-20 12:16:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,14,'https://dropbox.net/vk/file_rerum',32,'{\"owner\": \"Lindsay Conn\"}','2015-01-13 07:37:38','2020-02-20 16:56:49'),(2,3,86,'https://dropbox.net/vk/file_unde',35,'{\"owner\": \"Benny Ratke\"}','1987-05-19 15:13:14','2020-02-20 16:56:49'),(3,3,16,'https://dropbox.net/vk/file_porro',11,'{\"owner\": \"Asia Kuhlman\"}','1989-07-05 17:35:05','2020-02-20 16:56:49'),(4,1,97,'https://dropbox.net/vk/file_vitae',24,'{\"owner\": \"Else Rice\"}','2018-11-12 16:09:49','2020-02-20 16:56:49'),(5,1,15,'https://dropbox.net/vk/file_explicabo',26,'{\"owner\": \"Ettie Schamberger\"}','1997-05-16 18:45:30','2020-02-20 16:56:49'),(6,2,16,'https://dropbox.net/vk/file_aut',36,'{\"owner\": \"Asia Kuhlman\"}','1991-03-24 15:53:57','2020-02-20 16:56:49'),(7,2,7,'https://dropbox.net/vk/file_veritatis',44,'{\"owner\": \"Rodrick Maggio\"}','1976-06-10 05:13:27','2020-02-20 16:56:49'),(8,3,17,'https://dropbox.net/vk/file_modi',32,'{\"owner\": \"Jordy West\"}','2010-06-12 12:09:26','2020-02-20 16:56:49'),(9,2,13,'https://dropbox.net/vk/file_commodi',46,'{\"owner\": \"Nash Pacocha\"}','2017-08-13 09:30:11','2020-02-20 16:56:49'),(10,3,74,'https://dropbox.net/vk/file_sed',41,'{\"owner\": \"Vanessa Little\"}','1986-10-29 20:31:27','2020-02-20 16:56:49'),(11,1,97,'https://dropbox.net/vk/file_cum',34,'{\"owner\": \"Else Rice\"}','2005-04-24 22:59:13','2020-02-20 16:56:49'),(12,2,29,'https://dropbox.net/vk/file_quidem',29,'{\"owner\": \"Flavio Hayes\"}','1993-08-12 06:57:49','2020-02-20 16:56:49'),(13,1,44,'https://dropbox.net/vk/file_consequatur',33,'{\"owner\": \"Brandyn Nader\"}','1998-05-31 02:30:42','2020-02-20 16:56:49'),(14,3,81,'https://dropbox.net/vk/file_temporibus',34,'{\"owner\": \"Kobe Bruen\"}','1996-04-18 02:44:39','2020-02-20 16:56:49'),(15,1,10,'https://dropbox.net/vk/file_itaque',26,'{\"owner\": \"Marques Ortiz\"}','1994-05-01 02:20:40','2020-02-20 16:56:49'),(16,2,31,'https://dropbox.net/vk/file_molestiae',49,'{\"owner\": \"Isaiah Huels\"}','2018-05-01 20:37:06','2020-02-20 16:56:49'),(17,2,74,'https://dropbox.net/vk/file_sequi',30,'{\"owner\": \"Vanessa Little\"}','2008-07-07 10:58:26','2020-02-20 16:56:49'),(18,3,53,'https://dropbox.net/vk/file_et',23,'{\"owner\": \"Katrina Terry\"}','1980-10-20 21:43:51','2020-02-20 16:56:49'),(19,1,28,'https://dropbox.net/vk/file_nemo',14,'{\"owner\": \"Justina Aufderhar\"}','1972-12-11 12:13:45','2020-02-20 16:56:49'),(20,2,22,'https://dropbox.net/vk/file_architecto',45,'{\"owner\": \"Emerald Krajcik\"}','2013-09-11 03:20:54','2020-02-20 16:56:49'),(21,1,38,'https://dropbox.net/vk/file_sint',10,'{\"owner\": \"Ron Hessel\"}','1970-01-13 09:35:43','2020-02-20 16:56:49'),(22,2,55,'https://dropbox.net/vk/file_voluptas',26,'{\"owner\": \"Al Brekke\"}','1970-10-10 11:34:40','2020-02-20 16:56:49'),(23,3,96,'https://dropbox.net/vk/file_eius',28,'{\"owner\": \"Meghan Kuhlman\"}','1970-06-09 21:55:29','2020-02-20 16:56:49'),(24,2,74,'https://dropbox.net/vk/file_voluptatem',27,'{\"owner\": \"Vanessa Little\"}','1974-01-10 05:55:56','2020-02-20 16:56:49'),(25,2,92,'https://dropbox.net/vk/file_est',9840,'{\"owner\": \"Reagan Kilback\"}','1998-11-07 16:58:48','2020-02-20 16:56:49'),(26,2,26,'https://dropbox.net/vk/file_exercitationem',4920,'{\"owner\": \"Adriana Braun\"}','2002-11-10 19:26:37','2020-02-20 16:56:49'),(27,3,55,'https://dropbox.net/vk/file_error',43,'{\"owner\": \"Al Brekke\"}','1979-04-24 07:25:43','2020-02-20 16:56:49'),(28,3,61,'https://dropbox.net/vk/file_laudantium',11070,'{\"owner\": \"Annabel Gislason\"}','2009-12-07 16:39:41','2020-02-20 16:56:49'),(29,3,27,'https://dropbox.net/vk/file_unde',15,'{\"owner\": \"Conor Nitzsche\"}','1984-08-09 07:09:44','2020-02-20 16:56:49'),(30,2,78,'https://dropbox.net/vk/file_praesentium',31,'{\"owner\": \"Micaela Kunde\"}','2009-03-12 17:14:47','2020-02-20 16:56:49'),(31,3,47,'https://dropbox.net/vk/file_architecto',9840,'{\"owner\": \"Colby Wuckert\"}','2014-04-30 12:42:46','2020-02-20 16:56:49'),(32,2,60,'https://dropbox.net/vk/file_qui',45,'{\"owner\": \"Chad Koss\"}','1975-03-24 17:09:39','2020-02-20 16:56:49'),(33,1,23,'https://dropbox.net/vk/file_deserunt',18,'{\"owner\": \"Clinton Hilll\"}','1980-09-14 04:08:42','2020-02-20 16:56:49'),(34,2,11,'https://dropbox.net/vk/file_nisi',18,'{\"owner\": \"Elena Fay\"}','1976-11-23 07:23:28','2020-02-20 16:56:49'),(35,3,62,'https://dropbox.net/vk/file_et',18,'{\"owner\": \"Dylan Brakus\"}','2005-02-15 05:25:43','2020-02-20 16:56:49'),(36,1,94,'https://dropbox.net/vk/file_aut',35,'{\"owner\": \"Yesenia Goodwin\"}','1998-02-17 05:57:14','2020-02-20 16:56:49'),(37,2,69,'https://dropbox.net/vk/file_et',19,'{\"owner\": \"Luther Howe\"}','2018-04-25 19:14:13','2020-02-20 16:56:49'),(38,1,44,'https://dropbox.net/vk/file_saepe',50,'{\"owner\": \"Brandyn Nader\"}','2014-06-28 06:29:31','2020-02-20 16:56:49'),(39,3,19,'https://dropbox.net/vk/file_iste',50,'{\"owner\": \"Newton Gibson\"}','1983-03-23 00:02:00','2020-02-20 16:56:49'),(40,1,73,'https://dropbox.net/vk/file_rerum',27,'{\"owner\": \"Bradley Mertz\"}','1993-01-29 14:00:19','2020-02-20 16:56:49'),(41,3,65,'https://dropbox.net/vk/file_dicta',47,'{\"owner\": \"Icie Terry\"}','1977-02-23 11:26:25','2020-02-20 16:56:49'),(42,1,98,'https://dropbox.net/vk/file_dolor',36,'{\"owner\": \"Rogelio Jakubowski\"}','2003-06-15 07:40:45','2020-02-20 16:56:49'),(43,3,53,'https://dropbox.net/vk/file_in',1230,'{\"owner\": \"Katrina Terry\"}','1977-09-16 05:46:12','2020-02-20 16:56:49'),(44,1,18,'https://dropbox.net/vk/file_consequatur',38,'{\"owner\": \"Lincoln Lockman\"}','1975-11-05 12:29:00','2020-02-20 16:56:49'),(45,3,1,'https://dropbox.net/vk/file_magni',37,'{\"owner\": \"Shawna Schmidt\"}','2001-04-24 15:11:21','2020-02-20 16:56:49'),(46,1,16,'https://dropbox.net/vk/file_expedita',22,'{\"owner\": \"Asia Kuhlman\"}','2008-10-12 13:28:24','2020-02-20 16:56:49'),(47,2,2,'https://dropbox.net/vk/file_nemo',43,'{\"owner\": \"Eulalia Rosenbaum\"}','2009-04-22 08:44:45','2020-02-20 16:56:49'),(48,1,68,'https://dropbox.net/vk/file_culpa',15,'{\"owner\": \"Noble Trantow\"}','1973-07-13 22:58:11','2020-02-20 16:56:49'),(49,2,88,'https://dropbox.net/vk/file_quia',49,'{\"owner\": \"Guido Conroy\"}','1982-07-08 01:33:55','2020-02-20 16:56:49'),(50,2,75,'https://dropbox.net/vk/file_qui',2460,'{\"owner\": \"Pablo Wyman\"}','1994-09-24 16:24:37','2020-02-20 16:56:49'),(51,3,9,'https://dropbox.net/vk/file_placeat',40,'{\"owner\": \"Earl Tillman\"}','1973-06-29 01:11:41','2020-02-20 16:56:49'),(52,2,48,'https://dropbox.net/vk/file_reiciendis',10,'{\"owner\": \"Sidney Bruen\"}','1971-07-30 23:51:29','2020-02-20 16:56:49'),(53,2,16,'https://dropbox.net/vk/file_ab',45,'{\"owner\": \"Asia Kuhlman\"}','1979-09-14 22:46:41','2020-02-20 16:56:49'),(54,3,43,'https://dropbox.net/vk/file_dolorum',39,'{\"owner\": \"Alvena Runolfsdottir\"}','1998-04-19 09:06:42','2020-02-20 16:56:49'),(55,3,8,'https://dropbox.net/vk/file_dignissimos',22,'{\"owner\": \"Kayla Kozey\"}','2013-09-07 16:02:29','2020-02-20 16:56:49'),(56,1,45,'https://dropbox.net/vk/file_officiis',13,'{\"owner\": \"Ricardo Bernier\"}','2012-05-14 12:56:36','2020-02-20 16:56:49'),(57,3,15,'https://dropbox.net/vk/file_magni',34,'{\"owner\": \"Ettie Schamberger\"}','2003-05-06 18:06:11','2020-02-20 16:56:49'),(58,1,92,'https://dropbox.net/vk/file_id',11070,'{\"owner\": \"Reagan Kilback\"}','1980-11-28 16:45:37','2020-02-20 16:56:49'),(59,1,100,'https://dropbox.net/vk/file_in',30,'{\"owner\": \"Gudrun Wilkinson\"}','1995-01-25 19:23:08','2020-02-20 16:56:49'),(60,3,47,'https://dropbox.net/vk/file_consequatur',23,'{\"owner\": \"Colby Wuckert\"}','1970-04-18 18:01:01','2020-02-20 16:56:49'),(61,1,5,'https://dropbox.net/vk/file_reprehenderit',3690,'{\"owner\": \"Myles Boyle\"}','1991-06-17 08:41:07','2020-02-20 16:56:49'),(62,3,47,'https://dropbox.net/vk/file_dolor',13,'{\"owner\": \"Colby Wuckert\"}','1991-11-18 15:18:51','2020-02-20 16:56:49'),(63,1,38,'https://dropbox.net/vk/file_quos',13,'{\"owner\": \"Ron Hessel\"}','2009-09-08 14:14:50','2020-02-20 16:56:49'),(64,1,31,'https://dropbox.net/vk/file_iusto',4920,'{\"owner\": \"Isaiah Huels\"}','1978-06-20 16:02:07','2020-02-20 16:56:49'),(65,2,92,'https://dropbox.net/vk/file_et',47,'{\"owner\": \"Reagan Kilback\"}','1977-12-20 08:52:02','2020-02-20 16:56:49'),(66,1,73,'https://dropbox.net/vk/file_maiores',1230,'{\"owner\": \"Bradley Mertz\"}','1977-02-19 23:27:38','2020-02-20 16:56:49'),(67,1,74,'https://dropbox.net/vk/file_reprehenderit',6150,'{\"owner\": \"Vanessa Little\"}','1983-10-23 11:19:10','2020-02-20 16:56:49'),(68,2,78,'https://dropbox.net/vk/file_quis',47,'{\"owner\": \"Micaela Kunde\"}','1982-08-18 08:29:39','2020-02-20 16:56:49'),(69,1,11,'https://dropbox.net/vk/file_et',48,'{\"owner\": \"Elena Fay\"}','2018-05-07 13:43:50','2020-02-20 16:56:49'),(70,2,24,'https://dropbox.net/vk/file_aspernatur',3690,'{\"owner\": \"Maybelle Weissnat\"}','1973-03-07 05:40:53','2020-02-20 16:56:49'),(71,2,37,'https://dropbox.net/vk/file_necessitatibus',34,'{\"owner\": \"Leif Monahan\"}','1980-11-28 16:32:20','2020-02-20 16:56:49'),(72,2,91,'https://dropbox.net/vk/file_consequatur',42,'{\"owner\": \"Roxanne Bode\"}','2000-09-25 00:49:09','2020-02-20 16:56:49'),(73,3,10,'https://dropbox.net/vk/file_et',27,'{\"owner\": \"Marques Ortiz\"}','1991-07-13 13:17:07','2020-02-20 16:56:49'),(74,3,18,'https://dropbox.net/vk/file_ipsum',33,'{\"owner\": \"Lincoln Lockman\"}','1986-02-15 20:08:20','2020-02-20 16:56:49'),(75,3,92,'https://dropbox.net/vk/file_dolor',14,'{\"owner\": \"Reagan Kilback\"}','2017-03-10 16:08:21','2020-02-20 16:56:49'),(76,2,10,'https://dropbox.net/vk/file_quidem',1230,'{\"owner\": \"Marques Ortiz\"}','2011-08-21 23:33:09','2020-02-20 16:56:49'),(77,3,26,'https://dropbox.net/vk/file_nihil',34,'{\"owner\": \"Adriana Braun\"}','2002-09-17 18:06:51','2020-02-20 16:56:49'),(78,1,2,'https://dropbox.net/vk/file_dicta',38,'{\"owner\": \"Eulalia Rosenbaum\"}','1996-08-29 12:12:37','2020-02-20 16:56:49'),(79,2,70,'https://dropbox.net/vk/file_est',9840,'{\"owner\": \"Hyman Berge\"}','1970-12-27 14:14:58','2020-02-20 16:56:49'),(80,3,88,'https://dropbox.net/vk/file_molestiae',49,'{\"owner\": \"Guido Conroy\"}','1983-11-26 23:47:25','2020-02-20 16:56:49'),(81,2,38,'https://dropbox.net/vk/file_aliquid',23,'{\"owner\": \"Ron Hessel\"}','1999-05-22 12:51:33','2020-02-20 16:56:49'),(82,3,61,'https://dropbox.net/vk/file_culpa',11070,'{\"owner\": \"Annabel Gislason\"}','1973-10-01 03:35:18','2020-02-20 16:56:49'),(83,3,80,'https://dropbox.net/vk/file_ut',9840,'{\"owner\": \"Jeffry Gutmann\"}','2003-03-29 11:54:42','2020-02-20 16:56:49'),(84,2,1,'https://dropbox.net/vk/file_aut',11,'{\"owner\": \"Shawna Schmidt\"}','1992-08-06 11:47:01','2020-02-20 16:56:49'),(85,3,60,'https://dropbox.net/vk/file_non',38,'{\"owner\": \"Chad Koss\"}','2002-08-30 04:37:06','2020-02-20 16:56:49'),(86,1,8,'https://dropbox.net/vk/file_et',36,'{\"owner\": \"Kayla Kozey\"}','2018-04-28 18:52:30','2020-02-20 16:56:49'),(87,3,91,'https://dropbox.net/vk/file_voluptas',7380,'{\"owner\": \"Roxanne Bode\"}','2002-11-28 17:59:01','2020-02-20 16:56:49'),(88,2,46,'https://dropbox.net/vk/file_quod',32,'{\"owner\": \"Misael McLaughlin\"}','2014-01-26 17:41:01','2020-02-20 16:56:49'),(89,1,81,'https://dropbox.net/vk/file_illum',46,'{\"owner\": \"Kobe Bruen\"}','2000-12-03 23:09:40','2020-02-20 16:56:49'),(90,3,9,'https://dropbox.net/vk/file_dolorum',3690,'{\"owner\": \"Earl Tillman\"}','1999-03-25 23:33:19','2020-02-20 16:56:49'),(91,1,27,'https://dropbox.net/vk/file_dolor',36,'{\"owner\": \"Conor Nitzsche\"}','1996-09-08 08:52:26','2020-02-20 16:56:49'),(92,2,68,'https://dropbox.net/vk/file_quasi',17,'{\"owner\": \"Noble Trantow\"}','2012-02-10 22:17:34','2020-02-20 16:56:49'),(93,3,74,'https://dropbox.net/vk/file_voluptates',20,'{\"owner\": \"Vanessa Little\"}','2006-01-03 11:51:44','2020-02-20 16:56:49'),(94,3,15,'https://dropbox.net/vk/file_quis',15,'{\"owner\": \"Ettie Schamberger\"}','1976-06-23 19:29:20','2020-02-20 16:56:49'),(95,2,3,'https://dropbox.net/vk/file_quas',33,'{\"owner\": \"Joel Grady\"}','2001-03-13 20:59:29','2020-02-20 16:56:49'),(96,1,4,'https://dropbox.net/vk/file_consequatur',6150,'{\"owner\": \"Ferne Schowalter\"}','2019-11-25 14:28:26','2020-02-20 16:56:49'),(97,1,62,'https://dropbox.net/vk/file_ex',21,'{\"owner\": \"Dylan Brakus\"}','1994-12-16 08:58:35','2020-02-20 16:56:49'),(98,1,51,'https://dropbox.net/vk/file_alias',16,'{\"owner\": \"Cruz Mitchell\"}','1975-04-26 23:09:19','2020-02-20 16:56:49'),(99,1,4,'https://dropbox.net/vk/file_repellat',18,'{\"owner\": \"Ferne Schowalter\"}','1981-07-13 17:17:49','2020-02-20 16:56:49'),(100,1,31,'https://dropbox.net/vk/file_temporibus',3690,'{\"owner\": \"Isaiah Huels\"}','1991-01-14 16:34:50','2020-02-20 16:56:49');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `media_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `head` varchar(255) DEFAULT NULL,
  `body` mediumtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-20 23:51:04