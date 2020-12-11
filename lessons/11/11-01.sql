/* 
1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах 
users, catalogs и products в таблицу logs помещается время и дата создания записи, 
название таблицы, идентификатор первичного ключа и содержимое поля name.
*/

-- Создаем таблицу. Правильно понял, что движок Archive не поддерживает >1 внешнего ключа? 
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
	`action_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`table` VARCHAR(45) NOT NULL,
	`id` BIGINT NOT NULL,
	`name` VARCHAR(255) NOT NULL) ENGINE=Archive;

DELIMITER //

DROP TRIGGER IF EXISTS users_to_logs//
CREATE TRIGGER users_to_logs AFTER INSERT ON `users`
FOR EACH ROW 
BEGIN
	INSERT INTO `logs`(`table`, `id`, `name`) VALUES ('users', NEW.`id`, NEW.`name`);
END//

DROP TRIGGER IF EXISTS catalogs_to_logs//
CREATE TRIGGER catalogs_to_logs AFTER INSERT ON `catalogs`
FOR EACH ROW 
BEGIN
	INSERT INTO `logs`(`table`, `id`, `name`) VALUES ('catalogs', NEW.`id`, NEW.`name`);
END//

DROP TRIGGER IF EXISTS products_to_logs//
CREATE TRIGGER products_to_logs AFTER INSERT ON `products`
FOR EACH ROW 
BEGIN
	INSERT INTO `logs`(`table`, `id`, `name`) VALUES ('products', NEW.`id`, NEW.`name`);
END//

DELIMITER ;


/* 
2. Создайте SQL-запрос, который помещает в таблицу users миллион записей.
*/

