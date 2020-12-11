/*
Функция возвращает количество сделок на текущий момент, 
в зависимости от переданного аргумента:

0 - общее количество сделок
1 - количестово активных сделок
2 - количестово завершенных сделок
3 - количестово сделок, завершенных досрочно
4 - количестово отмененных сделок
*/

DELIMITER //

DROP FUNCTION IF EXISTS deals_sum //
CREATE FUNCTION deals_sum(mode INT)
RETURNS INT(10) DETERMINISTIC
BEGIN
	SET @s = mode;
	SET @d = NOW();
	IF(@s = 0) THEN
		RETURN (SELECT COUNT(*) FROM `deals`);
	ELSEIF(@s = 1) THEN
		RETURN (SELECT COUNT(*) FROM `deals` WHERE `deal_end` >= NOW() AND status = 0);
	ELSEIF(@s = 2) THEN
		RETURN (SELECT COUNT(*) FROM `deals` WHERE `deal_end` < NOW());
	ELSEIF(@s = 3) THEN
		RETURN (SELECT COUNT(*) FROM `deals` WHERE status = 1);
	ELSEIF(@s = 4) THEN
		RETURN (SELECT COUNT(*) FROM `deals` WHERE status = 2);
	ELSE
		RETURN 'Wrong param';
	END IF;
END//

-- тест
SELECT deals_sum(0)//
DELIMITER ;


-- Процедура выводит общую статистику аукциона (аналог запроса из файла 06.queries.sql)

DELIMITER //

DROP PROCEDURE IF EXISTS auction_status //
CREATE PROCEDURE auction_status()
BEGIN
	SELECT 
		deals_sum(0) deals_qnt,
		deals_sum(1) active_deals,
		deals_sum(2) finished_deals,
		deals_sum(3) early_deals,
		deals_sum(4) canceled_deals,
		SUM(`price_current`) common_gain, 
		FORMAT(AVG(`price_current`), 2) avg_price
	FROM
		`deals`
	WHERE
		`deal_end` < NOW() AND status != 2;
END//

-- тест
CALL auction_status()\G
DELIMITER ;


-- Функция, возвращающая строку с id всех дополнительных фотографий по id сделки

DELIMITER //

DROP FUNCTION IF EXISTS ad_photo_ids //
CREATE FUNCTION ad_photo_ids(d_id INT)
RETURNS VARCHAR(160) DETERMINISTIC
BEGIN
	RETURN (SELECT GROUP_CONCAT(`photos_id` SEPARATOR ', ') 
	FROM `deal_photos` 
	WHERE `deals_id` = d_id AND `is_main` != 1);
END//

-- тест
SELECT ad_photo_ids(13)//
DELIMITER ;


-- Функция, возвращающая строку со списком всех хорактеристик по id товара
-- тоже самое с характеристиками

DELIMITER //

DROP FUNCTION IF EXISTS good_id_prop //
CREATE FUNCTION good_id_prop(g_id INT)
RETURNS VARCHAR(160) DETERMINISTIC
BEGIN
	RETURN (SELECT GROUP_CONCAT(p.name, ' - ', gp.value, ' ', m.name SEPARATOR ', ')
	FROM `goods_properties` gp
	JOIN `properties` p ON p.id = gp.properties_id
	JOIN `measures` m ON m.id = gp.measure_id
	WHERE gp.goods_id = g_id);
END//

-- тест
SELECT good_id_prop(13)//
DELIMITER ;


-- Триггер обновляет значение current_price в таблице deals при добавлении новой записи в таблицу bids

DELIMITER //

DROP TRIGGER IF EXISTS current_price_update//
CREATE TRIGGER current_price_update AFTER INSERT ON `bids`
FOR EACH ROW 
BEGIN
	UPDATE `deals` SET `price_current` = `price_current` + NEW.bid WHERE `deals`.`id` = NEW.deal_id;
END//

DELIMITER ;

-- тест
SELECT `price_current` FROM `deals` WHERE `id` = 13;
INSERT INTO `bids` (`deal_id`, `user_id`, `bid`) VALUES (13, 82, 200);
SELECT `price_current` FROM `deals` WHERE `id` = 13;

