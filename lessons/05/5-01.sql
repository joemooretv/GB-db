/* 
1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
Заполните их текущими датой и временем.
*/

-- Заполняем таблицу текущими датой и временем
UPDATE `users` 
SET 
    `created_at` = NOW(),
    `updated_at` = NOW();


/* 
2. Таблица users была неудачно спроектирована. 
Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. 
Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
*/

-- Создаем новые столбцы
ALTER TABLE `users` 
ADD COLUMN `created_at` VARCHAR(245) NULL AFTER `is_deleted`,
ADD COLUMN `updated_at` VARCHAR(245) NULL;

-- Заполняем их все НЕкорректным значением
UPDATE `users`
SET
`created_at` = '20.10.2017 8:10',
`updated_at` = '20.10.2017 8:10';

-- Преобразуем к формату DATETIME
UPDATE `users` 
SET 
    `created_at` = STR_TO_DATE(`created_at`, '%d.%m.%Y %H:%i'),
    `updated_at` = STR_TO_DATE(`updated_at`, '%d.%m.%Y %H:%i');


/* 
3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
0, если товар закончился и выше нуля, если на складе имеются запасы. 
Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
Однако нулевые запасы должны выводиться в конце, после всех записей.
*/

-- Создаем новую таблицу
CREATE TABLE `storehouses_products` (
  `value` INT NULL);

-- Вставляем данные
INSERT INTO `storehouses_products` VALUES ('0'),
('2500'),
('0'),
('30'),
('500'),
('1');

-- Выводим данные
SELECT * FROM `storehouses_products` ORDER BY IF(`value` > 0, 1, 0) DESC, `value`;

-- Упрощенный способ вывода
SELECT * FROM `storehouses_products` ORDER BY `value` > 0 DESC, `value`;


/* 
4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
Месяцы заданы в виде списка английских названий (may, august)
*/


/* 
5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. 
SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
Отсортируйте записи в порядке, заданном в списке IN.
*/