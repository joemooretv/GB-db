/* 
2. Пусть задан некоторый пользователь. 
Из всех друзей этого пользователя найдите человека, 
который больше всех общался с нашим пользователем.
*/

SELECT 
	`id`,
	-- Высчитываем кол-во сообщений
	(SELECT COUNT(*) FROM `messages` 
	WHERE (`from_user_id` = 37 AND `to_user_id` = `users`.`id`) 
	OR (`from_user_id` = `users`.`id` AND `to_user_id` = 37)) as total
FROM
	`users`
WHERE
	-- Ищем собеседников пользователя
	`id` IN (SELECT `to_user_id` FROM `messages` WHERE `from_user_id` = 37 AND
				-- Проверяем, являются ли они друзьями
				(
				`from_user_id` IN (SELECT `from_user_id` FROM `friend_requests` WHERE `messages`.`to_user_id` = `friend_requests`.`to_user_id` AND `status` = 1)
				OR
				`from_user_id` IN (SELECT `to_user_id` FROM `friend_requests` WHERE `messages`.`to_user_id` = `friend_requests`.`from_user_id` AND `status` = 1)
				)
			)
	OR
	-- Ищем собеседников пользователя
	`id` IN (SELECT `from_user_id`FROM `messages` WHERE `to_user_id` = 37 AND
				-- Проверяем, являются ли они друзьями
				(
				`to_user_id` IN (SELECT `from_user_id` FROM `friend_requests` WHERE `messages`.`from_user_id` = `friend_requests`.`to_user_id` AND `status` = 1)
				OR
				`to_user_id` IN (SELECT `to_user_id` FROM `friend_requests` WHERE `messages`.`from_user_id` = `friend_requests`.`from_user_id` AND `status` = 1)
				)
			)
ORDER BY total DESC LIMIT 1;


/*
3. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
*/

SELECT
	`id`,
	TIMESTAMPDIFF(YEAR, `birthday`, NOW()) AS age,
	(SELECT COUNT(*) FROM `messages` WHERE `messages`.`to_user_id` = `users`.`id`) + (SELECT COUNT(*) FROM `media` WHERE `media`.`users_id` = `users`.`id`) 
	AS likes
FROM
	`users`
ORDER BY age LIMIT 10;


/*
4. Определить кто больше поставил лайков (всего) - мужчины или женщины?
*/

SELECT
IF(
	(SELECT COUNT(*) FROM `likes` WHERE `like_from` IN(SELECT `users_id` FROM `profiles` WHERE `gender` = 'm') AND `is_active` = 1) 
	>
	(SELECT COUNT(*) FROM `likes` WHERE `like_from` IN(SELECT `users_id` FROM `profiles` WHERE `gender` = 'f') AND `is_active` = 1), 
	'male', 'female');


/*
5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
*/

SELECT
	`id`,
	-- Считаем кол-во поставленных лайков
	((SELECT COUNT(*) FROM `likes` WHERE `likes`.`like_from` = `users`.`id` AND `is_active` = 1)
	-- Считаем кол-во отправленных сообщений
	+ (SELECT COUNT(*) FROM `messages` WHERE `messages`.`from_user_id` = `users`.`id`)
	-- Считаем кол-во опубликованных медиа
	+ (SELECT COUNT(*) FROM `media` WHERE `media`.`users_id` = `users`.`id`)
	-- Добавляем ноль, чтобы поле стало числовым, если оно пустое
	+ 0) AS activity
FROM
	`users`
ORDER BY 
	-- Сортируем от наименьшей активности, без учета нулей
	activity > 0 DESC, activity LIMIT 10;

