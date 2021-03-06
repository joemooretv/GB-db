-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: auction
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `auction_list`
--

DROP TABLE IF EXISTS `auction_list`;
/*!50001 DROP VIEW IF EXISTS `auction_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `auction_list` AS SELECT 
 1 AS `title`,
 1 AS `category`,
 1 AS `photo_id`,
 1 AS `days_to_end`,
 1 AS `price_current`,
 1 AS `price_early`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `bids`
--

DROP TABLE IF EXISTS `bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bids` (
  `deal_id` int NOT NULL,
  `user_id` int NOT NULL,
  `bid` decimal(10,2) unsigned NOT NULL,
  `bidded_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`deal_id`,`user_id`,`bidded_at`),
  KEY `fk_bids_deals1_idx` (`deal_id`),
  KEY `fk_bids_users1_idx` (`user_id`),
  CONSTRAINT `fk_bids_deals1` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`),
  CONSTRAINT `fk_bids_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bids`
--

LOCK TABLES `bids` WRITE;
/*!40000 ALTER TABLE `bids` DISABLE KEYS */;
INSERT INTO `bids` VALUES (1,1,155.00,'1988-03-13 03:20:38'),(1,47,496.00,'2005-11-13 02:56:44'),(1,65,379.00,'1993-01-08 15:11:04'),(1,83,208.00,'1989-05-25 21:13:33'),(2,2,260.00,'1994-11-28 09:40:21'),(2,48,623.00,'1999-01-18 09:39:29'),(2,66,1330.00,'2005-09-24 17:51:59'),(2,84,1095.00,'2012-02-22 07:43:36'),(3,3,890.00,'1987-05-01 17:42:11'),(3,49,514.00,'2004-11-11 18:18:21'),(3,67,1110.00,'1982-12-03 14:38:39'),(3,85,1030.00,'1976-05-24 13:18:00'),(4,4,1121.00,'1987-09-28 11:23:15'),(4,50,1086.00,'1970-08-12 01:49:56'),(4,68,672.00,'2003-04-14 04:11:29'),(4,86,1056.00,'1995-04-16 19:26:14'),(5,5,482.00,'2011-12-01 11:11:28'),(5,51,1378.00,'1986-03-15 08:40:17'),(5,69,369.00,'2012-11-26 12:31:35'),(5,87,1196.00,'2017-01-05 23:54:29'),(6,6,1242.00,'2019-05-08 23:42:40'),(6,52,485.00,'1995-05-15 04:47:46'),(6,70,1158.00,'2020-02-20 20:26:39'),(6,88,1055.00,'1995-12-04 14:02:10'),(7,7,739.00,'2010-03-13 00:47:38'),(7,53,1013.00,'1979-07-08 08:48:45'),(7,71,116.00,'2007-01-17 14:02:56'),(7,89,314.00,'1978-04-23 08:56:54'),(8,8,207.00,'2005-03-29 20:29:25'),(8,54,1339.00,'2008-11-29 05:44:04'),(8,72,1128.00,'1986-07-19 22:34:28'),(8,90,37.00,'2006-04-19 21:03:10'),(9,9,658.00,'1978-08-08 13:33:43'),(9,55,85.00,'1987-11-15 03:56:54'),(9,73,130.00,'1990-07-08 03:57:45'),(9,91,1133.00,'1993-07-06 02:58:22'),(10,10,1364.00,'2008-06-25 00:59:33'),(10,56,1229.00,'1977-12-01 20:35:19'),(10,74,28.00,'1993-04-25 12:22:30'),(10,92,776.00,'1972-01-29 21:44:27'),(11,11,585.00,'1989-02-22 02:09:44'),(11,57,876.00,'1982-04-03 07:37:02'),(11,75,923.00,'1987-04-15 19:39:19'),(11,93,1331.00,'1978-08-28 21:07:47'),(12,12,1198.00,'2019-04-18 15:31:18'),(12,58,595.00,'1985-07-24 23:15:28'),(12,76,164.00,'1990-10-22 08:17:05'),(12,94,369.00,'2020-06-21 00:39:21'),(13,13,1368.00,'2020-01-22 02:35:48'),(13,59,1085.00,'1999-10-29 23:20:07'),(13,77,1153.00,'1986-05-19 15:01:36'),(13,95,969.00,'1989-10-21 03:04:42'),(14,14,355.00,'2010-01-28 17:20:41'),(14,60,236.00,'1985-04-28 00:27:43'),(14,78,232.00,'2014-12-20 16:58:07'),(14,96,548.00,'2002-08-08 03:50:13'),(15,15,294.00,'2018-03-03 08:18:12'),(15,61,453.00,'2003-02-07 20:38:17'),(15,79,1303.00,'1987-02-09 14:09:43'),(15,97,1307.00,'1980-07-02 22:38:33'),(16,16,764.00,'1992-01-20 06:46:01'),(16,62,201.00,'1990-04-16 21:35:42'),(16,80,509.00,'2003-09-15 09:21:10'),(16,98,331.00,'2010-12-19 19:28:11'),(17,17,1124.00,'2001-12-24 10:50:14'),(17,63,908.00,'2019-10-04 19:55:46'),(17,81,717.00,'1976-07-07 02:44:06'),(17,99,449.00,'2013-03-08 23:23:23'),(18,18,311.00,'2020-03-08 00:08:03'),(18,64,1290.00,'2006-04-05 12:14:04'),(18,82,537.00,'1975-05-03 11:21:01'),(18,100,1224.00,'2015-11-11 11:27:12'),(19,1,697.00,'2016-01-14 07:35:30'),(19,19,1117.00,'2015-08-19 12:46:18'),(19,65,973.00,'2009-04-24 11:37:30'),(19,83,836.00,'1980-02-01 13:57:13'),(20,2,645.00,'1972-04-07 03:38:29'),(20,20,279.00,'1993-10-31 12:42:47'),(20,66,793.00,'2010-10-14 21:23:51'),(20,84,107.00,'1983-08-21 14:34:14'),(21,3,1055.00,'2000-11-25 08:59:35'),(21,21,736.00,'1974-05-11 02:43:12'),(21,67,310.00,'1994-10-11 00:03:59'),(21,85,738.00,'1996-07-31 05:52:28'),(22,4,1132.00,'1989-09-06 16:07:44'),(22,22,958.00,'1980-09-14 22:59:59'),(22,68,388.00,'1986-11-25 08:27:24'),(22,86,728.00,'2018-03-07 16:09:40'),(23,5,1186.00,'1971-10-11 05:25:48'),(23,23,1354.00,'1983-07-30 13:03:11'),(23,69,1215.00,'2001-10-14 18:43:08'),(23,87,831.00,'1994-09-06 03:46:54'),(24,6,455.00,'1994-03-01 16:47:39'),(24,24,1053.00,'2011-04-03 02:20:16'),(24,70,267.00,'1971-01-19 16:11:24'),(24,88,606.00,'2015-10-12 08:00:28'),(25,7,1040.00,'1978-06-08 07:20:32'),(25,25,231.00,'1979-10-19 01:46:29'),(25,71,529.00,'1980-12-23 09:42:49'),(25,89,821.00,'2018-06-26 14:58:00'),(26,8,585.00,'2016-02-15 23:45:00'),(26,26,1037.00,'2000-04-08 22:15:49'),(26,72,1384.00,'1990-01-03 20:28:02'),(26,90,535.00,'1997-07-29 20:52:24'),(27,9,354.00,'1986-09-13 19:26:03'),(27,27,175.00,'1979-01-23 07:42:55'),(27,73,242.00,'2009-06-09 21:16:02'),(27,91,951.00,'1991-05-25 10:29:37'),(28,10,904.00,'1982-04-28 10:05:07'),(28,28,358.00,'1980-04-26 18:59:34'),(28,74,471.00,'1990-02-27 11:38:33'),(28,92,1243.00,'2011-11-11 22:24:17'),(29,11,1269.00,'1978-03-08 03:52:57'),(29,29,1087.00,'1983-10-26 09:40:09'),(29,75,878.00,'1993-10-27 12:15:32'),(29,93,34.00,'1989-05-12 00:31:22'),(30,12,161.00,'1980-02-01 03:36:06'),(30,30,247.00,'1988-03-31 08:06:39'),(30,76,897.00,'1987-09-24 21:16:26'),(30,94,183.00,'1971-04-26 14:56:03'),(31,13,370.00,'2016-07-04 13:35:42'),(31,31,486.00,'2011-01-31 04:34:47'),(31,77,198.00,'2010-01-31 01:57:12'),(31,95,1316.00,'1972-08-31 00:29:04'),(32,14,65.00,'1973-06-19 20:30:35'),(32,32,464.00,'2018-03-15 20:04:05'),(32,78,1002.00,'1985-11-21 23:45:01'),(32,96,603.00,'1989-06-27 09:36:15'),(33,15,865.00,'2013-08-12 17:20:30'),(33,33,1074.00,'2007-11-22 20:56:00'),(33,79,816.00,'1974-09-08 21:16:43'),(33,97,1075.00,'1993-08-13 01:50:53'),(34,16,444.00,'1971-01-20 13:22:11'),(34,34,1340.00,'1997-12-10 04:20:05'),(34,80,624.00,'1978-08-01 03:54:13'),(34,98,1022.00,'2013-06-02 01:35:54'),(35,17,1374.00,'2011-11-20 04:57:35'),(35,35,721.00,'2005-04-25 13:33:07'),(35,81,622.00,'1992-03-01 04:11:16'),(35,99,1204.00,'2017-10-13 13:30:48'),(36,18,1070.00,'2014-04-16 09:29:42'),(36,36,173.00,'1989-02-27 00:47:22'),(36,82,1056.00,'1975-08-23 03:42:52'),(36,100,972.00,'1994-04-22 10:40:56'),(37,1,550.00,'2013-04-10 23:43:42'),(37,19,915.00,'1991-09-09 21:06:26'),(37,37,211.00,'1998-04-10 19:11:14'),(37,83,1198.00,'2003-07-30 10:12:30'),(38,2,450.00,'2017-03-20 04:59:39'),(38,20,426.00,'2015-08-31 03:19:10'),(38,38,1364.00,'2018-10-03 12:44:34'),(38,84,594.00,'1976-03-29 19:55:55'),(39,3,689.00,'1988-12-06 07:02:24'),(39,21,1052.00,'1989-02-16 19:54:47'),(39,39,68.00,'1979-02-22 12:30:08'),(39,85,728.00,'1972-04-20 01:48:48'),(40,4,187.00,'1992-10-11 05:31:44'),(40,22,1394.00,'1978-12-18 12:04:26'),(40,40,339.00,'2018-03-09 08:18:50'),(40,86,121.00,'2006-04-16 19:16:16'),(41,5,457.00,'1996-03-03 21:16:59'),(41,23,567.00,'1984-02-17 15:43:15'),(41,41,1301.00,'2017-11-16 08:33:24'),(41,87,605.00,'1984-10-10 08:46:41'),(42,6,803.00,'1989-01-27 09:37:03'),(42,24,507.00,'1985-07-06 11:57:39'),(42,42,184.00,'1996-06-07 05:06:47'),(42,88,1120.00,'2007-09-26 08:33:22'),(43,7,248.00,'1973-12-13 18:17:25'),(43,25,589.00,'2006-05-05 01:29:12'),(43,43,193.00,'1984-06-24 17:45:19'),(43,89,1164.00,'2014-11-09 22:54:57'),(44,8,545.00,'2008-02-17 01:39:40'),(44,26,1155.00,'2017-01-21 02:31:04'),(44,44,917.00,'1987-07-26 20:32:17'),(44,90,1072.00,'2014-05-10 05:50:17'),(45,9,49.00,'1974-10-21 01:32:17'),(45,27,455.00,'1973-12-05 11:43:57'),(45,45,653.00,'1996-10-31 21:46:22'),(45,91,997.00,'2016-09-10 14:40:26'),(46,10,1263.00,'1985-07-08 14:46:40'),(46,28,393.00,'2007-12-19 18:10:20'),(46,46,601.00,'1978-01-09 19:30:42'),(46,92,585.00,'1998-11-17 03:31:15'),(47,11,1056.00,'2002-06-23 22:06:17'),(47,29,818.00,'1999-05-24 09:45:51'),(47,47,773.00,'1994-01-04 20:54:58'),(47,93,861.00,'1994-04-27 12:08:59'),(48,12,576.00,'1994-03-20 04:52:21'),(48,30,962.00,'2019-05-24 04:38:58'),(48,48,946.00,'1981-08-24 03:38:18'),(48,94,1040.00,'1989-06-22 16:31:08'),(49,13,134.00,'2007-08-29 12:01:16'),(49,31,445.00,'1989-03-19 00:14:37'),(49,49,506.00,'2011-12-07 02:05:50'),(49,95,1329.00,'1998-04-18 03:53:22'),(50,14,705.00,'1976-04-13 17:01:18'),(50,32,1240.00,'2009-08-02 18:56:26'),(50,50,1168.00,'1992-04-23 14:46:51'),(50,96,907.00,'2019-06-06 19:28:34'),(51,15,390.00,'2002-03-21 01:54:55'),(51,33,361.00,'1992-10-29 08:09:01'),(51,51,609.00,'2015-04-06 21:06:28'),(51,97,1276.00,'1971-01-23 01:56:33'),(52,16,431.00,'1992-09-26 14:22:33'),(52,34,708.00,'2002-05-25 11:06:48'),(52,52,1008.00,'1976-11-06 04:05:42'),(52,98,1328.00,'2006-01-29 22:40:54'),(53,17,116.00,'1971-05-01 10:08:09'),(53,35,755.00,'2002-01-22 00:22:05'),(53,53,961.00,'1976-03-13 15:24:43'),(53,99,211.00,'2005-08-23 10:37:29'),(54,18,1099.00,'2011-03-10 20:58:34'),(54,36,1324.00,'1981-10-23 14:14:58'),(54,54,508.00,'2017-02-28 22:29:45'),(54,100,38.00,'2013-02-07 19:14:53'),(55,19,1023.00,'1988-09-28 02:35:51'),(55,37,357.00,'1973-02-17 08:13:14'),(55,55,175.00,'1989-11-19 21:57:24'),(56,20,694.00,'2017-11-08 02:32:57'),(56,38,605.00,'1977-05-29 12:00:24'),(56,56,1390.00,'1973-09-01 10:04:31'),(57,21,992.00,'2000-06-07 11:30:04'),(57,39,1277.00,'1980-10-06 17:01:37'),(57,57,1303.00,'2011-12-21 13:33:16'),(58,22,164.00,'2002-12-20 16:51:11'),(58,40,474.00,'1971-05-21 03:11:20'),(58,58,939.00,'2019-08-12 16:33:45'),(59,23,159.00,'1996-09-22 23:44:23'),(59,41,1031.00,'2011-06-30 10:16:21'),(59,59,1204.00,'1998-08-02 19:27:14'),(60,24,1103.00,'2002-08-19 10:51:18'),(60,42,887.00,'1999-02-05 03:48:52'),(60,60,880.00,'2020-01-12 11:55:07'),(61,25,41.00,'2007-06-10 09:12:29'),(61,43,295.00,'1983-03-26 02:45:02'),(61,61,1091.00,'2001-09-30 15:26:52'),(62,26,876.00,'1988-03-11 05:22:34'),(62,44,163.00,'2007-09-21 21:46:28'),(62,62,280.00,'2019-08-18 18:04:24'),(63,27,161.00,'2011-06-24 17:11:19'),(63,45,387.00,'1972-09-30 12:36:46'),(63,63,452.00,'1992-09-27 07:30:55'),(64,28,949.00,'1976-09-21 00:51:07'),(64,46,865.00,'1985-09-18 08:41:26'),(64,64,745.00,'2016-11-23 21:35:19'),(65,29,888.00,'1996-04-28 17:35:21'),(65,47,680.00,'1974-12-29 08:33:50'),(65,65,1348.00,'1992-07-10 12:16:44'),(66,30,581.00,'1992-04-23 21:01:04'),(66,48,1252.00,'2013-07-31 21:11:12'),(66,66,642.00,'1996-09-07 12:38:07'),(67,31,844.00,'1977-03-07 10:37:44'),(67,49,500.00,'1998-05-24 10:32:03'),(67,67,1071.00,'1978-05-28 18:32:58'),(68,32,545.00,'1979-12-30 12:02:02'),(68,50,273.00,'2019-10-08 12:11:47'),(68,68,251.00,'1982-06-10 02:41:27'),(69,33,503.00,'2019-01-18 02:30:24'),(69,51,1126.00,'1995-09-11 00:20:19'),(69,69,324.00,'2008-12-18 11:16:00'),(70,34,103.00,'1984-09-30 07:52:39'),(70,52,360.00,'2002-07-24 05:38:51'),(70,70,1338.00,'2004-01-02 15:19:56'),(71,35,1054.00,'1987-12-14 20:02:56'),(71,53,859.00,'2007-06-26 19:22:15'),(71,71,1176.00,'2020-03-14 23:29:28'),(72,36,214.00,'1988-10-30 07:34:25'),(72,54,1041.00,'2019-12-08 20:34:05'),(72,72,536.00,'1996-10-01 00:44:58'),(73,37,841.00,'2013-07-13 12:23:01'),(73,55,1322.00,'2015-08-02 01:24:52'),(73,73,362.00,'2006-05-31 06:26:00'),(74,38,113.00,'1985-10-03 09:18:28'),(74,56,387.00,'1980-12-19 21:55:51'),(74,74,755.00,'1995-08-11 10:16:13'),(75,39,485.00,'2012-11-04 23:57:47'),(75,57,799.00,'2013-09-09 04:24:35'),(75,75,270.00,'1989-11-10 16:33:11'),(76,40,75.00,'2000-02-07 22:09:49'),(76,58,38.00,'1986-02-14 19:21:41'),(76,76,112.00,'1981-11-28 18:54:26'),(77,41,142.00,'2015-06-20 17:00:28'),(77,59,590.00,'2010-02-27 14:35:30'),(77,77,586.00,'1974-01-31 05:37:10'),(78,42,512.00,'2007-08-27 17:53:00'),(78,60,564.00,'1986-10-24 10:08:57'),(78,78,133.00,'2006-06-13 15:01:45'),(79,43,807.00,'2015-01-31 04:58:39'),(79,61,236.00,'1982-09-02 01:38:41'),(79,79,595.00,'1982-03-31 11:38:50'),(80,44,1051.00,'1970-02-04 19:58:19'),(80,62,1263.00,'2008-05-26 08:30:11'),(80,80,928.00,'1991-12-09 09:16:12'),(81,45,964.00,'2000-12-23 08:19:06'),(81,63,971.00,'2012-04-10 13:55:53'),(81,81,740.00,'2016-03-18 06:26:20'),(82,46,644.00,'2000-12-22 22:49:05'),(82,64,258.00,'2013-03-15 03:52:56'),(82,82,569.00,'1989-03-08 14:45:19');
/*!40000 ALTER TABLE `bids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'electronics'),(2,'clothes'),(3,'musical instruments'),(4,'household products'),(5,'pet supplies'),(6,'sporting goods'),(7,'kitchenware'),(8,'hobbies and creativity'),(9,'cars'),(10,'property'),(11,'foodstuffs'),(12,'medicines'),(13,'business equipment');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_properties`
--

DROP TABLE IF EXISTS `category_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category_properties` (
  `category_id` int NOT NULL,
  `property_id` int NOT NULL,
  PRIMARY KEY (`category_id`,`property_id`),
  KEY `fk_category_properties_categories1_idx` (`category_id`),
  KEY `fk_category_properties_properties1_idx` (`property_id`),
  CONSTRAINT `fk_category_properties_categories1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_category_properties_properties1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_properties`
--

LOCK TABLES `category_properties` WRITE;
/*!40000 ALTER TABLE `category_properties` DISABLE KEYS */;
INSERT INTO `category_properties` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13);
/*!40000 ALTER TABLE `category_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conditions`
--

DROP TABLE IF EXISTS `conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `conditions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conditions`
--

LOCK TABLES `conditions` WRITE;
/*!40000 ALTER TABLE `conditions` DISABLE KEYS */;
INSERT INTO `conditions` VALUES (1,'new'),(2,'mint'),(3,'good'),(4,'satisfactory'),(5,'broken');
/*!40000 ALTER TABLE `conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal_details`
--

DROP TABLE IF EXISTS `deal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `deal_details` (
  `deal_id` int NOT NULL COMMENT 'Сделка',
  `delivery_terms` varchar(160) NOT NULL COMMENT 'Описание товара и условий передачи',
  `location` point DEFAULT NULL,
  `condition_id` int NOT NULL COMMENT 'Состояние товара',
  PRIMARY KEY (`deal_id`),
  KEY `fk_deal_details_deals1_idx` (`deal_id`),
  KEY `fk_deal_details_conditions1_idx` (`condition_id`),
  CONSTRAINT `fk_deal_details_conditions1` FOREIGN KEY (`condition_id`) REFERENCES `conditions` (`id`),
  CONSTRAINT `fk_deal_details_deals1` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_details`
--

LOCK TABLES `deal_details` WRITE;
/*!40000 ALTER TABLE `deal_details` DISABLE KEYS */;
INSERT INTO `deal_details` VALUES (1,'Tenetur sunt autem rerum possimus alias. Nostrum odio ipsa vero error aut minus. Sed ut sapiente fuga amet neque.',_binary '\0\0\0\0\0\0\0e\�F ^xb�\��v�$\0>�',1),(2,'Officia in consequatur aliquam consequatur sed autem nihil. Vitae expedita in ut tempora nam quas. Placeat eius accusantium maxime qui quam cum.',_binary '\0\0\0\0\0\0\0,D���{b�	Q����S�',2),(3,'Officiis aut labore cupiditate in ut inventore autem. Omnis sint quia similique quidem beatae consequatur. Vitae tempora nobis rerum vel earum facere enim. Odit',_binary '\0\0\0\0\0\0\0\�!\Z\�A~G�����)�U�',3),(4,'Magni eveniet veniam fuga ut aut. Et molestias sapiente voluptatum quia et. Voluptas animi tenetur cum tempora rerum. Placeat incidunt vel quia nisi autem rerum',_binary '\0\0\0\0\0\0\0	Q��\�R�е/�gV@',4),(5,'Et dolores expedita voluptate possimus et. Accusamus quasi aliquam quas sunt aliquam est commodi et. Repudiandae doloribus sit dicta expedita voluptas.',_binary '\0\0\0\0\0\0\0>�\�@pW@\�\�;���>@',5),(6,'Voluptatem dolore et sequi sunt voluptas doloribus dicta. Dolores eaque voluptates omnis dolorem quia autem aut quisquam. Enim optio dolor est animi vel aut qui',_binary '\0\0\0\0\0\0\0\�\0l@bc�,G\�@��P@',1),(7,'Aperiam amet adipisci maiores laborum fugiat voluptas porro. Enim molestiae dolor eius praesentium sunt. Tempora ut quaerat nemo et. Harum est omnis deserunt. A',_binary '\0\0\0\0\0\0\0_�2\�\�P�(b\��E@',2),(8,'Mollitia fuga qui totam. Aut sint officia perspiciatis nam pariatur accusantium id illum. Vero est non consequatur eveniet eum maxime quasi. Omnis omnis et et e',_binary '\0\0\0\0\0\0\0\�*O l%c�\�`\�;p @',3),(9,'Dignissimos maiores fugiat libero explicabo enim distinctio. Et omnis placeat esse cupiditate dolorem quia. Recusandae quasi ipsam optio velit qui. Asperiores s',_binary '\0\0\0\0\0\0\0��\�\���b������.�',4),(10,'Iusto facilis id ipsum quo provident itaque sunt. A dolore et minus velit quae. Magnam odit quidem quis perspiciatis in quas non. Ab modi est eum nihil. Volupta',_binary '\0\0\0\0\0\0\0B\�<�EiP@\�\�W��A�',5),(11,'Ullam quod nobis unde voluptatibus quibusdam. Sunt dolor voluptas voluptatem et. Non mollitia assumenda neque quia odit. Libero tempora molestiae ex et maiores ',_binary '\0\0\0\0\0\0\0�\�\���\�H@u�(%6@',1),(12,'Harum eaque ut quis. Nesciunt voluptatum reprehenderit est saepe. Sed cum qui at dignissimos tenetur sint. Assumenda facilis saepe qui enim. Quasi molestiae cor',_binary '\0\0\0\0\0\0\0`\���$c@\'�\�>VwT�',2),(13,'Ex praesentium inventore ut eaque quibusdam ut. Itaque ut corporis voluptatem dolore eaque veniam. Perspiciatis qui exercitationem voluptatem. Ipsa cupiditate a',_binary '\0\0\0\0\0\0\0��.\�\�MB@Z�xZ~�@',3),(14,'Reiciendis ipsum vitae aut esse. Quae et aut eum consectetur. Temporibus et et quo fugit minus.',_binary '\0\0\0\0\0\0\0RC�\r�]@a���\�C@',4),(15,'Ex officia labore sint repellendus. Culpa aut corporis iure rerum laborum culpa nulla. Est enim fugit dolor aspernatur assumenda nihil. Doloribus dolores quis t',_binary '\0\0\0\0\0\0\0\0\�\�\�Q�X@v�^:�',5),(16,'Autem nostrum odio eaque tempora odio nihil enim. Aut qui excepturi saepe maiores qui sint. Tempore harum sit sunt quis.',_binary '\0\0\0\0\0\0\0�����a�W#�@M@',1),(17,'Eius qui veritatis eos error. Non ut consequatur nulla sunt consequatur explicabo. Quia et harum autem et harum nisi.',_binary '\0\0\0\0\0\0\0f�\�ESe@\�v�>X�R@',2),(18,'Veritatis minus illo deserunt. Quia illo similique molestiae distinctio. Odit tempore odio blanditiis unde repellendus. Quo sunt in minus.',_binary '\0\0\0\0\0\0\0;\�i��k^��ݯ|\�N@',3),(19,'Accusamus nihil accusantium cupiditate at. Sed consectetur consequatur consequatur ea illum molestias. Nobis quod reprehenderit quasi quia.',_binary '\0\0\0\0\0\0\0MLb�@R���\�M@',4),(20,'Reprehenderit necessitatibus ducimus tempore error commodi non saepe. Quisquam qui tempore odit in pariatur. Amet aut omnis esse sapiente repellendus consequatu',_binary '\0\0\0\0\0\0\07n1?�\�`�:�\0U+Q�',5),(21,'Autem provident voluptas officiis sed facere sit aliquam. Itaque fugiat deserunt eum labore voluptatem. Enim nihil inventore expedita ipsam magnam cum nostrum m',_binary '\0\0\0\0\0\0\0=�U��Re@����4F@',1),(22,'Ut quod sunt dolorem omnis. Voluptatem architecto dolores qui accusantium ea.',_binary '\0\0\0\0\0\0\0\�Gq��G�`\�dT�',2),(23,'Repellendus magni animi est quibusdam. Quis quibusdam suscipit quasi ex repellendus. Distinctio magni voluptatem tempora quas placeat. Ipsa eos aut corrupti tem',_binary '\0\0\0\0\0\0\0�\�ߠ�na�Ϡ��S@',3),(24,'Rerum debitis velit nobis necessitatibus mollitia voluptatum et. Fugit amet in vitae quia cum. Est reiciendis sed qui perferendis. Perspiciatis consectetur face',_binary '\0\0\0\0\0\0\0m\06 B�U@}uU��S@',4),(25,'Tempora dolore ut dolor officia ut ea voluptatem nam. Libero ut cum sint molestiae ad deleniti.',_binary '\0\0\0\0\0\0\0��;3\�:@��N#-\�E@',5),(26,'Aperiam omnis velit quis quidem corrupti. Nemo harum sed deleniti maxime. Tenetur ut est modi a accusamus. Provident autem temporibus reiciendis expedita quasi ',_binary '\0\0\0\0\0\0\0;q9^��T@[^�\�6S�',1),(27,'Sit est accusantium ipsam sit. Animi ea odio et itaque. Et amet placeat sapiente amet optio asperiores. Nihil sit et odit a quisquam facere. Consequuntur natus ',_binary '\0\0\0\0\0\0\0�d�L@�\�\"�2@',2),(28,'Hic totam fugiat distinctio nulla odio. Necessitatibus sunt blanditiis eos dolorum. Accusamus impedit est eius facere illo ut rem.',_binary '\0\0\0\0\0\0\0\�K:Hd�\�5|H@',3),(29,'Deserunt quibusdam amet dolore autem minima. Quibusdam tenetur et facilis quo ex inventore architecto.',_binary '\0\0\0\0\0\0\0�SW>\�2W@\�ӹ��\�0�',4),(30,'Aperiam sunt voluptate ut doloremque doloribus nesciunt eos expedita. Odio repudiandae beatae alias ea aut cupiditate cumque. Adipisci fugiat maiores voluptas q',_binary '\0\0\0\0\0\0\0k-\�B;oA@�\�AA)\�4�',5),(31,'Accusamus est iste quisquam. Possimus aut consequatur nemo. Totam omnis magnam veniam rem similique qui debitis.',_binary '\0\0\0\0\0\0\0_�;�^�32\�]�+C@',1),(32,'Unde repellendus sit laborum aut eum. Consequatur accusamus quam soluta aliquid repellat non quia. Quas expedita iure iusto in et soluta quis. Quia est nihil ut',_binary '\0\0\0\0\0\0\0��m\�mY@^��a�yO@',2),(33,'Et a est quaerat. Autem atque rem sed qui nostrum voluptas consequuntur iure. Quis non ut magnam vel officiis voluptates unde.',_binary '\0\0\0\0\0\0\0ƅ!Yb@\�\nE��8@',3),(34,'Ipsum distinctio sint distinctio maxime aliquam nihil sint. Eum pariatur ea aut ducimus porro est. Iusto illo enim minima libero cupiditate.',_binary '\0\0\0\0\0\0\0K\�X\�U\�E@�\� !ʳP�',4),(35,'Eum voluptatem quasi sint pariatur quasi odit laborum. Est qui magni non tempora repudiandae. Consequatur autem molestiae voluptatibus animi nihil neque quia. Q',_binary '\0\0\0\0\0\0\0\�\�#��W(�\Zl\�<*\�2�',5),(36,'Dolores vitae et necessitatibus quo rerum. Ipsum aut minus eius nihil. Sint enim aut magni quia ipsa.',_binary '\0\0\0\0\0\0\07�A`\�\'c�~�<�n1�',1),(37,'Quos est et dolore voluptatem placeat omnis. Et explicabo et fugiat dolor aut.',_binary '\0\0\0\0\0\0\0WC\�K\�W��\��G.7@',2),(38,'Ex sit eaque necessitatibus autem laboriosam aperiam laudantium. Qui nihil doloribus repellat qui in quas reprehenderit. In dolorum quis ab sint.',_binary '\0\0\0\0\0\0\0\�Lۿ2\�d@f��ӶE�',3),(39,'Quos mollitia sapiente mollitia sed ullam esse iure. Et consequatur esse recusandae ipsam voluptas. Aut rerum similique consequatur officiis aspernatur nobis.',_binary '\0\0\0\0\0\0\0�=y�e��\�5>�H@',4),(40,'Ratione iste aut eius quidem. Itaque dignissimos voluptatibus magnam tempore. Dolorem atque sit dolores ut dolorum non similique.',_binary '\0\0\0\0\0\0\0:Yj�\�\�M�\�^\��xkO�',5),(41,'Repellendus quia sed mollitia. Aut velit reiciendis eaque facilis ut minima iusto. Sed eum sit ratione aut. Et aut ad dolores possimus sint.',_binary '\0\0\0\0\0\0\0�27߈�[��anlR�',1),(42,'Et accusantium et accusamus quis occaecati minus. Nulla illum similique doloribus saepe facere. Quo eaque et architecto quaerat.',_binary '\0\0\0\0\0\0\0�%9`W�T�a�����P@',2),(43,'Doloremque ad reiciendis magni earum minus omnis. Libero maiores sed id eius est consequatur et. Placeat placeat non laudantium sed itaque.',_binary '\0\0\0\0\0\0\0\�N\�`��P���_#I\�F@',3),(44,'Animi sit officiis laboriosam temporibus. Adipisci numquam laboriosam quo dolores ea. Sequi quo sed distinctio in. Laboriosam voluptas et voluptate odit.',_binary '\0\0\0\0\0\0\0s�V{\�\��?\�f�v/#�',4),(45,'Qui et ducimus eveniet enim. Sunt enim qui qui non iusto.',_binary '\0\0\0\0\0\0\0R�y9\�@�- ��P�',5),(46,'Aut iure omnis fugiat atque. Et magni ipsa voluptatem explicabo corporis ipsam illum delectus. Et ex eos totam voluptatibus voluptatem. Cumque non soluta deseru',_binary '\0\0\0\0\0\0\0S%\�\�R�U�\��3�I�H@',1),(47,'Eligendi recusandae amet est et esse. Velit corrupti eveniet totam accusantium facilis.',_binary '\0\0\0\0\0\0\0��yq�J@\�]��.Q@',2),(48,'Velit est rerum aliquid voluptatem et beatae cumque eaque. Hic voluptas eaque aperiam consequatur facilis voluptatem cumque.',_binary '\0\0\0\0\0\0\0y\�|\�>@��a\�,F@',3),(49,'Non voluptatem non quas consectetur. Vitae aliquam unde alias quos magni qui. Et quam quaerat et dignissimos quasi ipsum odit.',_binary '\0\0\0\0\0\0\0�\�۟C���	�\�\0P@',4),(50,'Et sed iure maxime corporis culpa. Aut consequatur earum sint illum neque. Nesciunt nihil quidem consequatur nihil. Quam aut optio aut.',_binary '\0\0\0\0\0\0\0(�\��L`�_�;\�P@',5),(51,'Provident voluptatem qui ex aut quia. Doloribus est esse architecto voluptatem aut. Facilis aut dolor nobis deleniti nesciunt ea adipisci. Ducimus necessitatibu',_binary '\0\0\0\0\0\0\0bX9�8?@���\�GQ@',1),(52,'Possimus illo enim et sint vitae omnis id. Suscipit voluptates ut ut sed est. Unde dolorem eveniet distinctio. Eum excepturi veniam voluptatibus sunt recusandae',_binary '\0\0\0\0\0\0\0>�\��Bf���N]��G@',2),(53,'Occaecati dolores sequi doloribus architecto officiis rerum aut illum. Ea molestiae numquam reiciendis aut sapiente ratione. Vel repellat quia quaerat blanditii',_binary '\0\0\0\0\0\0\0*8� �5a@)\�އQ�',3),(54,'Repellat maiores et facere nostrum sed mollitia. Nulla magnam sequi molestiae sapiente nihil est perferendis voluptatem. Error sunt velit minus dolores ut optio',_binary '\0\0\0\0\0\0\0�\�I\�\�&�\�!H�5@',4),(55,'Omnis corporis nihil iste dolorum et iure eius. Qui pariatur odio tempora iste quo blanditiis delectus. Nam eius omnis id incidunt. Maxime occaecati dolores acc',_binary '\0\0\0\0\0\0\0��\� �\nc@0��9<8�',5),(56,'Qui velit mollitia omnis dignissimos recusandae. Ratione mollitia cumque autem laborum. Explicabo eos in quo quo molestiae corporis repellendus. Quo est fugit t',_binary '\0\0\0\0\0\0\0���\�\�`�\�ͨ�*;@',1),(57,'Praesentium non et aut quia ut vero. Vitae est sequi perspiciatis incidunt quo. Natus voluptatem voluptatem cum in quo. Eos perspiciatis et quasi atque voluptat',_binary '\0\0\0\0\0\0\0\���i\'G@�`��P�',2),(58,'A cupiditate molestiae repellendus dolorem qui consectetur nam fugiat. Nostrum consequatur eum quos quibusdam. Et et ut sint enim. Perferendis in quis enim sapi',_binary '\0\0\0\0\0\0\0�- ��_�\�\�C�F@',3),(59,'Saepe delectus voluptatem ipsam facere. Eos perferendis debitis nobis quis et unde aut. Ut et dolores perferendis.',_binary '\0\0\0\0\0\0\0	]\��W@�����6�',4),(60,'Molestiae possimus quas et aspernatur magni vel maiores. Voluptatem porro id magnam rerum repudiandae quisquam. Debitis aut rerum maiores quia quia eos eius.',_binary '\0\0\0\0\0\0\0V+~��[@��\�+�:�',5),(61,'Harum eum in voluptatem. Minima repellat velit sunt odio consectetur a. Error et dolor inventore eum adipisci sed.',_binary '\0\0\0\0\0\0\0��\�ދ+V�����GK�',1),(62,'Sunt odit voluptatem consequatur. Molestias explicabo laudantium necessitatibus nobis facere. Inventore et quia vero ipsa deleniti eos. Omnis ipsa non eius sit ',_binary '\0\0\0\0\0\0\0<\�8b-�C�\�c�\rQ@',2),(63,'Molestiae dolorem eum ut est pariatur consequatur accusamus. Beatae saepe maiores alias ut amet doloribus est. Incidunt voluptatem explicabo animi facilis non.',_binary '\0\0\0\0\0\0\0TH\�9\�B�\�\�k]jL�',3),(64,'Ad aut libero ipsa libero modi aut. Eum perspiciatis sed vel delectus. Culpa assumenda eligendi odio et id est enim.',_binary '\0\0\0\0\0\0\0i\"�b���\�\�',4),(65,'Vero nostrum odit quibusdam velit ea voluptatem similique. Nisi aliquam quidem qui.',_binary '\0\0\0\0\0\0\0�~�n�S�\�\�\�	/��',5),(66,'Excepturi velit fugit placeat et et et sint. Sint qui autem aut qui quis illum.',_binary '\0\0\0\0\0\0\0~\�D��B@�V\n�\\\�P�',1),(67,'Nam facere ut et quisquam voluptatem aliquid. Velit nam culpa aut voluptatem voluptatem id. Est minima harum minus aliquid. Rem beatae odio quis quod.',_binary '\0\0\0\0\0\0\0w�\r�g\�@J\�D�',2),(68,'Et nostrum molestias laudantium eligendi. Quia non natus est voluptas provident et aut rem. Eligendi nihil provident praesentium. Voluptates voluptatem eos aute',_binary '\0\0\0\0\0\0\0xcAaP�V��R�!�\�Q@',3),(69,'Ducimus ut rerum qui officiis fugiat. Similique rerum beatae velit repudiandae. Totam praesentium rerum corporis eos. Dolores tempora repudiandae quas autem mag',_binary '\0\0\0\0\0\0\0�\\p��i\�^`V�U@',4),(70,'Possimus perferendis numquam omnis veniam tempore itaque quis. Quisquam aspernatur et est est facilis. Earum quod et voluptatem maxime facilis voluptas id dolor',_binary '\0\0\0\0\0\0\0k�)\0\�:Y@M\�T\�#�I�',5),(71,'Quia est aspernatur sed molestiae inventore ad deserunt. Eaque enim occaecati qui provident rerum. Sint voluptates sequi id debitis.',_binary '\0\0\0\0\0\0\0b�k_��b@o�\�=\�>@',1),(72,'Voluptatem pariatur ipsa quia sequi impedit. Natus nulla fugit et ipsam velit quod asperiores. Animi aut id molestiae molestiae maxime nesciunt excepturi in. Re',_binary '\0\0\0\0\0\0\0O@a\�I���3ڪ�<@',2),(73,'Laborum in voluptatibus dolores eos id possimus temporibus. Aspernatur accusamus voluptatem eius quam. Est nostrum provident sit omnis voluptas enim amet quod. ',_binary '\0\0\0\0\0\0\0��?B�`�\�[u�\�D�',3),(74,'Et et libero et qui. Suscipit aspernatur aliquid saepe velit pariatur quidem sed sit. Laudantium aut labore fuga. Repudiandae inventore possimus expedita velit ',_binary '\0\0\0\0\0\0\0�\�h\0o�P��9\�ؗ�5@',4),(75,'Ut rerum est neque aliquam adipisci officia. Et non nostrum est qui et tempore omnis. Et provident consectetur voluptatem voluptas eos. Pariatur cumque voluptat',_binary '\0\0\0\0\0\0\0B\�\�\�FD@\r�\�\�7\"��',5),(76,'Repudiandae explicabo perspiciatis quam illum ipsam est minima. Nihil autem temporibus soluta veniam vero. Dignissimos tenetur dolorum ipsam sint possimus est c',_binary '\0\0\0\0\0\0\0&\�`6�V�\rQ�?\�@@',1),(77,'Explicabo odio modi sunt consectetur praesentium id. Sed sequi et non molestiae harum minima at quia. Necessitatibus rerum ratione animi quo vitae quo quis.',_binary '\0\0\0\0\0\0\0ͯ\�\0�S�YLl>�!S�',2),(78,'Velit molestiae eos veritatis. Libero nam numquam esse praesentium. Ducimus et in repellat nulla. Inventore suscipit porro officia deserunt aut molestias dolore',_binary '\0\0\0\0\0\0\0]\�\�7��?�\�\0�\�Q�',3),(79,'Sed laborum optio repellendus soluta a. Dolores corrupti dolor et voluptas. Dicta ipsam est quo officiis rem nostrum voluptas.',_binary '\0\0\0\0\0\0\0\0Ǟ=\nQ�b��\�L�Q�',4),(80,'Temporibus quia velit cum voluptas facilis quod. Delectus ratione aliquid ullam id. Et tempora aut optio aut. Sint qui quis voluptate temporibus rerum.',_binary '\0\0\0\0\0\0\0M��+`@#���\\I�',5),(81,'Omnis velit deleniti ea voluptatem dolore quo. Accusamus sit expedita et eos. Eius velit cum quo asperiores deleniti molestiae a iste.',_binary '\0\0\0\0\0\0\0��^��b�!#�\�~A@',1),(82,'Dolore est quis odit animi. Consequatur consequatur et unde aliquid ut. Quis eos voluptas ut incidunt fugit. Sit soluta ut nisi nihil maiores omnis.',_binary '\0\0\0\0\0\0\0�=��b���K\�,\�',2);
/*!40000 ALTER TABLE `deal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal_photos`
--

DROP TABLE IF EXISTS `deal_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `deal_photos` (
  `deals_id` int NOT NULL,
  `photos_id` int NOT NULL,
  `is_main` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`deals_id`,`photos_id`),
  KEY `fk_deal_photos_deals1_idx` (`deals_id`),
  KEY `fk_deal_photos_photos1_idx` (`photos_id`),
  CONSTRAINT `fk_deal_photos_deals1` FOREIGN KEY (`deals_id`) REFERENCES `deals` (`id`),
  CONSTRAINT `fk_deal_photos_photos1` FOREIGN KEY (`photos_id`) REFERENCES `photos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_photos`
--

LOCK TABLES `deal_photos` WRITE;
/*!40000 ALTER TABLE `deal_photos` DISABLE KEYS */;
INSERT INTO `deal_photos` VALUES (1,1,_binary '\0'),(1,83,_binary ''),(1,165,_binary '\0'),(2,2,_binary '\0'),(2,84,_binary ''),(2,166,_binary '\0'),(3,3,_binary '\0'),(3,85,_binary ''),(3,167,_binary '\0'),(4,4,_binary '\0'),(4,86,_binary ''),(4,168,_binary '\0'),(5,5,_binary '\0'),(5,87,_binary ''),(5,169,_binary '\0'),(6,6,_binary ''),(6,88,_binary '\0'),(6,170,_binary '\0'),(7,7,_binary ''),(7,89,_binary '\0'),(8,8,_binary '\0'),(8,90,_binary ''),(9,9,_binary ''),(9,91,_binary '\0'),(10,10,_binary ''),(10,92,_binary '\0'),(11,11,_binary ''),(11,93,_binary '\0'),(12,12,_binary '\0'),(12,94,_binary ''),(13,13,_binary ''),(13,14,_binary '\0'),(13,95,_binary '\0'),(13,97,_binary '\0'),(14,96,_binary '\0'),(15,15,_binary '\0'),(16,16,_binary '\0'),(16,98,_binary ''),(17,17,_binary ''),(17,99,_binary '\0'),(18,18,_binary ''),(18,100,_binary '\0'),(19,19,_binary '\0'),(19,101,_binary ''),(20,20,_binary '\0'),(20,102,_binary ''),(21,21,_binary ''),(21,103,_binary '\0'),(22,22,_binary ''),(22,104,_binary '\0'),(23,23,_binary '\0'),(23,105,_binary ''),(24,24,_binary ''),(24,106,_binary '\0'),(25,25,_binary ''),(25,107,_binary '\0'),(26,26,_binary ''),(26,108,_binary '\0'),(27,27,_binary ''),(27,109,_binary '\0'),(28,28,_binary ''),(28,110,_binary '\0'),(29,29,_binary '\0'),(29,111,_binary ''),(30,30,_binary ''),(30,112,_binary '\0'),(31,31,_binary ''),(31,113,_binary '\0'),(32,32,_binary '\0'),(32,114,_binary ''),(33,33,_binary ''),(33,115,_binary '\0'),(34,34,_binary ''),(34,116,_binary '\0'),(35,35,_binary ''),(35,117,_binary '\0'),(36,36,_binary ''),(36,118,_binary '\0'),(37,37,_binary ''),(37,119,_binary '\0'),(38,38,_binary ''),(38,120,_binary '\0'),(39,39,_binary '\0'),(39,121,_binary ''),(40,40,_binary ''),(40,122,_binary '\0'),(41,41,_binary ''),(41,123,_binary '\0'),(42,42,_binary ''),(42,124,_binary '\0'),(43,43,_binary ''),(43,125,_binary '\0'),(44,44,_binary ''),(44,126,_binary '\0'),(45,45,_binary ''),(45,127,_binary '\0'),(46,46,_binary ''),(46,128,_binary '\0'),(47,47,_binary ''),(47,129,_binary '\0'),(48,48,_binary ''),(48,130,_binary '\0'),(49,49,_binary ''),(49,131,_binary '\0'),(50,50,_binary ''),(50,132,_binary '\0'),(51,51,_binary ''),(51,133,_binary '\0'),(52,52,_binary '\0'),(52,134,_binary ''),(53,53,_binary ''),(53,135,_binary '\0'),(54,54,_binary ''),(54,136,_binary '\0'),(55,55,_binary ''),(55,137,_binary '\0'),(56,56,_binary ''),(56,138,_binary '\0'),(57,57,_binary ''),(57,139,_binary '\0'),(58,58,_binary ''),(58,140,_binary '\0'),(59,59,_binary ''),(59,141,_binary '\0'),(60,60,_binary ''),(60,142,_binary '\0'),(61,61,_binary ''),(61,143,_binary '\0'),(62,62,_binary ''),(62,144,_binary '\0'),(63,63,_binary ''),(63,145,_binary '\0'),(64,64,_binary ''),(64,146,_binary '\0'),(65,65,_binary ''),(65,147,_binary '\0'),(66,66,_binary '\0'),(66,148,_binary ''),(67,67,_binary ''),(67,149,_binary '\0'),(68,68,_binary ''),(68,150,_binary '\0'),(69,69,_binary ''),(69,151,_binary '\0'),(70,70,_binary ''),(70,152,_binary '\0'),(71,71,_binary ''),(71,153,_binary '\0'),(72,72,_binary ''),(72,154,_binary '\0'),(73,73,_binary ''),(73,155,_binary '\0'),(74,74,_binary ''),(74,156,_binary '\0'),(75,75,_binary ''),(75,157,_binary '\0'),(76,76,_binary ''),(76,158,_binary '\0'),(77,77,_binary ''),(77,159,_binary '\0'),(78,78,_binary ''),(78,160,_binary '\0'),(79,79,_binary '\0'),(79,161,_binary ''),(80,80,_binary ''),(80,162,_binary '\0'),(81,81,_binary ''),(81,163,_binary '\0'),(82,82,_binary ''),(82,164,_binary '\0');
/*!40000 ALTER TABLE `deal_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deals`
--

DROP TABLE IF EXISTS `deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `deals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` tinyint unsigned NOT NULL COMMENT '0 - обычный, \n1 - завершен досрочно, \n2 - отменен',
  `seller_id` int NOT NULL,
  `goods_id` int NOT NULL,
  `title` varchar(80) NOT NULL,
  `deal_start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deal_end` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price_start` decimal(10,2) NOT NULL,
  `price_early` decimal(10,2) DEFAULT NULL,
  `price_current` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_deals_users_idx` (`seller_id`),
  KEY `fk_deals_goods1_idx` (`goods_id`),
  CONSTRAINT `fk_deals_goods1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `fk_deals_users` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deals`
--

LOCK TABLES `deals` WRITE;
/*!40000 ALTER TABLE `deals` DISABLE KEYS */;
INSERT INTO `deals` VALUES (1,2,1,1,'maiores','1999-02-17 04:24:27','2020-02-17 04:24:27',1955.00,NULL,1955.00),(2,2,2,2,'ipsa','2003-11-16 22:44:00','2020-11-16 22:44:00',3162.00,88663.00,3162.00),(3,0,3,3,'qui','2020-07-05 06:32:23','2020-07-05 06:32:23',2291.00,NULL,2291.00),(4,1,4,4,'neque','2015-12-18 05:33:53','2022-12-18 05:33:53',558.00,NULL,558.00),(5,2,5,5,'earum','1980-09-14 10:09:54','2020-09-14 10:09:54',891.00,NULL,891.00),(6,2,6,6,'corrupti','2005-06-22 20:58:36','2020-06-22 20:58:36',3861.00,215506.00,3861.00),(7,1,7,7,'itaque','1987-07-10 12:09:05','2020-07-10 12:09:05',178.00,11399.00,178.00),(8,0,8,8,'recusandae','1995-02-28 09:46:32','2020-02-28 09:46:32',1565.00,NULL,1565.00),(9,2,9,9,'sunt','2001-01-03 19:56:50','2020-01-03 19:56:50',682.00,150808.00,682.00),(10,2,10,10,'ut','1983-07-08 18:43:07','2020-07-08 18:43:07',1760.00,NULL,1760.00),(11,1,11,11,'omnis','1971-10-31 08:49:43','2020-10-31 08:49:43',4253.00,NULL,4253.00),(12,1,12,12,'eveniet','1988-02-29 16:11:10','2020-02-29 16:11:10',4322.00,35625.00,4322.00),(13,0,13,13,'est','1996-02-01 06:09:21','2020-02-01 06:09:21',2051.00,NULL,2251.00),(14,1,14,14,'minus','1971-09-07 04:29:20','2020-09-07 04:29:20',5000.00,NULL,5000.00),(15,0,15,15,'fugit','1998-02-08 02:11:58','2020-02-08 02:11:58',3003.00,NULL,3003.00),(16,1,16,16,'facilis','1994-05-17 08:56:49','2020-05-17 08:56:49',1655.00,106234.00,1655.00),(17,1,17,17,'dignissimos','1983-10-05 20:39:44','2020-10-05 20:39:44',3246.00,62707.00,3246.00),(18,2,18,18,'velit','1988-10-24 14:18:21','2020-10-24 14:18:21',4193.00,86712.00,4193.00),(19,0,19,19,'atque','1988-10-28 13:28:56','2020-10-28 13:28:56',154.00,NULL,154.00),(20,0,20,20,'enim','1992-12-18 04:49:19','2022-12-18 04:49:19',1022.00,NULL,1022.00),(21,0,21,21,'rerum','1985-07-20 14:33:57','2020-07-20 14:33:57',2731.00,NULL,2731.00),(22,2,22,22,'delectus','2008-07-20 00:41:05','2020-07-20 00:41:05',3924.00,196990.00,3924.00),(23,2,23,23,'voluptas','1972-11-03 06:17:14','2020-11-03 06:17:14',2145.00,NULL,2145.00),(24,2,24,24,'repudiandae','1972-06-06 17:58:05','2020-06-06 17:58:05',4537.00,NULL,4537.00),(25,0,25,25,'alias','2009-08-01 17:13:21','2020-08-01 17:13:21',1447.00,60640.00,1447.00),(26,2,26,26,'et','1992-06-15 03:17:32','2020-06-15 03:17:32',3935.00,NULL,3935.00),(27,1,27,27,'eligendi','1985-03-13 16:55:28','2020-03-13 16:55:28',1403.00,172855.00,1403.00),(28,0,28,28,'iste','1990-06-20 16:26:14','2020-06-20 16:26:14',1673.00,NULL,1673.00),(29,2,29,29,'blanditiis','2005-01-09 14:54:48','2020-01-09 14:54:48',4255.00,133161.00,4255.00),(30,1,30,30,'nisi','1977-12-14 14:34:30','2022-12-14 14:34:30',1730.00,NULL,1730.00),(31,0,31,31,'voluptatem','2008-12-18 06:14:39','2022-12-18 06:14:39',713.00,195071.00,713.00),(32,1,32,32,'officia','1996-12-21 09:12:09','2022-12-21 09:12:09',2323.00,NULL,2323.00),(33,0,33,33,'illo','2015-08-30 17:22:19','2020-08-30 17:22:19',158.00,NULL,158.00),(34,0,34,34,'quasi','1977-09-17 22:16:01','2020-09-17 22:16:01',1147.00,NULL,1147.00),(35,2,35,35,'amet','2009-07-03 05:52:29','2020-07-03 05:52:29',1696.00,7926.00,1696.00),(36,1,36,36,'consequatur','2019-08-04 01:13:20','2020-08-04 01:13:20',3948.00,NULL,3948.00),(37,0,37,37,'quibusdam','2011-05-02 13:05:42','2020-05-02 13:05:42',732.00,NULL,732.00),(38,0,38,38,'suscipit','2019-11-17 10:18:22','2020-11-17 10:18:22',2500.00,NULL,2500.00),(39,2,39,39,'sequi','1991-12-07 15:54:15','2020-12-07 15:54:15',4897.00,NULL,4897.00),(40,1,40,40,'excepturi','1995-11-02 13:43:13','2020-11-02 13:43:13',1759.00,152338.00,1759.00),(41,2,41,41,'odio','1991-07-07 10:33:37','2020-07-07 10:33:37',3984.00,7256.00,3984.00),(42,0,42,42,'error','1978-06-03 09:09:40','2020-06-03 09:09:40',874.00,NULL,874.00),(43,2,43,43,'ipsam','2004-05-22 17:11:32','2020-05-22 17:11:32',3744.00,76387.00,3744.00),(44,0,44,44,'dolorem','1976-07-11 12:18:00','2020-07-11 12:18:00',909.00,NULL,909.00),(45,1,45,45,'laboriosam','1989-04-06 09:03:26','2020-04-06 09:03:26',871.00,NULL,871.00),(46,0,46,46,'sapiente','1977-09-01 02:00:26','2020-09-01 02:00:26',3699.00,175313.00,3699.00),(47,2,47,47,'incidunt','1989-02-12 03:56:57','2020-02-12 03:56:57',841.00,NULL,841.00),(48,0,48,48,'cupiditate','1987-05-03 03:12:55','2020-05-03 03:12:55',2903.00,103807.00,2903.00),(49,2,49,49,'maxime','1999-04-07 20:18:37','2020-04-07 20:18:37',4402.00,NULL,4402.00),(50,1,50,50,'aut','2002-05-05 01:44:37','2020-05-05 01:44:37',903.00,NULL,903.00),(51,1,51,51,'sed','1989-04-30 12:23:59','2020-04-30 12:23:59',95.00,NULL,95.00),(52,1,52,52,'nemo','1980-11-16 12:13:36','2020-11-16 12:13:36',4062.00,38172.00,4062.00),(53,0,53,53,'odit','1970-08-25 04:09:20','2020-08-25 04:09:20',689.00,NULL,689.00),(54,1,54,54,'vitae','1972-06-08 16:19:17','2020-06-08 16:19:17',1458.00,134096.00,1458.00),(55,0,55,55,'non','1984-09-28 15:39:05','2020-09-28 15:39:05',1033.00,53713.00,1033.00),(56,2,56,56,'eius','2003-04-25 23:45:09','2020-04-25 23:45:09',4142.00,NULL,4142.00),(57,0,57,57,'pariatur','2005-02-22 19:28:07','2020-02-22 19:28:07',4277.00,NULL,4277.00),(58,1,58,58,'aspernatur','1976-06-24 12:13:07','2020-06-24 12:13:07',3291.00,NULL,3291.00),(59,0,59,59,'ea','1990-04-25 01:35:36','2020-04-25 01:35:36',3598.00,154818.00,3598.00),(60,1,60,60,'vel','1984-06-21 15:22:48','2020-06-21 15:22:48',1155.00,NULL,1155.00),(61,1,61,61,'doloremque','2009-05-31 13:16:59','2020-05-31 13:16:59',2898.00,107795.00,2898.00),(62,1,62,62,'dolorum','1972-03-29 12:41:58','2020-03-29 12:41:58',1043.00,NULL,1043.00),(63,1,63,63,'corporis','2007-09-01 06:18:33','2020-09-01 06:18:33',3194.00,NULL,3194.00),(64,0,64,64,'tempore','2011-05-17 01:25:51','2020-05-17 01:25:51',4493.00,29876.00,4493.00),(65,0,65,65,'sint','1994-12-01 14:22:26','2020-12-01 14:22:26',1835.00,NULL,1835.00),(66,2,66,66,'saepe','1989-02-26 16:50:47','2020-02-26 16:50:47',2145.00,108038.00,2145.00),(67,0,67,67,'ipsum','1978-08-05 19:09:58','2020-08-05 19:09:58',3318.00,NULL,3318.00),(68,1,68,68,'quia','1977-10-28 07:20:04','2020-10-28 07:20:04',1937.00,NULL,1937.00),(69,2,69,69,'tempora','1994-09-04 08:06:55','2020-09-04 08:06:55',2729.00,32687.00,2729.00),(70,0,70,70,'in','1979-08-29 00:15:28','2020-08-29 00:15:28',861.00,NULL,861.00),(71,0,71,71,'molestias','1973-11-22 19:13:05','2020-11-22 19:13:05',3449.00,46203.00,3449.00),(72,0,72,72,'distinctio','1977-01-08 20:57:19','2020-01-08 20:57:19',777.00,NULL,777.00),(73,0,73,73,'deserunt','2008-03-19 01:00:19','2020-03-19 01:00:19',661.00,NULL,661.00),(74,0,74,74,'quas','2002-01-14 03:36:09','2020-01-14 03:36:09',109.00,144887.00,109.00),(75,2,75,75,'numquam','1974-08-13 20:40:05','2020-08-13 20:40:05',801.00,NULL,801.00),(76,0,76,76,'asperiores','2002-04-17 05:30:12','2020-04-17 05:30:12',1962.00,NULL,1962.00),(77,0,77,77,'quis','2001-05-18 01:32:32','2020-05-18 01:32:32',4815.00,NULL,4815.00),(78,2,78,78,'inventore','1997-06-03 13:21:04','2020-06-03 13:21:04',1731.00,183415.00,1731.00),(79,0,79,79,'culpa','1994-09-25 03:28:20','2020-09-25 03:28:20',1475.00,NULL,1475.00),(80,1,80,80,'voluptates','1987-09-06 06:48:50','2020-09-06 06:48:50',1665.00,NULL,1665.00),(81,0,81,81,'magnam','1970-05-10 16:31:53','2020-05-10 16:31:53',2768.00,170447.00,2768.00),(82,0,82,82,'quidem','2020-10-28 22:05:36','2020-10-28 22:05:36',540.00,NULL,540.00);
/*!40000 ALTER TABLE `deals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `category_id` int NOT NULL COMMENT 'Товарная категория',
  PRIMARY KEY (`id`),
  KEY `fk_goods_categories1_idx` (`category_id`),
  KEY `brand_model` (`brand`,`model`),
  CONSTRAINT `fk_goods_categories1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'repellat','soluta',1),(2,'delectus','dolore',2),(3,'error','qui',3),(4,'veritatis','et',4),(5,'nostrum','sunt',5),(6,'velit','odit',6),(7,'cum','ex',7),(8,'placeat','ut',8),(9,'sit','ullam',9),(10,'ducimus','delectus',10),(11,'id','voluptates',11),(12,'rerum','eligendi',12),(13,'corporis','assumenda',13),(14,'qui','quidem',1),(15,'dignissimos','qui',2),(16,'ipsum','officia',3),(17,'quia','accusamus',4),(18,'corrupti','reprehenderit',5),(19,'consequatur','velit',6),(20,'est','quia',13),(21,'veniam','dolorum',8),(22,'est','tempora',9),(23,'corrupti','quae',10),(24,'maiores','fugiat',11),(25,'ea','omnis',12),(26,'omnis','unde',13),(27,'veritatis','asperiores',1),(28,'nobis','expedita',2),(29,'esse','qui',3),(30,'hic','dignissimos',13),(31,'praesentium','non',5),(32,'voluptates','eveniet',13),(33,'enim','nostrum',7),(34,'repudiandae','sint',8),(35,'sit','quos',9),(36,'earum','voluptas',10),(37,'et','vel',11),(38,'reiciendis','ut',12),(39,'maiores','ut',13),(40,'esse','officiis',1),(41,'aut','eaque',2),(42,'ipsa','sed',3),(43,'inventore','eos',4),(44,'et','voluptatibus',5),(45,'nam','non',6),(46,'cum','labore',7),(47,'earum','saepe',8),(48,'enim','sunt',9),(49,'dicta','fugiat',10),(50,'porro','nobis',11),(51,'facere','est',12),(52,'sed','qui',13),(53,'non','earum',1),(54,'est','et',2),(55,'dolorem','consequatur',3),(56,'enim','hic',4),(57,'optio','consequatur',5),(58,'earum','neque',6),(59,'similique','commodi',7),(60,'repudiandae','dolor',8),(61,'id','repellat',9),(62,'aut','est',10),(63,'rerum','sed',11),(64,'voluptatum','expedita',12),(65,'excepturi','pariatur',13),(66,'saepe','eveniet',1),(67,'omnis','nemo',2),(68,'nemo','tempora',3),(69,'voluptatem','error',4),(70,'rerum','veniam',5),(71,'totam','id',6),(72,'magni','voluptatem',7),(73,'unde','ex',8),(74,'modi','ut',9),(75,'in','facilis',10),(76,'nihil','cupiditate',11),(77,'beatae','dolore',12),(78,'est','nesciunt',13),(79,'qui','perspiciatis',1),(80,'nulla','sit',2),(81,'ducimus','quas',3),(82,'qui','molestiae',4);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_properties`
--

DROP TABLE IF EXISTS `goods_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods_properties` (
  `goods_id` int NOT NULL,
  `properties_id` int NOT NULL,
  `measure_id` int NOT NULL,
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`goods_id`,`properties_id`,`measure_id`),
  UNIQUE KEY `fk_prop_uniq` (`goods_id`,`properties_id`),
  KEY `fk_goods_properties_goods1_idx` (`goods_id`),
  KEY `fk_goods_properties_properties1_idx` (`properties_id`),
  KEY `fk_goods_properties_measures1_idx` (`measure_id`),
  CONSTRAINT `fk_goods_properties_goods1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `fk_goods_properties_measures1` FOREIGN KEY (`measure_id`) REFERENCES `measures` (`id`),
  CONSTRAINT `fk_goods_properties_properties1` FOREIGN KEY (`properties_id`) REFERENCES `properties` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_properties`
--

LOCK TABLES `goods_properties` WRITE;
/*!40000 ALTER TABLE `goods_properties` DISABLE KEYS */;
INSERT INTO `goods_properties` VALUES (2,2,4,'43'),(2,6,2,'23'),(3,3,6,'33'),(3,7,4,'18'),(4,4,6,'7'),(4,8,4,'72'),(5,5,1,'68'),(5,9,5,'29'),(6,6,2,'63'),(6,10,1,'67'),(7,7,4,'41'),(8,8,4,'37'),(8,12,2,'47'),(9,9,5,'69'),(10,1,3,'64'),(10,10,1,'53'),(11,2,4,'20'),(12,3,6,'20'),(12,12,2,'20'),(13,4,6,'9'),(13,5,1,'76'),(13,13,2,'12'),(14,1,3,'73'),(14,5,1,'26'),(15,2,4,'14'),(15,6,2,'52'),(16,3,6,'7'),(16,7,4,'2'),(17,4,6,'11'),(17,8,4,'17'),(18,5,1,'49'),(18,9,5,'24'),(19,6,2,'18'),(20,7,4,'74'),(21,8,4,'38'),(22,9,5,'60'),(23,10,1,'3'),(25,12,2,'30'),(27,1,3,'65'),(28,2,4,'65'),(29,3,6,'53'),(30,4,6,'23'),(31,5,1,'63'),(32,6,2,'2'),(33,7,4,'14'),(34,8,4,'41'),(35,9,5,'25'),(36,10,1,'47'),(38,12,2,'57'),(40,1,3,'38'),(41,2,4,'25'),(42,3,6,'3'),(43,4,6,'59'),(44,5,1,'4'),(45,6,2,'50'),(46,7,4,'4'),(47,8,4,'29'),(48,9,5,'28'),(49,10,1,'67'),(51,12,2,'71'),(53,1,3,'31'),(54,2,4,'41'),(55,3,6,'64'),(56,4,6,'35'),(57,5,1,'38'),(58,6,2,'32'),(59,7,4,'32'),(60,8,4,'5'),(61,9,5,'25'),(62,10,1,'34'),(64,12,2,'16'),(66,1,3,'12'),(67,2,4,'70'),(68,3,6,'29'),(69,4,6,'24'),(70,5,1,'22'),(71,6,2,'53'),(72,7,4,'70'),(73,8,4,'46'),(74,9,5,'69'),(75,10,1,'6'),(77,12,2,'76'),(79,1,3,'42'),(80,2,4,'12'),(81,3,6,'52'),(82,4,6,'12');
/*!40000 ALTER TABLE `goods_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measures`
--

DROP TABLE IF EXISTS `measures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `measures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measures`
--

LOCK TABLES `measures` WRITE;
/*!40000 ALTER TABLE `measures` DISABLE KEYS */;
INSERT INTO `measures` VALUES (1,'centimeters'),(2,'kilowatt'),(3,'EU'),(4,'US'),(5,'square meter'),(6,'liters');
/*!40000 ALTER TABLE `measures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `photos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,NULL),(2,NULL),(3,NULL),(4,NULL),(5,NULL),(6,NULL),(7,NULL),(8,NULL),(9,NULL),(10,NULL),(11,NULL),(12,NULL),(13,NULL),(14,NULL),(15,NULL),(16,NULL),(17,NULL),(18,NULL),(19,NULL),(20,NULL),(21,NULL),(22,NULL),(23,NULL),(24,NULL),(25,NULL),(26,NULL),(27,NULL),(28,NULL),(29,NULL),(30,NULL),(31,NULL),(32,NULL),(33,NULL),(34,NULL),(35,NULL),(36,NULL),(37,NULL),(38,NULL),(39,NULL),(40,NULL),(41,NULL),(42,NULL),(43,NULL),(44,NULL),(45,NULL),(46,NULL),(47,NULL),(48,NULL),(49,NULL),(50,NULL),(51,NULL),(52,NULL),(53,NULL),(54,NULL),(55,NULL),(56,NULL),(57,NULL),(58,NULL),(59,NULL),(60,NULL),(61,NULL),(62,NULL),(63,NULL),(64,NULL),(65,NULL),(66,NULL),(67,NULL),(68,NULL),(69,NULL),(70,NULL),(71,NULL),(72,NULL),(73,NULL),(74,NULL),(75,NULL),(76,NULL),(77,NULL),(78,NULL),(79,NULL),(80,NULL),(81,NULL),(82,NULL),(83,NULL),(84,NULL),(85,NULL),(86,NULL),(87,NULL),(88,NULL),(89,NULL),(90,NULL),(91,NULL),(92,NULL),(93,NULL),(94,NULL),(95,NULL),(96,NULL),(97,NULL),(98,NULL),(99,NULL),(100,NULL),(101,NULL),(102,NULL),(103,NULL),(104,NULL),(105,NULL),(106,NULL),(107,NULL),(108,NULL),(109,NULL),(110,NULL),(111,NULL),(112,NULL),(113,NULL),(114,NULL),(115,NULL),(116,NULL),(117,NULL),(118,NULL),(119,NULL),(120,NULL),(121,NULL),(122,NULL),(123,NULL),(124,NULL),(125,NULL),(126,NULL),(127,NULL),(128,NULL),(129,NULL),(130,NULL),(131,NULL),(132,NULL),(133,NULL),(134,NULL),(135,NULL),(136,NULL),(137,NULL),(138,NULL),(139,NULL),(140,NULL),(141,NULL),(142,NULL),(143,NULL),(144,NULL),(145,NULL),(146,NULL),(147,NULL),(148,NULL),(149,NULL),(150,NULL),(151,NULL),(152,NULL),(153,NULL),(154,NULL),(155,NULL),(156,NULL),(157,NULL),(158,NULL),(159,NULL),(160,NULL),(161,NULL),(162,NULL),(163,NULL),(164,NULL),(165,NULL),(166,NULL),(167,NULL),(168,NULL),(169,NULL),(170,NULL),(171,NULL),(172,NULL),(173,NULL),(174,NULL),(175,NULL),(176,NULL),(177,NULL),(178,NULL),(179,NULL),(180,NULL),(181,NULL),(182,NULL),(183,NULL),(184,NULL),(185,NULL),(186,NULL),(187,NULL),(188,NULL),(189,NULL),(190,NULL),(191,NULL),(192,NULL),(193,NULL),(194,NULL),(195,NULL),(196,NULL),(197,NULL),(198,NULL),(199,NULL),(200,NULL),(201,NULL),(202,NULL),(203,NULL),(204,NULL),(205,NULL),(206,NULL),(207,NULL),(208,NULL),(209,NULL),(210,NULL),(211,NULL),(212,NULL),(213,NULL),(214,NULL),(215,NULL),(216,NULL),(217,NULL),(218,NULL),(219,NULL),(220,NULL),(221,NULL),(222,NULL),(223,NULL),(224,NULL),(225,NULL),(226,NULL),(227,NULL),(228,NULL),(229,NULL),(230,NULL),(231,NULL),(232,NULL),(233,NULL),(234,NULL),(235,NULL),(236,NULL),(237,NULL),(238,NULL),(239,NULL),(240,NULL),(241,NULL),(242,NULL),(243,NULL),(244,NULL),(245,NULL),(246,NULL),(247,NULL),(248,NULL),(249,NULL),(250,NULL);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `profiles` (
  `user_id` int NOT NULL,
  `caption` varchar(160) DEFAULT NULL COMMENT 'Описание профиля',
  `rating` float(4,3) DEFAULT NULL COMMENT 'Текущий рейтинг пользователя',
  `default_location` point DEFAULT NULL,
  `default_delivery_terms` varchar(160) DEFAULT NULL COMMENT 'Описание условий передачи товара по умолчанию',
  `photo_id` int DEFAULT NULL COMMENT 'Аватар',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `photo_id_UNIQUE` (`photo_id`),
  KEY `fk_profiles_users1_idx` (`user_id`),
  KEY `fk_profiles_photos1_idx` (`photo_id`),
  CONSTRAINT `fk_profiles_photos1` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`),
  CONSTRAINT `fk_profiles_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'Quam ex a qui mollitia rerum.',2.264,_binary '\0\0\0\0\0\0\0�!y�L@\�\�]�U@','At hic et culpa quo aut commodi. Perspiciatis qui debitis atque qui autem perspiciatis sed consequuntur.',1),(2,'In dolores quia vel et aut quia.',3.515,_binary '\0\0\0\0\0\0\0\�\0��F\�W@\�9\�}\�wG@','Dolor quidem eligendi natus qui quo sed dignissimos. Enim explicabo dolor repellat inventore consectetur quidem. Libero odit distinctio alias quia asperiores re',2),(3,'Aliquam nobis eos omnis ex.',2.527,_binary '\0\0\0\0\0\0\0�an�b@���O�6@','Fugit asperiores saepe inventore quasi at sint nisi. Ut et omnis sint sunt adipisci non. Animi iste quam sit id saepe.',3),(4,'Repudiandae ut corrupti consequatur consequatur tempora soluta.',3.711,_binary '\0\0\0\0\0\0\0\�0_^�W@qǛ�QI@','Rerum cumque sed error et. Illo itaque ex ratione hic velit. Aut hic eum voluptatem unde adipisci eum. Vel cumque quisquam enim iste praesentium dignissimos.',4),(5,'Necessitatibus sint nisi provident sed ea.',3.492,_binary '\0\0\0\0\0\0\0\0Q�Y@} y\�P\�8�','Culpa iure odit aut ea ut. Alias ipsa amet accusamus quis similique quia. Asperiores et at unde enim quia reprehenderit adipisci. Itaque assumenda vel consequat',5),(6,'In magnam quos velit et nostrum.',3.149,_binary '\0\0\0\0\0\0\02t\�(c@���\�(d8@','Vero laboriosam corporis illo. Voluptatum autem iste nihil.',6),(7,'Vel laborum soluta perferendis quidem.',2.988,_binary '\0\0\0\0\0\0\0K\�H��:#@��L�DaU�','Iure eos tempore repudiandae saepe. Qui vitae assumenda et earum corporis quas. Consequuntur qui mollitia quas sed.',7),(8,'Aspernatur nihil ipsum est cum.',2.497,_binary '\0\0\0\0\0\0\0��!��V@���\�\�\�R@','Corrupti libero esse itaque dolores consectetur et. Occaecati ut debitis quasi voluptates ea nisi temporibus. Repudiandae soluta cupiditate veniam libero. Nulla',8),(9,'Aut enim quibusdam sequi neque aut et optio.',4.555,_binary '\0\0\0\0\0\0\0\��\�\�VU@:\\�=\�mD�','Inventore facilis eos atque saepe aliquid autem consequatur. Quas velit odit dicta accusantium voluptate. Veniam aliquid qui possimus dolorum expedita magnam re',9),(10,'Reprehenderit dolorum et sit voluptas quia nobis.',3.135,_binary '\0\0\0\0\0\0\0b֋��qR@[\�{c\�F@','Voluptas iure nemo ut eum. Consequatur ut beatae magni possimus. Ea qui atque nihil ut natus adipisci. Qui nostrum fugiat reiciendis mollitia minus alias.',10),(11,'Dolores esse eius et eos et aliquam.',3.123,_binary '\0\0\0\0\0\0\0(�\��H[@\�p>?}S@','Enim aliquam nesciunt dolores in laboriosam dolores impedit. Ipsa suscipit deleniti at reprehenderit. Quo id aut ratione culpa recusandae odit.',11),(12,'Ipsum dolorem eius ipsum provident cupiditate et.',4.725,_binary '\0\0\0\0\0\0\06Vb��\rY@E\�D��\�M@','Veritatis et in labore unde eum porro quia. Ratione nihil asperiores consectetur dolor odio. Reprehenderit assumenda architecto est repellat. Dolor consequatur ',12),(13,'Alias officiis nostrum ipsum.',2.167,_binary '\0\0\0\0\0\0\0/M\�tc`@稣\�n7@','Magnam et quasi quia ut sit iste. Nostrum excepturi sint facilis laborum neque dolorem. Quod quis dolor nam non voluptatem. Sed alias ea consequatur dolores est',13),(14,'Dignissimos rerum et tempore non.',2.666,_binary '\0\0\0\0\0\0\0�,D��F@4�\�\�5@','In eligendi tempore labore. Possimus quia iure a qui dolore. Et reiciendis ut tempore aut. Ducimus id minus qui deserunt tenetur.',14),(15,'Reiciendis illum unde accusamus hic ipsa.',3.296,_binary '\0\0\0\0\0\0\0?\���G@�\�\�O.�','Asperiores non voluptatem dolor sed officia. Minima sapiente at mollitia officia reiciendis. Optio ab voluptas dolore alias asperiores voluptatem facilis. Sequi',15),(16,'Animi et quia enim qui.',4.398,_binary '\0\0\0\0\0\0\0wf�\�\\\�K@4�\�<U@','Ut voluptatem rerum provident ea ut et cum. Cumque voluptatum asperiores quibusdam aut atque. Incidunt voluptate voluptas officiis et ut et.',16),(17,'Cupiditate amet et in ullam a.',4.341,_binary '\0\0\0\0\0\0\0�\"�\�\�\�c@\�|a2�S�','Sed et laborum autem incidunt iure officia. Consequatur similique et architecto et veritatis dolore aliquam vero. In libero voluptates impedit numquam non qui q',17),(18,'Officia earum qui quasi laborum magni autem illo.',4.851,_binary '\0\0\0\0\0\0\0\�v��\Z�[@��}�DD@','Quaerat eaque aut autem quo dolor. Recusandae aliquid et autem quis laborum rerum. Voluptatibus cumque autem repellat. Soluta quo consequatur rem similique.',18),(19,'Voluptas dolore et aut quibusdam rerum ut.',4.584,_binary '\0\0\0\0\0\0\0�\�=@��T@\�g@�\�E�','Ut unde deserunt delectus laborum. Vitae et velit dolore maxime sit.',19),(20,'Officia asperiores quasi explicabo sint veritatis est sint dignissimos.',4.641,_binary '\0\0\0\0\0\0\0_\�R#�\�@(}!\�o0�','Esse nihil culpa nihil aut iste. Nisi debitis dignissimos voluptatum et enim nesciunt dolorem. Consequatur consequatur dicta necessitatibus nobis ipsum possimus',20),(21,'Excepturi quos consequatur et sequi aut.',4.764,_binary '\0\0\0\0\0\0\0@\��\0\�Fb@\�m��F�','Consectetur neque non voluptate et excepturi laudantium. Voluptates sint voluptatibus excepturi sit sint a. Ut dolorem aut ullam voluptate ut.',21),(22,'Quia quaerat aliquid velit porro impedit qui eius non.',4.009,_binary '\0\0\0\0\0\0\0>=�e�]>@YL�Q�#�','Consequuntur voluptate quidem fugiat eos suscipit veniam. Ex quo rem officia nihil. Adipisci qui qui adipisci saepe aut eum libero. Neque consequatur officiis i',22),(23,'Provident ut voluptas aut nihil tempora voluptatem.',3.825,_binary '\0\0\0\0\0\0\0��\�_v\�`@�`���8@','Eum qui quasi sed temporibus. At doloremque assumenda qui recusandae ab delectus distinctio. Ipsam accusantium facere quidem pariatur sint.',23),(24,'Adipisci alias ipsam voluptas id et ipsum hic.',4.939,_binary '\0\0\0\0\0\0\0��@��S@`���J�','Blanditiis consectetur laborum accusamus velit. Placeat et nemo nesciunt ratione porro. Ut cumque neque debitis beatae ut nesciunt. Iste dignissimos maiores cup',24),(25,'Consequatur ipsa quae veritatis provident earum amet.',3.791,_binary '\0\0\0\0\0\0\0H¾��]@\r�\'�8?@','Consequatur sapiente et suscipit sunt aliquam. Animi maiores et aut reiciendis numquam non. Tempora rerum non qui voluptatem.',25),(26,'Rerum ratione iste facere dolores consequatur accusantium.',3.497,_binary '\0\0\0\0\0\0\0\Z����^@�5_%�U@','Illo nesciunt vitae eligendi. Nam tenetur ut eum pariatur cupiditate. Est id autem eaque quisquam sint saepe et laborum. Minima voluptatem officiis eum hic moll',26),(27,'Ea et quisquam rem est autem.',2.740,_binary '\0\0\0\0\0\0\0ϻ��0�?@����\\D�','Rerum id incidunt aut voluptatibus saepe dolores ducimus. Ipsa doloremque ut sed suscipit praesentium cumque. Ipsa voluptatem voluptas voluptatibus nihil perspi',27),(28,'Et tempora odio blanditiis velit velit autem.',3.978,_binary '\0\0\0\0\0\0\0J\�E��!@� #�\�SU�','Nisi eum sed velit ducimus exercitationem. Quasi dolores dolorem necessitatibus magni. Aut incidunt magni dolore autem minima repudiandae.',28),(29,'Laudantium laborum et id in expedita ipsa consectetur.',2.913,_binary '\0\0\0\0\0\0\0��b\�5^@�����.�','Laboriosam nisi dolores quisquam dolorem repudiandae. Accusantium qui minima non voluptatum debitis tempore. Vitae qui pariatur est voluptas fugit ut non.',29),(30,'Eligendi atque corporis dicta tenetur est sit.',4.067,_binary '\0\0\0\0\0\0\0*6\�uę.@*;��.HV@','Ut doloribus perferendis ducimus atque. Aut quam vel quae iusto. Sunt voluptates veritatis debitis iure cumque cumque ut.',30),(31,'Ea et itaque neque possimus.',3.566,_binary '\0\0\0\0\0\0\0\�£^@qqTn�f%@','Fugit eos consequatur omnis est consequatur. Reprehenderit voluptas nam libero. Adipisci qui asperiores temporibus doloremque maiores repellat.',31),(32,'Hic aliquid eius eos animi.',3.312,_binary '\0\0\0\0\0\0\0@�P�%�M@���Ft;@','Modi dolorum voluptatem minima sequi. Voluptates qui sint illo autem sapiente. Quo quia incidunt eos sit.',32),(33,'Veritatis ullam occaecati deserunt repellat facere quo.',4.613,_binary '\0\0\0\0\0\0\0j�\�kc@ep��:�G@','Beatae corporis eos ipsa fugit velit laboriosam. Et enim facere unde blanditiis. Sit ad dolorem vel dolore et molestiae enim eligendi. Dolore id aspernatur volu',33),(34,'Laborum nobis tempore rem voluptatem et.',2.620,_binary '\0\0\0\0\0\0\0TT�J�A@9�ߡ(`�','Ea saepe corporis vitae et iusto est molestias. Modi reprehenderit soluta voluptatibus et quos necessitatibus quia ut.',34),(35,'Magni earum eum dolore qui sint atque molestiae.',4.036,_binary '\0\0\0\0\0\0\0ū�m�7@tB\�KT@','Vel et assumenda ut. Nobis voluptas voluptatibus est fugiat sint aliquid. Et et ratione accusamus placeat aut. Officiis fuga porro iure quo ipsum.',35),(36,'Quaerat illum laudantium et in sed minus sint.',3.489,_binary '\0\0\0\0\0\0\0˅ʿ�`@�\�\�\�@','Nisi voluptatibus cum earum voluptas molestiae. Quia nulla sunt debitis impedit. Et et qui veritatis dolor sint et. Hic consequatur delectus harum tenetur totam',36),(37,'Quo deleniti quidem sequi ut.',2.807,_binary '\0\0\0\0\0\0\04h\�`�e@NF�aܡ>�','Aut magnam sed ad perspiciatis minima. Sunt ratione ipsum quas id nesciunt cum. Maiores est hic voluptatem enim facere rerum. Tempore ut officiis dolorum rem.',37),(38,'Aut voluptatem odit maiores est.',3.112,_binary '\0\0\0\0\0\0\0M1AǗ`@Ͼ� =TS@','Consectetur atque et quis sit eos dolorem. Officia voluptatem dolorem magnam libero consequatur sed corporis. Ea quaerat illum enim sed asperiores quis at. Ipsu',38),(39,'Aut delectus accusamus illo saepe in.',4.867,_binary '\0\0\0\0\0\0\0�\�p�\�b@/���ݍC�','Impedit labore blanditiis consequuntur voluptate voluptatem. Voluptatem quae officiis nisi perferendis quis dolore. Quibusdam temporibus ut non assumenda repudi',39),(40,'Temporibus minima blanditiis ut et nihil unde.',3.821,_binary '\0\0\0\0\0\0\0I+���]@\�3�ތB�','Dolorem neque quo tenetur sunt. Magnam est sequi esse quisquam et omnis enim.',40),(41,'Perferendis corporis delectus omnis ut et nobis.',3.683,_binary '\0\0\0\0\0\0\0ǠB�P@C��A|��','Amet distinctio sed fugit recusandae adipisci ipsam inventore. Non voluptate corporis non eius. Ut non facere delectus molestiae consequuntur illum. Pariatur au',41),(42,'Nam corporis quo tenetur voluptate molestiae.',4.579,_binary '\0\0\0\0\0\0\0[|\n�qWd@�p\�\�H\�@�','Laborum alias deserunt harum voluptas consequatur enim. Aliquam unde sint occaecati corrupti qui. Natus distinctio dolor et voluptatem quia ut et eligendi.',42),(43,'Necessitatibus aut quam molestiae porro dolore repudiandae eum.',2.848,_binary '\0\0\0\0\0\0\0%\�?�%[@(-\\Vak)�','Placeat vitae delectus architecto sint porro iure dolor. Qui mollitia similique et. Nisi sunt et et dolor. Quam atque debitis doloribus doloremque soluta sit ut',43),(44,'Laudantium qui voluptate minus doloribus ullam id magni.',4.771,_binary '\0\0\0\0\0\0\0̘�5^G@\�\��UG~#�','At vel doloribus nam quae. Et distinctio odio non velit quia. Velit hic optio sit qui et voluptatem suscipit.',44),(45,'Quas laudantium eos velit eum.',2.525,_binary '\0\0\0\0\0\0\09��\0n�c@���\n7�','Qui atque beatae quia aut quaerat non. Accusantium et illo libero quo. Quo expedita corporis repellat quis eaque dicta corrupti. Numquam non ut exercitationem e',45),(46,'Consequatur et iure occaecati officia neque sapiente voluptatem.',4.135,_binary '\0\0\0\0\0\0\0��	�\�\�`@ (�\�{��','Corrupti sit dicta minus aut nihil officiis dignissimos. Quibusdam iusto aut et quia dolores deserunt. Quis praesentium provident ut dolorem modi explicabo. Quo',46),(47,'Dolor inventore vel expedita.',4.956,_binary '\0\0\0\0\0\0\0���!9\�R@���\�\�@','Dolor omnis non delectus placeat provident ut. Reprehenderit maiores voluptatem consectetur optio. Quasi distinctio corrupti incidunt pariatur odio.',47),(48,'Quasi debitis occaecati dicta cumque atque pariatur in cum.',2.568,_binary '\0\0\0\0\0\0\0wKr�.Pb@}��b��','Molestias mollitia sed consectetur aspernatur. Atque dolorem velit vero nulla. Qui est voluptatem harum quisquam. Dicta possimus nobis enim incidunt ut omnis si',48),(49,'Dolores repudiandae fugit cupiditate id ex.',4.791,_binary '\0\0\0\0\0\0\0�쟧9X@\�rJ@L\�A�','Numquam in impedit quo ut rerum impedit. Sed officia non magnam molestiae eum. Commodi fugiat voluptas ut et rerum ipsa et perspiciatis. Temporibus sapiente ad ',49),(50,'Illo enim delectus sed tempore.',2.452,_binary '\0\0\0\0\0\0\0�BBK@�X\0S�Q@','Consequatur qui temporibus atque voluptates ex consequuntur natus. Voluptatum possimus et fugit eos repellat id magnam. Ullam officiis quis ipsa rerum aliquid.',50),(51,'Sequi sint quo eos officiis ex illo placeat magni.',2.058,_binary '\0\0\0\0\0\0\0m���&X@�衶bU@','Molestiae rerum esse modi maxime sed blanditiis. Possimus optio est necessitatibus ex reiciendis et itaque. Dignissimos sit nobis enim repudiandae tempore sit m',51),(52,'Aut fugiat ut ut quaerat nemo quos.',4.064,_binary '\0\0\0\0\0\0\0�\�\�3b@Zd;\�\�3�','Nisi voluptate velit quia libero modi. Odit numquam consequatur porro tempore. Consequuntur sit voluptatem quidem ducimus. Facere modi odio et voluptas id.',52),(53,'Aliquam nulla molestiae velit rem esse molestias nemo est.',2.969,_binary '\0\0\0\0\0\0\0\�]M��)@XƆn��!@','Et ad doloribus provident enim velit culpa. Autem labore enim iste dolores labore. Asperiores est eveniet voluptatem neque corrupti numquam atque harum.',53),(54,'Minus exercitationem ullam doloremque exercitationem consequuntur.',4.627,_binary '\0\0\0\0\0\0\0f���8ce@�\�h��(�','Ut adipisci magnam autem et repellat. Id dicta quia et. Beatae ea libero veniam in voluptatem voluptatum.',54),(55,'Maiores saepe voluptas corrupti expedita ducimus.',2.166,_binary '\0\0\0\0\0\0\0)#.\0�bf@�+�P#O@','Quas id qui nemo animi laboriosam. Minima corporis dolores qui dicta omnis et autem.',55),(56,'Illum quia ex et culpa aut minima.',2.551,_binary '\0\0\0\0\0\0\0$\�F�\�W@!\�>\0�nU�','Unde illo aut odit blanditiis nesciunt repellat non. Fuga ut quaerat est nobis dolorem. Iste in error architecto.',56),(57,'Cupiditate ea ut qui qui necessitatibus eaque cumque.',4.893,_binary '\0\0\0\0\0\0\0qN`:�W@����K?F@','Necessitatibus quisquam vel reiciendis voluptatem esse. Ab et ullam dicta tenetur. Velit consequatur maxime aut animi dignissimos.',57),(58,'Quia est totam sunt sed.',3.501,_binary '\0\0\0\0\0\0\0���B@/�4\'/�3�','Eligendi omnis repudiandae cupiditate quia voluptatem odit. Nesciunt officia nesciunt omnis numquam non. Et ut consequatur non sit a. Quis porro soluta iure dig',58),(59,'Inventore laborum aut qui.',4.666,_binary '\0\0\0\0\0\0\0`��\�~\�F@j�\�\�\�>�','Et assumenda beatae qui et hic voluptatem aut. Dolorem quae reiciendis qui nesciunt. Iste est repellendus excepturi distinctio nam vel laboriosam inventore.',59),(60,'Consequatur eum repudiandae iusto hic consequuntur non.',4.956,_binary '\0\0\0\0\0\0\0��\�A^#Y@��\��\�\�N@','Dolorem consequatur occaecati quaerat dolores. Minus velit cupiditate ea rerum quidem quibusdam. Eius et perferendis est mollitia.',60),(61,'Reprehenderit alias odio nihil.',4.919,_binary '\0\0\0\0\0\0\0��?@nc@%Y���FF@','Soluta nam aliquam hic optio optio rerum incidunt. Et numquam sint cum totam laborum. Quae magnam accusantium provident dignissimos nam incidunt. Laboriosam omn',61),(62,'Atque consequatur facere voluptatem.',2.665,_binary '\0\0\0\0\0\0\0W@��>S@^+��$\�0�','Vero dolorum libero voluptas corporis rerum placeat et. Ea nulla nemo eaque.',62),(63,'Aut vel aut unde nam doloribus nisi.',3.639,_binary '\0\0\0\0\0\0\0��\� �a[@\���TN@','Et aut non debitis enim quo debitis nemo. Quam repellendus qui ratione qui adipisci est. Non velit doloribus distinctio et.',63),(64,'Ab ea ad dignissimos aspernatur quod architecto eius.',3.213,_binary '\0\0\0\0\0\0\0NCT\�\�![@�2\�	E@','Tempore qui voluptate qui dolor. Omnis beatae autem qui placeat voluptas hic sed. Harum dignissimos veniam occaecati impedit voluptatem. Quae ipsum eum et et al',64),(65,'Repellat modi et quia illum qui.',2.316,_binary '\0\0\0\0\0\0\0�f؞Y@�\��\��','Aliquam commodi excepturi alias sapiente commodi quia. Quia aut aut qui officiis sed et omnis est. Minima accusantium pariatur et fugiat officiis rerum. Minima ',65),(66,'Fuga consequatur autem qui nostrum illum incidunt.',3.497,_binary '\0\0\0\0\0\0\0C�i\�q\�[@Q�l�?@','Aliquid dolor quo voluptate rerum omnis consectetur vitae. Aut eligendi ipsum sit sed recusandae quibusdam. Molestias non eos saepe. Et repudiandae eaque nisi c',66),(67,'Sint eos itaque quasi qui porro molestiae quibusdam.',4.992,_binary '\0\0\0\0\0\0\0���07X@�7�\�w�?','Magni dolore natus molestiae molestiae. Quaerat dolores sit sequi rem. Beatae recusandae corrupti et tenetur mollitia quam quis.',67),(68,'Impedit voluptatibus qui enim et.',2.387,_binary '\0\0\0\0\0\0\0)#.\0\rVe@�CQ�O\�Q�','Ut laborum quia et. Minima molestias rerum illo reiciendis earum necessitatibus recusandae et. Impedit et hic harum exercitationem quod a cumque.',68),(69,'Eos magnam accusantium sunt sunt iusto eligendi.',4.760,_binary '\0\0\0\0\0\0\0�\�\���;@K\0�)\�Q@','Voluptate recusandae unde et quo necessitatibus in. Excepturi ipsam magni exercitationem. Est facilis expedita earum voluptas. Eos aut dolor quis porro.',69),(70,'Veritatis nostrum vel esse.',2.704,_binary '\0\0\0\0\0\0\0����@�b@VF#�WBA�','Consequatur fuga tempore ut. Ut tempora quae itaque quisquam earum fuga dolores sed. Eos ipsum quibusdam voluptas totam. Quibusdam doloribus praesentium repella',70),(71,'Voluptas cumque perspiciatis vel maxime.',2.853,_binary '\0\0\0\0\0\0\0?�a�\'EX@U�t<fC�','Nobis consequatur qui mollitia exercitationem modi nesciunt labore. Animi amet vel et. Labore sed est vero ut expedita sint eos. Quis doloremque consequatur vol',71),(72,'Facilis qui molestiae voluptate.',4.149,_binary '\0\0\0\0\0\0\0`�_�a@hv\�[��F�','Laudantium dolorum consectetur omnis sit culpa. Rerum nostrum tempore quas error labore expedita facilis. Consequatur est ea voluptatem officiis ipsa.',72),(73,'Minus iusto sapiente voluptas architecto saepe dolores.',4.139,_binary '\0\0\0\0\0\0\0:�\�H\�X@��k@','Voluptas odit nam eum quisquam et. Nisi voluptatem vitae unde fugiat temporibus delectus. Architecto suscipit velit id dolor.',73),(74,'Ut quia eos quos aliquam.',3.980,_binary '\0\0\0\0\0\0\0.S�\�\re@�\nb�k\�@�','Quos aut dolorem fugiat cum qui. Nam voluptatem amet quo sit voluptatum tempore debitis.',74),(75,'Fuga error totam voluptatem.',2.919,_binary '\0\0\0\0\0\0\0>\��\�n\�d@���\�1�','Quas et dolore sapiente maiores nihil ipsum quod ut. Aut et maxime eos laboriosam voluptatem accusamus. Asperiores pariatur provident deleniti eum.',75),(76,'Voluptatem voluptate non molestias iste quaerat eaque autem velit.',3.367,_binary '\0\0\0\0\0\0\0�c�=	\0F@\�\�`\�\�O�','Quos molestiae culpa voluptatem quidem dolorem non. Optio et est molestias similique. Expedita doloribus ratione similique. Et modi eos ullam sunt omnis.',76),(77,'Et ut delectus quia ab harum.',2.910,_binary '\0\0\0\0\0\0\0\�x`\0+a@��!�U@','Maxime perspiciatis reiciendis totam ut sit saepe blanditiis. Culpa commodi aut qui voluptates. Nobis doloribus velit qui qui reiciendis. Alias veniam quae cum ',77),(78,'Quae dolorum perferendis repellat reprehenderit occaecati iste ad.',4.376,_binary '\0\0\0\0\0\0\0\�\�B\�B@�\�E|\'&2�','Enim quo saepe maxime totam asperiores excepturi. Molestias et eaque magni cupiditate saepe. Laboriosam eveniet at ducimus aut aliquid natus eos velit.',78),(79,'Quo temporibus et consequuntur rem neque.',2.597,_binary '\0\0\0\0\0\0\0{\�\�0T@{g�UId�','Cum quisquam porro dicta est esse. Aut minima ratione nemo aperiam veniam qui. Expedita quaerat quia voluptas inventore eius.',79),(80,'Minima blanditiis dolorem illum ipsam nisi.',4.667,_binary '\0\0\0\0\0\0\0Gˁj�F@�E�>qE�','Rem ex fugit et illum. Praesentium et minus dolorem at. Odit sit debitis corporis quia non nisi. Earum magnam laudantium expedita fugiat.',80),(81,'Accusamus minus quia nostrum sed sed consectetur eius.',3.321,_binary '\0\0\0\0\0\0\0�T� }c@�hq\�0�0�','Quo esse et quis in nulla consequuntur alias. Harum repellat commodi possimus in ea labore. Delectus cum corrupti natus occaecati. Sint culpa et aut eligendi.',81),(82,'Odio quis nam tempora est.',2.751,_binary '\0\0\0\0\0\0\0u<f�2+[@-#��\�)?@','Quaerat a est quo aliquid quos. Consequatur velit non quia et et. Numquam perspiciatis ipsum aut. Harum eius eveniet provident reiciendis perspiciatis qui ut ni',82),(83,'Dolorum illum beatae placeat temporibus hic.',4.999,_binary '\0\0\0\0\0\0\0!\���\�L@�����S�','Voluptas saepe recusandae suscipit sapiente omnis dolorem fugiat voluptates. Quia facere ullam minima debitis laborum.',83),(84,'Sunt alias culpa aut molestiae quo nihil.',3.994,_binary '\0\0\0\0\0\0\0tѐ�(-!@���۞lL@','Vel id enim dignissimos tempora at sint perferendis. Et ratione placeat et.',84),(85,'Quae molestias id et mollitia optio sed enim.',4.353,_binary '\0\0\0\0\0\0\0��>�RZ@�\�{Ld\n@','Est dicta sunt autem omnis. Nihil ex amet aut delectus. Provident enim quia qui reiciendis provident et nemo. Earum perspiciatis voluptas voluptatum.',85),(86,'Laborum minima rerum amet nostrum velit velit.',2.009,_binary '\0\0\0\0\0\0\0�\��5�R@uX\�{U�','Tempore voluptates deleniti et deserunt ut. Ratione nesciunt nemo maxime distinctio eaque cum. Voluptatibus sint sed in asperiores et ut vitae eaque.',86),(87,'Iure maiores nam est culpa.',2.636,_binary '\0\0\0\0\0\0\0\'�����:@��\��[\";�','Commodi dolorem saepe quo est ea quia. Nisi qui quia id iure optio.',87),(88,'Doloribus aut consequatur et optio.',3.590,_binary '\0\0\0\0\0\0\0Ѳ\�;Y@��r�m.K@','Architecto delectus nihil distinctio at voluptatem veritatis quia voluptatum. Ipsam autem voluptas itaque et. Aperiam qui aut nobis voluptatum. Quibusdam autem ',88),(89,'Quis consequatur voluptatem consectetur veritatis accusantium fugit.',2.764,_binary '\0\0\0\0\0\0\0\�I�?�%L@\�\�C\��\�D@','Consequatur corrupti autem consequatur architecto ut ipsa nam. Expedita commodi beatae ut quasi exercitationem repellendus rerum. Quas vero in enim adipisci qui',89),(90,'Rerum dolorum autem accusamus et sunt quo.',4.565,_binary '\0\0\0\0\0\0\0L\�^IW@T\0�g\�0;@','Aut quia nam aut nulla sapiente nihil. Ut nam sapiente inventore provident repellendus eum fuga.',90),(91,'Repellendus quam quis animi doloremque veritatis officiis aut expedita.',2.218,_binary '\0\0\0\0\0\0\0x\'�kC@��!��S�','Ex exercitationem modi et sunt vel magnam sapiente iusto. Qui enim ut nam ea quasi. Accusamus provident qui est atque. Vel et itaque et velit voluptate vero.',91),(92,'Optio voluptatem dicta sed et.',2.425,_binary '\0\0\0\0\0\0\0�ҥI�]@���tw�)�','Id quae et aut reprehenderit nesciunt voluptatem. Qui vel culpa et. Id perspiciatis soluta iure maxime praesentium saepe cumque.',92),(93,'Debitis placeat modi eaque inventore sit.',4.184,_binary '\0\0\0\0\0\0\0\�^����%@Z�\r�\�F�','Veritatis autem velit quam et debitis aliquid. Nihil hic qui incidunt. Laudantium labore deserunt laudantium sit et in quod. Quod facilis temporibus omnis perfe',93),(94,'Ipsum quam vitae omnis iure.',4.602,_binary '\0\0\0\0\0\0\0^�����b@?\���O�','Ut molestiae amet aperiam esse asperiores voluptas molestias. Error magni ut omnis est distinctio. Omnis quia sit ea et minus voluptatibus aut.',94),(95,'Perspiciatis illum est optio animi voluptatem consequuntur.',4.629,_binary '\0\0\0\0\0\0\0V�\�#)#A@9�ߡ(A�','Dolores rerum nihil hic fuga quam quas ab. Dolorem sint aliquam aut reprehenderit. Blanditiis et minus consequatur velit incidunt nihil. Doloremque et quasi cum',95),(96,'Deleniti et velit et explicabo aut voluptas eos.',4.363,_binary '\0\0\0\0\0\0\0p�e@Iڍ>\�R@','Placeat omnis asperiores sint voluptatibus. Ipsa optio et facere ducimus. Aut iure iusto expedita natus.',96),(97,'Enim ipsa quisquam laborum.',3.793,_binary '\0\0\0\0\0\0\0\�Za�$X@�k_@/\�S�','Iusto ad explicabo laborum aliquam. Qui aut qui amet enim eum. Dignissimos eius suscipit facere facilis.',97),(98,'Rerum quas hic nesciunt.',3.454,_binary '\0\0\0\0\0\0\0*;��.�d@-�.@','Quos sit natus cupiditate sit possimus delectus. Architecto dolorem fuga et sit possimus in. Fuga perferendis quia quam amet nemo iste iure.',98),(99,'Assumenda ipsum omnis quo ipsa.',4.250,_binary '\0\0\0\0\0\0\0\�!�aK\�P@9\��\��U�','Nesciunt voluptatem architecto et est eius. Blanditiis nemo expedita voluptatem voluptas ullam praesentium. Incidunt accusantium laudantium nihil praesentium ne',99),(100,'Et ducimus deserunt provident nobis.',4.025,_binary '\0\0\0\0\0\0\0�S\�\0\�\�c@\\sG�˸Q�','Ipsam blanditiis et aperiam dolor distinctio. Voluptate est quibusdam amet optio eum. Suscipit voluptatum hic autem asperiores ut esse.',100);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `properties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'size'),(2,'height'),(3,'width'),(4,'depth'),(5,'weight'),(6,'volume'),(7,'power'),(8,'energy consumption'),(9,'autonomous work'),(10,'material'),(11,'square'),(12,'shelf life'),(13,'use temperature');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_measures`
--

DROP TABLE IF EXISTS `property_measures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `property_measures` (
  `properties_id` int NOT NULL,
  `measures_id` int NOT NULL,
  PRIMARY KEY (`properties_id`,`measures_id`),
  KEY `fk_property_measures_properties1_idx` (`properties_id`),
  KEY `fk_property_measures_measures1_idx` (`measures_id`),
  CONSTRAINT `fk_property_measures_measures1` FOREIGN KEY (`measures_id`) REFERENCES `measures` (`id`),
  CONSTRAINT `fk_property_measures_properties1` FOREIGN KEY (`properties_id`) REFERENCES `properties` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_measures`
--

LOCK TABLES `property_measures` WRITE;
/*!40000 ALTER TABLE `property_measures` DISABLE KEYS */;
INSERT INTO `property_measures` VALUES (1,3),(1,4),(2,4),(2,5),(3,5),(3,6),(4,1),(4,6),(5,1),(5,2),(6,2),(6,3),(7,3),(7,4),(8,4),(8,5),(9,5),(9,6),(10,1),(10,5),(10,6),(11,1),(11,2),(11,6),(12,1),(12,2),(12,3),(13,2),(13,3),(13,4);
/*!40000 ALTER TABLE `property_measures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `qnt_by_category`
--

DROP TABLE IF EXISTS `qnt_by_category`;
/*!50001 DROP VIEW IF EXISTS `qnt_by_category`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `qnt_by_category` AS SELECT 
 1 AS `category`,
 1 AS `total_goods`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(60) NOT NULL,
  `phone` bigint NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` char(64) NOT NULL COMMENT 'Хэш пароля\n',
  `city` varchar(80) NOT NULL COMMENT 'Город',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nickname_UNIQUE` (`nickname`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'maiores',79348848368,'rquitzon@example.com','39daf1d34e8f8213a8ecdd4ef0d5f6ae453cddc3','North Jordan','1972-06-28 14:57:09','2006-05-09 13:04:42',_binary ''),(2,'ipsa',79025036826,'jernser@example.net','ecec9ca6617bde97c96fa254f65d23ebab5b87b7','North Antwan','2016-12-15 12:35:32','2017-01-17 01:13:21',_binary '\0'),(3,'qui',79659351839,'flavio89@example.org','acb9a62550d36163a59819d9ba02afaea77baa10','Casperfort','1996-06-24 17:00:37','1979-10-03 03:51:26',_binary ''),(4,'neque',79285044024,'marcia97@example.com','0586a72b32544f46f99caac06820c8e3fb874756','West Talon','2000-01-08 08:48:53','1999-10-23 17:06:47',_binary ''),(5,'earum',79073323721,'evelyn.ryan@example.net','ea7e3afba67e26938388da3a767e7a7575b47069','Eleanorefurt','2007-01-23 19:09:40','2000-10-08 07:03:45',_binary ''),(6,'corrupti',79900337894,'lavon.beahan@example.org','69054f7f6aeca124eff63a60a51babed31ac921c','West Shannon','1991-01-14 06:06:38','2017-11-24 23:24:04',_binary ''),(7,'itaque',79206394915,'trisha12@example.net','41055832a8d8accd4b8a716ea62941f64f2000df','Arihaven','2003-02-20 04:02:07','1985-10-12 11:46:50',_binary '\0'),(8,'recusandae',79100706833,'tillman.smith@example.org','11a11c12c15917ddc2d574af6a74b409463198d6','Farrellmouth','1972-05-27 18:55:58','1995-12-03 11:59:43',_binary '\0'),(9,'sunt',79035040137,'leone.emard@example.com','04e4d7ccd503e298a422221f4338081b2023abc6','Cassieburgh','1978-11-19 20:09:58','1994-02-03 19:40:00',_binary ''),(10,'ut',79715894653,'windler.flavie@example.net','2999eb0b47ab7170d3d0f50f8bc82debe98c30b7','Rowlandmouth','2009-03-13 08:59:21','1983-10-22 19:15:45',_binary '\0'),(11,'omnis',79854158810,'ycassin@example.com','5453bcea12929e300302846c7c2862ce78eed14f','East Lemuelside','1971-08-10 11:31:31','2000-06-07 12:49:08',_binary '\0'),(12,'eveniet',79284238812,'mitchell.anne@example.org','b56ed98911d0f7a3f17d5b70460bf3d7355562f3','Olsonchester','1972-03-23 00:32:58','1983-12-21 19:32:10',_binary ''),(13,'est',79025209374,'fahey.rebeka@example.com','e786c2af2f3722e325da6f16adc963567cbd5fa2','Gretchenstad','1978-09-18 21:50:54','1979-06-06 16:50:54',_binary '\0'),(14,'minus',79296257246,'junius84@example.com','1c642150f12dfc80099f978e262aa3acec2f2de8','Skilesbury','1976-09-30 09:10:40','1994-05-13 19:07:45',_binary ''),(15,'fugit',79073384895,'chelsie98@example.com','c39470d78c11560c3d0c381917d78aaebcc34db1','Port Susan','1991-11-10 23:58:07','1981-01-13 06:03:30',_binary '\0'),(16,'facilis',79477191750,'sonya97@example.org','3cbddd996363010b3286594b92d0e087101345eb','Lake Reuben','1986-06-19 20:13:42','2019-05-18 11:13:08',_binary '\0'),(17,'dignissimos',79494138593,'bosco.keara@example.net','4ab1278ca002551fe61aadb51bd90920063d8020','Madonnachester','1984-02-26 04:18:30','1973-03-05 00:19:49',_binary '\0'),(18,'velit',79740213809,'tmoen@example.net','66497d13a9d75292280481274095b9b8efb930c0','Cormierberg','1997-04-20 10:55:55','1975-05-06 04:52:41',_binary '\0'),(19,'atque',79688959904,'kenneth10@example.com','0b6db02b5a9ff2c1da059572c52be1ae8c5ab1ce','Mohrmouth','2004-02-18 21:57:50','2010-08-10 00:46:39',_binary ''),(20,'enim',79975631429,'dasia.kunze@example.net','c2e9cdf93bb05a9e030cd1c5a42d4427f2a4653c','Schillerville','1971-03-24 03:05:38','1997-03-23 07:21:13',_binary '\0'),(21,'rerum',79124435386,'xheaney@example.org','f43f2e976251d481188d143e4142fe30d46e00f0','Mozelleland','1990-01-14 05:57:30','1983-06-24 22:42:11',_binary ''),(22,'delectus',79178464086,'precious.sporer@example.com','18fe87a8ac7de32151fdd9e3b15ef724599f6b57','North Xavier','2019-07-06 06:44:53','1993-05-07 11:20:33',_binary '\0'),(23,'voluptas',79543869567,'pink88@example.net','5e0ab513edbd7bab2051a089ba4d5e1fc013f666','North Yoshiko','1978-01-29 13:46:18','2016-10-17 18:26:37',_binary ''),(24,'repudiandae',79146230342,'mina37@example.net','8c66e70552fbac9648ac8ee9c724419b9571abc5','Careyport','1996-07-12 04:56:07','1975-02-12 17:54:03',_binary ''),(25,'alias',79344837210,'vpowlowski@example.com','e658bfdad1207f7d900f0132c29db7ddcb1e4420','Violetville','2002-06-29 23:16:39','1994-09-29 16:58:52',_binary ''),(26,'et',79931714820,'turner72@example.com','95d4f9fc05a3476dac69f1983273d18d079a8372','Bernhardville','2012-10-29 00:14:59','2012-07-22 20:14:05',_binary ''),(27,'eligendi',79980712798,'jazmyne.pollich@example.com','1543e4745d5aab247fdfc8ef19df911b8e1b344c','Lake Priscilla','1980-12-26 06:33:53','2013-11-09 15:51:22',_binary ''),(28,'iste',79048787468,'boehm.darwin@example.com','56de557ca3abd04e3d3d3d70290c99428b313e67','Lynchview','2010-10-03 12:22:15','1988-05-05 12:31:44',_binary ''),(29,'blanditiis',79857215721,'gerhard.casper@example.com','f2b125ca7b6dbe7ac7b38dd70954901a4d3c89d6','Wymanfort','1975-05-20 12:57:10','1971-06-27 19:03:37',_binary ''),(30,'nisi',79378709722,'toni28@example.com','07c060e25266ff91a5e5f73b3ec9b8a985ed8e37','Sawaynfurt','1987-01-29 17:08:04','1998-07-12 06:43:37',_binary ''),(31,'voluptatem',79531307198,'zpfeffer@example.com','573f1e3a33ee71a6a976e0a783d475b7d33876ce','Lake Karianne','1998-02-27 12:44:03','2014-10-26 11:34:52',_binary ''),(32,'officia',79296181876,'ibrakus@example.net','a84deba5cfe67bba3585272e8f71ed57c56d4ae8','East Jeraldstad','2000-10-30 17:45:38','2017-03-01 12:16:55',_binary ''),(33,'illo',79979589471,'oschamberger@example.net','af98aec9a43182792e990a804062ac48422e7030','Arnofurt','1985-01-01 07:48:31','2000-11-07 13:01:08',_binary ''),(34,'quasi',79714214002,'nking@example.org','d0403d04ed4078e4790bb7033706aec325c27879','New Jermaineburgh','1987-02-14 07:04:12','1974-07-21 07:44:56',_binary '\0'),(35,'amet',79473397875,'hagenes.florine@example.com','a01abe2fdac57199131654b421a45de971aa7079','Enosberg','1970-07-06 02:45:51','1994-05-27 18:49:21',_binary ''),(36,'consequatur',79660340075,'mccullough.alfonzo@example.org','c516dbf4af3e311070b974bcaf77ef36c1e9e0e7','Alexandreafort','1972-12-19 05:27:03','1991-12-21 09:12:31',_binary ''),(37,'quibusdam',79035595727,'donald19@example.net','9195d1c79c03f36b5ff9210dbeea4275299b86f6','South Collinshire','2006-01-01 00:58:47','1970-06-11 13:45:11',_binary '\0'),(38,'suscipit',79282353052,'maiya.lehner@example.com','462d79af8a11daf9bf01d6dd83990f592d61708e','West Peggie','1997-03-30 08:51:11','1974-09-04 10:09:14',_binary '\0'),(39,'sequi',79850258839,'valentine.rogahn@example.org','c8d4584ef07b469577911fbb9547881e733a6d92','Pasqualefurt','1995-12-16 22:51:50','1991-01-10 17:22:30',_binary ''),(40,'excepturi',79207788240,'ybeer@example.com','d187d296dd7fcc558ae0ad2f6e74d78a331a1e23','Groverstad','1994-01-28 00:23:43','1976-10-16 09:04:47',_binary '\0'),(41,'odio',79160334739,'clementine.hermiston@example.org','992312605ee3344c8eda664a9da4a279c28e1cf2','Kileyland','1978-06-10 05:48:12','1991-04-28 19:51:47',_binary ''),(42,'error',79284310474,'bart59@example.org','cc05b7e536f9d6dcb2a60820249d4e877f463236','Jarodtown','1992-07-09 12:59:26','1995-09-27 17:51:53',_binary ''),(43,'ipsam',79858455221,'darius.doyle@example.org','cf0785b5ad16b0b2803b9b3b56536f7ebc6f0f1f','Kristoferchester','2004-10-30 00:31:08','1993-06-27 10:09:19',_binary ''),(44,'dolorem',79455515052,'barrows.braxton@example.org','ef6a6f2de421a7e309829110acae5dae21dc8ce1','West Mekhi','2005-09-19 16:49:46','1970-07-10 07:41:28',_binary '\0'),(45,'laboriosam',79426947768,'bblock@example.org','47825982dfbd8e6550d8c287501538a2665ed28c','North Vilma','1985-02-14 00:35:51','1977-05-22 03:10:08',_binary '\0'),(46,'sapiente',79045665211,'tswaniawski@example.net','d31c59f00bd0160c0dbe88e66592afacbf9728c3','South Estevanburgh','2011-09-20 15:12:23','1991-10-31 08:59:30',_binary '\0'),(47,'incidunt',79469647123,'walton15@example.org','f6267021013e98a66f508b77188f39ce593ffa83','East Donnaborough','1975-05-24 13:13:06','1981-05-05 08:28:06',_binary '\0'),(48,'cupiditate',79429132212,'rosella09@example.net','0b27c5462f01023d6b762906751b61ec28697222','Williamsonfurt','1996-01-13 00:21:15','1984-12-26 07:17:15',_binary ''),(49,'maxime',79661034909,'josh00@example.org','0881498f9a1195c305745f8cf3b9b81a5da53e7c','East Sherwood','2002-04-23 11:32:27','1975-12-29 07:10:19',_binary '\0'),(50,'aut',79210006878,'demarcus86@example.com','3336d6931be11f2893efe72c83df24f848ed06c0','McClurestad','1985-03-16 11:54:45','2014-07-18 15:51:28',_binary '\0'),(51,'sed',79718439754,'maude.armstrong@example.net','6e0b76dcba892ab941fbb4e32c0d6192c9278429','South Nelda','2006-08-24 04:45:56','1999-10-16 21:24:41',_binary ''),(52,'nemo',79778555997,'miller19@example.net','2a61b34a8421f062ab7411c24310c35a2310d0d6','West Annaport','2013-07-30 17:42:21','1983-08-13 23:07:35',_binary '\0'),(53,'odit',79617300287,'geo24@example.com','8498892c3600800a5559a0723255c2d90e6719ff','Theresiafort','2018-03-13 14:51:42','2018-01-19 21:56:14',_binary ''),(54,'vitae',79270684819,'bailey.monte@example.net','40856eedffa53e95ddb5e0dfeeb9a08781e60ed0','Tonyton','1993-08-13 05:26:22','1978-05-16 08:53:13',_binary '\0'),(55,'non',79919963228,'kristoffer.tillman@example.net','15ddeba5c79f951d67f48e21574d3b3f59b0d292','Luettgenside','1979-12-31 17:15:51','1989-10-04 08:24:20',_binary ''),(56,'eius',79483201494,'esta.abernathy@example.org','0644bce9d6583d73f77da7fb51c003cdeb91b997','Goodwinborough','1979-07-22 12:00:52','2007-06-02 20:18:58',_binary '\0'),(57,'pariatur',79492627480,'raina.ullrich@example.org','6095a8c7ee7ea77630f39f8f319f78db07f24b70','Verdieville','1981-08-11 10:34:20','2002-01-30 20:02:41',_binary '\0'),(58,'aspernatur',79058194522,'pfeffer.laverne@example.net','3939f286d91ad5a80115ca1430f1ebc80bb7f70d','West Ianland','1976-06-13 17:17:42','1973-05-17 01:09:19',_binary ''),(59,'ea',79800115877,'norris76@example.com','7360543e5742e7c0dd367d05e569e1dce8d0a1cc','Lelahshire','1984-10-21 18:05:05','2012-06-16 07:34:31',_binary ''),(60,'vel',79541007151,'lmorar@example.org','f2525c68f92305181e9193acbae1b7d721fa3b59','New Orionchester','1979-03-28 20:11:12','1996-07-02 17:07:13',_binary ''),(61,'doloremque',79611885334,'tess96@example.org','29c2c9b7f56884e1567fa4fed75f9594f755561e','Kileyside','1981-06-12 06:45:38','2014-01-02 01:18:31',_binary '\0'),(62,'dolorum',79474601710,'mohamed84@example.net','c46702d9639b22954e3471a19121ea936329ef12','North Talonstad','1982-06-13 11:34:52','1977-09-14 20:33:45',_binary ''),(63,'corporis',79405654871,'bergstrom.cali@example.com','e7d3f1d627a908b1cef765d110441adb86275500','North Lorna','2000-10-17 02:06:27','2009-09-16 10:12:54',_binary '\0'),(64,'tempore',79074981968,'damaris67@example.org','5ea4550928b78bc9a31b9dd9612b88fe2904d898','Sylvanstad','2017-12-31 19:40:41','1972-12-14 12:10:52',_binary '\0'),(65,'sint',79350762703,'gutkowski.mckenzie@example.com','dc2c6f5ab468e05f6ecdd13cbf53acc3ae79e95f','Vonfurt','1988-09-07 03:35:27','1987-12-06 07:02:36',_binary ''),(66,'saepe',79029654867,'ritchie.ruben@example.com','28a4fb26e76d4f195a13951b161d412f9bb5f0b4','Rolfsonbury','1988-06-08 22:22:08','1970-03-18 01:17:39',_binary '\0'),(67,'ipsum',79209414798,'kyle69@example.com','7d513428867a48c4325651dd2a76fdb87522f214','New Ozellaview','2005-11-14 10:38:33','1992-08-24 16:42:43',_binary ''),(68,'quia',79352161647,'ho\'reilly@example.com','55484999e2d05096eecd8b408d0de3441fd90edf','Buckridgeton','2000-08-08 19:53:18','1979-03-20 18:18:10',_binary ''),(69,'tempora',79933956312,'hickle.mattie@example.net','14caab5e3c2b2e155a6f581b0fc58b16ed3f45c3','East Joelmouth','1998-01-31 12:19:27','1995-11-14 19:05:30',_binary ''),(70,'in',79172299436,'gbeahan@example.com','5eb6aa627c619ba3b21abadc06c9ffff2e96d6bf','Gleichnerberg','1995-11-15 15:32:51','1991-11-11 18:51:04',_binary '\0'),(71,'molestias',79975537365,'ricky.roob@example.org','374effec6c4a407671f318d95e7ce7510530ac50','Lake Alexzander','1977-11-20 08:54:55','1984-12-23 22:49:02',_binary ''),(72,'distinctio',79951336221,'nolan30@example.com','62d5395fe65e76f9add8d4383beda747e57f8fde','South Arielmouth','1973-04-21 20:29:43','1984-04-10 12:21:33',_binary ''),(73,'deserunt',79614418942,'vlakin@example.org','b2238acd0d09a4642066e1b48a9c56b6f99ed4b5','Port Garretview','2009-04-09 22:46:26','1982-02-03 03:02:07',_binary '\0'),(74,'quas',79806735311,'bailey.brandyn@example.org','549b8a305a3f6f9ce7527ba52c49d05144c56e7a','West Adolftown','2012-03-29 14:23:25','2005-07-19 10:21:00',_binary '\0'),(75,'numquam',79114486346,'leatha29@example.org','7d38f6f8cdb5e5279eb03067f6d297d92628d4aa','Schaefershire','1993-08-28 10:21:15','1973-07-06 20:02:56',_binary ''),(76,'asperiores',79649991682,'scottie14@example.com','75bc34c6f2357f880c20143e8ea8a69aaa9d4113','Giuseppeside','2004-10-28 02:34:28','1993-04-27 05:19:41',_binary '\0'),(77,'quis',79447167023,'champlin.shad@example.net','1559d3086be87e1da54a14fa8030b9e10ad3eb2f','Harristown','1991-04-21 19:30:38','1971-05-28 01:34:49',_binary ''),(78,'inventore',79664473665,'hoppe.dianna@example.com','e68a97375faa27bd3dc8659f41c3cee208e6e1e5','Florinefort','2008-02-13 21:58:31','2018-01-04 07:27:45',_binary ''),(79,'culpa',79894112686,'dominic93@example.org','07e36251721269ad0664f034b9ae3527906a8869','New Jessicaville','2013-03-22 22:10:04','2018-10-13 19:11:13',_binary '\0'),(80,'voluptates',79697164875,'hulda83@example.net','ce37a31818a2848694a5d1f0e79916ea095bbde6','South Roxanne','2012-09-24 11:51:22','1983-02-03 16:44:23',_binary '\0'),(81,'magnam',79229050415,'toby.padberg@example.com','ace6545cc3fe9db19acf60504d61c26175924f29','Bradtketown','2010-10-30 18:27:25','1971-01-20 23:12:07',_binary ''),(82,'quidem',79425322929,'ftreutel@example.org','4fa7acabe17820d2fcc7757c21db1a5983c72051','New Nathanial','1970-12-27 15:44:41','1971-07-21 00:18:10',_binary '\0'),(83,'debitis',79731809227,'hschultz@example.net','940bf09caef173f4f95ba6bd5434535f3d1c66c9','Alexandromouth','2010-09-29 12:52:32','1992-09-18 20:48:40',_binary '\0'),(84,'dolor',79429073272,'elva31@example.net','58abc5119ba68ef1c18c18979249d82582d6992e','Tryciaside','2007-10-12 08:49:12','1979-05-06 09:16:16',_binary ''),(85,'beatae',79899436667,'iabernathy@example.net','5658a8c94bfe3bf9bb1b021df0d79ae7a3e587a6','North Marjolaineview','1992-01-01 12:05:07','1990-03-02 03:43:07',_binary ''),(86,'voluptatibus',79088587811,'xmohr@example.net','8e9b6c459a82d6d10c3cbeb579027a35993b83a0','Walshhaven','1986-09-08 16:35:58','2004-12-03 07:19:05',_binary '\0'),(87,'molestiae',79504008316,'zboehm@example.net','51e410400c3afc3bebce8c8b1d4dc4475e203e03','Arianeview','2009-11-10 10:11:19','1983-01-26 10:19:41',_binary ''),(88,'placeat',79108457759,'eleanora64@example.net','a6a6dd6198401f1d4a5d6d776defe55e2210acda','New Lila','1991-01-30 07:53:15','2001-07-11 03:47:13',_binary '\0'),(89,'mollitia',79048995146,'brian.harber@example.net','0b01390fc3d515b8c9f9ec79471b81a614517671','Lake Casandraberg','2009-09-23 08:55:28','1974-06-07 15:18:09',_binary '\0'),(90,'esse',79527942401,'annamarie.gutmann@example.org','40c482d6da9342eb4cb0e32587911f69c61299be','Port Dylanbury','1982-07-15 15:18:27','2009-10-24 19:31:11',_binary ''),(91,'adipisci',79673011995,'margot13@example.org','dab0b78efd15e46d6720440f1e2e724163bf6eef','New Shanelle','2017-04-23 06:04:05','1991-12-14 06:06:31',_binary '\0'),(92,'assumenda',79061474553,'parker64@example.net','ff3a251c66793d140b2aa81159ece1fc9a0f0a13','Bergemouth','1982-01-12 16:00:00','1989-01-13 16:23:49',_binary '\0'),(93,'tenetur',79050277380,'esther79@example.org','6eeb105bcc08e454c41e7935e1d88f32cdff6059','Bauchmouth','1971-07-11 02:05:27','2004-07-30 22:32:42',_binary '\0'),(94,'aliquid',79836325979,'lubowitz.junior@example.com','afa021306afed69fcb47c09e1078602e736795cb','East Serenityburgh','2020-03-14 14:06:02','1970-12-27 15:39:56',_binary ''),(95,'nulla',79332526072,'alvina82@example.org','493d7702d5ddd7ae5ebf41d73507772ab3b21bba','Shayneview','2005-02-15 19:48:33','1993-02-05 17:18:16',_binary ''),(96,'eos',79962913205,'dakota44@example.com','c86f4d9c8f9fa023741ba40c96c1179c88593947','Kubville','1972-10-09 19:42:45','1990-07-18 19:12:33',_binary '\0'),(97,'minima',79799032570,'dickinson.sienna@example.com','7e843af4e660cd06a6f93ab8bf0d8da84cc6663b','North Kenyon','1970-06-05 20:30:50','1980-10-20 03:11:50',_binary '\0'),(98,'totam',79641538735,'sydni39@example.org','c501e931a1419510e0f0920d6eb7c9f396cb4b18','West Chaya','1983-04-16 07:15:30','1985-10-07 06:47:23',_binary ''),(99,'necessitatibus',79182460261,'odessa.bartell@example.com','d29a198953d8b7fe69ebf2c6a646c4728c1863c5','Lake Alvis','1992-08-12 09:34:37','1989-05-09 17:54:10',_binary '\0'),(100,'accusamus',79166287436,'leffler.ernestine@example.org','4a5b4568682f5dc38e2c5385929de5e9e35ef1fe','Port Imogene','1971-02-25 15:59:17','2009-02-25 22:27:07',_binary '\0');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `auction_list`
--

/*!50001 DROP VIEW IF EXISTS `auction_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `auction_list` (`title`,`category`,`photo_id`,`days_to_end`,`price_current`,`price_early`) AS select concat(`g`.`brand`,' ',`g`.`model`) AS `CONCAT(g.brand, ' ', g.model)`,`c`.`name` AS `name`,`p`.`photos_id` AS `photos_id`,timestampdiff(DAY,now(),`d`.`deal_end`) AS `TIMESTAMPDIFF(DAY, NOW(), d.deal_end)`,`d`.`price_current` AS `price_current`,`d`.`price_early` AS `price_early` from (((`deals` `d` join `goods` `g` on((`d`.`goods_id` = `g`.`id`))) join `deal_photos` `p` on((`p`.`deals_id` = `g`.`id`))) join `categories` `c` on((`c`.`id` = `g`.`category_id`))) where ((`d`.`deal_end` > now()) and (`p`.`is_main` = 1)) order by `d`.`price_current` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qnt_by_category`
--

/*!50001 DROP VIEW IF EXISTS `qnt_by_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qnt_by_category` (`category`,`total_goods`) AS select `c`.`name` AS `name`,count(0) AS `tg` from (`goods` `g` join `categories` `c` on((`g`.`category_id` = `c`.`id`))) group by `c`.`name` having (`tg` > 5) order by `tg` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-12  2:21:58
