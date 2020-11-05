/* 
1. Составьте список пользователей users, 
которые осуществили хотя бы один заказ orders в интернет магазине.
*/

-- Списком уникальных пользователей
SELECT `id` FROM `users` WHERE (SELECT `customer_id` FROM `orders` WHERE `users`.`id` = `orders`.`customer_id` GROUP BY `customer_id`) IS NOT NULL;

-- Списком пользователей с конкретными заказами
SELECT
	u.id user_id,
	o.id order_id
FROM
	`users` u
LEFT JOIN `orders` o ON u.id = o.customer_id
WHERE o.id IS NOT NULL;


/* 
2. Выведите список товаров products и разделов catalogs, который соответствует товару.
*/

SELECT
	p.name product,
	c.name category
FROM
	`products` p
LEFT JOIN `catalogs` c ON c.id = p.catalog_id
WHERE p.catalog_id IS NOT NULL; 


/* 
3. Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
Поля from, to и label содержат английские названия городов, поле name — русское. 
Выведите список рейсов flights с русскими названиями городов.
*/

SELECT
	f.id Рейс,
	c1.name Откуда,
	c2.name Куда
FROM
	`flights` f
JOIN `cities` c1 ON f.from = c1.label
JOIN `cities` c2 ON f.to = c2.label;

