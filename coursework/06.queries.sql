/*
Поиск активных аукционов по категории с сортировкой по возрастанию текущей цены.

В списке выводятся поля:
- название товара (бренд и модель)
- id основной фотографии
- оставшееся количество дней до завершения торгов
- текущая цена
- цена досрочного завершения торгов, если указана

*/

SELECT
	CONCAT(g.brand, ' ', g.model) AS title,
	(SELECT `photos_id` FROM `deal_photos` WHERE `is_main` = 1 AND `deal_photos`.`deals_id` = d.id) AS photo_id,
	TIMESTAMPDIFF(DAY, NOW(), d.deal_end) AS days_to_end,
	d.price_current,
	d.price_early
FROM
	`deals` d
LEFT JOIN `goods` g ON d.`goods_id` = g.`id`
WHERE
	d.deal_end > NOW() AND g.category_id = 13
ORDER BY d.price_current;


/*
Количество товаров в каждой категории.
Выводим только те, где более 5 товаров с сортировкой по убыванию.
*/

SELECT
	(SELECT `name` FROM `categories` WHERE `goods`.`category_id` = `categories`.`id`) as category,
	COUNT(*) AS total_goods
FROM
	`goods`
GROUP BY category HAVING total_goods > 5 ORDER BY total_goods DESC;

