/* 
1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".
*/

DELIMITER //

DROP FUNCTION IF EXISTS hello //
CREATE FUNCTION hello()
RETURNS VARCHAR(160) DETERMINISTIC
BEGIN
	SET @t = HOUR(NOW());
	IF(@t BETWEEN 0 AND 6) THEN
		RETURN 'Доброй ночи';
	ELSEIF(@t BETWEEN 6 AND 12) THEN
		RETURN 'Доброе утро';
	ELSEIF(@t BETWEEN 12 AND 18) THEN
		RETURN 'Добрый день';
	ELSE
		RETURN 'Добрый день вечер';
	END IF;
END//

SELECT hello()//
DELIMITER ;


/* 
2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
При попытке присвоить полям NULL-значение необходимо отменить операцию.
*/

DELIMITER //

DROP TRIGGER IF EXISTS check_name_desc_insert//
CREATE TRIGGER check_name_desc_insert BEFORE INSERT ON `products`
FOR EACH ROW 
BEGIN
	IF NEW.`name` IS NULL AND NEW.`desription` IS NULL THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '\'name\' and \'desription\' couldn\'t be NULL together';
	END IF;
END//

DROP TRIGGER IF EXISTS check_name_desc_update//
CREATE TRIGGER check_name_desc_update BEFORE UPDATE ON `products`
FOR EACH ROW 
BEGIN
	IF NEW.`name` IS NULL AND NEW.`desription` IS NULL THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '\'name\' and \'desription\' couldn\'t be NULL together';
	END IF;
END//

INSERT INTO `products` (`price`, `catalog_id`) VALUES ('5678', '2')//

UPDATE `products` SET `name` = NULL, `desription` = NULL WHERE (`id` = '7')//

DELIMITER ;


/* 
3. Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
Вызов функции FIBONACCI(10) должен возвращать число 55.
*/