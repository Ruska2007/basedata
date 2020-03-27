-- Создаем таблицу пользователей
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(120) NOT NULL UNIQUE,
	phone VARCHAR(15) NOT NULL UNIQUE,
	`password` VARCHAR(15),
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
-- Таблица профилей
DROP TABLE IF EXISTS profiles; 
CREATE TABLE profiles (
	user_id INT UNSIGNED NOT NULL PRIMARY KEY,
	birthdate DATE,
	gender CHAR(1) NOT NULL,
	hometown VARCHAR(100),
	country VARCHAR(100),
	photo_id INT UNSIGNED,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- Таблица сообщений
DROP TABLE IF EXISTS messages; 
CREATE TABLE messages (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	from_user_id INT UNSIGNED NOT NULL,
	to_user_id INT UNSIGNED NOT NULL,
	body TEXT NOT NULL,
	is_important BOOLEAN,
	is_delivered BOOLEAN,
	created_at DATETIME DEFAULT NOW()
);
-- Таблица дружбы
DROP TABLE IF EXISTS friendship; 
CREATE TABLE friendship (
	user_id INT UNSIGNED NOT NULL,
	friend_id INT UNSIGNED NOT NULL,
	friendship_status_id INT UNSIGNED NOT NULL,
	requested_at DATETIME DEFAULT NOW(),
	confirmed_at DATETIME,
	PRIMARY KEY (user_id, friend_id)
);
-- Таблица статусов дружеских отношений
DROP TABLE IF EXISTS friendship_statuses;
CREATE TABLE friendship_statuses (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(150) NOT NULL UNIQUE
);
-- Таблица групп
DROP TABLE IF EXISTS communities; 
CREATE TABLE communities (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(150) NOT NULL UNIQUE
);
-- Таблица связи пользователей и групп
DROP TABLE IF EXISTS communities_users; 
CREATE TABLE communities_users (
	community_id INT UNSIGNED NOT NULL,
	user_id INT UNSIGNED NOT NULL,
	PRIMARY KEY (community_id, user_id)
);
-- Таблица медиафайлов
DROP TABLE IF EXISTS media; 
CREATE TABLE media (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	media_type_id INT UNSIGNED NOT NULL,
	user_id INT UNSIGNED NOT NULL,
	filename VARCHAR(255) NOT NULL,
	size INT NOT NULL,
	metadata JSON,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
-- Таблица типов медиафайлов
DROP TABLE IF EXISTS media_types; 
CREATE TABLE media_types (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE
);

SHOW TABLES;

SELECT * FROM media_types;
TRUNCATE TABLE media_types;
SELECT * FROM media_types;
INSERT INTO media_types VALUES (1, 'mp3');
INSERT INTO media_types VALUES (2, 'avi');
INSERT INTO media_types VALUES (3, 'mkv');
INSERT INTO media_types VALUES (4, 'jpg');
INSERT INTO media_types VALUES (5, 'png');

SELECT * FROM media_types;
SELECT * FROM users;
SELECT * FROM profiles;
SELECT * FROM messages;
SELECT * FROM friendship;

SELECT * FROM friendship_statuses;
TRUNCATE TABLE friendship_statuses;
SELECT * FROM friendship_statuses;
INSERT INTO friendship_statuses VALUES (1, 'в браке');
INSERT INTO friendship_statuses VALUES (2, 'родственник');
INSERT INTO friendship_statuses VALUES (3, 'друзья');
INSERT INTO friendship_statuses VALUES (4, 'одноклассники');
INSERT INTO friendship_statuses VALUES (5, 'коллеги');
SELECT * FROM friendship_statuses;
DELETE FROM friendship_statuses WHERE name='родственник';
SELECT * FROM friendship_statuses;
INSERT INTO friendship_statuses VALUES (2, 'родственники');
SELECT * FROM friendship_statuses;

SELECT * FROM communities;
TRUNCATE TABLE communities;
SELECT * FROM communities;
INSERT INTO communities VALUES (1, 'GeekBrains Group');
INSERT INTO communities VALUES (2, 'Data base course');
INSERT INTO communities VALUES (3, 'Viktor Schupochenko is cool teacher');
INSERT INTO communities VALUES (4, 'Rustam Khaitov is cool student');
INSERT INTO communities VALUES (5, 'All students at course are awesome');
INSERT INTO communities VALUES (6, 'I am a God of Data base');
INSERT INTO communities VALUES (7, 'msql is my life');
INSERT INTO communities VALUES (8, 'I think I need a doctor');
INSERT INTO communities VALUES (9, 'When will the communities names end?');
INSERT INTO communities VALUES (10, 'Hallelujah!!! The end has come!');
SELECT * FROM communities;

SELECT * FROM communities_users;
SELECT * FROM media;

-- *****************************************************************************************
-- **************************** Следующий урок (доработка БД vk) ******************************

-- *****************************************************************************************
/* 
Заодно исправить ошибку с таблицей media_types. Создать в таблице 3 строчки с типами медиа контента (фото, видео, музыка) вместо 
5 строчек с типами файлов медиа контента (mp3, avi, mkv, jpeg, png). Слегка не понял что конкретно подразумевалось :)
*/

SELECT * FROM users;
-- 100 rows
UPDATE users SET created_at = updated_at WHERE created_at > updated_at; 

SELECT * FROM profiles;
SELECT * FROM communities_users;
/* 68 rows. ??? В дампе из filldb.info также 68 строк :( Не знаю как так получилось.
 * В communities_users 97 строк.
 * Решение: Сформировать еще раз дамп на filldb.info для таблицы profiles и communities_users. 
 */

-- Очищаем таблицы profiles и communities_users перед заливкой из дампа
TRUNCATE TABLE communities_users;
TRUNCATE TABLE profiles;
-- Залили дамп

UPDATE profiles SET gender = '';
CREATE TEMPORARY TABLE gender (gender CHAR(1));
INSERT INTO gender VALUES ('m'), ('f');
SELECT * FROM gender;

UPDATE profiles SET gender = (SELECT gender FROM gender ORDER BY RAND() LIMIT 1);

SELECT * FROM messages;
SELECT * FROM messages WHERE from_user_id = to_user_id;
UPDATE messages SET to_user_id = from_user_id + 1 WHERE from_user_id = to_user_id;

SELECT * FROM media_types;
TRUNCATE TABLE media_types;
INSERT INTO media_types (name) VALUE
	('photo'),
	('audio'),
	('video');

SELECT * FROM media;
UPDATE media SET media_type_id = FLOOR(1 + (RAND() * 3));
UPDATE media SET filename = CONCAT('https://dropbox.net/vk/file_', filename); 
UPDATE media SET size = size * 1230 WHERE size < 10; 
UPDATE media SET metadata = CONCAT('{"owner":"',
	(SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
	'"}'); 
DESC media;
ALTER TABLE media MODIFY metadata JSON;

SELECT * FROM friendship_statuses;
TRUNCATE TABLE friendship_statuses;
INSERT INTO friendship_statuses (name) VALUES
	('Requested'),
	('Confirmed'),
	('Rejected');

SELECT * FROM friendship;
UPDATE friendship SET friendship_status_id = FLOOR(1 + (RAND() * 3));
UPDATE friendship SET requested_at = confirmed_at WHERE requested_at > confirmed_at; 
-- ЭТО НЕ ПОЛУЧИЛОСЬ!!!!!    UPDATE friendship SET confirmed_at = DATE_ADD (day, 1, requested_at) WHERE requested_at = confirmed_at; 
SELECT * FROM friendship WHERE user_id = friend_id;
-- Нашлась 1 строка где user_id = friend_id
UPDATE friendship SET user_id = friend_id + 1 WHERE user_id = friend_id;

SELECT * FROM communities;

SELECT * FROM communities_users;

CREATE TABLE posts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  	media_id INT UNSIGNED, 
  	user_id INT UNSIGNED NOT NULL, 
  	head VARCHAR(255),
  	post MEDIUMTEXT, 
  	created_at DATETIME default CURRENT_TIMESTAMP, 
  	updated_at DATETIME default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP 
);

DESC posts;
SELECT * FROM posts;
ALTER TABLE posts RENAME COLUMN post TO body;

ALTER TABLE messages ADD COLUMN to_community_id INT UNSIGNED AFTER to_user_id;
DESC messages;
UPDATE messages SET to_community_id = FLOOR(1 + (RAND() * 10)) WHERE id > 50 AND id < 70;

DESC communities;
ALTER TABLE communities ADD COLUMN is_open BOOLEAN;
ALTER TABLE communities ADD COLUMN description VARCHAR(255) AFTER name;

UPDATE communities SET is_open = TRUE WHERE id IN (2,3,4,7,9);
UPDATE communities SET is_open = FALSE WHERE is_open IS NULL;
SELECT * FROM communities;

UPDATE communities SET description = 
	(SELECT body FROM messages WHERE messages.id = communities.id);
SHOW TABLES;


-- **************************** Заполнение таблицы posts *********************
-- Генерация инфы posts на filldb.info с дальнейшим переносом в БД vk через дамп.
DESC posts;
SELECT * FROM posts;
-- 1. перемешать упорядоченные данные в столбиках media_id и user_id
-- 2. привести к логике значения в created_at и updated_at

UPDATE posts SET media_id = FLOOR(1 + (RAND() * 100));
UPDATE posts SET user_id = FLOOR(1 + (RAND() * 100));
UPDATE posts SET created_at = updated_at WHERE created_at > updated_at; 

-- **************************** Таблица like'ов *********************
/* Как мне видится, самым оптимальным будет создать несколько таблиц для каждой лайкаемой сущности: 
1. таблица лайков для медиа-файлов
2. таблица лайков для постов
3. таблица лайков для сообщений
4. таблица лайков для сообществ
*/

CREATE TABLE likes_media (
	user_id INT UNSIGNED NOT NULL,
	media_id INT UNSIGNED,
	PRIMARY KEY (user_id, media_id)
);

CREATE TABLE likes_posts (
	user_id INT UNSIGNED NOT NULL,
	posts_id INT UNSIGNED,
	PRIMARY KEY (user_id, posts_id)
);

CREATE TABLE likes_messages (
	user_id INT UNSIGNED NOT NULL,
	messages_id INT UNSIGNED,
	PRIMARY KEY (user_id, messages_id)
);

CREATE TABLE likes_communities (
	user_id INT UNSIGNED NOT NULL,
	communities_id INT UNSIGNED,
	PRIMARY KEY (user_id, communities_id)
);

-- **************************** Заполнение таблиц likes *********************
-- Генерация инфы для нижеупомянутых таблиц на filldb.info с дальнейшим переносом в БД vk через дамп.

SELECT * FROM likes_media;
SELECT * FROM likes_posts;
SELECT * FROM likes_messages;
SELECT * FROM likes_communities;

-- **************** Выбор сервиса, который будет основой для курсовой работы. ***************

-- База данных на основе сервиса для трудоустройства HeadHunter.

-- *******************************************************************************************
-- *******************************************************************************************
-- *******************************************************************************************
-- *******************************************************************************************
-- *******************************************************************************************

-- **************************************** Урок 6 *******************************************

DESCRIBE posts;
SELECT * FROM posts;

 /* Может я не прав конечно, но как мне кажется так логичнее и правдоподобнее:  
 *  Добавляем случаи когда постер может быть либо без тела либо без названия. 
 *  !!! Но должны отсутствовать случаи когда и то и другое NULL, но как это сделать я не знаю пока.
 */ 

ALTER TABLE posts MODIFY head VARCHAR(255);
UPDATE posts SET head = NULL WHERE id IN (3, 86, 54, 7, 97, 74, 28, 58, 2, 67, 60, 47, 88, 55, 22);
ALTER TABLE posts MODIFY body MEDIUMTEXT;
UPDATE posts SET body = NULL WHERE id IN (6, 8, 45, 9, 79, 47, 82, 85, 4, 76, 62, 59, 66, 56, 11);

ALTER TABLE posts MODIFY media_id INT UNSIGNED;
UPDATE posts SET media_id = NULL;

UPDATE posts SET media_id = 
	(SELECT id FROM media WHERE media.user_id = posts.user_id LIMIT 1)
	WHERE id IN (1, 34, 56, 67, 88, 9 ,26, 78, 45, 18, 55);
SELECT * FROM posts WHERE media_id IS NOT NULL;

-- Привязка фотографии к профилю

DESCRIBE profiles;
SELECT * FROM profiles;
SELECT * FROM media_types;

UPDATE profiles SET photo_id =
	(SELECT id FROM media 
		WHERE media.user_id = profiles.user_id 
			AND media.media_type_id = 1 LIMIT 1);

-- Исправление номеров телефона

SELECT * FROM users;
ALTER TABLE users MODIFY phone VARCHAR(15) UNIQUE;
UPDATE users SET phone = NULL;

UPDATE users SET phone = 
	(SELECT CONCAT ('+7-', CONCAT_WS('-', 
	FLOOR(100 + (RAND() * 899)), 
	FLOOR(100 + (RAND() * 899)), 
	FLOOR(1000 + (RAND() * 8999))))
	);

-- Рассмотрим заполнение user_id для profiles 

DESCRIBE profiles;
SELECT * FROM profiles;

-- В моем случае у меня все user_id в порядке

-- Далее решаем задачу с Likes
-- 1. Удаляем предыдущее решение с Likes

DROP TABLE likes_media;
DROP TABLE likes_posts;
DROP TABLE likes_messages;
DROP TABLE likes_communities;

SHOW TABLES;

-- 2. Создаем новое решение Likes

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('messages'),
  ('users'),
  ('media'),
  ('posts');

-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP 
  FROM messages;

SELECT * FROM likes LIMIT 10;

TEMP

   



