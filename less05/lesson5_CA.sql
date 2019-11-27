show databases;
use vk;
show tables;

-- 1.	Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем. 
-- очищаем значения
update users set created_at = null;
update users set updated_at = null;
select * from users limit 20; -- проверка, что поля незаполненные
update users set created_at = now();
update users set updated_at = now(); -- заполняем

-- 2.	Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время
-- помещались значения в формате "20.10.2017 8:10". Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.
desc users; -- у нас порядок, но постараемся преобразовать в требуемый по заданию тип варчар
alter table users modify column created_at VARCHAR(255);
desc users; -- имеем  варчар в колуме криейтед_ат, запускаем строку 8 для проверки, что данные на месте=)
alter table users modify column created_at datetime; -- возвращаем в обратку, проверяем запуском строк 8 и 15.

-- 3.	В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
-- 	0, если товар закончился и выше нуля, если на складе имеются запасы. 
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. 
-- Однако, нулевые запасы должны выводиться в конце, после всех записей.

create database shop;
use shop;
show tables;
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
  ('Мария', '1992-08-29');

DROP TABLE IF EXISTS products;
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  desription TEXT COMMENT 'Описание',
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
select * from storehouses_products;
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('1', 5, 162, 4556, '2003-09-22 13:48:39', '1991-11-11 12:33:57');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('2', 3, 165, 15021, '2011-11-11 14:55:30', '1988-08-10 14:30:37');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('3', 3, 402, 8989, '2012-03-20 06:54:57', '2011-04-02 02:03:10');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('4', 5, 112, 12959, '1997-08-23 02:07:21', '1999-06-11 11:43:20');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('5', 5, 15, 9053, '1978-06-04 07:25:06', '1980-02-09 05:39:31');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('6', 5, 224, 391, '2011-07-19 16:41:00', '1988-11-30 10:21:39');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('7', 2, 33, 5934, '1989-12-26 15:46:24', '1970-08-06 14:57:34');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('8', 2, 401, 6633, '1980-12-01 15:59:25', '1991-01-22 09:57:51');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('9', 4, 411, 9969, '2016-12-19 01:07:34', '1984-11-05 17:02:27');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('10', 4, 293, 4442, '1992-03-08 11:19:07', '1990-10-29 16:42:34');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('11', 5, 381, 5472, '2011-09-10 09:39:32', '2005-04-07 03:41:08');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('12', 2, 136, 1504, '2019-09-25 20:58:45', '1978-05-22 17:33:45');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('13', 3, 98, 13382, '1981-05-17 14:35:22', '1976-11-07 16:49:12');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('14', 5, 3, 2552, '1999-04-01 21:20:43', '2017-10-01 02:30:13');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('15', 2, 75, 4193, '2009-05-30 16:13:11', '2014-10-27 10:46:07');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('16', 3, 93, 8979, '1981-02-15 17:25:39', '1994-11-07 05:29:52');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('17', 3, 348, 3117, '2012-12-18 19:05:38', '1989-08-09 23:48:02');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('18', 2, 314, 9598, '2018-12-18 20:57:46', '1984-12-01 08:58:18');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('19', 5, 258, 11155, '2017-07-02 21:20:51', '1978-08-11 05:03:47');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('20', 2, 106, 3823, '2004-09-07 16:40:15', '1980-03-11 12:36:55');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('21', 1, 22, 1516, '1972-08-27 08:27:26', '1997-01-24 00:15:23');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('22', 4, 226, 13403, '1977-11-29 10:43:03', '2010-06-24 04:58:12');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('23', 1, 287, 9446, '2009-03-25 04:20:12', '2013-12-25 04:12:10');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('24', 1, 319, 1256, '2003-03-03 13:57:17', '1993-03-12 15:59:08');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('25', 3, 378, 8500, '1997-07-28 16:33:34', '2001-09-16 05:26:02');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('26', 5, 94, 3306, '2007-10-06 17:22:47', '2018-07-30 15:24:33');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('27', 3, 347, 4593, '1970-04-22 16:32:55', '2001-05-12 12:40:42');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('28', 3, 51, 2087, '1996-02-12 18:13:53', '2015-12-24 02:16:16');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('29', 1, 58, 10482, '1978-04-06 12:02:18', '1996-08-30 02:07:36');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('30', 4, 38, 6647, '2005-01-11 23:50:39', '2001-01-27 12:45:56');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('31', 4, 390, 7449, '2002-05-19 18:42:48', '1977-09-09 10:31:38');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('32', 3, 309, 3555, '1988-04-14 14:07:00', '1972-01-04 20:25:12');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('33', 4, 414, 4931, '1980-12-23 22:42:21', '1988-01-03 02:23:38');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('34', 1, 308, 11984, '2004-11-29 22:57:09', '2011-02-21 09:38:52');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('35', 4, 18, 12576, '2015-12-29 01:05:56', '1994-06-21 15:28:07');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('36', 4, 488, 5226, '1984-12-24 13:26:02', '2004-11-28 14:45:10');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('37', 3, 410, 10329, '1987-08-06 02:40:21', '1973-01-28 14:39:32');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('38', 4, 331, 11323, '1976-07-24 17:47:55', '1995-08-21 06:57:40');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('39', 2, 355, 3643, '2011-04-27 05:20:34', '2019-06-08 03:44:53');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('40', 4, 333, 6768, '1986-05-29 10:31:14', '1996-03-25 20:03:19');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('41', 3, 385, 2752, '2015-11-21 04:37:30', '1987-05-03 19:00:57');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('42', 4, 187, 232, '1990-09-23 04:47:57', '1983-04-27 13:39:32');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('43', 5, 444, 7683, '1980-10-06 18:44:05', '2005-05-10 16:01:49');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('44', 2, 469, 11500, '2013-05-08 08:27:51', '1972-08-10 09:10:35');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('45', 3, 422, 4033, '2002-03-21 05:08:46', '1977-04-05 11:57:46');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('46', 3, 337, 7290, '1982-01-20 20:38:12', '1988-12-04 05:41:24');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('47', 2, 285, 14854, '2009-06-06 02:11:59', '2010-10-10 17:26:24');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('48', 2, 196, 13100, '2005-02-25 01:45:30', '2014-04-11 22:57:26');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('49', 4, 145, 11390, '1989-03-30 15:28:10', '1975-05-13 02:53:44');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('50', 2, 472, 9661, '1988-06-29 10:18:39', '1991-01-23 13:58:51');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('51', 4, 168, 14389, '1990-05-17 06:55:02', '1986-07-22 06:04:09');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('52', 1, 100, 4113, '2008-09-01 14:01:58', '1999-11-26 19:42:09');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('53', 1, 127, 6864, '2018-08-26 00:21:14', '1983-08-31 17:34:57');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('54', 4, 65, 8001, '2017-11-13 13:06:52', '2008-09-28 10:49:58');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('55', 3, 31, 9980, '2011-02-06 17:12:44', '2003-04-01 21:49:16');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('56', 1, 267, 2220, '1979-07-25 15:22:17', '1987-07-21 06:32:33');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('57', 2, 303, 1901, '1988-02-13 14:43:31', '1977-08-18 13:00:04');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('58', 4, 129, 7821, '1974-05-02 19:51:05', '2005-02-04 09:25:56');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('59', 4, 299, 10593, '1978-08-11 14:31:29', '1976-07-14 12:59:20');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('60', 3, 474, 5684, '2000-03-23 19:24:08', '1997-03-15 14:59:15');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('61', 1, 327, 13990, '2016-05-13 04:05:44', '1994-06-18 17:21:39');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('62', 5, 311, 2388, '2016-09-21 17:13:24', '2009-05-18 17:25:09');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('63', 4, 163, 13179, '1992-10-11 08:31:51', '1994-06-07 12:38:54');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('64', 1, 475, 4823, '1980-02-13 03:18:30', '2001-04-14 15:08:20');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('65', 2, 194, 4623, '1993-03-02 15:52:10', '1977-12-30 19:03:35');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('66', 2, 262, 7614, '2003-04-21 23:47:24', '1996-04-17 16:06:01');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('67', 2, 387, 15017, '1999-08-05 16:36:47', '1972-11-10 23:31:03');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('68', 1, 304, 11532, '2009-01-04 12:40:25', '1988-01-10 13:37:06');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('69', 2, 293, 10541, '2000-11-23 02:33:33', '1994-04-26 15:01:36');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('70', 1, 29, 393, '1971-07-14 11:29:51', '2012-04-05 03:23:20');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('71', 5, 280, 7089, '1986-08-04 22:12:28', '2012-01-19 03:45:44');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('72', 4, 144, 4827, '2004-11-15 03:15:53', '1974-10-05 20:05:34');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('73', 2, 407, 10561, '1992-04-18 09:47:57', '2012-03-23 17:04:21');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('74', 5, 29, 6192, '1984-01-25 06:55:33', '2010-01-27 03:49:19');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('75', 3, 464, 313, '1989-12-09 14:49:53', '1986-07-01 21:05:56');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('76', 3, 362, 3656, '1972-07-20 10:30:18', '1972-05-30 15:43:12');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('77', 4, 397, 13566, '2005-02-24 17:30:39', '1984-02-08 22:21:19');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('78', 1, 40, 12809, '1973-12-17 21:40:48', '1984-12-21 03:08:07');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('79', 5, 388, 7790, '1999-08-03 10:31:54', '2009-09-07 00:23:55');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('80', 1, 72, 2375, '1980-12-31 16:39:21', '2005-07-21 20:00:30');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('81', 2, 294, 15084, '1988-09-24 21:15:05', '1989-12-26 03:07:30');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('82', 5, 247, 5748, '1994-01-22 21:45:39', '2000-03-30 02:08:15');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('83', 3, 441, 3526, '2017-03-11 16:48:20', '2014-04-15 11:59:11');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('84', 1, 154, 14505, '1976-07-12 00:25:12', '1993-04-01 06:18:22');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('85', 2, 104, 8841, '1976-06-17 16:40:21', '2006-01-01 05:32:49');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('86', 5, 200, 4961, '1981-10-05 00:43:48', '1970-09-12 11:12:07');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('87', 1, 25, 3893, '2011-07-23 07:44:29', '2015-04-26 05:22:17');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('88', 1, 373, 2740, '2001-12-18 02:35:14', '2013-09-21 21:57:30');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('89', 4, 413, 6841, '2010-03-22 20:11:04', '2017-01-31 12:40:14');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('90', 4, 228, 1660, '1986-04-03 15:00:15', '1986-08-23 02:50:06');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('91', 1, 95, 12784, '2004-03-28 16:02:49', '2013-11-18 14:20:20');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('92', 5, 159, 2397, '1989-11-10 08:53:11', '2014-03-05 22:55:21');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('93', 1, 459, 6120, '1974-01-24 03:40:49', '1990-01-14 22:13:22');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('94', 1, 271, 3731, '1975-12-05 07:08:20', '1981-01-18 07:31:47');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('95', 1, 155, 6373, '2003-02-24 22:39:55', '2016-12-28 01:00:19');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('96', 2, 16, 6889, '1972-01-29 15:26:55', '1970-07-28 11:42:35');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('97', 5, 367, 11751, '1989-09-20 14:14:18', '1979-09-21 01:06:47');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('98', 3, 201, 6984, '1988-01-21 20:57:22', '1993-03-10 21:33:04');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('99', 1, 108, 6715, '1973-12-07 09:16:33', '2011-12-24 23:04:20');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('100', 3, 492, 5130, '1970-11-25 23:48:38', '2002-07-13 05:50:33');

