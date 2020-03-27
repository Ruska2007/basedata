-- Получаем данные пользователя как в уроке + ДАТА РОЖДЕНИЯ И ПОЛ
SELECT * FROM users WHERE id = 5;

SELECT first_name, last_name, 'main_photo', 'city', 'birthdate', 'gender' FROM users WHERE id = 5;

SELECT * FROM media;
SELECT * FROM profiles;

SELECT
	first_name,
	last_name,
	(SELECT gender FROM profiles WHERE user_id = users.id) AS gender,
	(SELECT birthdate FROM profiles WHERE user_id = users.id) AS birthdate,
	(SELECT hometown FROM profiles WHERE user_id = users.id) AS hometown,
	(SELECT filename FROM media WHERE id = (SELECT photo_id FROM profiles WHERE user_id = users.id)) AS filename
FROM users
	WHERE id = 5;  
    
-- Получаем фотографии пользователя
SELECT * FROM media_types;

SELECT filename FROM media
	WHERE user_id = 5
    AND media_type_id = (SELECT id FROM media_types WHERE name = 'photo');
    
-- Выбираем историю по добавлению фотографий пользователем + ПРОРАБОТКА ДАТЫ
SELECT CONCAT('Пользователь ', 
	(SELECT CONCAT (first_name, ' ', last_name) FROM users WHERE id = media.user_id), 
	' добавил фото ', filename, ' в ', 
	(SELECT DATE_FORMAT(created_at, '%W %e %M %Y') FROM media WHERE user_id = 5)) AS news 
	FROM media 
    WHERE user_id = 5 
    AND media_type_id = (SELECT id FROM media_types WHERE name LIKE 'photo');
   
-- Найдём кому принадлежат 10 самых больших медиафайлов + ТИП МЕДИА КОНТЕНТА ВЫВЕСТИ

SELECT * FROM media;
   
SELECT user_id, filename, size, media_type_id 
	FROM media 
	ORDER BY size DESC
	LIMIT 10;

-- Улучшим запрос, используем алиасы для имён таблиц + МАЛЕНЬКОЕ УСОВЕРШЕНСТВОВАНИЕ Alias'a 'owner' 
SELECT 
	(SELECT CONCAT(first_name, ' ', last_name) 
    FROM users u
    WHERE u.id = m.user_id) owner,
  	filename, size 
    FROM media m
    ORDER BY size DESC
    LIMIT 10;
   
-- Выбираем друзей пользователя с двух сторон отношения дружбы + ОТОБРАЖЕНИЕ СТАТУСА ДРУЖБЫ

SELECT * FROM friendship;

(SELECT friend_id, friendship_status_id FROM friendship WHERE user_id = 5)
UNION
(SELECT user_id, friendship_status_id FROM friendship WHERE friend_id = 5);

-- Выбираем только друзей с активным статусом + И С НЕПОДТВЕРЖДЕННЫМ СТАТУСОМ

SELECT * FROM friendship_statuses;

(SELECT friend_id 
	FROM friendship 
  	WHERE user_id = 5
    AND friendship_status_id IN (
    SELECT id FROM friendship_statuses 
    WHERE name = 'Confirmed' OR name = 'Requested')
)
UNION
(SELECT user_id 
	FROM friendship 
	WHERE friend_id = 5
    AND friendship_status_id IN (
    SELECT id FROM friendship_statuses 
    WHERE name = 'Confirmed' OR name = 'Requested')
);

-- Выбираем медиафайлы друзей + ХОЗЯИНА ФАЙЛА И РАЗМЕР

SELECT filename, user_id AS owner, size FROM media WHERE user_id IN (
	(SELECT friend_id 
	FROM friendship 
  	WHERE user_id = 5
    AND friendship_status_id IN (
    SELECT id FROM friendship_statuses 
    WHERE name = 'Confirmed')
	)
UNION
	(SELECT user_id 
    FROM friendship 
    WHERE friend_id = 5 
    AND friendship_status_id IN (
    SELECT id FROM friendship_statuses 
    WHERE name = 'Confirmed')
	)
);

-- Объединяем медиафайлы пользователя и его друзей для создания ленты новостей
SELECT filename, user_id, created_at FROM media WHERE user_id = 5
UNION
SELECT filename, user_id, created_at FROM media WHERE user_id IN (
  	(SELECT friend_id FROM friendship WHERE user_id = 5 
  	AND friendship_status_id IN (SELECT id FROM friendship_statuses WHERE name = 'Confirmed'))
	UNION
  	(SELECT user_id FROM friendship WHERE friend_id = 5 
  	AND friendship_status_id IN (SELECT id FROM friendship_statuses WHERE name = 'Confirmed'))
);

