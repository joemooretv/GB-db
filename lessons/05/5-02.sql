/* 
1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
Заполните их текущими датой и временем.
*/

-- Создаем столбец с датой рождения в таблице users
ALTER TABLE `users` ADD COLUMN `birthday` DATE NULL AFTER `password_hash`;

-- Заполняем данными (есть ли способ множественного добавления? INSERT не подошел, т.к. нужно вставить данные только в один столбец)
UPDATE `users` SET `birthday` = '2014-03-31' WHERE (`id` = '1');
UPDATE `users` SET `birthday` = '1994-02-20' WHERE (`id` = '2');
UPDATE `users` SET `birthday` = '1977-04-24' WHERE (`id` = '3');
UPDATE `users` SET `birthday` = '1990-08-07' WHERE (`id` = '4');
UPDATE `users` SET `birthday` = '2019-03-12' WHERE (`id` = '5');
UPDATE `users` SET `birthday` = '1989-05-21' WHERE (`id` = '6');
UPDATE `users` SET `birthday` = '1977-12-21' WHERE (`id` = '7');
UPDATE `users` SET `birthday` = '1980-09-27' WHERE (`id` = '8');
UPDATE `users` SET `birthday` = '1976-01-28' WHERE (`id` = '9');
UPDATE `users` SET `birthday` = '1974-02-18' WHERE (`id` = '10');
UPDATE `users` SET `birthday` = '1985-05-12' WHERE (`id` = '11');
UPDATE `users` SET `birthday` = '1975-07-27' WHERE (`id` = '12');
UPDATE `users` SET `birthday` = '1972-12-11' WHERE (`id` = '13');
UPDATE `users` SET `birthday` = '1978-11-08' WHERE (`id` = '14');
UPDATE `users` SET `birthday` = '2004-12-20' WHERE (`id` = '15');
UPDATE `users` SET `birthday` = '2003-06-04' WHERE (`id` = '16');
UPDATE `users` SET `birthday` = '1993-09-22' WHERE (`id` = '17');
UPDATE `users` SET `birthday` = '1989-08-27' WHERE (`id` = '18');
UPDATE `users` SET `birthday` = '2015-05-16' WHERE (`id` = '19');
UPDATE `users` SET `birthday` = '2018-12-15' WHERE (`id` = '20');
UPDATE `users` SET `birthday` = '2009-12-07' WHERE (`id` = '21');
UPDATE `users` SET `birthday` = '2019-06-16' WHERE (`id` = '22');
UPDATE `users` SET `birthday` = '1984-03-28' WHERE (`id` = '23');
UPDATE `users` SET `birthday` = '2004-08-04' WHERE (`id` = '24');
UPDATE `users` SET `birthday` = '2012-06-11' WHERE (`id` = '25');
UPDATE `users` SET `birthday` = '1990-05-05' WHERE (`id` = '26');
UPDATE `users` SET `birthday` = '2016-05-30' WHERE (`id` = '27');
UPDATE `users` SET `birthday` = '2002-02-16' WHERE (`id` = '28');
UPDATE `users` SET `birthday` = '2018-05-20' WHERE (`id` = '29');
UPDATE `users` SET `birthday` = '2011-10-16' WHERE (`id` = '30');
UPDATE `users` SET `birthday` = '2006-03-09' WHERE (`id` = '31');
UPDATE `users` SET `birthday` = '1979-07-04' WHERE (`id` = '32');
UPDATE `users` SET `birthday` = '2018-06-28' WHERE (`id` = '33');
UPDATE `users` SET `birthday` = '1988-04-21' WHERE (`id` = '34');
UPDATE `users` SET `birthday` = '1982-03-14' WHERE (`id` = '35');
UPDATE `users` SET `birthday` = '2014-08-13' WHERE (`id` = '36');
UPDATE `users` SET `birthday` = '1977-12-22' WHERE (`id` = '37');
UPDATE `users` SET `birthday` = '1975-11-06' WHERE (`id` = '38');
UPDATE `users` SET `birthday` = '1987-03-28' WHERE (`id` = '39');
UPDATE `users` SET `birthday` = '1996-02-10' WHERE (`id` = '40');
UPDATE `users` SET `birthday` = '2011-01-19' WHERE (`id` = '41');
UPDATE `users` SET `birthday` = '2018-05-05' WHERE (`id` = '42');
UPDATE `users` SET `birthday` = '1993-01-31' WHERE (`id` = '43');
UPDATE `users` SET `birthday` = '2002-10-19' WHERE (`id` = '44');
UPDATE `users` SET `birthday` = '1972-01-14' WHERE (`id` = '45');
UPDATE `users` SET `birthday` = '2010-04-20' WHERE (`id` = '46');
UPDATE `users` SET `birthday` = '1978-05-14' WHERE (`id` = '47');
UPDATE `users` SET `birthday` = '1998-04-04' WHERE (`id` = '48');
UPDATE `users` SET `birthday` = '1990-06-30' WHERE (`id` = '49');
UPDATE `users` SET `birthday` = '1978-05-03' WHERE (`id` = '50');
UPDATE `users` SET `birthday` = '2013-07-26' WHERE (`id` = '51');
UPDATE `users` SET `birthday` = '1976-03-30' WHERE (`id` = '52');
UPDATE `users` SET `birthday` = '1971-08-16' WHERE (`id` = '53');
UPDATE `users` SET `birthday` = '1972-08-06' WHERE (`id` = '54');
UPDATE `users` SET `birthday` = '2013-02-11' WHERE (`id` = '55');
UPDATE `users` SET `birthday` = '2001-08-25' WHERE (`id` = '56');
UPDATE `users` SET `birthday` = '1978-04-09' WHERE (`id` = '57');
UPDATE `users` SET `birthday` = '1989-02-03' WHERE (`id` = '58');
UPDATE `users` SET `birthday` = '1995-08-30' WHERE (`id` = '59');
UPDATE `users` SET `birthday` = '1973-07-29' WHERE (`id` = '60');
UPDATE `users` SET `birthday` = '1976-01-02' WHERE (`id` = '61');
UPDATE `users` SET `birthday` = '1971-08-27' WHERE (`id` = '62');
UPDATE `users` SET `birthday` = '1973-06-01' WHERE (`id` = '63');
UPDATE `users` SET `birthday` = '1996-01-15' WHERE (`id` = '64');
UPDATE `users` SET `birthday` = '1999-07-26' WHERE (`id` = '65');
UPDATE `users` SET `birthday` = '2011-06-24' WHERE (`id` = '66');
UPDATE `users` SET `birthday` = '1992-01-14' WHERE (`id` = '67');
UPDATE `users` SET `birthday` = '2000-12-11' WHERE (`id` = '68');
UPDATE `users` SET `birthday` = '1983-12-03' WHERE (`id` = '69');
UPDATE `users` SET `birthday` = '1975-11-26' WHERE (`id` = '70');
UPDATE `users` SET `birthday` = '1997-06-12' WHERE (`id` = '71');
UPDATE `users` SET `birthday` = '1997-08-30' WHERE (`id` = '72');
UPDATE `users` SET `birthday` = '2014-06-01' WHERE (`id` = '73');
UPDATE `users` SET `birthday` = '1970-06-20' WHERE (`id` = '74');
UPDATE `users` SET `birthday` = '2003-03-11' WHERE (`id` = '75');
UPDATE `users` SET `birthday` = '1977-04-07' WHERE (`id` = '76');
UPDATE `users` SET `birthday` = '2015-10-31' WHERE (`id` = '77');
UPDATE `users` SET `birthday` = '2018-05-20' WHERE (`id` = '78');
UPDATE `users` SET `birthday` = '1988-12-30' WHERE (`id` = '79');
UPDATE `users` SET `birthday` = '2000-07-10' WHERE (`id` = '80');
UPDATE `users` SET `birthday` = '1999-05-05' WHERE (`id` = '81');
UPDATE `users` SET `birthday` = '1972-03-06' WHERE (`id` = '82');
UPDATE `users` SET `birthday` = '1983-09-11' WHERE (`id` = '83');
UPDATE `users` SET `birthday` = '2010-08-24' WHERE (`id` = '84');
UPDATE `users` SET `birthday` = '1979-06-24' WHERE (`id` = '85');
UPDATE `users` SET `birthday` = '1999-01-26' WHERE (`id` = '86');
UPDATE `users` SET `birthday` = '1981-10-22' WHERE (`id` = '87');
UPDATE `users` SET `birthday` = '1970-10-12' WHERE (`id` = '88');
UPDATE `users` SET `birthday` = '2008-09-28' WHERE (`id` = '89');
UPDATE `users` SET `birthday` = '2005-03-28' WHERE (`id` = '90');
UPDATE `users` SET `birthday` = '1989-07-29' WHERE (`id` = '91');
UPDATE `users` SET `birthday` = '2014-09-14' WHERE (`id` = '92');
UPDATE `users` SET `birthday` = '2012-10-06' WHERE (`id` = '93');
UPDATE `users` SET `birthday` = '1992-06-25' WHERE (`id` = '94');
UPDATE `users` SET `birthday` = '1978-08-06' WHERE (`id` = '95');
UPDATE `users` SET `birthday` = '1997-02-07' WHERE (`id` = '96');
UPDATE `users` SET `birthday` = '2015-09-18' WHERE (`id` = '97');
UPDATE `users` SET `birthday` = '2002-11-16' WHERE (`id` = '98');
UPDATE `users` SET `birthday` = '1973-04-02' WHERE (`id` = '99');
UPDATE `users` SET `birthday` = '2020-01-13' WHERE (`id` = '100'); 

-- Считаем средний возраст
SELECT FLOOR(AVG(TIMESTAMPDIFF(YEAR, `birthday`, NOW()))) FROM `users`;


/* 
2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
Следует учесть, что необходимы дни недели текущего года, а не года рождения.
*/
SELECT DAYNAME(DATE_ADD(`birthday`, INTERVAL (YEAR(NOW()) - YEAR(`birthday`)) YEAR)) AS days, COUNT(`birthday`) as count FROM `users` GROUP BY days;


/* 
3. (по желанию) Подсчитайте произведение чисел в столбце таблицы.
*/


