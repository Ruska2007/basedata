DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Аркадий', '1976-11-01'),
  ('Алла', '1983-10-07'),
  ('Агата', '1985-07-25'),
  ('Петр', '1982-02-28'),
  ('Карл', '1997-06-03'),
  ('Карлита', '1990-01-07'),
  ('Мария', '1992-08-29');

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  description TEXT COMMENT 'Описание',
  price DECIMAL (11,2) COMMENT 'Цена',
  catalog_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Товарные позиции';

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Intel Core i3-8100', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 7890.00, 1),
  ('Intel Core i5-7400', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 12700.00, 1),
  ('AMD FX-8320E', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 4780.00, 1),
  ('AMD FX-8320', 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.', 7120.00, 1),
  ('ASUS ROG MAXIMUS X HERO', 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX', 19310.00, 2),
  ('Gigabyte H310M S2H', 'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX', 4790.00, 2),
  ('MSI B250M GAMING PRO', 'Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX', 5060.00, 2);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
  id SERIAL PRIMARY KEY,
  order_id INT UNSIGNED,
  product_id INT UNSIGNED,
  total INT UNSIGNED DEFAULT 1 COMMENT 'Количество заказанных товарных позиций',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Состав заказа';

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED,
  product_id INT UNSIGNED,
  discount FLOAT UNSIGNED COMMENT 'Величина скидки от 0.0 до 1.0',
  started_at DATETIME,
  finished_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY index_of_user_id(user_id),
  KEY index_of_product_id(product_id)
) COMMENT = 'Скидки';

DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Склады';

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';


-- Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение”
-- Задание 1: Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

SHOW TABLES;
SELECT * FROM users;
UPDATE users SET created_at = NOW(), updated_at = NOW();

-- Задание 2: Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время 
-- помещались значения в формате "20.10.2017 8:10". Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.

DESCRIBE users;
ALTER TABLE users CHANGE created_at created_at VARCHAR(20);
ALTER TABLE users CHANGE updated_at updated_at VARCHAR(20);

UPDATE users SET created_at = DATE_FORMAT(created_at, '%d.%m.%Y %k:%i');
UPDATE users SET updated_at = DATE_FORMAT(updated_at, '%d.%m.%Y %k:%i');

UPDATE users SET created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i');
UPDATE users SET updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');

ALTER TABLE users CHANGE created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
ALTER TABLE users CHANGE updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- Задание 3: В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар 
-- закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, чтобы они выводились в 
-- порядке увеличения значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей.

SELECT * FROM storehouses_products;
DESCRIBE storehouses_products;

-- Заполняем таблицу данными

INSERT INTO storehouses_products (storehouse_id, product_id, value) VALUES
	(1, 1, 0),
	(1, 2, 1),
	(1, 3, 3),
	(1, 4, 111),
	(1, 5, 0),
	(1, 6, 33333),
	(1, 7, 100),
	(1, 8, 200),
	(1, 9, 3),
	(1, 10, 0),
	(2, 1, 2),
	(2, 2, 6),
	(2, 3, 55),
	(2, 4, 9),
	(2, 5, 4),
	(2, 6, 665),
	(2, 7, 48),
	(2, 8, 95),
	(2, 9, 0),
	(2, 10, 10);

-- Выполняем задание

SELECT * FROM storehouses_products ORDER BY value = 0, value;

SELECT
  *, value = 0
FROM
  storehouses_products
ORDER BY
  value = 0, value;

/* Задание 4: (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде 
 * списка английских названий ('may', 'august')
*/  
DESCRIBE users;
SELECT * FROM users;
SELECT 
	id, name, MONTHNAME(birthday_at), created_at, updated_at 
FROM 
	users 
WHERE 
	MONTHNAME(birthday_at) = 'May' OR MONTHNAME(birthday_at) = 'August';

/* Задание 5: (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
 * Отсортируйте записи в порядке, заданном в списке IN.
*/ 
SELECT * FROM products;
DESCRIBE catalogs;
SELECT * FROM catalogs;
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY id = 2, id DESC;

-- Практическое задание теме “Агрегация данных”
-- Задание 1: Подсчитайте средний возраст пользователей в таблице users

SELECT * FROM users;
 
SELECT FLOOR(AVG(TIMESTAMPDIFF (YEAR, birthday_at, NOW()))) FROM users;
 
-- Задание 2: Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы 
-- дни недели текущего года, а не года рождения.

SELECT *, WEEKDAY (TIMESTAMPADD (YEAR, ((YEAR (NOW()) - (YEAR (birthday_at)))), birthday_at)) FROM users;

SELECT 
	WEEKDAY (TIMESTAMPADD (YEAR, ((YEAR (NOW()) - (YEAR (birthday_at)))), birthday_at)), 
	COUNT(WEEKDAY (TIMESTAMPADD (YEAR, ((YEAR (NOW()) - (YEAR (birthday_at)))), birthday_at))) 
FROM 
	users
GROUP BY
	WEEKDAY (TIMESTAMPADD (YEAR, ((YEAR (NOW()) - (YEAR (birthday_at)))), birthday_at));


-- Задание 3: (по желанию) Подсчитайте произведение чисел в столбце таблицы

CREATE TEMPORARY TABLE value (value INT);
INSERT INTO value VALUES 
(1), 
(2), 
(3), 
(4), 
(5);
SELECT * FROM value;

SELECT exp(SUM(log(value))) FROM value; 

-- *********************************************************************************************************
-- ********************************************* ДЗ к уроку № 7 ********************************************
-- *********************************************************************************************************

-- Задание 1: Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

USE shop;
SHOW TABLES;
SELECT * FROM orders;
SELECT * FROM users;

INSERT INTO orders (user_id) SELECT (ROUND(RAND()*(12-1)+1)) FROM users LIMIT 12; 	

SELECT u.name FROM users AS u JOIN orders AS o WHERE o.user_id = u.id GROUP BY user_id;

-- Задание 2: Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT * FROM products;
SELECT * FROM catalogs;

SELECT p.name AS 'товар', c.name AS 'каталог' FROM products p JOIN catalogs c WHERE p.catalog_id = c.id;

-- Задание 3: (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.

DROP TABLE IF EXISTS cities;
CREATE TEMPORARY TABLE cities 
(
	label VARCHAR(100) NOT NULL,
	name VARCHAR(100) NOT NULL
);

INSERT INTO cities VALUES
	('moscow', 'Москва'),
	('irkutsk', 'Иркутск'),
	('novgorod', 'Новгород'),
	('kazan', 'Казань'),
	('omsk', 'Омск');

SELECT * FROM cities;

DROP TABLE IF EXISTS flights;
CREATE TEMPORARY TABLE flights 
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`from` VARCHAR(100) NOT NULL,
	`to` VARCHAR(100) NOT NULL
);

INSERT INTO flights (`from`, `to`) VALUES
	('moscow', 'omsk'),
	('novgorod', 'kazan'),
	('irkutsk', 'moscow'),
	('omsk', 'irkutsk'),
	('moscow', 'kazan');

SELECT * FROM flights;

SELECT f.id, c.name AS 'Из' FROM flights f JOIN cities c ON (`from` = c.label) ORDER BY f.id;  

-- Запрос ниже работает, но показыват пустую таблицу, причину не могу понять.
SELECT f.id, c.name AS 'Из', `to` AS 'В' FROM flights f JOIN cities c ON (`from` = c.label AND `to` = c.label) ORDER BY f.id;   


 