-- Определяем пользователей, общее занимаемое место медиафайлов которых превышает 100МБ
-- Подкорректируем данные сначала
SELECT * FROM media;
UPDATE media SET size = size / 10 WHERE size < 200000000;
DESCRIBE media;
ALTER TABLE media MODIFY size BIGINT UNSIGNED NOT NULL;

SELECT user_id, SUM(size) AS total, (CONCAT())
	FROM media
	GROUP BY user_id
	HAVING total > 100000000
	ORDER BY total DESC;

-- Подсчитываем лайки для медиафайлов пользователя и его друзей
SELECT target_id AS mediafile, COUNT(*) AS likes 
	FROM likes WHERE target_id IN (SELECT id FROM media WHERE user_id = 55
    UNION
    (SELECT id FROM media WHERE user_id IN (SELECT friend_id FROM friendship WHERE user_id = 55
    AND id IN (SELECT id FROM friendship_statuses WHERE name = 'Confirmed')))
    UNION
    (SELECT id FROM media WHERE user_id IN (SELECT user_id FROM friendship WHERE friend_id = 55
    AND id IN (SELECT id FROM friendship_statuses WHERE name = 'Confirmed'))) 
)
    AND target_type_id = (SELECT id FROM target_types WHERE name = 'media')
    GROUP BY target_id;

SHOW tables;
desc likes;
desc target_types ;
SELECT * FROM target_types ;
SELECT * FROM friendship_statuses;
SELECT * FROM friendship;
SELECT * FROM media;
SELECT * FROM likes;

-- Начинаем создавать архив новостей для медиафайлов по месяцам
SELECT COUNT(id) AS arhive, MONTHNAME(created_at) AS month 
  	FROM media
  	GROUP BY month;

-- Архив с правильной сортировкой новостей по месяцам
SELECT COUNT(id) AS news, 
  	MONTHNAME(created_at) AS month,
  	MONTH(created_at) AS month_num 
    FROM media
      WHERE YEAR(created_at) = 1970   /*NOW() - 2020 нет данных*/
    GROUP BY month_num, month
    ORDER BY month_num DESC;

SELECT COUNT(id) AS news, 
  	MONTHNAME(created_at) AS month,
  	MONTH(created_at) AS month_num 
    FROM media
    GROUP BY month_num, month
    ORDER BY month_num DESC;   
    
-- Выбираем сообщения от пользователя и к пользователю
SELECT from_user_id, to_user_id, body, is_delivered, created_at 
  	FROM messages
    WHERE from_user_id = 52
    OR to_user_id = 52
    ORDER BY created_at DESC;

-- Непрочитанные сообщения
SELECT from_user_id, to_user_id, body, 
  	IF(is_delivered, 'delivered', 'not delivered') AS status 
    FROM messages
    WHERE (from_user_id = 52 OR to_user_id = 52)
    ORDER BY created_at DESC;

 -- Выводим друзей пользователя с преобразованием пола и возраста 
SELECT (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id) AS friend,            -- имя пользователя
    CASE (gender)                       
      WHEN 'm' THEN 'man'
      WHEN 'f' THEN 'women'
    END AS gender,                                  
    TIMESTAMPDIFF(YEAR, birthdate, NOW()) AS age 
    FROM profiles WHERE user_id IN 
    (
    SELECT friend_id FROM friendship WHERE user_id = 52
    AND confirmed_at IS NOT NULL
    AND friendship_status_id IN (SELECT id FROM friendship_statuses WHERE name = 'Confirmed')
    UNION
    SELECT user_id FROM friendship WHERE friend_id = 52
    AND confirmed_at IS NOT NULL
    AND friendship_status_id IN (SELECT id FROM friendship_statuses WHERE name = 'Confirmed')
  	);

-- Поиск пользователя по шаблонам имени  
SELECT CONCAT(first_name, ' ', last_name) AS fullname  
  FROM users
  WHERE first_name LIKE 'S%';

-- Используем регулярные выражения
SELECT CONCAT(first_name, ' ', last_name) AS fullname  
  FROM users
  WHERE last_name RLIKE '^M.*z$';

-- ************************************* Задание 2 *****************************
-- Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

 
-- Сделал временную таблицу 10 самыхмолодых пользователей
DROP TABLE IF EXISTS young;
CREATE TEMPORARY TABLE young;   
SELECT id, (SELECT birthdate FROM profiles WHERE user_id = users.id) birthdate
	FROM users
	ORDER BY birthdate DESC LIMIT 10; 