update storehouses_products set value = null where value < 1000 or value between 2300 and 2900;
select * from storehouses_products order by value is null, value;

-- 4.	(по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
-- Месяцы заданы в виде списка английских названий ('may', 'august')
select * from users;
select * from users where birthday_at RLIKE '-08-|-05-'; -- если месяцы заданы may, august, то вместо 08 и 05 ставим may or august 

-- 5.	(по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
-- Отсортируйте записи в порядке, заданном в списке IN.
select * from catalogs WHERE id IN (5, 1, 2) order by field(id, 5, 1, 2);

-- 1.	Подсчитайте средний возраст пользователей в таблице users
use vk;
select * from users;
create temporary table birthday (birthday_at DATE); -- обнаруживаем отсутствие колонки дня рождения, значит надо добавить...
INSERT INTO `birthday` (`birthday_at`) VALUES ('1992-12-03');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2017-02-12');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2003-01-11');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2016-03-01');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1982-03-24');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1989-11-10');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1988-02-17');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2001-01-05');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2004-07-02');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1995-06-29');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1999-05-17');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1983-10-08');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1988-04-11');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1993-03-10');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1971-02-12');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1982-07-06');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1983-03-23');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2006-08-13');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2009-01-11');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1997-07-17');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2008-11-16');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1970-09-29');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1975-01-25');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2017-04-28');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2017-07-05');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1977-05-07');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1996-11-18');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1985-03-26');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2017-05-18');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1978-04-12');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2004-01-23');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1980-03-23');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2018-07-22');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2012-05-07');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2015-01-31');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1977-03-14');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1987-08-08');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1995-07-12');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1970-08-17');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1974-07-18');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2006-08-17');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1992-12-26');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2016-09-20');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1975-06-16');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2010-04-24');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2019-01-18');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2006-03-01');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1996-09-10');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1970-08-26');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2002-02-28');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2019-09-04');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2011-08-10');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2002-09-17');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1990-08-16');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2012-05-22');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2014-03-01');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2001-11-05');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2018-09-02');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1988-11-11');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1986-01-07');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1976-07-13');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1970-09-01');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1983-06-20');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1970-12-03');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2002-09-19');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2004-03-12');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1973-11-10');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1983-11-21');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2002-01-02');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1972-03-03');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2007-12-23');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2015-02-15');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1990-01-27');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2016-04-08');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2005-08-09');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2004-10-31');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2009-03-07');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1994-03-05');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1983-07-08');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2013-11-12');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1977-05-13');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1998-02-14');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2019-10-23');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1995-01-03');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2019-09-27');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2001-01-20');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1987-12-14');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1970-02-28');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2006-10-27');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1978-01-01');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1980-09-22');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1998-09-30');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2017-02-03');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1987-07-03');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2013-12-12');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1991-02-26');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1989-02-13');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1974-10-04');
INSERT INTO `birthday` (`birthday_at`) VALUES ('1985-07-03');
INSERT INTO `birthday` (`birthday_at`) VALUES ('2007-05-19');
INSERT INTO users (birthday_at) select birthday_at from birthday; -- и вот здесь я застрял...

SELECT AVG(TO_DAYS(NOW()) - TO_DAYS(birthday_at)/365.25) FROM users; -- код в принципе должен быть далее такой.
-- 2.	Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.

-- 3.	(по желанию) Подсчитайте произведение чисел в столбце таблицы















