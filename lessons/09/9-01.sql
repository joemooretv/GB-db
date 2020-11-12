/* 
1. В базе данных shop и sample присутствуют одни и те же таблицы учебной базы данных. 
Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
*/

START TRANSACTION;

SET @id := 1;

INSERT INTO `sample`.`users` (`name`, `birthday_at`) VALUES (
	(SELECT `name` FROM `shop`.`users` WHERE `id` = @id), 
	(SELECT `birthday_at` FROM `shop`.`users` WHERE `id` = @id));

DELETE FROM `shop`.`users` WHERE (`id` = 1);

COMMIT;


/* 
2. Создайте представление, которое выводит 
название name товарной позиции из таблицы products 
и соответствующее название каталога name из таблицы catalogs.
*/

CREATE VIEW prod_category (product, catalog)
AS SELECT `name`, (SELECT `name` FROM `catalogs` WHERE `catalogs`.`id` = `products`.`catalog_id`) FROM `products`;
SELECT * FROM prod_category;


/* 
3. Пусть имеется таблица с календарным полем created_at. 
В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
Составьте запрос, который выводит полный список дат за август, 
выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице 
и 0, если она отсутствует.
*/

SET @day := 0;
SELECT
	@day := @day + 1 AS day,
	IF(@day IN(SELECT DAYOFMONTH(`created_at`) FROM `users` WHERE YEAR(`created_at`) = 2018), 1, 0) as is_exist
HAVING @day <= DAY(LAST_DAY('2018-08-01'));

SELECT YEAR('2018-08-01');


-- сначала сгенерируем временную таблицу на DAY(LAST_DAY('2018-08-01')) строк
SET @i = -1;
SELECT DATE(ADDDATE('2012-02-10', INTERVAL @i:=@i+1 DAY)) AS date
HAVING 
@i < DATEDIFF('2012-02-15', '2012-02-10');


SELECT DAYOFMONTH(`created_at`) FROM `users` WHERE YEAR(`created_at`) = 2018;


/* 
4. Пусть имеется любая таблица с календарным полем created_at. 
Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.
*/