/*	
 * Мой вариант, который я не довел до ума, да и задачу не так понял, думал нужно посчитать все лайки поставленные юзеру, включая
 * его контент.
 
SELECT target_id, COUNT(target_id) 
	FROM likes WHERE target_id IN (SELECT id FROM media WHERE user_id = (SELECT id FROM young WHERE user_id = young.id))
    AND target_type_id IN (SELECT id FROM target_types WHERE name = 'media')
    GROUP BY target_id
UNION ALL 
	SELECT target_id, COUNT(target_id) 
	FROM likes WHERE target_id IN (SELECT id FROM posts WHERE user_id = (SELECT id FROM young WHERE user_id = young.id))
    AND target_type_id IN (SELECT id FROM target_types WHERE name = 'posts')
    GROUP BY target_id
UNION ALL 
	SELECT target_id, COUNT(target_id) 
	FROM likes WHERE target_id IN (SELECT id FROM posts WHERE user_id = (SELECT id FROM young WHERE user_id = young.id))
    AND target_type_id IN (SELECT id FROM target_types WHERE name = 'messages')
    GROUP BY target_id; 
*/
 
-- Варианты рассмотренные на след. уроке
SELECT SUM(likes_per_user) AS likes_total FROM (
SELECT COUNT(*) AS likes_per_user FROM likes 
	WHERE target_type_id = 2 
	AND target_id IN (SELECT * FROM 
		(SELECT user_id FROM profiles ORDER BY birthdate DESC LIMIT 10)
    AS sorted_profiles)
    GROUP BY target_id
) AS counter_likes;  
 
-- другой вариант
SELECT SUM(likes_total) FROM 
(
	SELECT (SELECT COUNT(*) FROM likes 
	WHERE target_id = profiles.user_id AND target_type_id = 2) AS likes_total
	FROM profiles ORDER BY birthdate DESC LIMIT 10
) AS user_likes; 
 

-- ************************************* Задание 3 *****************************
-- Определить кто больше поставил лайков (всего) - мужчины или женщины?

-- SELECT user_id FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'm') GROUP BY user_id ORDER BY user_id;

-- SELECT user_id FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'f') GROUP BY user_id ORDER BY user_id;

SELECT COUNT(user_id) FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'm') ORDER BY user_id;

SELECT COUNT(user_id) FROM likes WHERE user_id IN (SELECT user_id FROM profiles WHERE gender = 'f') ORDER BY user_id;

-- 44 мужчин, 56 женщины

-- Версия, озвученная на уроке
SELECT 
	(CASE(gender)
	WHEN 'm' THEN 'man'
	WHEN 'f' THEN 'woman'
	END) AS gender, 
	COUNT(*) as likes_count 
	FROM (
	SELECT 
	user_id as user, 
	(SELECT gender FROM profiles WHERE user_id = user) as gender 
	FROM likes) dummy_table 
GROUP BY gender
ORDER BY likes_count DESC
LIMIT 1;

-- ************************************* Задание 4 *****************************
-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
-- Критерий: количество лайков!!

SELECT * FROM likes;

SELECT user_id, COUNT(*) AS likes FROM likes 
    GROUP BY user_id ORDER BY likes LIMIT 10;

-- Версия, озвученная на уроке 
SELECT CONCAT(first_name, ' ', last_name) AS user, 
	(SELECT COUNT(*) FROM likes WHERE likes.user_id = users.id) + 
	(SELECT COUNT(*) FROM media WHERE media.user_id = users.id) + 
	(SELECT COUNT(*) FROM messages WHERE messages.from_user_id = users.id) 
	AS overall_activity 
	FROM users
	ORDER BY overall_activity
	LIMIT 10;


-- ***********************************************************************************************************
-- ********************************************* Урок №8 *****************************************************
-- ***********************************************************************************************************

-- Задание 1. Добавить необходимые внешние ключи для всех таблиц базы данных vk (приложить команды).

SHOW TABLES;
DESC profiles;

ALTER TABLE profiles 
	ADD CONSTRAINT profiles_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE,
	ADD CONSTRAINT profiles_photo_id_fk
	FOREIGN KEY (photo_id) REFERENCES media(id)
		ON DELETE SET NULL;
	
DESC messages;

ALTER TABLE messages 
	ADD CONSTRAINT messages_from_user_id_fk
	FOREIGN KEY (from_user_id) REFERENCES users(id);
ALTER TABLE messages 
	ADD CONSTRAINT messages_to_user_id_fk
	FOREIGN KEY (to_user_id) REFERENCES users(id);
ALTER TABLE messages 
	ADD CONSTRAINT messages_to_community_id_fk
	FOREIGN KEY (to_community_id) REFERENCES communities(id)
		ON DELETE SET NULL;

DESC communities;
DESC communities_users;

ALTER TABLE communities_users 
	ADD CONSTRAINT communities_users_community_id_fk
	FOREIGN KEY (community_id) REFERENCES communities(id)
		ON DELETE CASCADE;
ALTER TABLE communities_users 
	ADD CONSTRAINT communities_users_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE;

DESC friendship;
DESC friendship_statuses;

