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
-- Table structure for table `bids`
--

DROP TABLE IF EXISTS `bids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bids` (
  `deal_id` int NOT NULL,
  `user_id` int NOT NULL,
  `bid` int NOT NULL,
  `bidded_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`deal_id`,`user_id`),
  KEY `fk_bids_deals1_idx` (`deal_id`),
  KEY `fk_bids_users1_idx` (`user_id`),
  CONSTRAINT `fk_bids_deals1` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`),
  CONSTRAINT `fk_bids_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `deal_details`
--

DROP TABLE IF EXISTS `deal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `deal_details` (
  `deal_id` int NOT NULL COMMENT 'Сделка',
  `goods_id` int NOT NULL COMMENT 'Товар',
  `delivery_terms` varchar(160) NOT NULL COMMENT 'Описание товара и условий передачи',
  `location_lat` float(10,6) DEFAULT NULL COMMENT 'Место сделки (широта)',
  `location_lng` float(10,6) DEFAULT NULL COMMENT 'Место сделки (долгота)',
  `condition_id` int NOT NULL COMMENT 'Состояние товара',
  PRIMARY KEY (`deal_id`,`goods_id`),
  KEY `fk_deal_details_deals1_idx` (`deal_id`),
  KEY `fk_deal_details_goods1_idx` (`goods_id`),
  KEY `fk_deal_details_conditions1_idx` (`condition_id`),
  CONSTRAINT `fk_deal_details_conditions1` FOREIGN KEY (`condition_id`) REFERENCES `conditions` (`id`),
  CONSTRAINT `fk_deal_details_deals1` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`),
  CONSTRAINT `fk_deal_details_goods1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deal_photos`
--

DROP TABLE IF EXISTS `deal_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `deal_photos` (
  `deals_id` int NOT NULL,
  `photos_id` int NOT NULL,
  PRIMARY KEY (`deals_id`,`photos_id`),
  KEY `fk_deal_photos_deals1_idx` (`deals_id`),
  KEY `fk_deal_photos_photos1_idx` (`photos_id`),
  CONSTRAINT `fk_deal_photos_deals1` FOREIGN KEY (`deals_id`) REFERENCES `deals` (`id`),
  CONSTRAINT `fk_deal_photos_photos1` FOREIGN KEY (`photos_id`) REFERENCES `photos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deals`
--

DROP TABLE IF EXISTS `deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `deals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` tinyint unsigned NOT NULL COMMENT '0 - активен, \n1 - завершен, \n2 - отменен',
  `seller_id` int NOT NULL,
  `deal_start` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price_start` int NOT NULL,
  `price_early` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_deals_users_idx` (`seller_id`),
  CONSTRAINT `fk_deals_users` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  CONSTRAINT `fk_goods_categories1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `goods_properties`
--

DROP TABLE IF EXISTS `goods_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods_properties` (
  `goods_id` int NOT NULL,
  `properties_id` int NOT NULL,
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`goods_id`,`properties_id`),
  KEY `fk_goods_properties_goods1_idx` (`goods_id`),
  KEY `fk_goods_properties_properties1_idx` (`properties_id`),
  CONSTRAINT `fk_goods_properties_goods1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `fk_goods_properties_properties1` FOREIGN KEY (`properties_id`) REFERENCES `properties` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `profiles` (
  `user_id` int NOT NULL,
  `caption` varchar(160) DEFAULT NULL COMMENT 'Описание профиля',
  `rating` float(4,3) DEFAULT NULL COMMENT 'Текущий рейтинг пользователя',
  `defaul_location_lat` float(10,6) DEFAULT NULL COMMENT 'Место сделки по умолчанию (широта)',
  `defaul_location_lng` float(10,6) DEFAULT NULL COMMENT 'Место сделки по умолчанию (долгота)',
  `defaul_delivery_terms` varchar(160) DEFAULT NULL COMMENT 'Описание условий передачи товара по умолчанию',
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-04 22:25:28
