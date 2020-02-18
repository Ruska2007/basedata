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
INSERT INTO communities VALUES (6, 'I\'am a God of Data base');
INSERT INTO communities VALUES (7, 'msql is my life');
INSERT INTO communities VALUES (8, 'I think I need a doctor');
INSERT INTO communities VALUES (9, 'When will the communities names end?');
INSERT INTO communities VALUES (10, 'Hallelujah!!! The end has come!');
SELECT * FROM communities;

SELECT * FROM communities_users;
SELECT * FROM media;





