ALTER TABLE friendship 
	ADD CONSTRAINT friendship_users_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id);

ALTER TABLE friendship 							-- Удалил, забыл ON DELETE
	DROP CONSTRAINT friendship_users_id_fk;

ALTER TABLE friendship 
	ADD CONSTRAINT friendship_users_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE;

ALTER TABLE friendship 
	ADD CONSTRAINT friendship_friend_id_fk
	FOREIGN KEY (friend_id) REFERENCES users(id)
		ON DELETE CASCADE;
	
ALTER TABLE friendship 
	ADD CONSTRAINT friendship_friendship_status_id_fk
	FOREIGN KEY (friendship_status_id) REFERENCES friendship_statuses(id)
		ON DELETE RESTRICT;

DESC likes;
DESC target_types;
SELECT * FROM target_types;

ALTER TABLE likes 							-- Добавил возможность user_id принимать значение NULL
	MODIFY user_id INT UNSIGNED;

ALTER TABLE likes 
	ADD CONSTRAINT likes_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE SET NULL;
	
ALTER TABLE likes 
	ADD CONSTRAINT likes_target_type_id_fk
	FOREIGN KEY (target_type_id) REFERENCES target_types(id)
		ON DELETE RESTRICT;

ALTER TABLE likes 
	ADD CONSTRAINT likes_target_id_messages_fk
	FOREIGN KEY (target_id) REFERENCES messages(id)
		ON DELETE CASCADE;

ALTER TABLE likes 
	ADD CONSTRAINT likes_target_id_users_fk
	FOREIGN KEY (target_id) REFERENCES users(id) 
		ON DELETE CASCADE;
	
ALTER TABLE likes 
	ADD CONSTRAINT likes_target_id_media_fk
	FOREIGN KEY (target_id) REFERENCES media(id) 
		ON DELETE CASCADE;	
	
ALTER TABLE likes 
	ADD CONSTRAINT likes_target_id_posts_fk
	FOREIGN KEY (target_id) REFERENCES posts(id) 
		ON DELETE CASCADE;	 
	
DESC media;
DESC media_types;

ALTER TABLE media 
	ADD CONSTRAINT media_media_type_id_fk
	FOREIGN KEY (media_type_id) REFERENCES media_types(id)
		ON DELETE RESTRICT;
ALTER TABLE media 
	ADD CONSTRAINT media_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id);

DESC posts;

ALTER TABLE posts 
	ADD CONSTRAINT posts_media_id_fk
	FOREIGN KEY (media_id) REFERENCES media(id)
		ON DELETE SET NULL;

ALTER TABLE posts 							-- Добавил возможность user_id принимать значение NULL
	MODIFY user_id INT UNSIGNED;

ALTER TABLE posts
	ADD CONSTRAINT posts_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE SET NULL;

-- Задание 2. По созданным связям создать ER диаграмму, используя Dbeaver (приложить графический файл к ДЗ).

-- Задание 3. Переписать запросы, заданые к ДЗ урока 6 с использованием JOIN (три запроса).

-- Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.


SELECT * FROM likes;
SELECT * FROM profiles;
SELECT * FROM target_types;
SELECT * FROM users;

-- Никак не получилось прикрутить таблицу target_types
SELECT SUM(likes_per_user) AS likes_total FROM (SELECT COUNT(DISTINCT likes.id) AS likes_per_user
	FROM profiles 
		LEFT JOIN likes 
			ON profiles.user_id = likes.target_id  
		-- LEFT JOIN target_types 
			-- ON target_types.id = likes.target_id 
		AND target_type_id = 2 -- target_types.name = 'users'
	GROUP BY profiles.user_id 
	ORDER BY birthdate DESC LIMIT 10) AS 10_users;

-- Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT * FROM likes;
SELECT * FROM profiles;

SELECT (CASE(gender)
	WHEN 'm' THEN 'man'
	WHEN 'f' THEN 'woman'
	END) AS gender,
	COUNT(likes.user_id) AS likes_count FROM likes
	LEFT JOIN profiles 
		ON profiles.user_id = likes.user_id 
	GROUP BY gender
ORDER BY likes_count DESC
LIMIT 1;

-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

SELECT * FROM users;
SELECT * FROM likes;
SELECT * FROM media;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SELECT users.id, CONCAT(users.first_name, ' ', users.last_name) AS name, 
(COUNT(DISTINCT likes.id) + COUNT(DISTINCT media.id) + COUNT(DISTINCT messages.id)) AS overall_activity  
	FROM users 
		LEFT JOIN likes
			ON likes.user_id = users.id
		LEFT JOIN media 
			ON media.user_id = users.id
		LEFT JOIN messages 
			ON messages.from_user_id = users.id
    GROUP BY users.id ORDER BY overall_activity LIMIT 10;


