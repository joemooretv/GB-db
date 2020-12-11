/*
Выводит список активных аукционов с сортировкой по возрастанию текущей цены.

В списке выводятся поля:
- название товара (бренд и модель)
- категория товара
- id основной фотографии
- оставшееся количество дней до завершения торгов
- текущая цена
- цена досрочного завершения торгов, если указана
*/

DROP VIEW IF EXISTS auction_list;
CREATE VIEW auction_list (title, category, photo_id, days_to_end, price_current, price_early) AS
SELECT
	CONCAT(g.brand, ' ', g.model),
	c.name,
	p.photos_id,
	TIMESTAMPDIFF(DAY, NOW(), d.deal_end),
	d.price_current,
	d.price_early
FROM
	`deals` d
JOIN `goods` g ON d.goods_id = g.id
JOIN `deal_photos` p ON p.deals_id = g.id
JOIN `categories` c ON c.id = g.category_id
WHERE
	d.deal_end > NOW() AND p.is_main = 1
ORDER BY d.price_current;

-- тест
SELECT * FROM auction_list;


/*
Выводит категории в которых более 5 товаров,
с выводом количества товаров в каждой из них,
с сортировкой по убыванию.
*/

DROP VIEW IF EXISTS qnt_by_category;
CREATE VIEW qnt_by_category (category, total_goods) AS
SELECT
	c.name,
	COUNT(*) tg
FROM
	`goods` g
JOIN `categories` c ON g.category_id = c.id
GROUP BY c.name HAVING tg > 5 ORDER BY tg DESC;

-- тест
SELECT * FROM qnt_by_category;

