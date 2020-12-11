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
) ENGINE=InnoDB;

CREATE TABLE `conditions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

CREATE TABLE `goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `category_id` int NOT NULL COMMENT 'Товарная категория',
  PRIMARY KEY (`id`),
  KEY `fk_goods_categories1_idx` (`category_id`),
  KEY `brand_model` (`brand`,`model`),
  CONSTRAINT `fk_goods_categories1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB;

CREATE TABLE `properties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

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
) ENGINE=InnoDB;

CREATE TABLE `photos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

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
) ENGINE=InnoDB;

CREATE TABLE `deal_photos` (
  `deals_id` int NOT NULL,
  `photos_id` int NOT NULL,
  `is_main` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`deals_id`,`photos_id`),
  KEY `fk_deal_photos_deals1_idx` (`deals_id`),
  KEY `fk_deal_photos_photos1_idx` (`photos_id`),
  CONSTRAINT `fk_deal_photos_deals1` FOREIGN KEY (`deals_id`) REFERENCES `deals` (`id`),
  CONSTRAINT `fk_deal_photos_photos1` FOREIGN KEY (`photos_id`) REFERENCES `photos` (`id`)
) ENGINE=InnoDB;

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
) ENGINE=InnoDB;

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
) ENGINE=InnoDB;

CREATE TABLE `measures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

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
) ENGINE=InnoDB;

CREATE TABLE `category_properties` (
  `category_id` int NOT NULL,
  `property_id` int NOT NULL,
  PRIMARY KEY (`category_id`,`property_id`),
  KEY `fk_category_properties_categories1_idx` (`category_id`),
  KEY `fk_category_properties_properties1_idx` (`property_id`),
  CONSTRAINT `fk_category_properties_categories1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_category_properties_properties1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`)
) ENGINE=InnoDB;

CREATE TABLE `property_measures` (
  `properties_id` int NOT NULL,
  `measures_id` int NOT NULL,
  PRIMARY KEY (`properties_id`,`measures_id`),
  KEY `fk_property_measures_properties1_idx` (`properties_id`),
  KEY `fk_property_measures_measures1_idx` (`measures_id`),
  CONSTRAINT `fk_property_measures_measures1` FOREIGN KEY (`measures_id`) REFERENCES `measures` (`id`),
  CONSTRAINT `fk_property_measures_properties1` FOREIGN KEY (`properties_id`) REFERENCES `properties` (`id`)
) ENGINE=InnoDB;
