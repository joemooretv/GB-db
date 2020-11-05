-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: vk_edited
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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `albums` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL,
  `decs` text,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_albums_users1_idx` (`user_id`),
  CONSTRAINT `fk_albums_users1_idx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'alias','Deleniti occaecati fugiat consequatur omnis molestias iste.',99),(2,'et','Ut quam eius debitis minima qui soluta est nulla assumenda ducimus.',30),(3,'amet','Et nam quas quos architecto odio qui vel ipsa voluptatem vero qui velit.',64),(4,'similique','Error et sit quidem odio rerum autem ab.',64),(5,'molestiae','Ut consequatur facere in rem consequatur consequatur minus.',100),(6,'eveniet','Illum officia voluptates amet eum voluptatum omnis reprehenderit incidunt enim in et.',5),(7,'est','Ut corporis tempore suscipit fuga soluta veniam adipisci et atque quos molestiae incidunt.',2),(8,'distinctio','Ducimus ab molestiae et dolore eum ipsum.',91),(9,'aspernatur','Magni laborum exercitationem sed velit autem eos accusamus amet maxime vero quia.',80),(10,'doloremque','Velit error dolorum maxime labore aut facilis magnam sunt architecto ipsum.',54),(11,'dignissimos','Quia ut assumenda nostrum facere eum eligendi.',77),(12,'voluptas','Et dicta neque modi quo totam.',68),(13,'est','Error est voluptatem in corporis cum enim quia illo.',75),(14,'fugit','Inventore hic et exercitationem qui ut aut ducimus deleniti quas.',15),(15,'modi','Modi possimus magni est omnis incidunt debitis est odit.',59),(16,'autem','Nobis beatae voluptatem eos deleniti exercitationem similique.',70),(17,'beatae','Ab libero itaque ut ipsam incidunt architecto.',47),(18,'et','Nobis quas dolorum laborum quam neque ea.',73),(19,'sapiente','Cupiditate officiis ut consequatur fuga nemo culpa.',16),(20,'debitis','Porro vel voluptas earum cupiditate maiores eligendi eius.',92),(21,'saepe','Voluptates ipsam saepe aut nemo nisi soluta ea dolor voluptatibus.',63),(22,'vitae','Aut mollitia quis aspernatur reiciendis laborum molestiae dicta est.',12),(23,'provident','Enim quisquam officiis excepturi et sequi tempore deserunt exercitationem et.',65),(24,'aut','Debitis fuga cumque officia quasi voluptates quidem minima.',61),(25,'quas','Iure iusto dolore aut reprehenderit quod neque voluptatum voluptatem minus rem in eos.',16),(26,'omnis','Nisi occaecati dignissimos nobis incidunt rerum.',79),(27,'aut','Ullam qui porro odio ut et voluptatem saepe eaque deserunt asperiores dignissimos.',22),(28,'est','Quasi non quaerat perspiciatis qui dolorem ut est sapiente ut odit et.',90),(29,'culpa','Consequatur earum incidunt qui accusantium sequi eveniet aut repudiandae modi delectus consequatur.',9),(30,'est','Exercitationem ducimus sit expedita fuga velit neque quis animi qui eos.',81),(31,'quia','Aut dolorum voluptates ut autem expedita aperiam quaerat.',51),(32,'repellendus','Ut ut exercitationem rem autem sunt incidunt nisi accusamus.',7),(33,'consequatur','Neque quidem vitae id nulla id veniam sunt alias.',10),(34,'ab','Asperiores id repellendus magni atque earum quia aut ea porro ullam rem accusantium.',15),(35,'accusantium','Quibusdam quis laudantium possimus exercitationem nam delectus sit dolorem illo esse accusantium.',71),(36,'aut','Libero excepturi voluptatem corrupti perferendis tempore ipsum.',9),(37,'ab','Dolor ullam molestias voluptas sed asperiores accusantium dolore accusantium tenetur in.',19),(38,'quia','Doloribus est sed ullam voluptatem aspernatur natus et suscipit delectus voluptatibus.',72),(39,'nostrum','Rerum unde rem qui porro cumque magni doloribus qui quaerat harum.',99),(40,'at','Ut voluptas necessitatibus provident et et explicabo facere.',98),(41,'eligendi','Cumque cum non qui totam tempora eos qui repellendus omnis aliquid illo numquam.',26),(42,'architecto','Voluptatem rerum qui quod aperiam provident facilis labore quisquam.',76),(43,'qui','Ut et expedita quos consequatur voluptatem quae est minus.',65),(44,'quae','Vel ullam error et dolorum sit esse cupiditate occaecati vel laboriosam dolorem eum.',100),(45,'ullam','Molestias consectetur sunt voluptate fugiat eligendi consequatur omnis ut.',90),(46,'quo','Eos autem aut corrupti molestiae natus rerum sapiente.',24),(47,'et','Neque adipisci voluptate modi optio rem minima blanditiis ad et quo cupiditate.',70),(48,'corrupti','Ut quia omnis eos cumque similique omnis sit libero.',37),(49,'a','Deserunt id autem id veniam reiciendis nobis magnam vero odit.',96),(50,'ipsum','Laudantium dolores quisquam vel sed aut voluptas voluptatem quasi molestiae quibusdam veniam.',86),(51,'natus','Voluptatem placeat vero debitis a sint nam repellat laboriosam.',28),(52,'aspernatur','Fugiat vel unde at earum consequuntur molestias sed iusto veritatis sequi pariatur.',59),(53,'non','Est unde sunt in perspiciatis id et quis corporis quaerat.',97),(54,'qui','Vitae voluptatem perspiciatis nesciunt in maiores quibusdam quidem placeat dolorum voluptatem in.',93),(55,'est','Iure veniam est perspiciatis quia non velit.',20),(56,'quo','Neque tenetur alias soluta doloribus recusandae quod hic.',12),(57,'occaecati','Voluptatem aut provident sequi explicabo veniam maiores molestias aspernatur est mollitia quia.',71),(58,'qui','Dolor tempora pariatur ratione velit cumque nam facilis.',41),(59,'et','Illo voluptas et consequatur dolor necessitatibus voluptatem est eos autem.',2),(60,'voluptatem','Aliquid et quasi hic quo sit sunt et cupiditate qui iusto eaque.',80),(61,'ut','Sed sapiente qui quia ut quibusdam et impedit ut.',21),(62,'enim','Sapiente voluptas rerum id impedit cumque suscipit aut recusandae voluptatem quam.',53),(63,'quasi','Dolorum sit in inventore deleniti id saepe debitis eaque aut qui qui corporis.',86),(64,'adipisci','Accusantium ipsum placeat consectetur numquam recusandae quo nobis non quibusdam qui.',31),(65,'exercitationem','Est officiis voluptatum cupiditate itaque assumenda exercitationem.',67),(66,'vitae','Soluta repellendus unde ut sunt sapiente dolores saepe.',57),(67,'nisi','Voluptate occaecati labore nam modi rem quod et et et.',40),(68,'voluptatem','Voluptatibus nam eligendi ut molestiae recusandae ullam reprehenderit commodi debitis quia.',86),(69,'rerum','Nostrum consequatur dicta dolores quia sed eligendi officia quasi optio odit dignissimos.',29),(70,'ut','Deleniti nobis rerum aut ut harum consectetur suscipit molestias quia est vero quas.',39),(71,'ex','Sunt et ipsum illum quo vero hic.',84),(72,'sit','Cum delectus minus laboriosam omnis voluptatem consectetur ab quibusdam eum.',54),(73,'consequatur','Delectus fugit quidem vel id est harum.',14),(74,'ullam','Amet nam non voluptatum quis similique delectus ut qui.',48),(75,'sequi','Quis totam id odio amet ea.',54),(76,'iure','Nisi est et neque minima labore rerum ratione ex non veniam.',3),(77,'reprehenderit','Dolor error voluptates enim numquam enim.',71),(78,'consequuntur','Laudantium rerum neque dolorem ea sunt molestiae deleniti incidunt molestias voluptate distinctio.',23),(79,'est','Eos totam quia delectus ullam officiis dolorem quasi velit et facere.',39),(80,'quis','Possimus praesentium voluptas ut quasi inventore excepturi modi rerum placeat ea animi.',67),(81,'numquam','Tenetur sint nisi quo facere aut error quisquam accusantium quis ex voluptates.',9),(82,'necessitatibus','Voluptatem sit quia excepturi autem qui molestiae ullam quidem dolorem.',67),(83,'qui','Quod blanditiis laudantium aut necessitatibus veritatis aut minus.',26),(84,'ut','Error error voluptas ut iusto quas ducimus dolor.',5),(85,'deserunt','Adipisci est et optio perferendis vitae.',60),(86,'quam','Nemo reprehenderit vero magni eos autem inventore dignissimos enim velit in.',45),(87,'facere','Nihil exercitationem corrupti doloribus aliquid repellat quo optio tempore vero repellat.',17),(88,'nesciunt','Eum eius porro itaque amet doloremque totam eos dolorum.',30),(89,'inventore','Facere impedit repudiandae ea odio velit reiciendis aut eaque qui.',86),(90,'mollitia','Nisi dolore ad optio dolorum porro vitae quod id.',19),(91,'excepturi','Omnis ut quidem voluptatem consequatur sint aperiam commodi voluptas.',9),(92,'id','Nam est sunt facilis eum molestias voluptatum labore amet placeat sit.',7),(93,'laboriosam','Voluptates accusantium velit tenetur aspernatur earum repellat eum deleniti dicta nam nisi.',71),(94,'voluptas','Eveniet vitae repellendus in itaque architecto alias pariatur.',95),(95,'inventore','Aliquid tempora distinctio placeat et ab dolorum maiores quia corrupti temporibus.',37),(96,'eius','Vero perspiciatis eum ipsum qui molestiae rerum fugit laborum ex.',38),(97,'corrupti','Eum quisquam similique dolore dolores quod quibusdam pariatur praesentium et.',51),(98,'sint','Aspernatur quos doloribus saepe voluptatum quo est cumque rerum.',77),(99,'quia','Quasi expedita ea quia ut nihil ea in voluptatem deserunt corporis fugit.',23),(100,'tempore','Nesciunt velit asperiores recusandae tempora magnam earum saepe voluptatibus inventore.',80);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `communities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL,
  `admin_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_communities_users1_idx` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'rem',23),(2,'sit',30),(3,'aut',40),(4,'et',48),(5,'nesciunt',8),(6,'et',94),(7,'assumenda',7),(8,'est',77),(9,'fugiat',19),(10,'laudantium',42),(11,'molestiae',81),(12,'veniam',89),(13,'numquam',19),(14,'ut',39),(15,'aut',28),(16,'non',100),(17,'quos',26),(18,'consequuntur',37),(19,'excepturi',91),(20,'nostrum',38),(21,'illo',55),(22,'labore',100),(23,'aperiam',59),(24,'corporis',30),(25,'delectus',19),(26,'sed',42),(27,'ducimus',65),(28,'nemo',82),(29,'deserunt',56),(30,'aliquid',18),(31,'et',61),(32,'velit',79),(33,'quia',48),(34,'consequuntur',1),(35,'minima',27),(36,'et',55),(37,'modi',95),(38,'provident',33),(39,'voluptate',32),(40,'nihil',13);
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `friend_requests` (
  `from_user_id` int NOT NULL,
  `to_user_id` int NOT NULL,
  `status` tinyint unsigned NOT NULL COMMENT 'статус: 0 - запрос, 1 - подтвержден, 2 - отклонен',
  PRIMARY KEY (`from_user_id`,`to_user_id`),
  KEY `fk_friend_requests_users1_idx` (`from_user_id`),
  KEY `fk_friend_requests_users2_idx` (`to_user_id`),
  CONSTRAINT `fk_friend_requests_users1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_friend_requests_users2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_requests`
--

LOCK TABLES `friend_requests` WRITE;
/*!40000 ALTER TABLE `friend_requests` DISABLE KEYS */;
INSERT INTO `friend_requests` VALUES (4,39,2),(6,91,1),(6,98,1),(9,14,1),(9,83,2),(9,88,2),(10,14,2),(10,68,1),(10,71,0),(11,18,1),(13,25,1),(13,67,1),(13,72,2),(19,25,0),(20,62,0),(21,1,2),(21,99,0),(22,38,0),(22,61,2),(27,22,0),(27,69,2),(28,9,0),(28,68,1),(28,82,0),(29,32,0),(30,64,1),(32,8,1),(32,49,0),(32,70,1),(34,39,0),(35,64,0),(37,8,2),(37,28,1),(37,43,1),(37,58,1),(38,38,1),(38,63,2),(39,42,1),(40,32,1),(40,35,2),(40,42,1),(41,66,1),(42,92,1),(45,47,2),(49,25,1),(49,44,1),(49,90,0),(50,96,2),(51,16,2),(51,55,1),(51,77,2),(55,56,2),(55,94,1),(56,7,0),(57,43,2),(57,86,2),(58,55,2),(60,26,2),(60,39,2),(62,65,2),(63,81,2),(64,31,2),(64,93,0),(68,3,0),(69,46,1),(70,20,0),(70,62,0),(71,37,1),(71,64,2),(72,12,0),(73,6,2),(73,37,2),(74,30,2),(75,36,1),(75,66,0),(75,96,2),(76,16,2),(78,79,2),(78,99,2),(80,62,1),(83,57,2),(83,92,2),(85,48,0),(85,59,0),(85,84,0),(86,11,0),(87,3,2),(87,43,2),(90,51,1),(91,14,1),(91,31,2),(91,66,1),(93,37,1),(93,47,0),(94,43,2),(96,23,0),(96,79,2),(98,37,1),(99,97,2),(100,63,2);
/*!40000 ALTER TABLE `friend_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `likes` (
  `like_from` int NOT NULL,
  `like_to_media` int DEFAULT NULL,
  `like_to_message` int DEFAULT NULL,
  `is_active` bit(1) DEFAULT b'0',
  UNIQUE KEY `media` (`like_from`,`like_to_media`),
  UNIQUE KEY `message` (`like_from`,`like_to_message`),
  KEY `fk_likes_users1_idx` (`like_from`),
  KEY `fk_likes_media1_idx` (`like_to_media`),
  KEY `fk_likes_messages1_idx` (`like_to_message`),
  CONSTRAINT `fk_likes_media1_idx` FOREIGN KEY (`like_to_media`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_likes_messages1` FOREIGN KEY (`like_to_message`) REFERENCES `messages` (`id`),
  CONSTRAINT `fk_likes_users1_idx` FOREIGN KEY (`like_from`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,2,NULL,_binary ''),(1,9,NULL,_binary '\0'),(1,19,NULL,_binary '\0'),(1,73,NULL,_binary '\0'),(1,80,NULL,_binary '\0'),(3,80,NULL,_binary '\0'),(20,80,NULL,_binary ''),(2,80,NULL,_binary '\0'),(1,51,NULL,_binary ''),(2,9,NULL,_binary ''),(2,19,NULL,_binary ''),(2,73,NULL,_binary '\0'),(2,51,NULL,_binary ''),(3,9,NULL,_binary ''),(3,19,NULL,_binary ''),(3,73,NULL,_binary ''),(3,51,NULL,_binary ''),(4,51,NULL,_binary ''),(5,51,NULL,_binary '\0'),(6,51,NULL,_binary ''),(7,51,NULL,_binary ''),(1,34,NULL,_binary ''),(1,38,NULL,_binary ''),(2,34,NULL,_binary ''),(2,38,NULL,_binary ''),(3,34,NULL,_binary ''),(3,38,NULL,_binary ''),(1,98,NULL,_binary ''),(2,98,NULL,_binary ''),(3,98,NULL,_binary ''),(4,98,NULL,_binary ''),(5,98,NULL,_binary ''),(6,98,NULL,_binary ''),(1,52,NULL,_binary ''),(2,52,NULL,_binary ''),(3,52,NULL,_binary '\0'),(4,52,NULL,_binary '\0'),(5,52,NULL,_binary ''),(6,52,NULL,_binary ''),(1,60,NULL,_binary ''),(2,60,NULL,_binary ''),(3,60,NULL,_binary ''),(4,60,NULL,_binary ''),(5,60,NULL,_binary ''),(1,88,NULL,_binary ''),(2,88,NULL,_binary ''),(3,88,NULL,_binary ''),(4,88,NULL,_binary ''),(5,88,NULL,_binary ''),(6,88,NULL,_binary ''),(1,59,NULL,_binary ''),(2,59,NULL,_binary ''),(3,59,NULL,_binary ''),(4,59,NULL,_binary ''),(5,59,NULL,_binary '\0'),(6,59,NULL,_binary ''),(1,95,NULL,_binary ''),(2,95,NULL,_binary ''),(3,95,NULL,_binary ''),(4,95,NULL,_binary ''),(5,95,NULL,_binary ''),(6,95,NULL,_binary ''),(1,22,NULL,_binary ''),(2,22,NULL,_binary ''),(3,22,NULL,_binary ''),(4,22,NULL,_binary ''),(5,22,NULL,_binary ''),(6,22,NULL,_binary ''),(1,NULL,19,_binary ''),(2,NULL,19,_binary ''),(3,NULL,19,_binary ''),(4,NULL,19,_binary ''),(5,NULL,19,_binary ''),(6,NULL,19,_binary ''),(1,NULL,90,_binary ''),(2,NULL,90,_binary ''),(3,NULL,90,_binary ''),(4,NULL,90,_binary ''),(5,NULL,90,_binary ''),(6,NULL,90,_binary ''),(1,NULL,16,_binary ''),(2,NULL,16,_binary ''),(3,NULL,16,_binary ''),(4,NULL,16,_binary ''),(5,NULL,16,_binary ''),(6,NULL,16,_binary ''),(1,NULL,18,_binary ''),(2,NULL,18,_binary ''),(3,NULL,18,_binary ''),(4,NULL,18,_binary ''),(5,NULL,18,_binary ''),(6,NULL,18,_binary ''),(1,NULL,29,_binary ''),(2,NULL,29,_binary ''),(1,NULL,42,_binary ''),(2,NULL,42,_binary ''),(3,NULL,42,_binary ''),(4,NULL,42,_binary ''),(5,NULL,42,_binary ''),(6,NULL,42,_binary ''),(1,NULL,81,_binary ''),(2,NULL,81,_binary ''),(3,NULL,81,_binary ''),(4,NULL,81,_binary ''),(1,NULL,8,_binary ''),(2,NULL,8,_binary ''),(3,NULL,8,_binary ''),(4,NULL,8,_binary ''),(5,NULL,8,_binary ''),(6,NULL,8,_binary ''),(11,83,NULL,_binary ''),(11,NULL,9,_binary '\0'),(18,NULL,10,_binary ''),(20,6,NULL,_binary ''),(4,55,NULL,_binary ''),(4,NULL,55,_binary ''),(4,NULL,57,_binary ''),(4,NULL,44,_binary ''),(4,44,NULL,_binary ''),(4,NULL,54,_binary ''),(4,84,NULL,_binary '');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `media` (
  `id` int NOT NULL AUTO_INCREMENT,
  `media_type_id` int NOT NULL,
  `text` text,
  `file` blob COMMENT '/files/img/01.jpg',
  `size` int DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `users_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_media_media_types1_idx` (`media_type_id`),
  KEY `fk_media_users1_idx` (`users_id`),
  CONSTRAINT `fk_media_media_types1_idx` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `fk_media_users1_idx` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,2,'Qui impedit quae in non voluptatem.',NULL,20023009,NULL,72),(2,3,'Expedita quia esse fugit omnis aut dicta.',NULL,95370,NULL,84),(3,1,'Qui corporis voluptatem et ut.',NULL,1,NULL,62),(4,3,'Dicta tempora quam saepe ea.',NULL,801,NULL,86),(5,4,'Atque inventore esse qui esse ut.',NULL,75,NULL,50),(6,1,'Praesentium autem laborum ipsa et perspiciatis cum quia soluta.',NULL,36054237,NULL,63),(7,2,'Voluptas eligendi qui velit non totam voluptatem saepe.',NULL,33535187,NULL,17),(8,2,'Officia sed reiciendis sit tempore laborum quia est.',NULL,3620022,NULL,12),(9,1,'Ut necessitatibus aliquid ut consequuntur accusamus quae voluptatibus.',NULL,9479,NULL,40),(10,3,'Molestiae commodi voluptas sunt quidem.',NULL,95813,NULL,94),(11,3,'Sed nihil et repellat.',NULL,28765,NULL,93),(12,4,'Veritatis nisi earum consequatur corporis.',NULL,950,NULL,74),(13,2,'Quia vitae omnis nihil non tempore odio iure totam.',NULL,703791,NULL,49),(14,1,'Perferendis ut nam praesentium tempore aliquam.',NULL,24543627,NULL,84),(15,4,'Id aut libero et perferendis quidem porro vitae neque.',NULL,7,NULL,92),(16,2,'Aut et reiciendis eos voluptas ex voluptatem debitis soluta.',NULL,9494,NULL,4),(17,3,'Laborum facilis iure velit occaecati qui repellendus quis eaque.',NULL,9465363,NULL,2),(18,4,'Molestiae unde quod qui est harum iste.',NULL,41408326,NULL,86),(19,3,'Aut assumenda natus consequatur et ad.',NULL,75,NULL,40),(20,3,'Natus nulla tenetur ut eligendi.',NULL,66270,NULL,58),(21,4,'Voluptatem enim sint quae id non quam.',NULL,7095,NULL,84),(22,1,'Porro tenetur odio et suscipit doloribus voluptas explicabo.',NULL,7941694,NULL,19),(23,1,'Inventore quis quis et ut inventore.',NULL,897292942,NULL,51),(24,2,'Fugiat et cum optio.',NULL,452700,NULL,2),(25,4,'Laborum nulla expedita eos aspernatur.',NULL,611291205,NULL,4),(26,4,'Necessitatibus perferendis veniam eum.',NULL,914961,NULL,49),(27,4,'Optio beatae aut quisquam sequi quo excepturi occaecati.',NULL,20,NULL,91),(28,1,'Ut totam quis molestiae cum.',NULL,7,NULL,25),(29,2,'Quas dolor earum ipsam ut ratione voluptas rerum.',NULL,3846,NULL,23),(30,1,'Dicta quis est error aspernatur ducimus necessitatibus.',NULL,888840126,NULL,16),(31,1,'Ex natus molestiae ea qui neque tempora cupiditate ut.',NULL,812,NULL,54),(32,1,'Et esse recusandae ratione consequatur et.',NULL,138433984,NULL,79),(33,3,'Maxime distinctio veritatis voluptate ut architecto animi.',NULL,704,NULL,6),(34,3,'Quas veniam voluptas qui recusandae non.',NULL,0,NULL,20),(35,2,'Sint ullam occaecati dolore est sit rerum placeat.',NULL,99,NULL,36),(36,4,'Praesentium quisquam laborum cupiditate eligendi distinctio et autem.',NULL,92265392,NULL,35),(37,1,'Quis repellendus quaerat dolor unde est laborum pariatur.',NULL,917153733,NULL,98),(38,3,'Ut autem molestias omnis a velit.',NULL,64562490,NULL,20),(39,2,'Quis voluptate ut labore.',NULL,91,NULL,84),(40,1,'Et perferendis qui nihil ut qui.',NULL,0,NULL,39),(41,4,'Autem est perspiciatis architecto repudiandae.',NULL,198779,NULL,16),(42,4,'Dolore iste maiores numquam qui.',NULL,603,NULL,83),(43,1,'Maiores deleniti blanditiis et provident a tempore officia.',NULL,534433,NULL,9),(44,1,'Consequatur quia adipisci omnis ad minus id.',NULL,0,NULL,45),(45,2,'Doloribus sed distinctio aut cupiditate iusto.',NULL,8,NULL,16),(46,3,'Qui porro ut voluptatem corporis numquam laborum et.',NULL,44,NULL,46),(47,3,'Est quis officia vel laborum est eum labore.',NULL,5374,NULL,80),(48,1,'Aliquam et iure iure unde.',NULL,81473,NULL,25),(49,4,'Voluptate optio ea non vel aut.',NULL,5134,NULL,88),(50,2,'Nobis quo ipsa vitae at vel voluptatem qui quisquam.',NULL,38,NULL,31),(51,1,'Velit facilis omnis enim sit non aut.',NULL,3,NULL,22),(52,3,'Voluptatem vel dolorem voluptatem aut.',NULL,59768,NULL,42),(53,1,'Repudiandae et minima a nulla.',NULL,933,NULL,18),(54,3,'Eum voluptates saepe voluptas doloribus aspernatur earum doloremque non.',NULL,3,NULL,68),(55,1,'Omnis nihil excepturi reprehenderit voluptate laborum.',NULL,1301,NULL,81),(56,1,'Facilis nulla explicabo architecto deserunt non itaque id.',NULL,455,NULL,88),(57,4,'Voluptas nostrum consectetur totam ipsum et.',NULL,74668,NULL,93),(58,3,'Voluptatem distinctio est voluptas ducimus neque in rerum.',NULL,0,NULL,1),(59,1,'Consectetur et laudantium consequatur suscipit sed consequatur voluptas.',NULL,3828,NULL,77),(60,2,'Et dolores molestias ut labore vel autem ab.',NULL,133189684,NULL,33),(61,4,'Non est asperiores totam soluta numquam dolore aut.',NULL,31622,NULL,6),(62,4,'Ipsam voluptate consequatur omnis sunt vero eos.',NULL,681571910,NULL,61),(63,4,'Aliquid eos odio sint officia consequuntur accusantium id.',NULL,11465240,NULL,2),(64,4,'Exercitationem id assumenda quia facilis quo et.',NULL,305,NULL,70),(65,4,'Et ab modi libero et ducimus id.',NULL,0,NULL,30),(66,4,'Hic est aut esse velit a odit itaque.',NULL,525458,NULL,12),(67,3,'Sunt autem occaecati reprehenderit omnis reprehenderit ducimus facilis et.',NULL,0,NULL,65),(68,3,'Atque neque quisquam debitis omnis consequuntur ut numquam.',NULL,79,NULL,71),(69,4,'Accusantium qui ullam tempora eius veritatis eum.',NULL,968,NULL,13),(70,2,'Rem eveniet tenetur quasi hic dicta.',NULL,107279,NULL,83),(71,4,'Ut et quia numquam laborum voluptatum.',NULL,657098648,NULL,45),(72,3,'Soluta consequatur expedita qui atque similique velit delectus.',NULL,73131586,NULL,88),(73,2,'Sed excepturi veniam et id at cupiditate.',NULL,92,NULL,40),(74,4,'Neque est dolores libero corporis.',NULL,8,NULL,39),(75,1,'Fugit mollitia fugiat architecto quis commodi quasi.',NULL,5343869,NULL,34),(76,3,'Voluptatem nostrum aliquid cupiditate temporibus.',NULL,46,NULL,8),(77,2,'Sunt suscipit temporibus eveniet est.',NULL,436711552,NULL,50),(78,3,'Eaque nesciunt quis maxime voluptatem nemo corrupti.',NULL,984070,NULL,25),(79,3,'Consequatur voluptate assumenda ut ut corporis rerum ut.',NULL,479263363,NULL,54),(80,4,'Repellendus similique ducimus qui in quasi error culpa.',NULL,797424,NULL,40),(81,4,'Molestiae et dolores error commodi aperiam et laboriosam.',NULL,1014,NULL,94),(82,3,'Dicta voluptas quo error rem magnam incidunt ea magni.',NULL,0,NULL,35),(83,3,'Natus quia sint provident aperiam in est vitae.',NULL,57451009,NULL,4),(84,1,'Cum mollitia et et eum fugiat quam.',NULL,3905367,NULL,41),(85,1,'Provident beatae sunt nemo molestias fugit ab.',NULL,600099267,NULL,45),(86,1,'Qui animi quo a quo aut sit.',NULL,7,NULL,9),(87,4,'Eos in minima qui.',NULL,6494520,NULL,93),(88,4,'Iusto et cumque non molestiae omnis.',NULL,0,NULL,27),(89,2,'Dignissimos aut expedita in natus expedita.',NULL,0,NULL,86),(90,3,'Impedit sapiente id corrupti dolorum nostrum.',NULL,5982,NULL,48),(91,1,'Et nihil rerum aliquid sunt natus consequatur earum.',NULL,936080269,NULL,37),(92,3,'Hic possimus suscipit sed iure.',NULL,20690074,NULL,59),(93,4,'Facilis voluptatem enim provident dignissimos.',NULL,575332,NULL,23),(94,4,'Dolorem aperiam rerum harum.',NULL,269145,NULL,37),(95,4,'Blanditiis non consectetur rerum.',NULL,6427110,NULL,77),(96,4,'Aut est aut magnam earum qui accusantium a.',NULL,21,NULL,59),(97,3,'Quo porro cum fugit saepe.',NULL,0,NULL,28),(98,4,'Fugit maxime cum aperiam officia voluptatibus voluptatem.',NULL,3,NULL,29),(99,2,'Enim nihil voluptas voluptatem et exercitationem enim qui.',NULL,93,NULL,100),(100,3,'Blanditiis iste consequatur qui ut at et quam tempora.',NULL,134219,NULL,47);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_albums`
--

DROP TABLE IF EXISTS `media_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `media_albums` (
  `id` int NOT NULL,
  `album_id` int NOT NULL,
  `media_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_media_albums_albums1_idx` (`album_id`),
  KEY `fk_media_albums_media1_idx` (`media_id`),
  CONSTRAINT `fk_media_albums_albums1_idx` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`),
  CONSTRAINT `fk_media_albums_media1_idx` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_albums`
--

LOCK TABLES `media_albums` WRITE;
/*!40000 ALTER TABLE `media_albums` DISABLE KEYS */;
INSERT INTO `media_albums` VALUES (1,13,13),(2,22,22),(3,19,19),(4,2,2),(5,27,27),(6,49,49),(7,78,78),(8,50,50),(9,99,99),(10,59,59),(11,33,33),(12,87,87),(13,88,88),(14,79,79),(15,57,57),(16,55,55),(17,72,72),(18,9,9),(19,76,76),(20,61,61),(21,35,35),(22,68,68),(23,40,40),(24,53,53),(25,65,65),(26,31,31),(27,38,38),(28,86,86),(29,47,47),(30,100,100),(31,8,8),(32,21,21),(33,46,46),(34,51,51),(35,5,5),(36,25,25),(37,82,82),(38,77,77),(39,80,80),(40,74,74),(41,93,93),(42,56,56),(43,60,60),(44,36,36),(45,32,32),(46,12,12),(47,52,52),(48,16,16),(49,73,73),(50,4,4),(51,69,69),(52,70,70),(53,67,67),(54,41,41),(55,81,81),(56,96,96),(57,97,97),(58,90,90),(59,23,23),(60,29,29),(61,34,34),(62,94,94),(63,71,71),(64,75,75),(65,3,3),(66,58,58),(67,11,11),(68,17,17),(69,15,15),(70,26,26),(71,91,91),(72,30,30),(73,1,1),(74,45,45),(75,42,42),(76,39,39),(77,89,89),(78,43,43),(79,98,98),(80,92,92),(81,10,10),(82,66,66),(83,54,54),(84,85,85),(85,95,95),(86,84,84),(87,14,14),(88,64,64),(89,6,6),(90,18,18),(91,37,37),(92,63,63),(93,24,24),(94,28,28),(95,20,20),(96,62,62),(97,7,7),(98,83,83),(99,44,44),(100,48,48);
/*!40000 ALTER TABLE `media_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `media_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'photo'),(2,'doc'),(3,'audio'),(4,'video');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_media`
--

DROP TABLE IF EXISTS `message_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message_media` (
  `id` int NOT NULL,
  `messages_id` int NOT NULL,
  `media_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_message_media_messages1_idx` (`messages_id`),
  KEY `fk_message_media_media1_idx` (`media_id`),
  CONSTRAINT `fk_message_media_media1_idx` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_message_media_messages1_idx` FOREIGN KEY (`messages_id`) REFERENCES `messages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_media`
--

LOCK TABLES `message_media` WRITE;
/*!40000 ALTER TABLE `message_media` DISABLE KEYS */;
INSERT INTO `message_media` VALUES (1,63,43),(2,55,80),(3,38,70),(4,93,52),(5,64,38),(6,30,46),(7,26,31),(8,22,49),(9,8,63),(10,78,37),(11,61,38),(12,17,59),(13,71,56),(14,91,35),(15,37,46),(16,40,14),(17,72,23),(18,67,31),(19,56,17),(20,58,92),(21,49,76),(22,90,44),(23,53,100),(24,86,44),(25,39,56),(26,85,61),(27,20,50),(28,10,76),(29,84,87),(30,68,43),(31,76,30),(32,9,68),(33,7,5),(34,44,87),(35,48,24),(36,52,92),(37,46,60),(38,34,89),(39,60,10),(40,33,100),(41,25,18),(42,97,84),(43,15,77),(44,47,28),(45,54,34),(46,51,74),(47,29,46),(48,1,87),(49,36,93),(50,57,64),(51,75,10),(52,80,73),(53,43,83),(54,21,17),(55,50,51),(56,27,13),(57,89,36),(58,74,39),(59,79,54),(60,88,25),(61,81,88),(62,73,64),(63,16,41),(64,18,17),(65,32,33),(66,4,33),(67,11,23),(68,6,57),(69,99,91),(70,96,48),(71,59,41),(72,82,27),(73,13,42),(74,2,54),(75,77,98),(76,98,42),(77,100,62),(78,92,74),(79,41,46),(80,23,60),(81,83,65),(82,62,8),(83,28,24),(84,12,70),(85,95,12),(86,31,68),(87,94,77),(88,35,66),(89,65,97),(90,5,94),(91,42,78),(92,69,78),(93,24,89),(94,70,87),(95,3,22),(96,66,8),(97,45,66),(98,87,4),(99,14,88),(100,19,24);
/*!40000 ALTER TABLE `message_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_types`
--

DROP TABLE IF EXISTS `message_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_message_types_messages1_idx` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_types`
--

LOCK TABLES `message_types` WRITE;
/*!40000 ALTER TABLE `message_types` DISABLE KEYS */;
INSERT INTO `message_types` VALUES (1,'message'),(2,'comment'),(3,'post');
/*!40000 ALTER TABLE `message_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `from_user_id` int NOT NULL,
  `to_user_id` int NOT NULL,
  `text` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message_types_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_messages_users1_idx` (`from_user_id`),
  KEY `fk_messages_users2_idx` (`to_user_id`),
  KEY `fk_messages_message_types1_idx` (`message_types_id`),
  CONSTRAINT `fk_messages_message_types1_idx` FOREIGN KEY (`message_types_id`) REFERENCES `message_types` (`id`),
  CONSTRAINT `fk_messages_users1_idx` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_messages_users2_idx` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,23,47,'Omnis sed nulla amet beatae porro consequatur sint.','2016-03-11 10:35:24',1),(2,31,100,'Sed excepturi facilis cum est dolorem sint.','1974-05-07 18:04:54',3),(3,80,86,'Occaecati alias illo error sunt sit.','2020-01-25 22:31:08',1),(4,62,8,'Consequatur quasi voluptatem asperiores facere ea architecto aspernatur.','2001-03-05 04:09:30',2),(5,99,36,'Qui assumenda a repellendus magnam.','2004-12-25 12:56:57',2),(6,7,92,'Sint aut molestias et dolor nemo nulla.','2010-03-28 16:46:27',1),(7,83,76,'Id aut repudiandae voluptas est maiores voluptatem ipsum.','2013-03-31 11:10:37',2),(8,18,33,'Esse distinctio aspernatur cum doloremque commodi.','1993-10-01 13:38:53',2),(9,77,14,'Doloribus saepe praesentium nostrum.','1973-12-25 00:37:18',1),(10,84,28,'Est ipsa consequatur doloremque similique perspiciatis.','2020-03-23 04:12:55',1),(11,23,51,'Ipsam totam debitis sint.','1986-09-07 05:01:21',2),(12,28,82,'Et omnis itaque eveniet ea mollitia numquam.','1979-03-20 04:06:27',2),(13,4,61,'At dolores dolorum autem sed cum sed.','1997-04-03 07:00:22',2),(14,9,23,'Quasi officiis corporis dolore occaecati.','1988-09-27 17:45:03',2),(15,72,22,'Ut adipisci maiores doloremque ad omnis.','2010-02-03 07:39:06',3),(16,10,29,'Et aut earum iure nostrum ea.','2016-09-20 12:05:20',3),(17,15,12,'Qui vel molestiae quae porro nihil consequatur illo rem.','2020-03-11 14:25:36',2),(18,60,29,'Possimus voluptatem corrupti animi ipsa ut.','2005-01-13 13:35:00',3),(19,23,5,'Officia suscipit provident reiciendis alias ut sed asperiores.','1970-02-09 01:43:41',3),(20,52,89,'Ipsam voluptatum voluptatem soluta ea.','1975-12-18 22:03:08',1),(21,61,11,'Sunt quisquam voluptas fuga laboriosam omnis quae.','1972-05-08 12:04:57',3),(22,17,39,'Ab nemo sed omnis non possimus unde facere.','2002-11-26 15:40:00',2),(23,73,43,'Aspernatur vero earum eos et qui.','2004-06-27 14:00:50',1),(24,13,51,'Et fugiat atque hic numquam fuga.','1973-07-08 09:35:42',2),(25,61,23,'Architecto repellendus et ab ipsum rerum similique.','1984-05-29 18:17:07',2),(26,45,32,'Id asperiores eaque totam illo est.','2020-09-22 14:00:42',3),(27,21,47,'Repellat qui vel necessitatibus ratione debitis et aut.','1979-04-10 12:36:55',1),(28,72,6,'Labore sapiente dolorem ad deserunt.','1993-01-04 03:57:30',1),(29,56,29,'Vitae vitae distinctio repellendus error.','1994-12-17 12:33:16',2),(30,53,81,'Quia ea aliquam maiores rerum id eius.','1998-04-14 05:08:42',1),(31,77,41,'Temporibus quia ducimus voluptatem itaque autem voluptatum est.','1976-05-12 15:46:38',2),(32,53,58,'Dolorem et delectus quod.','2013-04-24 12:38:16',3),(33,9,30,'Nihil blanditiis quas et nulla veniam et quae.','2011-10-01 09:27:51',1),(34,27,43,'Nemo quo ea et.','1996-08-07 16:26:11',2),(35,67,13,'Mollitia illum explicabo corporis magnam.','2007-01-04 04:45:46',3),(36,29,49,'Neque voluptas culpa veniam.','2002-04-01 00:35:48',1),(37,19,69,'Deleniti atque autem sint ex autem qui qui.','1977-09-29 13:49:40',2),(38,21,41,'Aperiam labore blanditiis voluptates unde molestiae et illum.','2000-10-21 00:46:34',3),(39,51,96,'Vel dolores impedit velit facere explicabo at et.','1987-01-14 07:05:46',1),(40,85,48,'Incidunt itaque dolorem consectetur quam hic nisi.','2011-01-20 10:21:17',3),(41,9,25,'Et perferendis ullam alias.','2000-10-27 17:33:29',1),(42,43,78,'Rem voluptatem aut veritatis consequatur.','1990-02-19 22:54:00',3),(43,16,86,'Ut aut enim explicabo nostrum unde totam.','2004-02-11 23:28:11',1),(44,43,37,'Sed dolor tempora similique odit pariatur maiores.','2011-12-16 12:27:00',2),(45,37,43,'Saepe voluptas maxime et architecto quasi quas enim.','1991-10-25 02:30:50',2),(46,43,37,'Ut velit quo omnis natus minima.','1976-06-22 00:42:47',1),(47,6,25,'Dignissimos praesentium cumque minus autem laborum nostrum laudantium.','1993-09-09 20:43:22',3),(48,71,37,'Tenetur eaque aliquid expedita delectus explicabo consequatur ullam.','2006-06-11 02:38:23',1),(49,37,93,'Sed autem reprehenderit eaque voluptate.','2016-11-16 07:14:28',1),(50,45,80,'Et rerum qui repellendus atque sapiente est cumque recusandae.','1978-02-28 21:56:17',2),(51,25,89,'Fugit possimus dolor ea eligendi quia veniam culpa.','1973-05-19 18:07:07',3),(52,47,32,'Facere quisquam aperiam aliquid molestiae ducimus aperiam eaque debitis.','2000-06-19 12:44:17',2),(53,26,48,'Dolorem repudiandae aut veritatis possimus tenetur doloribus qui.','1989-09-09 12:10:51',2),(54,34,79,'Voluptates molestiae corrupti fugiat reprehenderit.','1980-09-06 23:44:57',2),(55,85,76,'Alias voluptatibus ad officia nesciunt hic.','1983-08-20 18:49:50',1),(56,40,61,'Rerum voluptates dolorem inventore maiores expedita dolores enim repudiandae.','2013-10-22 06:07:00',2),(57,28,37,'Ea sunt culpa consequuntur quo totam magni porro quo.','1988-10-21 11:08:23',2),(58,37,28,'Rerum id aut ad sequi.','2009-03-19 07:50:55',1),(59,27,37,'Ut voluptatem explicabo temporibus voluptatibus occaecati.','2011-07-20 03:25:12',1),(60,28,37,'Explicabo voluptatibus provident velit consequatur.','2018-05-23 07:16:36',3),(61,91,37,'Expedita dolorum veniam laborum explicabo amet.','2016-01-21 11:32:15',3),(62,72,37,'Qui veritatis libero temporibus voluptas.','1989-10-05 01:54:16',1),(63,28,37,'Rerum voluptatem ratione velit ipsam tempora tenetur qui.','1977-10-28 15:26:43',2),(64,28,37,'Cumque quo recusandae dolores ex est.','1973-09-10 07:54:13',1),(65,28,37,'Enim harum fuga quo omnis consectetur.','1979-12-22 17:16:04',1),(66,62,37,'Aut dolorem et dolore.','1985-04-23 03:17:40',2),(67,1,23,'Dolor fuga consectetur tempore ab voluptas omnis voluptatum voluptates.','1997-08-20 23:00:38',1),(68,65,37,'Quia in eum culpa magni facere excepturi in sed.','1999-05-02 23:54:05',3),(69,74,63,'Nesciunt debitis aut natus dolorem.','2012-03-21 00:17:13',2),(70,78,98,'Velit laboriosam consequatur numquam reprehenderit debitis ad quo.','2008-09-07 14:41:56',3),(71,61,88,'Minus possimus voluptas recusandae ipsam.','1994-05-20 16:53:19',1),(72,33,60,'Quasi itaque officiis eos magni dolores molestiae.','1984-02-23 21:47:55',1),(73,36,13,'Eos similique tempora et.','1994-07-08 04:01:18',2),(74,86,61,'Voluptas blanditiis nobis qui voluptatem incidunt.','2019-04-26 14:53:06',3),(75,15,89,'Et corporis totam assumenda similique et.','1997-01-27 14:28:50',2),(76,19,50,'Molestiae totam qui necessitatibus aut voluptatum possimus.','2003-03-14 05:51:35',1),(77,83,51,'Quasi ea unde corporis ea quidem praesentium sit.','1997-12-22 03:09:25',2),(78,14,15,'Necessitatibus qui veritatis et praesentium et velit.','2020-08-21 12:11:17',3),(79,82,89,'Delectus placeat in est eveniet.','1987-01-09 20:38:20',2),(80,30,66,'Consequuntur reprehenderit impedit magnam tempora est dolores culpa.','1972-03-10 07:40:54',2),(81,4,27,'Ipsum dolorem et soluta eaque.','1996-03-31 04:54:16',1),(82,26,59,'Omnis rerum blanditiis quisquam ducimus.','2018-11-23 06:04:03',3),(83,45,95,'Est recusandae rem repellendus non adipisci.','1992-10-09 01:08:05',3),(84,86,80,'Sunt qui pariatur voluptas suscipit.','2010-08-15 11:46:35',1),(85,82,94,'Aut accusantium laboriosam debitis harum.','2001-11-17 08:20:34',1),(86,19,12,'Iure non eligendi nesciunt qui.','1978-01-30 09:22:54',3),(87,36,95,'Vel quos sunt est perferendis velit totam occaecati.','2015-09-17 01:16:31',1),(88,74,8,'Deserunt qui vero provident est illum est.','1986-02-24 05:05:36',2),(89,50,90,'Quam voluptatem aut ducimus omnis est.','1993-01-15 09:48:58',1),(90,88,20,'Quasi similique ipsam omnis reiciendis error.','2016-10-30 13:39:24',3),(91,24,23,'Nam sed ratione quaerat qui culpa.','1984-04-20 21:26:41',1),(92,47,49,'Dolorem optio odio odit id rerum harum ea deserunt.','1997-10-25 13:22:12',3),(93,30,94,'Et est autem doloremque doloribus.','2010-10-14 10:53:18',3),(94,1,79,'Explicabo nesciunt possimus quo porro laudantium.','2002-08-27 19:44:03',2),(95,33,61,'Corrupti qui deleniti esse quo.','1991-08-15 15:57:24',2),(96,53,80,'Sint provident corporis eveniet assumenda debitis corporis earum.','2016-07-26 20:14:36',2),(97,23,15,'Sit cumque beatae alias ipsa sed accusamus explicabo consequatur.','1974-03-02 09:33:37',2),(98,43,89,'Et ut omnis nostrum velit aut.','2006-12-18 07:37:35',2),(99,78,38,'Adipisci ab facilis quo officiis quae.','1985-07-05 20:00:00',2),(100,1,26,'Sit neque nisi laborum.','1974-03-23 01:29:39',2);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `profiles` (
  `users_id` int NOT NULL,
  `gender` enum('m','f','x') NOT NULL,
  `birthday` date NOT NULL,
  `location` varchar(245) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`users_id`),
  KEY `fk_profiles_users_idx` (`users_id`),
  CONSTRAINT `fk_profiles_users_idx` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'x','1970-01-19','87699 Georgianna Harbors\nNorth Shannamouth, ID 58548','2003-12-07 21:51:27'),(2,'x','2015-10-07','81682 Maverick Hollow\nPort Verdashire, CA 31337','1986-04-15 04:54:45'),(3,'f','1995-03-02','89756 McGlynn Summit\nPort Aylinhaven, SC 23866','1981-01-06 18:13:52'),(4,'f','2003-07-22','966 Barbara Prairie\nGerholdland, IA 70142-5115','1994-10-04 21:57:03'),(5,'x','1981-06-13','2742 Lebsack Garden\nLuigiside, KS 99411','2012-03-21 09:19:18'),(6,'f','1992-04-14','938 Kiehn Rue\nGreenfeldershire, OR 21160-5593','2020-06-02 12:13:09'),(7,'f','2019-04-07','3564 Corwin Squares\nTiaview, NC 57250','2008-09-15 12:08:22'),(8,'f','1987-06-04','0102 Stoltenberg Mount Apt. 714\nLake Madisyn, DE 86802-3346','2010-08-09 06:02:06'),(9,'x','1980-03-15','21270 McDermott Estate\nKelsiside, DC 26410','1981-12-15 02:15:39'),(10,'x','2005-09-17','1901 Arno Mills Apt. 427\nLake Chyna, IA 95807','1971-01-28 21:58:41'),(11,'m','1996-02-27','717 Wendy Village\nSouth Carsonhaven, SC 44905-0529','2020-05-19 08:15:37'),(12,'f','1977-01-25','49345 Runolfsdottir Court Apt. 002\nNorth Filomena, IL 71520','1975-06-15 12:33:56'),(13,'x','2012-03-25','4177 Mueller Loop Apt. 795\nWest Malachi, IA 40637-1558','2017-09-15 15:59:31'),(14,'f','1986-10-21','78860 Deckow Port\nLilianahaven, MD 88749-2741','2002-09-06 01:22:37'),(15,'x','1995-04-29','46836 Weimann Square\nNew Alex, PA 92625','1972-11-12 04:28:59'),(16,'f','1999-03-24','40221 Prohaska Alley Suite 928\nSatterfieldburgh, KY 39055','2000-07-19 06:00:46'),(17,'f','1975-04-23','10176 Nicolas Park Apt. 234\nEast Brett, OR 76436-2847','1980-10-13 23:11:49'),(18,'m','1988-07-28','9130 Lebsack Track Apt. 176\nSchadenbury, PA 24501-2694','1971-03-06 13:40:03'),(19,'m','1983-11-22','8240 Boehm Park Suite 783\nWest Abigale, CT 77990','1989-12-12 13:02:48'),(20,'x','2013-03-11','12810 Ben Wall\nSouth Einarmouth, AK 99253-3339','2003-02-15 19:34:05'),(21,'m','2010-04-22','657 Smith Dale Suite 938\nSouth Rollin, WI 19066','2004-08-04 00:41:57'),(22,'f','1995-10-04','20651 Lina Station Apt. 076\nMarvinchester, SD 79598','1998-06-03 22:37:30'),(23,'x','2007-07-23','93174 Rath Common\nPort Maureenberg, KS 59086','2015-12-04 16:53:39'),(24,'m','1994-03-30','7853 Price Ford\nSchultzburgh, MI 32486-6634','2019-09-15 23:08:34'),(25,'m','2007-01-02','098 Cassin Lock Apt. 171\nDietrichfurt, VT 79689','1978-11-22 19:32:28'),(26,'x','1976-12-01','204 Steuber Neck Apt. 213\nKiehnside, CT 49555-5692','1984-05-23 03:02:15'),(27,'m','2018-03-04','85170 Ettie Junctions\nPort Hailee, IN 68948','1988-04-11 06:31:17'),(28,'m','1995-06-03','80899 Emmerich Key\nEast Nigelstad, NM 63794','2011-03-13 01:57:19'),(29,'x','1982-10-07','6665 Kuhlman Lights\nEast Forestbury, MT 62062','2016-05-27 22:53:11'),(30,'f','2017-07-17','4973 Bins Parks Apt. 592\nStammfort, FL 33392-1892','2010-05-23 09:57:29'),(31,'f','2008-09-14','27145 Adelle Pine Suite 053\nShannytown, TX 54916-2273','1996-06-10 19:28:03'),(32,'f','1997-05-04','655 Neal Cape Apt. 584\nSouth Rosendoside, TN 71245-5864','1977-03-01 08:20:04'),(33,'f','1971-07-14','5183 Mallory Gateway Suite 040\nLake Tony, ID 60785','2003-02-09 14:06:16'),(34,'m','2009-08-02','2238 Domenica Center Apt. 244\nPort Serenity, FL 64741','1970-07-24 18:50:18'),(35,'x','1971-01-19','491 Fahey Valleys\nNorth Jadefurt, PA 32229','1997-09-21 22:04:15'),(36,'x','1993-01-30','82422 Alessandra Mountain Suite 077\nMarcobury, FL 96608-1455','1999-02-23 12:34:06'),(37,'x','1994-07-07','8809 Martin Green Suite 847\nKeanuland, SD 92976-8991','2010-06-09 21:05:11'),(38,'m','1974-03-28','87963 Cali Island Suite 278\nNew Terencechester, VA 36777-1699','1978-05-03 06:56:15'),(39,'x','2005-09-17','571 Johnson Ports Suite 395\nHermanberg, KS 79311','2006-11-06 05:59:36'),(40,'f','1976-01-30','1485 Bergnaum Cliffs\nImmanuelville, WA 40671','1977-08-25 05:19:41'),(41,'f','1970-06-27','66446 Anne Island Apt. 067\nWest Tatum, PA 93970-8871','2009-06-11 13:12:00'),(42,'x','2012-10-25','49578 Ebert Glen Suite 293\nEwaldchester, WY 43673-9919','2016-07-03 20:04:28'),(43,'m','1983-08-02','62595 Nader Dale Suite 222\nAprilport, NY 99465-9767','1984-02-15 05:42:36'),(44,'x','1997-04-11','531 Liliana Course\nHermanview, OR 56364-9130','2019-03-05 16:53:00'),(45,'m','1989-12-29','900 Gutkowski Wall Apt. 803\nBerneicestad, IA 66077','2020-09-03 20:15:52'),(46,'f','1976-11-18','1754 Shanelle Loaf Suite 986\nSouth Gwen, AL 79835-5335','2005-06-21 13:09:26'),(47,'x','1989-01-08','224 Rutherford Freeway Apt. 531\nSouth Linnieshire, NC 04127-7538','1975-04-26 09:20:04'),(48,'f','1990-05-21','947 Gutkowski Fort Suite 047\nWest Oral, RI 10633-4849','1970-06-25 19:21:33'),(49,'x','1979-03-26','45380 Jonatan Trafficway\nWest Berneice, LA 51026-4031','1987-01-12 13:20:47'),(50,'x','2018-09-24','253 Mante Ways\nSouth Sally, KS 16744-9730','1975-08-16 14:06:25'),(51,'f','1988-12-12','8487 Meagan Trail Suite 541\nRogahnfort, ID 01484','1998-07-22 09:29:25'),(52,'x','1979-09-02','29022 Henderson Rest\nSouth Kellifurt, LA 49112','1983-01-16 02:37:49'),(53,'f','1990-05-23','70605 Jones Shore\nNorth Elsaburgh, DC 67693-9044','1974-06-22 07:59:13'),(54,'m','1985-12-07','42731 Lakin Points\nKodyburgh, CO 53861','2007-05-19 03:04:48'),(55,'f','1998-02-15','5735 Jaeden Mountain Suite 008\nNew Francesco, WY 31751-5208','2018-11-19 01:38:08'),(56,'m','1995-10-06','596 Demario Crescent\nCronahaven, IL 42899-2999','1986-09-16 00:22:09'),(57,'m','1974-12-20','694 Wunsch Point\nPort Adella, OK 83001','1994-10-19 21:32:33'),(58,'m','1989-09-17','32965 Rosenbaum Dam Apt. 939\nSouth Lorenaside, CO 47895','1975-10-04 11:46:12'),(59,'x','1986-05-14','15451 Nathan Parkway Apt. 243\nWest Ari, TX 33019','2012-05-29 17:54:58'),(60,'x','1978-11-29','45451 Mekhi Point Apt. 808\nAntoinettestad, NE 38540','1987-12-16 00:32:48'),(61,'m','2017-08-29','2941 Holden Wall\nNew Devin, RI 33371','1977-09-07 04:23:54'),(62,'f','2013-11-26','932 Lionel Ramp Suite 205\nNew Jermaine, CO 37001-7092','2010-05-01 17:50:28'),(63,'m','2005-02-10','06547 Weber Cliff Suite 462\nWest Janettown, DE 52930-8051','1994-08-23 21:10:48'),(64,'f','2000-03-05','19450 Cathryn Branch Suite 147\nMyriamland, RI 08430-9801','2017-08-11 09:04:29'),(65,'x','2001-08-31','064 Junior Corner\nRupertfurt, PA 24920-4538','1975-07-05 15:13:06'),(66,'m','1988-12-01','0655 Ransom Island Suite 294\nWillchester, AK 76234-6802','1999-10-24 18:12:13'),(67,'f','1996-01-11','83136 Marty Lock Apt. 804\nSouth Willard, CO 38002','2015-06-12 12:29:11'),(68,'m','1971-12-09','45809 Lonny Walk Apt. 202\nLake Gussie, WY 34476-5706','2019-07-24 07:50:20'),(69,'x','1982-03-20','471 Reyna Lock Apt. 433\nNew Mandy, AR 64548-0868','1979-01-20 00:10:42'),(70,'x','1978-11-22','5710 Cynthia Highway\nNorth Geoton, SD 24901-7011','1978-07-07 02:01:44'),(71,'x','2000-06-11','698 Miracle Light Apt. 854\nNew Domenicamouth, KS 05003-2566','2018-05-12 03:57:15'),(72,'f','2000-12-27','74119 Linda Manors\nTomstad, KY 62870','1998-11-12 22:45:37'),(73,'x','1982-08-22','372 Carson Streets\nLake Rodolfoville, IN 28870','1992-04-12 13:12:18'),(74,'x','1973-10-02','115 April Expressway\nLake Terry, CT 14364-3625','1983-02-06 02:39:23'),(75,'f','2020-05-05','50269 Benny Turnpike Apt. 538\nAlisaburgh, CO 95784','2001-05-18 15:18:49'),(76,'x','1976-04-23','2634 Judge Shoals\nSchmelermouth, VT 03649','1983-08-31 08:02:36'),(77,'x','2013-05-21','6471 Miguel Ville\nRoxannefurt, AR 53077-3598','1986-07-07 11:26:59'),(78,'m','1998-10-19','684 Pacocha Harbors\nLionelchester, OR 73268-6341','1976-11-01 19:28:24'),(79,'x','1995-10-03','4057 Enoch Landing\nStrosinville, NE 21597','1982-06-16 09:41:12'),(80,'x','2006-12-09','81171 Crist Branch Suite 246\nRobertstown, PA 81818','1974-10-08 17:21:14'),(81,'m','1996-11-22','617 Mueller Fork Apt. 921\nQuitzonstad, NV 13671-5254','2009-05-28 08:02:11'),(82,'f','1975-09-17','08148 Adela Junction Suite 698\nPort Vernville, TX 46498-0033','2006-02-09 13:40:46'),(83,'x','2020-09-19','7470 Osinski Ridges Apt. 098\nIsacview, AR 59959-7290','2013-04-14 23:42:56'),(84,'x','1973-09-25','0499 Boyer Forges Suite 715\nNew Korey, PA 30138','2001-12-25 01:45:04'),(85,'m','1976-02-19','7885 Lemke Extensions\nAlizeville, CO 44525','1973-02-15 23:35:40'),(86,'x','1978-12-06','56910 Sheldon Track\nNew Fannie, NH 97577','1989-01-22 04:49:06'),(87,'x','2004-07-16','851 Lela Mill\nNew Tre, GA 86682-3187','2011-08-05 16:19:42'),(88,'f','1974-06-23','887 Freeda Ports\nJustonport, SD 32270-7925','1970-08-24 15:28:01'),(89,'f','2006-07-19','5523 Walsh Well\nGutmannborough, MA 93174','2020-01-06 15:52:20'),(90,'f','1985-05-26','0490 Bogisich Springs\nPort Athenachester, DE 95022','2002-09-15 21:21:24'),(91,'f','2013-07-28','460 Stehr Path\nNew Valentina, DE 93673-4163','2012-12-22 18:49:25'),(92,'m','2015-06-12','514 Jocelyn Lane\nNovaborough, IN 49908','1992-10-24 06:31:25'),(93,'x','1970-08-26','2751 Ressie Station Apt. 827\nPearlineburgh, TX 03011','1983-07-07 21:57:43'),(94,'m','1988-09-11','77750 Effertz Coves Apt. 939\nSouth Pearlie, WI 77741','1986-07-26 04:40:58'),(95,'f','2005-06-06','06396 Shanny Gateway Suite 809\nNew Dasia, AZ 36818-6414','2017-02-11 14:37:16'),(96,'m','2018-07-12','134 Elena Crest\nLeliaburgh, WY 36111','2018-06-11 04:42:40'),(97,'m','1997-07-11','501 Sonny Alley Apt. 941\nSouth Adellechester, CT 91212-5511','2005-10-24 05:22:01'),(98,'x','2001-12-02','789 Zackary Tunnel Apt. 532\nWest Dustyborough, RI 71094-6569','1990-01-07 05:39:29'),(99,'m','1973-10-24','21742 Ariane Corner\nEast Torrance, MT 62130','1993-02-27 02:04:21'),(100,'x','1981-06-01','45476 Hermann Drive Suite 473\nNorth Lavinia, TN 52503-6920','1976-06-06 23:31:08');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouses_products`
--

DROP TABLE IF EXISTS `storehouses_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `storehouses_products` (
  `value` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses_products`
--

LOCK TABLES `storehouses_products` WRITE;
/*!40000 ALTER TABLE `storehouses_products` DISABLE KEYS */;
INSERT INTO `storehouses_products` VALUES (0),(2500),(0),(30),(500),(1);
/*!40000 ALTER TABLE `storehouses_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(245) NOT NULL COMMENT 'имя',
  `lastname` varchar(245) NOT NULL COMMENT 'фамилия',
  `email` varchar(245) NOT NULL,
  `phone` bigint NOT NULL COMMENT 'телефон',
  `password_hash` char(64) NOT NULL,
  `birthday` date DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  `created_at` varchar(245) DEFAULT NULL,
  `updated_at` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  KEY `firstname_lastname_idx` (`lastname`,`firstname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='пользователи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Fermin','McKenzie','shaina11@example.org',79629311157,'b488c736c6f0cd707fd136e2a812773a67159d4e','2014-03-31',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(2,'Joe','Kshlerin','jadyn.kulas@example.com',79090487169,'549b3ecc6eedf46c8c42d7646bf39e5557524066','1994-02-20',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(3,'Carol','Gibson','hintz.kariane@example.org',79679959427,'3553e2c1e1b78e9652dbac564fcbd661b52be4a9','1977-04-24',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(4,'Sadye','Gulgowski','jerad59@example.com',79268431014,'0ca3009b4ac97caeca82664d0d1cc6b5637def84','1990-08-07',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(5,'Kaycee','Keebler','morissette.major@example.com',79230848008,'dd06825cc4ac18ab16531f5514bc35e709e665b4','2019-03-12',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(6,'Gayle','Upton','ztorp@example.org',79951461595,'878bee1f81bd8260a663ada92407ce2dcea4eb46','1989-05-21',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(7,'Armani','Gerhold','sandy.abbott@example.com',79355898021,'5e20f44ef175d3f006db7fd690d990c22b0b034b','1977-12-21',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(8,'Angus','Hane','francis44@example.net',79168141054,'dc65ad2c2ddf503a40d27480919c07e14ed0e5de','1980-09-27',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(9,'Candice','Langworth','ebernhard@example.net',79854490155,'c45f4fbdc472b7348d469ae6daa23248ab71250b','1976-01-28',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(10,'Lauryn','Waters','modesta63@example.com',79295951585,'c56ee77f756887322a1305671096e640fa03f370','1974-02-18',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(11,'Marisol','Von','mae.bartell@example.net',79887291988,'998603237574086c832e381789305d0f1d5bcb1a','1985-05-12',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(12,'Enid','Bruen','kuvalis.pietro@example.com',79222843090,'f4e9f57e9332aa9d9d233057d9330d3d108b082f','1975-07-27',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(13,'Kelsi','Waters','cheyenne88@example.net',79566325122,'8bdd462450e92211e870f6166c201b7715840023','1972-12-11',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(14,'Aleen','Smitham','sabryna83@example.net',79453352546,'1994bc9a7c12dc24ed958a2e9311b5aadeae4e5a','1978-11-08',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(15,'Verner','Langosh','ona.wehner@example.com',79726757240,'ae2a950f98120de3ca6ab367a0a614c3c046bc13','2004-12-20',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(16,'Lourdes','Hickle','mcclure.chanel@example.org',79656633137,'34d4de49b6dbe4f67a3bd7483d859cbdaa0437c0','2003-06-04',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(17,'Brielle','Metz','karl.schmidt@example.org',79613540088,'7517bf0387fa0ca96d0c27ac2783dba466f90186','1993-09-22',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(18,'Kirk','Schneider','uromaguera@example.com',79823805986,'cf700ea72aa348c09567d234f8aec19130234752','1989-08-27',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(19,'Jermain','Zboncak','darwin.shields@example.com',79988207892,'57fda8c747dc4124a57750f9a9813622a37c8744','2015-05-16',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(20,'Zackary','Leannon','kyler.kunde@example.org',79008547767,'89cb6c6739dddbfcddb1aaa09ba96a8cf199bd00','2018-12-15',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(21,'Orie','Aufderhar','wallace92@example.org',79595887650,'7ad6e56f70a4eaffab6be99aaac1b7314b53b2ba','2009-12-07',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(22,'Jessica','Dooley','qankunding@example.net',79737853517,'1a7c14a73e2e4efb909342780ae079d707d4e2dd','2019-06-16',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(23,'Alexander','Fay','franz24@example.net',79984967780,'f0ef985d67d6a15a4499d9ea5445747e3808054b','1984-03-28',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(24,'Ismael','Heller','bechtelar.garrick@example.com',79319659754,'ad9d35a44dcd4e783f1adc4d54d2db885ebd4ca9','2004-08-04',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(25,'Georgette','Metz','kuhn.chyna@example.com',79598339199,'cc26d0017bb68cab95b30e286e6f5607bba7befc','2012-06-11',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(26,'Gabriel','White','kasey.bechtelar@example.net',79524137412,'bf021a669dfc9696ebb2c8ff69e5e85b55fa144c','1990-05-05',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(27,'Ethan','Pfannerstill','april03@example.com',79072678163,'d9a7921289a9923c47708b0eeedaa1032e19e7ad','2016-05-30',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(28,'Mossie','Roob','jakayla82@example.net',79169237726,'96d3b6eb538aecba94cd204404891561dda53cb4','2002-02-16',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(29,'Jamarcus','Larkin','tabitha.dach@example.com',79084142453,'81937487a3d87fb58781f935d99e171d087c1aac','2018-05-20',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(30,'Rosina','Ritchie','selena.kertzmann@example.com',79326570349,'fd373c5b3d521c99a0d704c7a9104a258e5d582f','2011-10-16',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(31,'Zachary','Baumbach','ihowe@example.com',79618433719,'6856f15a3f85143c7a2de0a06304d20af6056096','2006-03-09',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(32,'Susan','Jones','glennie.stamm@example.org',79534889962,'cacb5feceed66fee3a08572940e5fc5b1cb691e4','1979-07-04',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(33,'Samara','Howell','frami.cary@example.org',79283527420,'3562a96ff17d74b03ecc49d418fb0d304bb5a7f3','2018-06-28',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(34,'Queen','Rosenbaum','haley.alexie@example.net',79257556380,'61ecd8c3eb9891b1b3c960f5189f89ed7fafdac0','1988-04-21',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(35,'Dakota','Bergstrom','zzulauf@example.net',79211945541,'4bc4b36a709d8a87f501e505a26e31a799a1c418','1982-03-14',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(36,'Jennie','Thompson','nbailey@example.net',79988734772,'35b46106e873daf0dbe6d906aba16fcab7b60d19','2014-08-13',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(37,'Sheldon','Collins','addison.kutch@example.net',79634850951,'f52bb024432ff7c05d20e56cf561acc4b19787f1','1977-12-22',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(38,'Shayna','Hayes','joanne59@example.com',79595434031,'cd3dc91693b5d98d3288dd80d2e26234c5c487ed','1975-11-06',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(39,'Ellsworth','Armstrong','kassulke.hildegard@example.com',79748881372,'db2f7b638cd7579cf33d3540103e1b05da062c57','1987-03-28',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(40,'Caleigh','Cummerata','elliott75@example.org',79325158911,'4edafd16b373906819480c2bf929df2a1f05a62b','1996-02-10',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(41,'Webster','Cartwright','cormier.thea@example.net',79272144438,'1d833a117fa533d4c45961d7a6afa8360669ed71','2011-01-19',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(42,'Buford','White','dwaelchi@example.com',79090932408,'224c7822b80db327afa33bc7c3f46d192b8f4caa','2018-05-05',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(43,'Magdalena','Jenkins','sgoldner@example.com',79081837562,'aefba572f3b472171703b790ffcc57af65fe40c1','1993-01-31',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(44,'Louisa','Schamberger','ashlynn25@example.net',79826577546,'8eb67cb6a3d3af2aee6bf4129b0a66411db04847','2002-10-19',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(45,'Frederique','Kassulke','macey.medhurst@example.org',79219794134,'52fcc1a9822e823a87022adfe647346df34bd585','1972-01-14',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(46,'Lavinia','Klocko','leann.dickinson@example.net',79169573477,'4557114fee44933c156d6665e48489f8d61fa685','2010-04-20',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(47,'Zander','Pouros','dayton21@example.net',79157926632,'cd17391a9fa97ff04a55ead70f1fa230c1e34c53','1978-05-14',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(48,'Zelma','Muller','blanca.mayert@example.org',79960590760,'5c260edd0fd411ff57998f522c74205a0607d38a','1998-04-04',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(49,'Jewell','Kulas','price32@example.org',79488553299,'9b904a1e45811191033d73d34cac04b264459cac','1990-06-30',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(50,'Buster','Runolfsson','malachi39@example.org',79309572087,'eb4cffedf8377cbccad0811d060a9dfcbe9e2282','1978-05-03',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(51,'Tobin','Wuckert','erdman.tommie@example.com',79318761772,'c5ac145f65759dd2e14a4a21c3771a10b73897e7','2013-07-26',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(52,'Maye','Lind','dkuhlman@example.org',79989382643,'2711b75e6f3a7e44e6fbdce64e5437725a0f6bbc','1976-03-30',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(53,'Casimer','Runolfsdottir','darrel18@example.org',79739691672,'bcc3d725fb1322fd66e494e7a70f64e3c10aa426','1971-08-16',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(54,'Maya','Stokes','danny33@example.com',79680787917,'4d76ca231c227a82eb4726c744e1ab759c595785','1972-08-06',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(55,'Jody','Hayes','cristal52@example.org',79671914991,'783ec25cc832f1e95e3f8f3a002bb1f3b96051e3','2013-02-11',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(56,'Shanelle','Carter','fgrant@example.net',79225476988,'fe06b8bf16f5eeba42341424fe18a2b87ae7cbef','2001-08-25',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(57,'Oral','Doyle','myra33@example.org',79305951546,'d6421b8620b1025dee65159f48314450dae94699','1978-04-09',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(58,'Vanessa','Bins','ppredovic@example.com',79312136525,'ceb62e16b3012384483a505c0da95de3de6e23ed','1989-02-03',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(59,'Maximillian','Frami','salma78@example.com',79665509969,'2a1cd5d8463019b6bc447da31d0b225fdb2d5003','1995-08-30',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(60,'Raymundo','Weimann','eldon.schmitt@example.org',79034230618,'bd4de0656c9100d15999d4db4222e93571aef2a9','1973-07-29',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(61,'Zula','Feest','xlangosh@example.com',79665148709,'aed7267cbc8c2756f7daa4b3d10b5b54a1d952f0','1976-01-02',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(62,'Destini','Walker','lilly48@example.com',79902413132,'63f6c951c1eaf41cc733998dda98a2ac1b671faa','1971-08-27',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(63,'Octavia','Hane','hazle71@example.net',79689313895,'8fd2d1f76e343bf01a0dd0249cef76c006180dd9','1973-06-01',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(64,'Cristal','Heaney','murray.dawson@example.com',79410672839,'8b3b24fe01c571ccbc9eeb41ed8a76a7b99ecdf9','1996-01-15',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(65,'Kathryn','Durgan','deon42@example.com',79906367046,'d0a3cad6d6624620adb3f9f78f5b4daf671fa822','1999-07-26',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(66,'Keanu','Lockman','bella21@example.com',79164931098,'380ce8cf28b0add867d9251a1d914236727b37df','2011-06-24',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(67,'Hanna','Rau','pablo29@example.com',79683451361,'273654191e65dfe548c0ab153e5fa643b66accfb','1992-01-14',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(68,'Willie','Maggio','luz77@example.com',79681610642,'0bf9c9f78bc5cb1ffe8749fe5382c8e7c04a5833','2000-12-11',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(69,'Vicente','Fritsch','stoltenberg.treva@example.com',79677227336,'bc4bd028827a564f4423a23ecbfca872ea3762b6','1983-12-03',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(70,'Bo','Rohan','era63@example.net',79379635308,'3965ea50fd340a97da6fa8e243c948106efec3c2','1975-11-26',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(71,'Alford','Dickinson','mcasper@example.com',79456738194,'40fefe62eb8c4b53d0e82a20057d22fa60131099','1997-06-12',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(72,'Lizeth','Wisozk','nschowalter@example.com',79281820921,'521c60878453198155f238962cd3d11185dbf810','1997-08-30',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(73,'Raheem','Dicki','blaze.rempel@example.net',79026619171,'2c0bffd0c7adbd2ffa228da53f00531dc28b4a88','2014-06-01',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(74,'Ignacio','Parker','fermin.marquardt@example.net',79242604521,'8dae08b2c13f24c9082a7d413c170f56506851b4','1970-06-20',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(75,'Raphael','White','yazmin28@example.org',79644695704,'a2125ea2cd301f1264cc0f6f33d493aa6ec1f0aa','2003-03-11',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(76,'Berta','Spencer','karolann.wilkinson@example.com',79205240901,'6f26d925942ebf140b39392fa90e2332e3277db3','1977-04-07',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(77,'Tamara','Crist','heidenreich.lewis@example.com',79185173501,'5a15b8e84066a0ef20d70e92a18fe81abf66c85c','2015-10-31',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(78,'Katlyn','Blick','wpaucek@example.net',79441407771,'4154198719453efcc90f8add997ab7f83c40f1df','2018-05-20',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(79,'Danielle','Nader','cnolan@example.net',79917478831,'e4f9f2d622795c3a5944d58b23ff787f664cdd57','1988-12-30',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(80,'Matilda','Heidenreich','rashad41@example.net',79372575790,'59fe2dd8a88d99bd4ff88bd35453ac25628620d8','2000-07-10',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(81,'Nichole','Nader','roberts.curtis@example.com',79127583060,'c0784d8b689c1311cef95fdba76e65e9bcaf7e57','1999-05-05',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(82,'Akeem','Hamill','stephanie.connelly@example.org',79341753217,'a30566d60dcdc80897757c89f2b7d20c2d6fee31','1972-03-06',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(83,'Mayra','Jacobi','katarina68@example.net',79374383816,'16c3e8f1becd474542cb02ca878e5512efc7f4f6','1983-09-11',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(84,'Alden','Grant','adeline33@example.org',79345024497,'96de947dfe7ef7e612122141b1fe3e0171007737','2010-08-24',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(85,'Misty','Stroman','annalise80@example.com',79122657808,'bb06dbea5bff714bf89025a6a102827cf7257ee7','1979-06-24',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(86,'Lee','O\'Conner','carli80@example.org',79631638618,'13a6f521057082ad504d7fd823693d2f43234e46','1999-01-26',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(87,'Dayne','Klein','hillary.wolf@example.com',79603757037,'1c620eec69885e6cf10a9e76e0fe1cacdfc97921','1981-10-22',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(88,'Samir','Quitzon','turcotte.aditya@example.org',79025778445,'d5b43d0929e627ed85a17e8cd10128a02e6255c9','1970-10-12',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(89,'Dorris','Nader','hspencer@example.com',79969470123,'aec3529565b5ca0c03f3bcabfff89d979f6759fe','2008-09-28',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(90,'Abbey','Gleichner','pswift@example.com',79722687621,'1d4aea44b9ed6ea4aa362cd622c9cd63755dc297','2005-03-28',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(91,'Ella','Upton','hegmann.lazaro@example.com',79975648902,'d0e88efb7f6e85be1fbe86a4dff5e75dfda3fc2b','1989-07-29',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(92,'Skye','Deckow','sjast@example.com',79335478011,'14acf93a573f79f99878e7c2dc39aab800028a2e','2014-09-14',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(93,'Cara','Hamill','hudson.marcel@example.net',79329692953,'99a85ce4b4140f7c606233ba5df49db7769a7bf1','2012-10-06',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(94,'Al','Rodriguez','haylee41@example.net',79443141544,'66d0a5c6a0983e2c43e3c62f05237d4d6ad978c4','1992-06-25',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(95,'Jairo','Haley','rhuels@example.org',79081298380,'66f060abc552a2139566fd76c2be907b4fda1534','1978-08-06',_binary '','2017-10-20 08:10:00','2017-10-20 08:10:00'),(96,'Kody','Blanda','kunde.mariela@example.org',79453459848,'cb3bf48cf65f7156c8d0230d46d4579de4bf63d8','1997-02-07',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(97,'Sammy','Brekke','maxie01@example.org',79302194069,'8c843bd265cd53feec254a2c5a31041586fcb35f','2015-09-18',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(98,'Hildegard','Robel','ubaldo.spencer@example.org',79440960323,'482837e9f982674ead46204c74b4721c0d228dfd','2002-11-16',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(99,'Curtis','Simonis','zelma.gorczany@example.net',79962566264,'3d8f8389b36a159a2344380f87d6bd114ac38331','1973-04-02',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00'),(100,'Jennifer','Kris','ulegros@example.org',79903584446,'79341a68677c95a6380bd8c9438af6c3842c01e8','2010-01-13',_binary '\0','2017-10-20 08:10:00','2017-10-20 08:10:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_communities`
--

DROP TABLE IF EXISTS `users_communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users_communities` (
  `community_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`),
  KEY `fk_users_communities_users1_idx` (`user_id`),
  KEY `fk_users_communities_communities1_idx` (`community_id`),
  CONSTRAINT `fk_users_communities_communities1_idx` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `fk_users_communities_users1_idx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_communities`
--

LOCK TABLES `users_communities` WRITE;
/*!40000 ALTER TABLE `users_communities` DISABLE KEYS */;
INSERT INTO `users_communities` VALUES (21,1),(7,2),(9,3),(39,4),(15,5),(10,6),(14,7),(7,8),(39,9),(9,10),(15,11),(10,12),(26,13),(9,14),(28,15),(12,16),(25,17),(8,18),(34,19),(32,20),(32,21),(20,22),(39,23),(10,24),(15,25),(36,26),(7,27),(10,28),(16,29),(8,30),(37,31),(36,32),(15,33),(5,34),(35,35),(30,36),(14,37),(8,38),(36,39),(13,40),(16,41),(11,42),(22,43),(1,44),(19,45),(10,46),(12,47),(3,48),(18,49),(6,50),(35,51),(9,52),(26,53),(34,54),(19,55),(40,56),(29,57),(26,58),(10,59),(5,60),(34,61),(6,62),(1,63),(8,64),(11,65),(35,66),(37,67),(25,68),(2,69),(33,70),(38,71),(18,72),(3,73),(20,74),(19,75),(22,76),(29,77),(31,78),(25,79),(6,80),(36,81),(20,82),(15,83),(21,84),(13,85),(34,86),(21,87),(2,88),(19,89),(30,90),(6,91),(12,92),(36,93),(6,94),(20,95),(7,96),(1,97),(17,98),(32,99),(3,100);
/*!40000 ALTER TABLE `users_communities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-27 20:05:54
