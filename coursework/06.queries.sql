/*
Вывод детализации по id сделки.
Для работы необходимы функции good_id_prop и ad_photo_ids из файла 08.procedure_trigger.sql

Выводятся поля:
- заголовок сделки
- id основной фотографии
- id дополнительных фото
- оставшееся количество дней до завершения торгов
- текущая цена
- цена досрочного завершения торгов
- количество ставок
- условия передачи товара
- местоположение сделки
- сотояние
- категория товара
- бренд товара 
- модель товара
- характеристики товара
*/

SELECT
	d.title,
	dp.photos_id main_photo_id,
	ad_photo_ids(d.id) additional_photos_id,
	TIMESTAMPDIFF(DAY, NOW(), d.deal_end) days_to_end,
	d.price_current,
	d.price_early,
	COUNT(b.deal_id) bids,
	dd.delivery_terms,
	dd.location location,
	c.name cond,
	cat.name category,
	g.brand,
	g.model,
	good_id_prop(d.goods_id) properties
FROM
	`deals` d
JOIN `deal_details` dd ON d.id = dd.deal_id
JOIN `bids` b ON b.deal_id = d.id
JOIN `goods` g ON d.goods_id = g.id
JOIN `deal_photos` dp ON d.id = dp.deals_id
JOIN `conditions` c ON c.id = dd.condition_id
JOIN `categories` cat ON cat.id = g.category_id
WHERE d.id = 13 AND dp.is_main = 1 GROUP BY dp.photos_id\G


/* 
Вывод общей статистики по аукциону.
Для работы необходима функция deals_sum из файла 08.procedure_trigger.sql
Аналогичный результат выводит вызов процедуры auction_status()

Выводятся поля:
- общее количестово сделок
- количестово активных сделок
- общее количестово завершенных сделок
- количестово сделок, завершенных досрочно
- количестово отмененных сделок
- общую стоимость проданных товаров
- среднюю стоимость проданного товара
 */

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
	`deal_end` < NOW() AND status != 2\G

