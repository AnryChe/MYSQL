DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
SHOW DATABASES;
USE vk;
CREATE TABLE users (
	id INT  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	email VARCHAR (100) NOT NULL UNIQUE,
	phone_number VARCHAR (12) NOT NULL UNIQUE,
	created_at  DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT NOW()
);

CREATE TABLE profiles (
	user_id INT  UNSIGNED NOT NULL PRIMARY KEY,
	sex CHAR (1) NOT NULL,
	birthday DATE,
	hometown VARCHAR (100),
	photo_id INT UNSIGNED NOT NULL	
);

-- Таблица сообщений
CREATE TABLE messages (
	id INT  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	from_user_id INT UNSIGNED NOT NULL,
	to_user_id INT UNSIGNED NOT NULL,
	body TEXT NOT NULL,
	is_important BOOLEAN,
	is_delivered BOOLEAN,
	created_at  DATETIME DEFAULT NOW() 
);
-- Таблица отношений
CREATE TABLE friendship (
	user_id INT UNSIGNED NOT NULL,
	friend_id INT UNSIGNED NOT NULL,
	status_id INT UNSIGNED NOT NULL,
	requested_at  DATETIME DEFAULT NOW(),
	confirmed_at  DATETIME, 
	PRIMARY KEY (user_id, friend_id)
);

-- Таблица статусов
CREATE TABLE friendship_status (
	id INT  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(10) NOT NULL UNIQUE
);

-- Таблица групп
CREATE TABLE communites (
	id INT  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(150) NOT NULL UNIQUE
);

-- Таблица связи между пользователями и сообществами
CREATE TABLE communites_users (
	community_id INT  UNSIGNED NOT NULL,
	user_id INT UNSIGNED NOT NULL,
	PRIMARY KEY (community_id, user_id)
);
  
CREATE TABLE media (
	id INT  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	media_type_id INT UNSIGNED NOT NULL,
	user_id INT UNSIGNED NOT NULL,
	filename VARCHAR(10) NOT NULL,
	size INT NOT NULL,
	metadata JSON,
	created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE media_types (
	id INT  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE
);

USE vk

DROP TABLE IF EXISTS `communites`;

CREATE TABLE `communites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communites` (`id`, `name`) VALUES (82, 'a');
INSERT INTO `communites` (`id`, `name`) VALUES (63, 'ab');
INSERT INTO `communites` (`id`, `name`) VALUES (3, 'accusamus');
INSERT INTO `communites` (`id`, `name`) VALUES (1, 'accusantium');
INSERT INTO `communites` (`id`, `name`) VALUES (141, 'adipisci');
INSERT INTO `communites` (`id`, `name`) VALUES (130, 'alias');
INSERT INTO `communites` (`id`, `name`) VALUES (96, 'aliquam');
INSERT INTO `communites` (`id`, `name`) VALUES (121, 'aliquid');
INSERT INTO `communites` (`id`, `name`) VALUES (116, 'amet');
INSERT INTO `communites` (`id`, `name`) VALUES (139, 'animi');
INSERT INTO `communites` (`id`, `name`) VALUES (108, 'aperiam');
INSERT INTO `communites` (`id`, `name`) VALUES (86, 'architecto');
INSERT INTO `communites` (`id`, `name`) VALUES (145, 'asperiores');
INSERT INTO `communites` (`id`, `name`) VALUES (57, 'assumenda');
INSERT INTO `communites` (`id`, `name`) VALUES (45, 'at');
INSERT INTO `communites` (`id`, `name`) VALUES (85, 'atque');
INSERT INTO `communites` (`id`, `name`) VALUES (5, 'aut');
INSERT INTO `communites` (`id`, `name`) VALUES (48, 'autem');
INSERT INTO `communites` (`id`, `name`) VALUES (129, 'beatae');
INSERT INTO `communites` (`id`, `name`) VALUES (89, 'blanditiis');
INSERT INTO `communites` (`id`, `name`) VALUES (32, 'consequatur');
INSERT INTO `communites` (`id`, `name`) VALUES (78, 'consequuntur');
INSERT INTO `communites` (`id`, `name`) VALUES (102, 'corporis');
INSERT INTO `communites` (`id`, `name`) VALUES (133, 'culpa');
INSERT INTO `communites` (`id`, `name`) VALUES (148, 'cum');
INSERT INTO `communites` (`id`, `name`) VALUES (31, 'cumque');
INSERT INTO `communites` (`id`, `name`) VALUES (104, 'cupiditate');
INSERT INTO `communites` (`id`, `name`) VALUES (21, 'debitis');
INSERT INTO `communites` (`id`, `name`) VALUES (101, 'delectus');
INSERT INTO `communites` (`id`, `name`) VALUES (117, 'deleniti');
INSERT INTO `communites` (`id`, `name`) VALUES (66, 'deserunt');
INSERT INTO `communites` (`id`, `name`) VALUES (120, 'dicta');
INSERT INTO `communites` (`id`, `name`) VALUES (146, 'dignissimos');
INSERT INTO `communites` (`id`, `name`) VALUES (58, 'distinctio');
INSERT INTO `communites` (`id`, `name`) VALUES (76, 'dolor');
INSERT INTO `communites` (`id`, `name`) VALUES (46, 'dolore');
INSERT INTO `communites` (`id`, `name`) VALUES (51, 'dolorem');
INSERT INTO `communites` (`id`, `name`) VALUES (105, 'doloremque');
INSERT INTO `communites` (`id`, `name`) VALUES (79, 'dolores');
INSERT INTO `communites` (`id`, `name`) VALUES (147, 'doloribus');
INSERT INTO `communites` (`id`, `name`) VALUES (90, 'ducimus');
INSERT INTO `communites` (`id`, `name`) VALUES (107, 'ea');
INSERT INTO `communites` (`id`, `name`) VALUES (84, 'eaque');
INSERT INTO `communites` (`id`, `name`) VALUES (99, 'eius');
INSERT INTO `communites` (`id`, `name`) VALUES (9, 'eligendi');
INSERT INTO `communites` (`id`, `name`) VALUES (35, 'enim');
INSERT INTO `communites` (`id`, `name`) VALUES (95, 'eos');
INSERT INTO `communites` (`id`, `name`) VALUES (17, 'error');
INSERT INTO `communites` (`id`, `name`) VALUES (125, 'esse');
INSERT INTO `communites` (`id`, `name`) VALUES (53, 'est');
INSERT INTO `communites` (`id`, `name`) VALUES (16, 'et');
INSERT INTO `communites` (`id`, `name`) VALUES (40, 'eum');
INSERT INTO `communites` (`id`, `name`) VALUES (65, 'eveniet');
INSERT INTO `communites` (`id`, `name`) VALUES (126, 'exercitationem');
INSERT INTO `communites` (`id`, `name`) VALUES (111, 'expedita');
INSERT INTO `communites` (`id`, `name`) VALUES (100, 'facere');
INSERT INTO `communites` (`id`, `name`) VALUES (10, 'facilis');
INSERT INTO `communites` (`id`, `name`) VALUES (106, 'fuga');
INSERT INTO `communites` (`id`, `name`) VALUES (81, 'fugiat');
INSERT INTO `communites` (`id`, `name`) VALUES (138, 'harum');
INSERT INTO `communites` (`id`, `name`) VALUES (149, 'hic');
INSERT INTO `communites` (`id`, `name`) VALUES (15, 'id');
INSERT INTO `communites` (`id`, `name`) VALUES (8, 'illum');
INSERT INTO `communites` (`id`, `name`) VALUES (56, 'in');
INSERT INTO `communites` (`id`, `name`) VALUES (77, 'incidunt');
INSERT INTO `communites` (`id`, `name`) VALUES (50, 'ipsa');
INSERT INTO `communites` (`id`, `name`) VALUES (37, 'ipsam');
INSERT INTO `communites` (`id`, `name`) VALUES (103, 'ipsum');
INSERT INTO `communites` (`id`, `name`) VALUES (12, 'iste');
INSERT INTO `communites` (`id`, `name`) VALUES (38, 'itaque');
INSERT INTO `communites` (`id`, `name`) VALUES (43, 'iure');
INSERT INTO `communites` (`id`, `name`) VALUES (36, 'iusto');
INSERT INTO `communites` (`id`, `name`) VALUES (123, 'labore');
INSERT INTO `communites` (`id`, `name`) VALUES (119, 'laboriosam');
INSERT INTO `communites` (`id`, `name`) VALUES (11, 'laborum');
INSERT INTO `communites` (`id`, `name`) VALUES (25, 'laudantium');
INSERT INTO `communites` (`id`, `name`) VALUES (144, 'libero');
INSERT INTO `communites` (`id`, `name`) VALUES (135, 'magnam');
INSERT INTO `communites` (`id`, `name`) VALUES (23, 'magni');
INSERT INTO `communites` (`id`, `name`) VALUES (97, 'maiores');
INSERT INTO `communites` (`id`, `name`) VALUES (68, 'maxime');
INSERT INTO `communites` (`id`, `name`) VALUES (143, 'minima');
INSERT INTO `communites` (`id`, `name`) VALUES (150, 'minus');
INSERT INTO `communites` (`id`, `name`) VALUES (70, 'modi');
INSERT INTO `communites` (`id`, `name`) VALUES (94, 'molestiae');
INSERT INTO `communites` (`id`, `name`) VALUES (26, 'molestias');
INSERT INTO `communites` (`id`, `name`) VALUES (13, 'mollitia');
INSERT INTO `communites` (`id`, `name`) VALUES (4, 'nam');
INSERT INTO `communites` (`id`, `name`) VALUES (142, 'natus');
INSERT INTO `communites` (`id`, `name`) VALUES (122, 'necessitatibus');
INSERT INTO `communites` (`id`, `name`) VALUES (93, 'nemo');
INSERT INTO `communites` (`id`, `name`) VALUES (72, 'nesciunt');
INSERT INTO `communites` (`id`, `name`) VALUES (87, 'nihil');
INSERT INTO `communites` (`id`, `name`) VALUES (14, 'nisi');
INSERT INTO `communites` (`id`, `name`) VALUES (75, 'nobis');
INSERT INTO `communites` (`id`, `name`) VALUES (27, 'non');
INSERT INTO `communites` (`id`, `name`) VALUES (110, 'nulla');
INSERT INTO `communites` (`id`, `name`) VALUES (109, 'numquam');
INSERT INTO `communites` (`id`, `name`) VALUES (49, 'occaecati');
INSERT INTO `communites` (`id`, `name`) VALUES (118, 'odio');
INSERT INTO `communites` (`id`, `name`) VALUES (132, 'officia');
INSERT INTO `communites` (`id`, `name`) VALUES (67, 'officiis');
INSERT INTO `communites` (`id`, `name`) VALUES (55, 'omnis');
INSERT INTO `communites` (`id`, `name`) VALUES (91, 'optio');
INSERT INTO `communites` (`id`, `name`) VALUES (127, 'pariatur');
INSERT INTO `communites` (`id`, `name`) VALUES (42, 'perferendis');
INSERT INTO `communites` (`id`, `name`) VALUES (39, 'perspiciatis');
INSERT INTO `communites` (`id`, `name`) VALUES (73, 'porro');
INSERT INTO `communites` (`id`, `name`) VALUES (136, 'praesentium');
INSERT INTO `communites` (`id`, `name`) VALUES (92, 'provident');
INSERT INTO `communites` (`id`, `name`) VALUES (114, 'quae');
INSERT INTO `communites` (`id`, `name`) VALUES (7, 'quaerat');
INSERT INTO `communites` (`id`, `name`) VALUES (131, 'quasi');
INSERT INTO `communites` (`id`, `name`) VALUES (20, 'qui');
INSERT INTO `communites` (`id`, `name`) VALUES (47, 'quia');
INSERT INTO `communites` (`id`, `name`) VALUES (115, 'quidem');
INSERT INTO `communites` (`id`, `name`) VALUES (80, 'quis');
INSERT INTO `communites` (`id`, `name`) VALUES (113, 'quisquam');
INSERT INTO `communites` (`id`, `name`) VALUES (30, 'quo');
INSERT INTO `communites` (`id`, `name`) VALUES (124, 'quod');
INSERT INTO `communites` (`id`, `name`) VALUES (34, 'quos');
INSERT INTO `communites` (`id`, `name`) VALUES (98, 'reiciendis');
INSERT INTO `communites` (`id`, `name`) VALUES (41, 'rem');
INSERT INTO `communites` (`id`, `name`) VALUES (24, 'repellat');
INSERT INTO `communites` (`id`, `name`) VALUES (28, 'repellendus');
INSERT INTO `communites` (`id`, `name`) VALUES (22, 'reprehenderit');
INSERT INTO `communites` (`id`, `name`) VALUES (83, 'rerum');
INSERT INTO `communites` (`id`, `name`) VALUES (18, 'sapiente');
INSERT INTO `communites` (`id`, `name`) VALUES (112, 'sed');
INSERT INTO `communites` (`id`, `name`) VALUES (54, 'sequi');
INSERT INTO `communites` (`id`, `name`) VALUES (59, 'similique');
INSERT INTO `communites` (`id`, `name`) VALUES (134, 'sit');
INSERT INTO `communites` (`id`, `name`) VALUES (137, 'soluta');
INSERT INTO `communites` (`id`, `name`) VALUES (2, 'sunt');
INSERT INTO `communites` (`id`, `name`) VALUES (69, 'suscipit');
INSERT INTO `communites` (`id`, `name`) VALUES (60, 'tempora');
INSERT INTO `communites` (`id`, `name`) VALUES (62, 'tempore');
INSERT INTO `communites` (`id`, `name`) VALUES (19, 'temporibus');
INSERT INTO `communites` (`id`, `name`) VALUES (88, 'tenetur');
INSERT INTO `communites` (`id`, `name`) VALUES (64, 'totam');
INSERT INTO `communites` (`id`, `name`) VALUES (128, 'ullam');
INSERT INTO `communites` (`id`, `name`) VALUES (6, 'ut');
INSERT INTO `communites` (`id`, `name`) VALUES (33, 'vel');
INSERT INTO `communites` (`id`, `name`) VALUES (71, 'velit');
INSERT INTO `communites` (`id`, `name`) VALUES (44, 'veniam');
INSERT INTO `communites` (`id`, `name`) VALUES (140, 'vitae');
INSERT INTO `communites` (`id`, `name`) VALUES (29, 'voluptas');
INSERT INTO `communites` (`id`, `name`) VALUES (52, 'voluptatem');
INSERT INTO `communites` (`id`, `name`) VALUES (74, 'voluptates');
INSERT INTO `communites` (`id`, `name`) VALUES (61, 'voluptatum');


#
# TABLE STRUCTURE FOR: communites_users
#

DROP TABLE IF EXISTS `communites_users`;

CREATE TABLE `communites_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (1, 90);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (2, 60);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (3, 63);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (4, 59);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (5, 46);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (6, 9);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (7, 67);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (8, 26);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (9, 50);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (10, 94);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (11, 5);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (12, 17);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (13, 34);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (14, 13);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (15, 6);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (16, 48);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (17, 35);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (18, 31);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (19, 70);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (20, 75);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (21, 64);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (22, 62);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (23, 82);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (24, 68);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (25, 29);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (26, 93);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (27, 28);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (28, 52);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (29, 11);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (30, 53);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (31, 83);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (32, 3);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (33, 69);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (34, 37);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (35, 1);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (36, 20);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (37, 45);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (38, 89);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (39, 55);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (40, 95);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (41, 88);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (42, 32);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (43, 43);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (44, 7);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (45, 33);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (46, 97);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (47, 4);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (48, 39);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (49, 61);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (50, 40);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (51, 79);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (52, 87);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (53, 21);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (54, 15);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (55, 30);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (56, 19);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (57, 27);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (58, 22);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (59, 14);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (60, 92);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (61, 72);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (62, 86);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (63, 76);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (64, 41);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (65, 24);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (66, 96);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (67, 78);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (68, 54);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (69, 73);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (70, 56);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (71, 38);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (72, 99);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (73, 71);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (74, 10);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (75, 81);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (76, 66);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (77, 57);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (78, 85);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (79, 47);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (80, 2);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (81, 77);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (82, 100);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (83, 58);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (84, 84);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (85, 80);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (86, 42);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (87, 65);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (88, 16);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (89, 49);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (90, 98);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (91, 36);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (92, 51);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (93, 12);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (94, 18);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (95, 23);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (96, 25);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (97, 91);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (98, 44);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (99, 8);
INSERT INTO `communites_users` (`community_id`, `user_id`) VALUES (100, 74);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (1, 75, 2, '2002-08-07 10:18:32', '1994-06-17 06:40:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 41, 9, '1980-11-26 19:59:00', '1987-10-22 15:23:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (3, 61, 6, '2007-03-08 03:18:14', '2003-02-25 15:05:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (4, 92, 3, '2019-09-24 08:13:26', '1976-11-30 03:00:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (5, 46, 4, '2005-07-20 14:37:31', '1994-07-24 00:15:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (6, 47, 8, '1994-12-25 15:57:11', '1982-03-22 22:18:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (7, 26, 5, '1979-12-24 19:47:43', '2013-03-07 00:55:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (8, 33, 4, '2017-01-21 03:59:32', '1983-03-28 22:26:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (9, 11, 9, '1972-11-18 13:15:30', '1999-12-02 03:08:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (10, 49, 1, '1970-02-23 22:15:18', '1974-12-21 07:51:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (11, 85, 8, '1990-11-27 08:39:27', '1972-06-10 12:14:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (12, 58, 2, '1976-08-14 06:37:19', '2014-07-03 07:08:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (13, 36, 8, '1994-09-30 20:12:38', '2006-04-21 10:43:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (14, 52, 3, '2015-04-06 11:29:25', '1992-05-01 05:12:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (15, 84, 9, '1981-12-28 20:48:19', '2010-10-19 02:43:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (16, 4, 6, '1980-06-18 07:53:27', '1996-02-02 15:09:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (17, 10, 5, '1990-11-12 10:14:22', '1991-06-07 22:05:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (18, 76, 4, '1986-04-23 09:07:21', '2002-08-26 19:43:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (19, 88, 6, '1984-01-30 06:29:08', '2003-07-16 12:15:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (20, 67, 3, '1974-05-29 17:49:25', '1989-01-02 05:02:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (21, 23, 4, '1973-08-17 06:42:07', '1999-06-15 03:26:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (22, 51, 9, '1981-01-18 10:18:20', '1979-11-03 23:21:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (23, 48, 4, '2007-06-09 16:25:14', '1996-12-01 12:32:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (24, 89, 5, '1983-08-20 04:10:23', '2011-07-15 20:10:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (25, 38, 7, '1977-05-26 11:01:16', '1988-04-05 19:19:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (26, 25, 2, '2017-10-28 02:22:48', '1988-04-01 06:39:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (27, 63, 4, '2008-06-22 02:34:26', '1993-01-22 07:42:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (28, 57, 6, '1979-07-05 16:10:23', '1983-08-01 17:15:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (29, 90, 9, '2014-09-06 12:02:37', '1993-07-27 08:56:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (30, 94, 8, '1984-02-29 05:43:19', '1998-06-14 14:50:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (31, 70, 2, '1988-09-23 01:43:59', '2012-06-19 05:25:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (32, 31, 3, '1978-10-12 11:00:04', '1990-08-07 12:47:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (33, 8, 9, '1998-11-14 09:31:57', '2003-09-03 12:07:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (34, 77, 4, '2000-08-30 07:41:10', '1973-12-19 22:06:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (35, 68, 7, '2012-06-24 08:24:21', '2002-06-22 19:49:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (36, 27, 5, '1977-07-28 07:12:41', '2006-03-27 22:27:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (37, 73, 2, '2015-07-22 17:05:55', '2004-01-24 01:04:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (38, 71, 2, '2000-08-03 16:56:18', '2016-03-11 03:11:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (39, 82, 7, '1978-09-18 04:32:49', '1971-04-27 04:34:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (40, 40, 5, '1991-02-16 03:48:39', '1976-04-09 20:01:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (41, 24, 2, '2010-02-05 18:18:21', '2013-01-14 18:14:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (42, 34, 7, '1980-11-02 08:43:43', '1993-04-05 05:17:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (43, 93, 7, '1995-12-20 11:00:27', '2001-12-11 21:38:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (44, 32, 5, '1977-12-28 17:52:02', '2010-03-25 17:02:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (45, 81, 9, '1998-02-20 08:29:39', '2009-08-15 01:09:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (46, 50, 6, '2012-04-25 04:04:09', '1983-02-07 12:06:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (47, 69, 5, '1989-12-07 12:31:51', '1997-12-15 22:44:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (48, 72, 2, '2014-02-20 02:05:18', '1982-11-16 01:45:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (49, 66, 6, '1992-08-30 23:27:07', '1982-01-23 05:21:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (50, 56, 6, '1985-11-03 07:00:43', '2002-08-20 22:07:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (51, 13, 3, '1981-12-29 20:02:13', '1972-05-08 12:55:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (52, 43, 5, '2018-11-21 14:29:56', '1987-10-02 14:05:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (53, 87, 4, '1972-06-13 16:13:07', '1972-12-20 08:46:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (54, 91, 7, '2010-01-03 15:38:08', '1983-04-12 12:59:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (55, 99, 7, '1992-06-09 07:32:59', '2004-02-02 14:56:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (56, 54, 1, '1990-06-26 07:26:12', '2000-01-19 12:16:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (57, 5, 2, '1985-10-29 03:43:40', '1976-07-03 19:16:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (58, 7, 8, '2005-10-26 20:14:25', '2011-05-05 12:51:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (59, 80, 6, '2005-03-14 06:39:15', '2011-02-05 16:12:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (60, 2, 4, '2017-08-05 17:43:50', '1993-12-17 22:22:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (61, 44, 3, '1976-02-20 08:18:44', '1989-10-08 00:08:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (62, 18, 1, '2001-02-20 12:13:31', '2014-03-13 11:03:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (63, 12, 3, '2008-04-21 22:56:27', '1975-09-20 08:59:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 86, 4, '2015-07-25 06:51:52', '2018-05-11 23:53:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (65, 22, 6, '1973-05-06 21:45:42', '2004-12-03 05:54:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (66, 39, 9, '1973-01-04 06:12:42', '2013-09-06 07:06:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (67, 97, 2, '1977-08-13 11:19:28', '2008-04-06 06:27:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (68, 98, 9, '1993-06-30 16:49:31', '2004-11-11 10:58:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (69, 74, 7, '1972-05-04 15:51:40', '1996-11-08 12:25:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (70, 37, 6, '1972-05-21 20:25:05', '1982-01-21 08:01:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (71, 62, 5, '1991-09-11 17:35:38', '2019-10-05 19:28:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (72, 60, 1, '1998-03-26 19:34:58', '2014-08-06 20:43:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (73, 28, 8, '1994-05-09 05:53:36', '1987-12-06 06:57:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (74, 95, 1, '1985-08-28 21:56:36', '1977-06-29 00:26:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (75, 83, 7, '2011-08-26 14:46:39', '1990-09-30 03:14:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (76, 100, 3, '1979-04-30 23:07:31', '2002-03-25 07:20:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (77, 3, 5, '2008-03-17 09:23:53', '2007-12-14 01:53:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (78, 30, 3, '2016-12-25 20:09:05', '2006-11-19 23:08:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (79, 19, 9, '1994-02-09 16:30:33', '2012-08-31 10:16:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (80, 45, 3, '1972-05-06 22:41:32', '1999-11-02 02:56:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (81, 55, 3, '1971-05-11 01:53:27', '1972-09-25 12:19:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (82, 53, 5, '1978-06-27 08:58:59', '1998-03-31 07:12:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (83, 15, 6, '1991-03-01 06:05:05', '1975-10-23 15:09:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (84, 78, 6, '1979-10-10 20:48:02', '2005-07-13 02:54:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (85, 9, 2, '2016-02-17 16:47:59', '1984-06-01 12:11:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (86, 79, 4, '2006-07-16 18:35:41', '2011-11-26 02:58:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (87, 42, 3, '2010-02-10 03:41:38', '1998-10-04 13:06:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (88, 59, 4, '2004-10-01 21:20:39', '1999-08-24 00:19:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (89, 14, 2, '2000-09-23 19:42:57', '1999-09-07 07:42:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (90, 35, 7, '2000-12-14 03:04:15', '1999-10-23 11:38:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (91, 96, 6, '1977-08-09 20:55:33', '1987-09-02 11:34:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (92, 6, 2, '1993-01-05 19:29:38', '2009-04-01 07:33:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (93, 21, 5, '2017-03-18 09:17:42', '2006-03-05 19:18:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (94, 65, 3, '1972-04-02 22:15:58', '2012-05-27 22:19:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (95, 20, 7, '2006-04-05 08:34:22', '1989-06-15 05:29:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 16, 6, '1990-06-30 14:42:29', '2010-01-14 03:13:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (97, 17, 2, '1985-07-14 05:11:18', '2004-05-22 22:45:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (98, 29, 5, '2003-08-12 00:02:23', '1987-11-13 18:34:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (99, 64, 3, '1979-03-20 01:57:13', '2012-10-14 05:05:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (100, 1, 6, '2012-06-20 14:39:45', '2004-07-07 22:55:29');


#
# TABLE STRUCTURE FOR: friendship_status
#

DROP TABLE IF EXISTS `friendship_status`;

CREATE TABLE `friendship_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship_status` (`id`, `name`) VALUES (3, 'cum');
INSERT INTO `friendship_status` (`id`, `name`) VALUES (1, 'dolores');
INSERT INTO `friendship_status` (`id`, `name`) VALUES (2, 'eum');
INSERT INTO `friendship_status` (`id`, `name`) VALUES (4, 'natus');
INSERT INTO `friendship_status` (`id`, `name`) VALUES (5, 'nobis');
INSERT INTO `friendship_status` (`id`, `name`) VALUES (8, 'porro');
INSERT INTO `friendship_status` (`id`, `name`) VALUES (7, 'quisquam');
INSERT INTO `friendship_status` (`id`, `name`) VALUES (6, 'vero');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'corrupti', 62972, 'Qui libero neque veritatis aut rem error.', '2013-12-10 22:37:04', '1987-06-13 09:23:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'dolorem', 0, 'Sequi sunt iure at totam unde aut incidunt.', '2014-07-05 15:41:18', '1978-03-04 07:20:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'sunt', 134253745, 'Assumenda ut animi molestias vel id.', '1971-05-27 20:47:42', '2016-02-04 12:19:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 4, 4, 'sint', 8, 'Rem id possimus ut dignissimos molestiae.', '1982-04-27 19:58:02', '1985-02-07 16:43:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'autem', 816, 'Consequatur et porro et rerum nam.', '2012-02-14 20:39:24', '2013-05-24 04:30:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 6, 6, 'quaerat', 589615606, 'Sit excepturi alias debitis et modi fuga.', '2019-05-12 23:30:01', '1992-09-08 00:14:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 7, 7, 'neque', 534209, 'Blanditiis necessitatibus delectus doloribus illo mollitia.', '1982-09-21 12:50:20', '2002-11-24 19:50:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 8, 8, 'at', 151900, 'Sint unde illo accusamus inventore voluptatem porro aliquid impedit.', '1995-06-12 17:59:56', '1972-11-09 23:27:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 9, 9, 'est', 38484537, 'Eum perspiciatis cumque fuga nemo voluptas voluptatem maxime aut.', '1984-03-07 04:01:31', '2003-01-18 15:39:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 10, 10, 'reiciendis', 90433, 'Ipsa dolorem libero cupiditate iste dignissimos.', '2009-01-16 15:07:18', '1999-08-04 12:00:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (11, 11, 11, 'a', 95715, 'Excepturi earum pariatur exercitationem quo.', '2002-03-26 20:53:45', '2006-10-04 05:12:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (12, 12, 12, 'velit', 666, 'Dolores suscipit voluptatem est illum dolores modi ipsum quo.', '1992-08-11 06:43:25', '2010-06-23 21:18:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (13, 13, 13, 'sit', 94352, 'Quod ullam error alias sint molestias unde deleniti.', '1976-01-07 20:12:46', '1976-12-08 13:50:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (14, 14, 14, 'temporibus', 4673, 'Reiciendis at rem quia ipsum officia est.', '2010-08-10 23:57:02', '1983-11-09 22:33:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (15, 15, 15, 'necessitat', 981556, 'Quia vel repellendus explicabo.', '1991-02-01 15:12:10', '2003-03-12 12:06:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (16, 16, 16, 'accusantiu', 97663, 'Id quas voluptate placeat blanditiis.', '1998-11-01 09:20:16', '1986-10-07 13:10:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (17, 17, 17, 'ea', 38, 'Voluptas eaque repellat quo ut.', '2001-07-10 20:59:04', '2002-02-01 15:20:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (18, 18, 18, 'ad', 877391, 'Quo ea perspiciatis corrupti rerum ab.', '1983-04-05 19:18:34', '1998-08-23 11:04:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (19, 19, 19, 'corrupti', 5638618, 'Ex molestiae excepturi sed ipsum dolore ut dolorem.', '1982-11-25 15:30:56', '2017-06-14 12:10:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (20, 20, 20, 'veniam', 1687, 'Voluptate qui eaque est atque rerum.', '1983-08-14 20:48:36', '1986-07-02 07:42:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (21, 1, 21, 'ut', 203169, 'Laboriosam voluptate consectetur et.', '1982-03-16 19:00:19', '2019-03-13 05:17:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (22, 2, 22, 'ut', 67961146, 'Repudiandae distinctio necessitatibus reprehenderit laboriosam.', '1995-10-02 17:45:12', '1999-11-24 00:51:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (23, 3, 23, 'temporibus', 46316745, 'Minus qui omnis animi animi.', '1984-11-14 21:04:12', '2008-04-28 18:33:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (24, 4, 24, 'illum', 403800, 'Dolores quia velit dolor optio.', '2000-11-22 06:31:33', '1979-04-08 14:02:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (25, 5, 25, 'dolores', 771583579, 'Aperiam dicta sed odit quaerat omnis.', '1999-10-30 15:14:56', '1970-02-13 21:21:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (26, 6, 26, 'expedita', 0, 'Vel voluptates eum ducimus esse qui pariatur.', '2001-05-09 01:43:44', '2015-10-21 08:17:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (27, 7, 27, 'possimus', 1903, 'Odio qui debitis saepe ea odit.', '1986-09-18 12:28:28', '1976-06-27 17:59:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (28, 8, 28, 'alias', 0, 'Odio possimus temporibus similique molestiae.', '1974-05-30 07:23:52', '1994-11-18 22:58:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (29, 9, 29, 'rerum', 1, 'Modi quam accusamus minima corporis.', '2003-02-11 17:56:14', '2004-09-04 04:30:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (30, 10, 30, 'fugit', 2, 'Aspernatur debitis animi nesciunt ea aliquid rerum temporibus.', '1989-05-30 18:04:14', '1995-08-08 14:02:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (31, 11, 31, 'ea', 61, 'Qui deleniti ut nemo eius magnam non doloribus quas.', '1981-11-22 18:13:48', '1993-05-03 06:53:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (32, 12, 32, 'natus', 46, 'Necessitatibus incidunt numquam excepturi rerum at sed nemo.', '2007-10-25 10:27:21', '1971-08-15 04:53:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (33, 13, 33, 'aut', 76434187, 'Et libero facere fugiat quis sint eaque quasi.', '1996-01-12 21:35:32', '1987-09-10 01:18:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (34, 14, 34, 'quaerat', 4, 'Iure repudiandae ea non reiciendis necessitatibus totam.', '1973-12-10 00:21:55', '2002-11-15 17:04:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (35, 15, 35, 'voluptas', 1025, 'Sed quos blanditiis sed eligendi numquam modi ab.', '1985-09-09 19:34:53', '1998-09-11 23:44:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (36, 16, 36, 'quibusdam', 730, 'Ut porro aliquid facere ullam eligendi fugit quae.', '2000-11-24 20:29:49', '1971-08-24 01:46:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (37, 17, 37, 'reiciendis', 10806846, 'Consequatur sint quis quia eum blanditiis iusto ipsam.', '2004-05-07 10:48:29', '2002-02-10 06:30:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (38, 18, 38, 'ipsum', 45, 'Ratione accusantium quo nihil veritatis qui facilis.', '1978-05-10 05:37:01', '1985-04-20 04:35:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (39, 19, 39, 'aliquid', 86638143, 'Fugit et ex sequi assumenda omnis.', '1974-12-02 09:56:48', '2016-01-04 00:30:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (40, 20, 40, 'illo', 24736, 'Consequuntur minima error consequatur voluptas aut voluptate alias.', '1995-05-17 09:07:52', '1993-05-25 11:53:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (41, 1, 41, 'a', 0, 'Exercitationem expedita ex quo sit.', '1983-06-29 05:08:28', '1995-12-22 07:18:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (42, 2, 42, 'rerum', 9890, 'Fugit provident ea omnis eum.', '2013-02-10 19:00:59', '2002-12-01 02:06:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (43, 3, 43, 'nostrum', 83163763, 'Iusto et qui autem.', '2005-08-28 04:15:33', '1992-03-30 22:04:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (44, 4, 44, 'rerum', 16797801, 'Aspernatur accusantium eum in et.', '1983-03-01 07:51:56', '1989-05-31 08:28:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (45, 5, 45, 'assumenda', 5031, 'Et molestiae magnam tempore.', '1972-08-01 06:30:17', '2014-09-08 00:54:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (46, 6, 46, 'quas', 61735, 'Architecto recusandae aut est voluptates.', '1970-06-25 07:38:55', '2016-12-24 19:58:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (47, 7, 47, 'est', 0, 'Omnis eveniet eum voluptatibus illo ut qui qui.', '2000-06-30 07:12:41', '1973-04-19 07:18:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (48, 8, 48, 'aperiam', 253349, 'Voluptatibus quia quas blanditiis libero repellendus accusamus porro voluptatem.', '1970-12-17 01:50:47', '2004-10-03 18:25:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (49, 9, 49, 'consequatu', 31, 'Nihil quia fugit est labore.', '1980-10-11 10:24:09', '2012-08-25 18:10:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (50, 10, 50, 'incidunt', 0, 'Et adipisci odit quia odio.', '1982-01-05 12:01:51', '1986-09-06 04:16:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (51, 11, 51, 'debitis', 280, 'Cupiditate eius qui accusantium molestiae neque.', '1988-04-13 20:12:57', '2002-12-29 13:07:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (52, 12, 52, 'ut', 40986632, 'Magnam ut vel quis nisi ipsa.', '2000-07-14 06:36:26', '2019-08-16 05:55:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (53, 13, 53, 'error', 755393746, 'Quae fugit quos magni facere dicta.', '2011-01-12 14:20:12', '1973-05-10 03:22:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (54, 14, 54, 'quas', 7696, 'Earum enim in molestias cupiditate velit voluptatem eius molestiae.', '1990-03-24 13:35:17', '2000-01-14 20:44:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (55, 15, 55, 'at', 14, 'Quisquam velit tenetur sed culpa non repudiandae qui.', '1993-04-11 07:00:34', '1990-08-08 02:06:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (56, 16, 56, 'nostrum', 946862171, 'Eveniet libero id ad aut repudiandae.', '2016-08-26 12:25:24', '1994-11-08 01:28:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (57, 17, 57, 'facilis', 6154, 'Blanditiis ad accusantium voluptas quidem sunt blanditiis.', '1972-12-12 15:19:41', '2010-12-15 05:20:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (58, 18, 58, 'id', 3, 'Minus minus beatae maxime totam et quia veniam.', '2017-04-03 18:12:00', '1971-02-27 10:07:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (59, 19, 59, 'debitis', 0, 'Molestias eum voluptates qui inventore.', '1992-02-12 16:32:12', '2014-09-11 14:05:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (60, 20, 60, 'aut', 35418, 'Consequatur est id ab nobis.', '1985-09-27 00:09:36', '2014-08-03 05:05:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (61, 1, 61, 'enim', 0, 'Impedit earum quia temporibus vel minima deserunt.', '1982-06-08 17:42:37', '2012-05-15 11:13:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (62, 2, 62, 'et', 97039, 'Commodi fuga quia reprehenderit dolor cum.', '2007-11-05 17:30:42', '1998-02-26 12:00:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (63, 3, 63, 'qui', 960744291, 'Et tempore magni aperiam sed mollitia et.', '2008-12-17 08:15:05', '1991-10-13 12:47:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (64, 4, 64, 'facilis', 51624, 'Quia quia accusantium maiores facere aliquam dolor aperiam aliquam.', '2014-12-07 02:13:53', '2018-09-16 23:41:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (65, 5, 65, 'qui', 274, 'Perferendis ex et sequi aspernatur.', '1979-09-29 22:24:59', '1990-04-10 17:00:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (66, 6, 66, 'id', 0, 'Tempore omnis repellat suscipit consequatur aperiam nisi.', '1984-02-14 03:15:53', '2015-10-07 13:46:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (67, 7, 67, 'molestiae', 5804166, 'Odit eveniet dicta at cupiditate.', '1980-07-08 17:06:07', '2011-03-05 17:47:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (68, 8, 68, 'perspiciat', 433474415, 'Possimus esse tempora beatae nam.', '1991-03-02 08:00:42', '1971-05-11 19:28:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (69, 9, 69, 'quod', 417384125, 'Dolorem voluptatem exercitationem possimus dolorem repellat dolorem qui.', '1983-08-22 08:13:26', '2011-11-20 17:22:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (70, 10, 70, 'quos', 88, 'Expedita quas fuga iusto repellendus.', '1987-04-02 19:49:23', '2015-09-08 17:26:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (71, 11, 71, 'voluptate', 963006339, 'Id earum rerum sed similique ex.', '1991-01-03 02:12:44', '1972-09-07 12:54:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (72, 12, 72, 'autem', 6, 'Molestias vel accusamus est consequatur ut.', '2003-03-21 17:57:11', '2019-10-29 12:36:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (73, 13, 73, 'libero', 598716, 'Optio ut incidunt optio consequatur ex sapiente rerum et.', '2012-08-22 23:54:59', '1990-12-18 11:25:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (74, 14, 74, 'eaque', 4627231, 'Cupiditate odio pariatur rem enim libero quisquam.', '1991-08-22 09:42:16', '1982-12-19 07:22:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (75, 15, 75, 'tempora', 639112033, 'Et ad tenetur assumenda nemo error alias nobis.', '1982-01-16 21:26:42', '1984-09-02 21:44:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (76, 16, 76, 'molestiae', 47810, 'Non culpa ut excepturi iste doloribus in.', '2006-09-22 13:06:16', '1989-03-03 02:40:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (77, 17, 77, 'ut', 0, 'Labore ea ad nam ex.', '1991-05-14 22:06:57', '1986-11-01 13:02:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (78, 18, 78, 'sed', 93, 'Omnis qui odit est neque quibusdam quis quidem.', '2016-11-09 19:46:03', '2018-02-08 22:41:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (79, 19, 79, 'praesentiu', 0, 'Et quibusdam recusandae amet hic numquam.', '1979-07-16 11:39:43', '2004-06-14 10:31:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (80, 20, 80, 'qui', 0, 'Cum sequi sunt fugit.', '1997-01-11 05:33:31', '1994-08-22 01:55:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (81, 1, 81, 'eveniet', 253434619, 'Molestiae omnis voluptatem harum est veniam ut.', '1999-06-10 13:26:50', '1972-04-01 17:57:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (82, 2, 82, 'maiores', 48543, 'Dolores eveniet sit placeat accusamus et et.', '1996-04-30 03:44:49', '1991-09-06 15:26:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (83, 3, 83, 'ut', 5040, 'Sequi voluptas ab incidunt nostrum tempora ea rem voluptatem.', '2001-10-12 21:20:07', '2011-04-06 06:03:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (84, 4, 84, 'vel', 0, 'At occaecati et quasi saepe id.', '1998-05-13 14:50:34', '1984-03-04 06:39:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (85, 5, 85, 'odit', 59404, 'Earum commodi aliquam dolorem sit est dicta.', '1982-04-12 20:32:23', '1997-04-17 15:34:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (86, 6, 86, 'sunt', 0, 'Commodi error doloremque aut.', '1975-04-20 03:12:49', '2018-04-09 02:32:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (87, 7, 87, 'repudianda', 4778183, 'Qui velit minima ut enim est.', '1993-01-12 20:31:00', '2017-02-04 04:42:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (88, 8, 88, 'accusamus', 214911, 'Consequatur commodi voluptatem vel officiis voluptatem.', '2007-01-25 10:42:55', '2011-09-10 07:57:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (89, 9, 89, 'esse', 1970, 'Quia neque quidem exercitationem consequatur est dolor.', '2006-06-17 10:57:49', '1993-03-29 04:20:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (90, 10, 90, 'voluptas', 0, 'Facere nihil enim ea optio fugiat est.', '1972-10-15 09:52:46', '1971-01-04 04:30:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (91, 11, 91, 'sunt', 776629473, 'Ad est amet aliquid delectus et in.', '1973-06-25 22:41:57', '2015-09-07 23:25:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (92, 12, 92, 'voluptate', 58693422, 'Est fugit omnis quia.', '1980-12-05 10:01:52', '1986-10-25 03:47:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (93, 13, 93, 'ratione', 26516, 'Alias in quia laborum dolorem.', '2004-01-10 10:04:09', '1985-08-07 05:40:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (94, 14, 94, 'asperiores', 5, 'Nobis veniam esse aut quo vitae.', '1991-07-16 23:18:09', '1989-04-22 02:45:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (95, 15, 95, 'ratione', 158785833, 'Quaerat ut minima quo sed omnis fuga.', '1981-04-12 00:04:59', '2018-12-25 19:41:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (96, 16, 96, 'accusamus', 812722, 'Et et delectus molestiae cumque consequatur consequuntur.', '1990-05-26 01:03:14', '2017-08-21 17:38:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (97, 17, 97, 'quas', 58513140, 'Aliquam eos delectus a et.', '2014-05-23 02:48:01', '2012-09-07 09:24:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (98, 18, 98, 'nesciunt', 4756237, 'Fuga earum tenetur ullam.', '2007-10-02 17:03:28', '2019-05-07 13:49:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (99, 19, 99, 'assumenda', 0, 'Cumque dolores et aspernatur eum nihil corporis sint consequuntur.', '1981-01-17 10:59:11', '2008-11-12 15:26:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (100, 20, 100, 'eligendi', 81156645, 'Modi cupiditate molestiae expedita.', '2009-06-17 13:20:19', '1992-10-30 09:40:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (101, 1, 1, 'facilis', 6774724, 'Natus provident ad quod accusantium quos sed amet.', '2009-11-17 00:09:39', '2014-05-26 20:52:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (102, 2, 2, 'deleniti', 7385420, 'Quo reiciendis rem corrupti tenetur enim et.', '2003-12-25 17:04:08', '1980-09-10 05:10:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (103, 3, 3, 'reprehende', 667, 'Voluptatem blanditiis similique maiores reprehenderit qui eos porro.', '1987-12-12 13:30:49', '2002-11-08 18:29:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (104, 4, 4, 'autem', 5120, 'Repellendus rerum et non rerum explicabo itaque.', '1984-12-04 01:31:50', '2007-03-10 15:06:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (105, 5, 5, 'qui', 2659427, 'Repellendus animi voluptas impedit quos.', '2009-04-19 17:19:05', '2011-11-30 17:12:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (106, 6, 6, 'aut', 0, 'Quia expedita asperiores quae impedit excepturi.', '1997-01-10 03:37:47', '2011-04-18 21:28:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (107, 7, 7, 'nobis', 98465, 'Cupiditate optio ut deserunt velit quae omnis asperiores.', '2010-02-03 05:10:43', '2013-03-27 18:18:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (108, 8, 8, 'suscipit', 730, 'Minima omnis officia a voluptatum temporibus eos aut eum.', '1983-08-22 18:36:00', '1977-10-13 22:18:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (109, 9, 9, 'ut', 7, 'Voluptatem itaque dolores qui aut.', '1992-06-10 11:01:54', '2015-03-17 21:21:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (110, 10, 10, 'quo', 642588, 'Suscipit a earum est odio soluta.', '2007-05-09 15:35:05', '1983-08-04 08:07:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (111, 11, 11, 'dolorem', 70, 'Adipisci magnam eaque vitae eum similique nemo voluptatem ullam.', '1984-12-28 18:32:22', '1990-07-07 10:36:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (112, 12, 12, 'et', 0, 'In vel alias itaque provident.', '1992-05-14 13:09:26', '2002-03-14 03:04:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (113, 13, 13, 'quis', 87239, 'Dolore quae est consectetur dignissimos saepe tenetur aspernatur.', '2004-03-08 11:06:58', '1992-09-01 12:03:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (114, 14, 14, 'quis', 22, 'Excepturi delectus vero occaecati atque et et.', '1972-03-31 08:04:12', '2003-05-17 07:31:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (115, 15, 15, 'est', 80, 'Tempora id vero et voluptatem.', '1983-10-09 11:06:12', '1974-06-14 00:29:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (116, 16, 16, 'qui', 5, 'Quae qui fugit molestiae qui sint.', '2018-10-26 13:05:45', '1998-09-04 03:45:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (117, 17, 17, 'consequatu', 7, 'Molestias neque velit magnam quos porro in.', '1998-02-22 03:35:31', '2012-06-19 01:23:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (118, 18, 18, 'aut', 92118, 'Accusamus aut consequatur tenetur.', '2012-06-17 01:00:22', '1993-11-20 08:20:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (119, 19, 19, 'labore', 0, 'Consequatur molestiae accusantium omnis optio.', '1978-12-19 04:17:30', '2000-06-21 00:55:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (120, 20, 20, 'dolor', 96, 'Fugit in ipsam voluptates voluptatum.', '2012-06-13 01:13:55', '1985-08-30 15:59:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (121, 1, 21, 'et', 933, 'Incidunt id explicabo maiores eum aut aut sit deserunt.', '1970-08-18 07:10:10', '1982-09-03 21:34:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (122, 2, 22, 'amet', 74845024, 'Quod esse et nulla voluptate quaerat.', '1994-08-18 15:28:56', '1977-07-26 12:36:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (123, 3, 23, 'quidem', 316404757, 'Enim possimus porro ut inventore est ad atque.', '1991-01-14 01:41:17', '2005-08-21 06:16:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (124, 4, 24, 'voluptates', 599, 'Unde molestiae ab et illum.', '2012-11-08 15:13:42', '2017-01-23 15:36:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (125, 5, 25, 'voluptas', 86133897, 'Fugit maiores sint cupiditate.', '1974-11-25 00:32:46', '2006-12-18 13:43:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (126, 6, 26, 'reprehende', 140117521, 'Perferendis voluptas sint maiores rerum aliquid qui.', '2007-02-28 15:25:47', '2004-03-22 22:39:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (127, 7, 27, 'deserunt', 1301, 'Ipsum sed explicabo culpa omnis.', '1978-11-26 08:56:38', '1998-05-31 04:56:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (128, 8, 28, 'voluptatum', 0, 'Est ex est qui veritatis quos eligendi earum.', '1994-06-14 10:06:30', '2007-01-21 03:05:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (129, 9, 29, 'nulla', 429046, 'Incidunt expedita amet reiciendis eligendi sed neque et.', '1983-04-08 20:40:55', '2012-01-21 07:44:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (130, 10, 30, 'repellendu', 0, 'Temporibus dolor commodi tenetur non commodi id incidunt.', '2013-05-09 03:45:24', '1996-02-24 18:45:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (131, 11, 31, 'facere', 487, 'Voluptatem dolore et dolores.', '1983-02-28 10:01:11', '2009-01-15 17:26:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (132, 12, 32, 'voluptatum', 30643, 'Voluptas ut voluptatem officia quo ipsa.', '2015-01-31 00:16:45', '1976-06-07 04:16:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (133, 13, 33, 'nesciunt', 5820, 'Ea voluptate omnis omnis atque voluptas eos.', '2016-06-24 22:24:01', '1992-10-16 15:42:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (134, 14, 34, 'et', 34033082, 'Id voluptatem molestiae est quaerat vero ducimus.', '1987-11-13 08:00:37', '1984-07-02 09:07:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (135, 15, 35, 'accusamus', 2584702, 'Quo sed ullam laboriosam a excepturi exercitationem soluta.', '1971-05-25 17:35:57', '1973-03-29 16:17:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (136, 16, 36, 'dignissimo', 7, 'Dolor quo enim dolorem quia.', '1996-05-10 12:23:01', '1995-10-30 21:59:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (137, 17, 37, 'reprehende', 664046404, 'Modi non dolorem molestiae.', '2009-07-11 19:03:13', '2006-11-19 10:10:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (138, 18, 38, 'officia', 9133770, 'Non modi qui possimus rem nam.', '2018-03-04 03:31:27', '1983-07-06 16:26:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (139, 19, 39, 'maiores', 563358, 'Possimus enim commodi ipsa ut.', '2003-05-04 01:49:53', '2017-12-07 16:04:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (140, 20, 40, 'ullam', 9177889, 'Velit officiis ut voluptas quam et optio ratione.', '2003-09-30 14:26:36', '1979-06-12 20:06:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (141, 1, 41, 'quis', 34671, 'Non ratione vero omnis porro.', '1973-08-13 14:20:58', '2000-12-20 07:57:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (142, 2, 42, 'et', 4691, 'Accusamus error et quasi.', '1977-05-06 02:35:09', '1996-04-07 01:24:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (143, 3, 43, 'tempora', 12, 'Laboriosam delectus quis id.', '1986-06-16 10:06:43', '2003-10-02 22:24:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (144, 4, 44, 'quas', 329982364, 'Saepe vel incidunt voluptatem blanditiis.', '1975-09-13 20:46:05', '1997-01-29 04:49:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (145, 5, 45, 'tempore', 54219, 'Qui odio veniam eaque non qui quam fuga.', '1992-01-04 00:38:50', '1971-07-31 02:39:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (146, 6, 46, 'eveniet', 27, 'Temporibus sed qui voluptates assumenda sed perferendis.', '1971-10-27 13:37:20', '1996-08-20 21:56:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (147, 7, 47, 'incidunt', 96248132, 'Qui officiis qui repellat molestiae consequatur.', '2002-07-07 00:38:46', '1973-09-13 10:58:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (148, 8, 48, 'rerum', 424248027, 'Dolores est non iure enim et.', '1988-06-29 14:43:39', '2012-04-25 20:51:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (149, 9, 49, 'aliquid', 0, 'Et qui deleniti est deserunt consequuntur voluptatum commodi.', '2014-02-20 20:48:41', '2016-03-05 11:47:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (150, 10, 50, 'doloribus', 40, 'Nobis qui ad quos sequi.', '1992-03-21 06:00:07', '1991-10-21 08:54:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (151, 11, 51, 'aut', 9, 'Repellat rerum autem aliquam aperiam.', '1996-04-12 10:48:23', '1987-12-17 14:38:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (152, 12, 52, 'repudianda', 531, 'Numquam cumque iusto debitis incidunt.', '2001-05-01 19:24:42', '2008-12-16 22:49:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (153, 13, 53, 'tempora', 587427, 'Eum quam ad nisi minus et aut culpa.', '1974-09-17 17:45:34', '1980-03-20 04:35:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (154, 14, 54, 'aspernatur', 1, 'Ipsum molestiae eius et cupiditate repudiandae consequatur quae.', '1985-03-11 12:00:01', '2007-12-25 15:37:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (155, 15, 55, 'sed', 47849815, 'Quisquam autem dolores rerum quia aut aut est porro.', '1982-07-22 21:34:47', '1989-12-29 11:13:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (156, 16, 56, 'aut', 2, 'Deserunt minima recusandae ipsum ullam at consequatur et.', '1978-04-29 03:09:02', '2011-12-25 03:38:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (157, 17, 57, 'iure', 24643, 'Eos ex expedita dolorum qui laborum atque.', '2003-02-21 22:56:42', '2002-07-15 08:10:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (158, 18, 58, 'neque', 542350867, 'Excepturi mollitia dolor magni enim sit consequatur.', '2011-06-30 22:52:06', '2017-07-07 06:04:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (159, 19, 59, 'et', 25, 'Mollitia quis voluptas rerum hic quam omnis aut.', '1971-01-24 07:40:13', '1971-06-14 18:59:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (160, 20, 60, 'cupiditate', 0, 'Illo sed itaque ex.', '2018-04-22 09:32:38', '2007-09-28 13:58:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (161, 1, 61, 'modi', 41732244, 'Ea dolores voluptates iure et.', '2001-12-18 17:03:48', '2008-06-11 12:06:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (162, 2, 62, 'provident', 21980090, 'Occaecati non sunt qui consectetur soluta.', '2014-09-03 08:17:17', '2001-01-01 13:21:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (163, 3, 63, 'adipisci', 3736155, 'Ea nihil accusantium necessitatibus.', '1993-05-07 17:44:03', '2013-09-08 05:48:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (164, 4, 64, 'illo', 4, 'Perspiciatis reprehenderit numquam architecto soluta dolorum.', '1979-08-27 11:14:45', '2011-11-20 19:39:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (165, 5, 65, 'iure', 1, 'Expedita sed in pariatur reprehenderit optio dolores.', '1977-04-05 11:06:41', '2010-07-19 23:07:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (166, 6, 66, 'omnis', 348, 'Voluptatum molestiae amet optio quos.', '1982-03-14 11:28:14', '1990-05-09 06:26:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (167, 7, 67, 'doloribus', 32352822, 'Dolorum illum nemo sint.', '2007-08-21 21:04:38', '1988-10-15 15:14:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (168, 8, 68, 'eos', 67976200, 'Repudiandae tenetur assumenda sed cumque debitis.', '2001-07-26 10:41:20', '1971-02-19 21:03:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (169, 9, 69, 'voluptatib', 900234, 'Soluta accusamus est sit velit eligendi.', '1993-03-30 16:59:36', '1994-08-09 17:40:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (170, 10, 70, 'nobis', 53091, 'Ratione facilis in a a accusamus eum itaque.', '1972-12-18 04:42:52', '1972-10-27 00:51:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (171, 11, 71, 'saepe', 80063974, 'Voluptas ex voluptatem quaerat debitis non.', '1987-01-30 15:17:32', '1987-09-15 04:42:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (172, 12, 72, 'sint', 183616253, 'Impedit ex qui officia nam et eum voluptatibus et.', '1970-11-21 07:59:37', '2015-12-01 01:48:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (173, 13, 73, 'ut', 0, 'Rerum ea asperiores id est et eveniet adipisci.', '2014-01-14 14:34:49', '1988-04-14 05:12:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (174, 14, 74, 'voluptatem', 698602053, 'Dolorem voluptatem eum aut sapiente animi dignissimos velit corporis.', '2019-03-24 07:38:30', '1989-04-28 21:28:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (175, 15, 75, 'ad', 203, 'Vel voluptate dolor sed qui ipsum maiores adipisci eum.', '2004-11-18 08:39:53', '2002-09-12 18:15:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (176, 16, 76, 'eligendi', 5, 'Est nesciunt excepturi iure corrupti ab laudantium.', '2003-07-04 00:27:54', '1987-02-04 03:15:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (177, 17, 77, 'similique', 8485, 'Non sequi expedita molestiae incidunt unde consectetur non.', '1993-02-18 21:08:21', '1983-04-01 06:36:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (178, 18, 78, 'hic', 527478, 'Omnis assumenda totam sunt nemo asperiores ullam aut.', '2019-04-20 05:27:41', '2014-11-07 09:44:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (179, 19, 79, 'ex', 9107626, 'Molestiae eos eum voluptas et rerum ad et.', '1987-02-14 19:57:41', '2016-09-19 20:19:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (180, 20, 80, 'consequatu', 620, 'Omnis commodi aperiam in ut voluptate.', '1994-08-19 00:26:01', '2007-03-20 08:37:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (181, 1, 81, 'consequatu', 2, 'Soluta quis doloremque aut reprehenderit vel.', '1983-11-30 04:17:39', '2001-10-24 10:15:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (182, 2, 82, 'dolor', 83779, 'Et expedita voluptatibus iure voluptatem qui.', '1993-05-18 09:37:49', '1987-05-17 23:15:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (183, 3, 83, 'soluta', 0, 'Et soluta autem ut provident laborum sint.', '1993-03-04 22:49:09', '1983-08-26 20:25:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (184, 4, 84, 'iure', 5939711, 'Tempore laborum officia amet sed.', '2008-05-18 21:05:28', '2005-08-21 13:07:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (185, 5, 85, 'ullam', 584731, 'Non adipisci vitae nisi autem ipsa.', '1982-07-21 14:11:45', '1980-07-10 14:58:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (186, 6, 86, 'mollitia', 0, 'Aut qui pariatur non quasi ut.', '2017-10-29 01:13:33', '1979-05-20 13:43:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (187, 7, 87, 'id', 474820, 'Necessitatibus optio vero ex nulla.', '1976-02-16 04:33:44', '1994-10-10 16:22:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (188, 8, 88, 'distinctio', 0, 'Distinctio inventore perferendis est qui ea.', '2013-01-18 16:16:42', '2016-01-05 04:47:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (189, 9, 89, 'officiis', 6676870, 'Nostrum maiores et ducimus delectus id aut enim.', '2012-02-27 03:12:33', '1989-10-05 13:54:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (190, 10, 90, 'voluptas', 549130869, 'Et et accusamus illum maxime rem praesentium.', '2010-05-16 12:34:57', '1973-10-17 03:17:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (191, 11, 91, 'totam', 54, 'Corrupti mollitia libero quod dignissimos et.', '1998-02-12 14:00:56', '1994-02-22 17:15:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (192, 12, 92, 'aut', 8, 'Dolorem unde omnis voluptas quidem possimus.', '1983-02-17 12:29:01', '2012-03-10 08:30:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (193, 13, 93, 'ipsam', 88593, 'Magni aperiam incidunt et et.', '1987-03-10 23:39:11', '2014-09-06 21:06:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (194, 14, 94, 'omnis', 918147, 'Expedita est a eveniet veniam architecto sint cumque.', '2008-01-04 09:43:26', '2014-11-28 00:03:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (195, 15, 95, 'eveniet', 527433, 'Quidem consectetur consectetur inventore praesentium error voluptates.', '1980-07-01 15:27:27', '2013-10-03 22:39:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (196, 16, 96, 'voluptas', 436, 'Non quisquam nihil in quos esse quibusdam quam.', '1985-03-16 16:18:14', '2002-10-06 09:23:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (197, 17, 97, 'accusamus', 0, 'Quos odit odio et nemo iste ea deserunt.', '2004-12-31 20:01:53', '1977-03-15 04:20:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (198, 18, 98, 'labore', 43280, 'Minima consectetur sit amet rerum nihil voluptatibus error ea.', '1980-10-21 21:43:46', '1973-08-04 22:39:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (199, 19, 99, 'corrupti', 197691830, 'Dolorem modi aut voluptatibus id voluptatum qui unde.', '1973-05-05 12:47:47', '1987-02-23 06:15:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (200, 20, 100, 'autem', 72887216, 'Expedita ut ipsum molestias facilis odit quisquam ratione.', '2004-01-17 03:55:48', '1999-08-31 02:10:00');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`) VALUES (10, 'blanditiis');
INSERT INTO `media_types` (`id`, `name`) VALUES (2, 'consequatur');
INSERT INTO `media_types` (`id`, `name`) VALUES (5, 'corporis');
INSERT INTO `media_types` (`id`, `name`) VALUES (15, 'corrupti');
INSERT INTO `media_types` (`id`, `name`) VALUES (19, 'enim');
INSERT INTO `media_types` (`id`, `name`) VALUES (14, 'est');
INSERT INTO `media_types` (`id`, `name`) VALUES (6, 'et');
INSERT INTO `media_types` (`id`, `name`) VALUES (8, 'fugit');
INSERT INTO `media_types` (`id`, `name`) VALUES (11, 'ipsa');
INSERT INTO `media_types` (`id`, `name`) VALUES (16, 'iure');
INSERT INTO `media_types` (`id`, `name`) VALUES (7, 'natus');
INSERT INTO `media_types` (`id`, `name`) VALUES (18, 'nihil');
INSERT INTO `media_types` (`id`, `name`) VALUES (3, 'nostrum');
INSERT INTO `media_types` (`id`, `name`) VALUES (1, 'quia');
INSERT INTO `media_types` (`id`, `name`) VALUES (20, 'quisquam');
INSERT INTO `media_types` (`id`, `name`) VALUES (13, 'ratione');
INSERT INTO `media_types` (`id`, `name`) VALUES (17, 'sit');
INSERT INTO `media_types` (`id`, `name`) VALUES (9, 'tempore');
INSERT INTO `media_types` (`id`, `name`) VALUES (12, 'ullam');
INSERT INTO `media_types` (`id`, `name`) VALUES (4, 'voluptate');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 10, 1, 'Velit minus ut hic necessitatibus. Deleniti quia voluptatem fugiat nulla. Sed quo qui voluptates itaque ut esse amet.', 1, 0, '2015-07-30 18:58:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 75, 32, 'Rem magni inventore dolor voluptatem. Id non voluptate eaque adipisci. Adipisci ad non quia.', 1, 0, '2004-09-03 18:49:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 10, 27, 'Fuga cumque consectetur nostrum in asperiores quaerat. Doloremque dolorem est blanditiis ut quaerat. Enim voluptatem at repudiandae cumque sed inventore.', 0, 0, '2004-03-03 19:25:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 64, 87, 'Odit asperiores modi aliquid nemo. Odio cumque earum reiciendis. Qui aut vitae dolores eos. Et tenetur qui et doloremque qui et reprehenderit aut.', 0, 1, '1981-06-27 18:31:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 30, 90, 'Molestias et quia nulla reiciendis nesciunt libero molestiae. Neque qui ut alias omnis. Ratione officiis optio alias quia. Omnis officiis cumque sit ut minima architecto dolorum impedit.', 1, 0, '1978-01-29 05:21:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 16, 83, 'Occaecati fuga aliquam sint dignissimos. Sit optio et culpa quod quas facere cum. Fugit voluptatum esse rerum. Natus qui occaecati doloribus et quia quis.', 0, 1, '2002-04-30 07:08:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 21, 85, 'Quas quae eius et neque. Quibusdam nemo ullam cumque dolores et. Consequatur nostrum minima dolores unde velit magni.', 1, 0, '1993-05-11 22:01:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 4, 56, 'Necessitatibus atque ut voluptatem sunt eos quia quam. Aspernatur sed maiores consequatur eos. Aut totam id blanditiis odio qui voluptas.', 0, 1, '2010-02-09 05:40:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 45, 81, 'Neque velit et unde sed distinctio atque possimus. Eum nihil totam libero tempora accusamus. Repellendus enim repellat eius soluta.', 1, 0, '1983-03-30 13:53:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 57, 21, 'Voluptatem quia magnam aut pariatur debitis exercitationem ab et. Odio officia et cupiditate. Natus veniam deserunt velit et. Consequatur dolor sint dicta.', 1, 1, '2010-06-09 10:40:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 66, 74, 'Veniam laborum nobis vel. Eius odit qui sequi quis fugiat est. Aliquam eos non quidem est corrupti fugiat rerum. Unde neque odit facere laboriosam voluptatem.', 1, 1, '1995-08-21 04:27:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 25, 56, 'Ipsam nulla quasi aliquid ut pariatur. Aut eaque quidem neque ducimus excepturi nam. Incidunt temporibus voluptas similique minus nulla.', 0, 1, '2014-08-24 11:37:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 57, 82, 'Quidem laboriosam voluptas quia quam non. In non odit corrupti autem assumenda et occaecati. Voluptatem enim quia ut quos et ea ea. Excepturi in mollitia laborum et itaque aliquid accusantium.', 0, 0, '2000-06-23 14:32:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 38, 64, 'Accusantium explicabo culpa qui laudantium. Consequuntur officiis ut maxime nulla sed pariatur doloribus.', 0, 0, '1992-07-25 21:49:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 4, 96, 'Sunt omnis voluptatem et consequatur inventore eveniet repudiandae. Amet aut amet omnis quis. Voluptas est ut aut asperiores aliquid. Et quia iure optio velit quia explicabo aut dignissimos.', 1, 0, '1985-12-13 18:36:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 87, 51, 'Fugiat incidunt ullam harum nemo quia. Eaque perferendis qui fuga. Qui exercitationem neque dolores nihil molestiae officiis. Voluptas rerum repudiandae magnam eos libero non.', 0, 0, '2017-03-04 06:21:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 4, 13, 'Laborum et officiis illum natus quia. Quos sit consequatur facilis tenetur. Est deserunt possimus nihil corrupti tempore sed ut. Laudantium voluptates quod esse possimus eum quod sapiente dignissimos.', 1, 1, '1993-06-16 22:38:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 30, 39, 'Quia laborum illo doloribus illo ullam. Et saepe eum cupiditate dolores nihil molestias. Non eligendi et ea ea rerum rerum qui.', 1, 0, '2000-10-02 05:54:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 83, 94, 'Sunt enim impedit reprehenderit labore delectus dolor. Labore laudantium voluptatem ipsam culpa error. Id voluptas esse sed quia sunt at. Est quod aut praesentium magnam commodi tenetur iste et.', 0, 1, '2012-11-20 16:15:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 97, 23, 'Dolorem nostrum et soluta ducimus labore. Et quae optio atque sint eius. Ut perferendis quae quos. Repellat autem enim ipsa vel cum iure ad assumenda. Eos qui quis esse saepe cum quaerat.', 0, 1, '2014-03-23 13:21:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 34, 94, 'Dicta et quas consequatur suscipit. Corrupti corporis modi praesentium quae dignissimos facilis placeat. Eaque vitae hic nihil provident et nihil.', 0, 0, '2002-02-11 16:58:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 53, 42, 'Eius consequatur a aut iusto fuga. Aliquid praesentium itaque voluptatem libero quis.', 1, 0, '2017-06-26 17:37:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 90, 61, 'Exercitationem inventore est iste maiores dicta sed et. Aut rerum esse et vel provident.', 0, 0, '2019-09-22 16:41:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 10, 85, 'Molestiae praesentium molestiae tenetur earum et. Et asperiores possimus aut amet consequatur reprehenderit eos. Nulla voluptates voluptas quaerat quia facilis omnis. Omnis provident expedita vitae necessitatibus magni magnam necessitatibus.', 1, 0, '2014-11-16 04:00:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 29, 14, 'Autem dolores fuga quos quae culpa. Molestiae doloremque aut perferendis ex aut omnis asperiores est. Omnis in illo et laudantium. Cupiditate molestiae delectus iure at.', 1, 0, '1974-06-01 15:00:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 82, 73, 'Velit veniam incidunt repudiandae earum unde aut perferendis sapiente. Sed possimus et neque quia possimus ut. Est earum omnis sunt delectus sequi temporibus. Necessitatibus veniam repellendus beatae dolorem velit ipsa in.', 1, 0, '1975-12-28 12:44:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 9, 51, 'Quae ut voluptatem sed quo ut illum. Ab suscipit quo sit itaque eos. Nesciunt aut eum autem libero cumque unde quisquam.', 0, 0, '1971-11-27 14:06:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 87, 88, 'Explicabo quae mollitia tempora deserunt corporis. Commodi quo eius dolor temporibus sapiente dolorum.', 0, 1, '1986-08-04 04:30:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 2, 72, 'Aut sit esse at aperiam et et. Ratione eveniet nesciunt et quo neque totam. Est corrupti aut nihil enim voluptatum vero placeat. Doloremque in natus et eligendi ipsam est.', 0, 0, '1991-07-08 23:47:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 57, 22, 'Aperiam laboriosam in veniam voluptatibus. Libero doloribus vel ex enim. Saepe aut velit est. Saepe et quia non.', 1, 0, '2015-09-10 11:55:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 40, 74, 'Totam enim et est. In doloremque corrupti voluptatum quam. Nostrum consequatur est animi facere architecto voluptatem maiores et.', 0, 1, '1998-05-05 16:32:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 11, 49, 'Corrupti cupiditate commodi provident qui eum. Eius quis officia laborum aut. Vel quo expedita et sed.', 0, 0, '2018-11-13 13:23:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 65, 3, 'Ea aut architecto esse molestiae harum eos. Ut repellendus quia rerum similique error excepturi. Et maiores in officiis sint quibusdam amet vitae deserunt. Quis exercitationem facilis quasi cupiditate.', 1, 1, '1980-08-10 10:28:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 51, 18, 'Quidem aut facere ducimus non molestias nihil minus. Dolorum voluptatem veritatis deleniti. Nam non libero veniam corrupti. Libero ipsum et doloribus amet et.', 0, 1, '1970-03-04 06:20:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 84, 5, 'Nostrum odit quia nemo et. Quis quam nihil qui veritatis ipsum necessitatibus. Officiis voluptas nulla dolorem et eos est a.', 1, 0, '2002-06-16 04:00:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 91, 38, 'Ipsa voluptatibus non officia saepe nulla. Iure molestiae error quia. Illo et ut ab officiis placeat.', 0, 1, '2003-02-22 13:01:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 55, 26, 'Nihil delectus alias exercitationem corrupti facere ut. Et magni repudiandae qui cumque beatae. Quo aut totam asperiores.', 1, 0, '2019-01-23 22:33:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 17, 95, 'Exercitationem provident rerum eos optio et eos. Pariatur eos eveniet aut hic quod id sit. Quis rem et natus quam quo.', 0, 0, '1989-07-17 00:44:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 40, 3, 'Ut ea est quia quam. Cum voluptate labore repudiandae asperiores voluptatem. Ut debitis dolores pariatur natus eos deserunt perspiciatis omnis. Nisi consectetur temporibus laboriosam est in maxime. Quis itaque sed alias vel.', 1, 0, '2017-11-23 23:23:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 30, 46, 'Nemo ut recusandae voluptas voluptas provident harum. Neque quasi atque itaque sint et. Excepturi eos et facilis eius libero omnis exercitationem velit.', 1, 1, '1994-04-13 22:45:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 19, 82, 'Eos porro est repudiandae. Eos facilis accusantium maiores repellendus impedit et. Est autem rerum animi rem dolor.', 1, 1, '1978-12-22 14:14:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 27, 23, 'Quia aperiam quod consequatur dolores corporis voluptatem ipsa. Est voluptatibus reprehenderit perferendis occaecati dolorum qui. Itaque illum cum inventore et architecto delectus eveniet. Magni sit tempora sit id natus et.', 0, 0, '1972-05-15 01:41:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 17, 75, 'Placeat fugit dolores nam iure. Eveniet omnis veritatis officia voluptates aut perspiciatis possimus. Sit doloribus tempore fuga fuga et. Doloribus fugiat doloremque aut rerum accusantium voluptas. Consequuntur qui est at ipsum aut sit.', 0, 0, '1972-08-18 14:37:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 16, 79, 'Rem ut et animi. Sunt facere asperiores pariatur dicta vel magni quibusdam et. Nesciunt laboriosam ut dolore eligendi atque corporis cupiditate ea.', 0, 0, '1983-05-17 02:22:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 75, 44, 'Et magni et numquam omnis. Veritatis sed expedita voluptas dolor rerum est et iste. Rerum labore reiciendis incidunt deserunt iure voluptatem esse aut.', 1, 0, '2013-08-12 01:56:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 2, 56, 'Aut iste qui deleniti quo corrupti quos. Similique hic porro esse voluptatum nisi perspiciatis repudiandae omnis. Aut voluptas ut ex non laborum molestiae.', 1, 0, '1991-11-19 19:23:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 76, 24, 'Omnis nostrum dolore quia sint qui. Nostrum cupiditate autem ab. Exercitationem et ex rerum aut alias assumenda quia. Sunt voluptas quia distinctio in earum architecto.', 1, 0, '1991-11-14 20:13:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 52, 54, 'Similique vel illum non sunt accusamus possimus aperiam non. Maxime adipisci animi quas dolorem. Cum animi nesciunt reiciendis reiciendis incidunt rerum porro. Similique quae nihil assumenda voluptatem labore.', 0, 0, '1970-12-18 20:24:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 47, 28, 'Enim deserunt eveniet quia explicabo sit. Sed quos fuga nisi vel consectetur vero reiciendis. Sunt id at tempore esse autem. Ut nam earum eius nihil cupiditate.', 1, 1, '1971-09-18 14:29:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 93, 12, 'Magnam et dolores vel sed sed. Sit facilis est delectus aut impedit ducimus quia. Qui est perferendis maiores porro voluptatem in aspernatur.', 1, 0, '1984-05-19 21:51:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 60, 47, 'Modi expedita earum non consequuntur. Totam voluptatem ab delectus aperiam accusamus. Tempora iste assumenda error ut sint molestiae.', 1, 1, '1998-06-10 18:21:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 29, 97, 'Odio qui quae quo cumque. Illo beatae amet quod quas magnam est aut. Earum ratione non deserunt modi laborum magnam explicabo quos.', 0, 1, '2019-01-27 12:25:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 33, 19, 'Ea nihil hic asperiores. Aliquid cumque exercitationem soluta voluptatem. Deserunt voluptatem eos autem dolor voluptate sit eveniet.', 0, 1, '1977-11-01 21:22:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 85, 80, 'Qui deleniti modi inventore est tenetur illum dolorem. Rerum delectus rerum consequatur vero. Quis quis debitis tempora magni consequuntur ut non. Recusandae perferendis autem incidunt fugit perspiciatis ut aut.', 0, 1, '2018-06-07 00:49:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 35, 87, 'Aut voluptate architecto assumenda laborum molestias laudantium nobis. In dolor rerum nostrum expedita. Quis illum ea voluptas dolorum.', 0, 1, '1996-08-21 00:53:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 95, 74, 'Deserunt sit aut iure eum quae voluptatem. Excepturi sed ut aut et debitis. Dolorum dolorum ipsa ipsum ut praesentium officia omnis sunt.', 0, 0, '2006-03-25 18:52:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 43, 58, 'Optio ut consequatur hic eligendi. Quam odio ut qui cumque velit explicabo. Deleniti beatae autem rerum ut ad quae tempore.', 1, 0, '1986-08-23 05:03:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 85, 87, 'Et distinctio assumenda et dolorum. Ut dolor quasi aspernatur quo sed aut. Ea similique aut consequatur ut molestiae. Illo ut rerum et occaecati sint voluptatum dicta. Dolores ut voluptates est sunt exercitationem placeat sed.', 1, 1, '2018-11-09 19:37:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 13, 16, 'Possimus repudiandae repudiandae aut porro est sunt. Quae laborum nostrum facere itaque quo beatae fugiat. Mollitia repudiandae officiis dolor in consequatur.', 1, 1, '2002-07-15 23:44:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 35, 68, 'Quibusdam doloribus voluptas quod esse omnis magnam impedit. Ut exercitationem voluptatem id cum distinctio quo incidunt. Porro accusantium autem magni nulla porro quis repellat. A sapiente amet ipsam explicabo voluptatem quidem.', 1, 0, '2019-06-13 16:49:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 68, 19, 'Est neque deserunt qui ratione id. Repudiandae eos pariatur ut ut tempora et. Accusamus iure veniam et est beatae possimus illum et.', 1, 0, '2013-09-10 17:50:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 99, 33, 'Aliquid facilis dicta est architecto ad natus. Et temporibus odit et ratione quasi placeat rerum. Pariatur architecto deleniti ut aliquam quo consequatur. Saepe natus nostrum aut aperiam. Quia repudiandae laborum aliquid ad architecto ab velit.', 0, 0, '1994-06-09 19:29:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 66, 74, 'Itaque sit sapiente numquam commodi. Natus quis aliquid eos earum aliquid. Tenetur sunt aut ratione quam beatae. Saepe ad officia itaque ullam quo.', 0, 0, '2006-02-09 12:12:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 69, 2, 'Porro aliquid placeat ipsum omnis cum ad. Architecto et pariatur occaecati placeat inventore voluptatem. Non quia tempora autem.', 0, 0, '1996-05-26 17:37:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 6, 14, 'Sit magni et quaerat consequatur molestiae aperiam quod. Voluptatem sit cumque iusto amet quos.', 1, 1, '1991-11-29 07:42:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 82, 14, 'Sunt est voluptas iure ab. Natus debitis vel voluptas quia eum. Facere quia in praesentium repudiandae fuga nam. Quia id animi alias nostrum.', 0, 1, '1984-12-15 18:59:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 61, 8, 'Sed dolorum nesciunt sed earum repellat et. Voluptatem sequi quia voluptatibus rerum iste ut rerum. Asperiores quasi qui qui eius voluptatem aut.', 0, 1, '2008-03-11 04:45:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 20, 42, 'Necessitatibus omnis facilis libero id suscipit non. Ipsum eligendi aut nesciunt libero odit. Odio ut voluptate quia distinctio dolorem. Aut voluptatum temporibus rem tempore veritatis ratione et.', 0, 0, '1982-03-08 19:24:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 41, 78, 'Eum unde adipisci ut est aliquam est ut nostrum. A consequatur est odit et repellendus inventore. Ipsam eum consequuntur molestias magnam consectetur. Dicta eligendi aliquam eaque est.', 1, 1, '2002-06-09 05:07:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 51, 95, 'Saepe est cupiditate et id cum dicta. Vel esse voluptas atque. Est iste delectus quo velit libero quia omnis. Aut facere molestiae qui nihil quaerat architecto amet.', 0, 1, '1983-09-02 20:53:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 27, 26, 'Temporibus in tempore ut deserunt ad sint. Libero expedita soluta quia sint. Facilis et perspiciatis aliquid deleniti.', 0, 0, '2001-09-20 10:03:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 34, 5, 'Fugiat velit esse ex sed voluptatem repellat. Architecto id rerum suscipit et.', 0, 1, '1975-10-23 12:32:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 83, 54, 'Sunt id alias porro aliquid eveniet. Nisi doloremque voluptatem et itaque iure. Sequi sit minus sequi et expedita sunt amet. Et et velit ipsam.', 1, 0, '1984-09-04 21:33:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 36, 88, 'Animi dolorem quia expedita occaecati dolorem. Voluptates quod sit consequuntur sequi sequi nisi.', 0, 0, '1984-12-29 01:02:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 8, 15, 'Id illo eveniet et dolore minima esse non. Totam nemo ut ipsam sunt occaecati. Explicabo veritatis aspernatur aspernatur quia consequuntur voluptatem.', 1, 1, '1972-07-29 17:02:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 4, 82, 'Quis itaque corporis sequi reprehenderit at commodi qui sint. Sed reiciendis eum maiores nobis quae aut ea. Eum provident tenetur quo est.', 0, 1, '2008-03-29 17:43:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 58, 91, 'Itaque quaerat excepturi sit fugit itaque. Tempore velit deserunt ipsa nemo. Aut perferendis dolore et quis.', 1, 0, '1972-02-08 03:48:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 100, 80, 'Sed id praesentium illum natus quae quisquam non. Qui itaque qui repellat reprehenderit alias vel unde.', 0, 0, '2014-04-02 19:19:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 70, 50, 'Iure dolorem eum neque est consequatur. Officiis vel tenetur culpa alias dolore et consectetur. Beatae sit quia quo reiciendis tempore eos totam. Dolore in omnis reiciendis autem sed quia voluptas.', 1, 0, '2001-08-29 02:32:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 92, 67, 'Eaque placeat architecto fuga soluta omnis officia ut. Expedita officiis ut autem est eveniet sit voluptatem. Ea eum saepe quisquam velit itaque ut perspiciatis.', 1, 1, '1987-01-15 04:12:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 24, 56, 'Repellendus expedita officia delectus cumque omnis quae. Aut beatae debitis laudantium repellendus dolorem quia aliquid id. Voluptatem quibusdam eum consequatur corrupti commodi.', 0, 0, '1984-06-11 10:03:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 77, 13, 'Voluptatum repellendus iure aperiam possimus mollitia itaque voluptatibus. Maxime sint quaerat quisquam deserunt. Vero eum voluptas sit ab debitis. Voluptatem voluptas ea perferendis aut rem repellat.', 1, 0, '1971-01-05 18:11:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 18, 62, 'Omnis hic facilis provident atque cupiditate in delectus. Et vero neque aut sapiente qui. Quibusdam et eos ad eum. Tempore dignissimos alias esse maxime consequatur consequatur et enim.', 1, 1, '2015-02-08 14:14:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 47, 81, 'Quam fugit dicta omnis. Eius quae nihil non.', 1, 0, '2008-08-28 09:58:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 76, 87, 'Sint placeat aut distinctio ut ut nostrum. Molestiae illum atque nihil quasi voluptate optio culpa. Ea atque velit nostrum commodi.', 0, 0, '2016-01-22 12:23:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 71, 82, 'Voluptates corporis expedita voluptate rerum doloribus. Autem eius id quia autem quo et. Adipisci aliquid et deserunt repudiandae debitis. Accusamus est qui ipsam minima laudantium ut.', 0, 0, '1977-05-30 16:43:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 59, 19, 'At amet dolorem dolore totam eius repellat id. Est non quis voluptas. Velit quia in qui delectus. Mollitia similique quod illum nam.', 1, 1, '1997-05-15 10:01:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 76, 57, 'Reprehenderit tenetur voluptas quis et in exercitationem quam. Atque impedit aut quis hic temporibus deleniti impedit. Doloremque dolorem dolor consequatur ab dicta consequatur. Ut sed tempore et quia temporibus.', 1, 0, '1973-03-26 20:47:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 92, 81, 'Itaque reiciendis numquam soluta maiores et officiis. Fugiat sapiente qui eligendi aliquid eum. Recusandae cupiditate est animi sequi nihil id sint. Odio commodi illo blanditiis veniam deserunt.', 1, 1, '2007-02-06 11:28:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 50, 71, 'Est nemo culpa voluptatibus laboriosam. Reiciendis ipsam illo corrupti incidunt eos ea. Nesciunt sapiente est possimus magnam exercitationem.', 0, 0, '2007-04-22 14:52:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 96, 91, 'Neque libero vel asperiores ut eos. Velit dolor et enim alias quia quia adipisci nesciunt. Quo deserunt est eaque ut.', 0, 0, '1980-05-27 11:09:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 70, 7, 'Dolorum non ratione laborum incidunt perferendis qui aut. Quo officia minus voluptate distinctio non sit fuga. In qui quia ratione. Sed omnis sed veritatis hic. Vitae maxime nam veniam qui laborum.', 0, 0, '2010-09-24 00:28:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 18, 14, 'Maxime consequatur ea et ad repudiandae. Vitae consequatur enim at et. Voluptas sit itaque iste incidunt sunt. Minus inventore sit rerum fuga temporibus est dignissimos.', 0, 1, '2003-03-14 14:34:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 52, 32, 'Est dolorem commodi deleniti nisi et necessitatibus perspiciatis. Suscipit aut eaque error atque qui consequatur. Quod sed et consequatur mollitia molestias ea.', 1, 1, '1992-04-10 13:03:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 50, 87, 'Dolor dolor sit iusto porro laudantium quaerat. Quia voluptatem et accusamus esse odio eius autem dolorem. Et error quis magni et illo. Quod voluptatem numquam et fugiat velit.', 0, 1, '1974-07-01 06:07:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 19, 43, 'Eum adipisci sunt omnis et nulla. Nesciunt qui at fugit vero nemo. Quo voluptatem corrupti doloribus qui aut cumque similique iure. Maxime cupiditate atque debitis ab adipisci.', 1, 0, '1987-03-08 00:03:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 62, 24, 'Temporibus velit doloremque commodi. Rerum iste expedita omnis eum quo provident quis. Reprehenderit rem sed vel quis.', 0, 1, '2014-01-07 17:26:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 68, 96, 'Dolorem repellat cumque natus atque neque non laboriosam porro. Earum modi aliquid tempore corrupti dolorum natus mollitia. Omnis iure et sint consequatur praesentium iusto tempora. Et ratione ex sint ea adipisci autem ullam. Et ut illum esse.', 1, 1, '1980-06-06 17:53:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 100, 44, 'Quisquam nihil laboriosam soluta adipisci reiciendis. Placeat tempore maxime nulla. Consequatur harum iusto qui voluptatem excepturi placeat minima autem. Laborum et laudantium corrupti minima alias praesentium.', 0, 0, '2011-02-06 09:38:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 58, 28, 'Dolore et voluptatem velit eveniet ut repellat veniam amet. Voluptatem tempora rerum eius nesciunt. Assumenda minus ut et dicta corrupti.', 0, 1, '1985-07-31 12:58:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (101, 17, 84, 'Eos expedita doloremque recusandae. Et eligendi quas ut rerum voluptas. Quaerat esse ut nam commodi ut doloremque.', 1, 0, '2014-07-31 05:23:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (102, 16, 41, 'Consequatur qui sed eos fuga velit. Enim vel repellat quo quas occaecati ducimus. Dicta eos hic provident doloribus fugit.', 0, 1, '2013-08-21 07:07:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (103, 46, 70, 'Ut in est asperiores aut totam debitis error numquam. Mollitia hic voluptatum harum aspernatur eos.', 0, 0, '1991-12-02 00:27:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (104, 17, 80, 'Quis sed et aut quibusdam. Alias non adipisci doloremque sequi eos eum similique.', 1, 1, '2003-10-13 06:58:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (105, 72, 28, 'Ut numquam laboriosam tempora facilis. Maiores ea quo tempore et earum similique id. Harum quo minus velit. Et aspernatur reiciendis velit ipsum exercitationem assumenda.', 0, 0, '1970-09-11 18:42:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (106, 59, 40, 'Esse sapiente laboriosam deserunt in. Autem porro ex porro sunt ullam repellat consequuntur a. Et reprehenderit doloremque excepturi sunt ipsum. Deleniti corporis accusamus voluptatem dolor odio.', 0, 1, '2005-04-10 09:46:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (107, 20, 96, 'Magni non labore quam vel eum provident. Possimus quam eaque pariatur deserunt delectus optio. Qui et quo ad quae ut recusandae quibusdam.', 0, 1, '1970-06-18 04:28:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (108, 3, 54, 'Aut ut architecto et similique. Praesentium iste sit ipsam dolorem voluptas nisi ea totam. Quia aperiam culpa sed. Cumque ipsam minus et nihil sit.', 1, 0, '1980-03-15 20:36:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (109, 30, 61, 'Distinctio repudiandae eos nobis ullam. Ratione accusantium et molestias et quia enim. Modi hic sed optio ea quaerat. Sed et quas rerum doloremque et velit. Dicta aliquam aliquid optio omnis harum at.', 0, 0, '2009-12-11 16:17:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (110, 21, 91, 'Omnis eum consequuntur totam non. Deleniti corporis expedita hic unde adipisci perferendis. Quis non repellendus aperiam necessitatibus. Numquam odit dicta eveniet ratione laborum.', 1, 0, '2006-03-23 19:40:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (111, 64, 88, 'Maiores aut blanditiis sed voluptas enim. Quo animi sed quae culpa commodi.', 1, 0, '1970-08-23 07:23:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (112, 94, 82, 'Voluptas autem assumenda vitae reiciendis. Quos optio laudantium vel nisi non. Consequatur non officia officiis consequatur odio voluptatem.', 0, 0, '1990-05-14 17:15:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (113, 79, 66, 'In placeat ut et perspiciatis omnis magni aut sint. Et dolor ut non. Rem mollitia doloremque modi qui itaque sint magnam.', 1, 1, '2009-12-27 05:20:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (114, 47, 91, 'Dicta suscipit facilis autem autem amet voluptatem quam. A hic cupiditate cumque reiciendis aliquam quisquam. Dolores expedita eveniet cumque consequatur sequi dolore delectus.', 0, 0, '1996-08-13 20:01:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (115, 35, 42, 'Cumque quia ut excepturi repellendus quas atque. Neque iure unde dolor quam quia adipisci. Modi expedita minus deleniti assumenda. Deserunt voluptatem doloremque iste ipsa. Possimus qui amet quo.', 1, 0, '1980-04-10 04:46:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (116, 11, 76, 'Et nihil molestias saepe sed in totam. Vitae voluptas voluptas rerum ad maxime. Sed ullam pariatur quo ipsam et. Ut quam eius cumque nesciunt culpa et quis.', 1, 0, '1981-05-01 09:06:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (117, 74, 87, 'Sunt veniam ut fugiat iusto odio quia in. Sed velit pariatur odio asperiores. Voluptatem nam dolore autem voluptatum voluptatum dicta quod. Magnam repellendus architecto sapiente totam. Voluptate ut blanditiis aut vel earum sed et.', 0, 1, '1973-04-20 21:29:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (118, 48, 44, 'Et ut exercitationem nulla voluptatem est debitis ea. Ipsum quis voluptatem omnis quam placeat. Doloribus molestiae nam sunt ut est ab aliquam.', 1, 0, '2013-08-27 10:30:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (119, 61, 75, 'Minima sint non sapiente quia provident minus. Qui labore voluptatem voluptatem nemo et magnam eum. Sit laudantium aperiam aut provident quis nam rerum. Repellendus sed natus voluptatem odit iure eveniet ullam. Corrupti nihil at a eos sit.', 0, 1, '2008-05-22 05:49:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (120, 26, 32, 'Et ut saepe quod reiciendis. Itaque officia dolorem et exercitationem. Nihil autem nesciunt distinctio illum sit cumque expedita.', 1, 1, '2005-04-07 14:02:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (121, 82, 54, 'Et quod eaque quod veniam non assumenda voluptas est. Harum quisquam consectetur necessitatibus et.', 0, 0, '1975-04-04 22:54:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (122, 17, 55, 'Eveniet doloribus explicabo laborum in asperiores expedita sunt. Magnam aut nemo eos consequatur. Sit repudiandae nam praesentium necessitatibus quod sint natus neque.', 0, 0, '1978-05-11 06:32:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (123, 91, 71, 'Animi repellendus consequatur temporibus omnis ea voluptas. Fuga laboriosam quis quia et. Libero et dolorem eligendi doloribus ab incidunt.', 1, 0, '2015-02-13 11:09:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (124, 56, 27, 'Aliquam sunt quae id rerum quaerat optio commodi. Quo iure atque aspernatur omnis. Suscipit voluptates dolores voluptatem et.', 0, 0, '1995-04-29 05:33:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (125, 32, 4, 'Quibusdam quia beatae sunt et non molestias architecto eligendi. Quos quo non accusamus expedita hic ut. Ullam explicabo voluptatem dicta. Qui omnis qui ab veniam nam cum excepturi. Debitis rerum praesentium dolores non.', 0, 0, '1990-03-12 18:55:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (126, 11, 16, 'Eos sit temporibus asperiores animi est temporibus. Dolorem occaecati ipsum quis sunt commodi quisquam natus. Voluptas optio aliquid nihil architecto dolorem sit.', 0, 0, '2009-08-06 19:23:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (127, 86, 45, 'Commodi et pariatur laborum cum veniam. Aperiam et qui est consequatur rerum excepturi ex. Ducimus rem ab eligendi non atque. Similique qui at iste inventore tempore similique reiciendis.', 1, 0, '2015-02-15 15:01:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (128, 12, 20, 'Exercitationem est sed aperiam et et. Optio non molestias dolore eum et quia. Sit aut voluptas quo earum reprehenderit odio iusto consectetur. Cupiditate est corporis rerum suscipit.', 1, 0, '1978-10-27 19:40:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (129, 95, 64, 'Nulla omnis est id esse. Saepe est vero ea autem voluptatem a nostrum. Non suscipit voluptates autem nemo aut dolor.', 1, 0, '2008-06-17 23:17:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (130, 2, 81, 'Aut nihil maxime dolorem numquam. In in veritatis eligendi. Nisi provident pariatur quae voluptatum.', 1, 0, '1988-12-14 13:38:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (131, 60, 99, 'Rerum illum vel suscipit aperiam sed magnam. Quidem facere omnis qui porro necessitatibus. Et et vel quam provident et. Officia qui cumque ipsa minus.', 1, 1, '2000-03-16 17:23:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (132, 20, 19, 'Magni eum dolorum dolor voluptatem occaecati nisi minus. Consequatur occaecati aut consequatur ipsa consequatur eveniet eveniet. Consequatur corporis et commodi natus est quos iusto fuga. Quod quisquam consequuntur nostrum.', 0, 0, '2014-06-16 23:18:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (133, 19, 5, 'Aut dolor harum odit voluptatum ut. Itaque quos iure pariatur hic eius qui deleniti consequuntur.', 0, 0, '1991-06-06 04:24:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (134, 75, 87, 'Ad molestias qui numquam in eum. Vero quo minima consequatur fugiat natus nihil cumque. Quia perspiciatis et inventore possimus sunt eius.', 1, 1, '2018-03-16 21:17:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (135, 32, 42, 'Porro ut molestias et quo enim dolorum. Cupiditate reiciendis minima sit iste. Aut id ipsum quam deserunt.', 0, 1, '2007-10-09 12:19:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (136, 47, 12, 'Odio voluptates quam nemo commodi quis et doloremque. Ratione aliquid nulla tempore. Dignissimos dolor et voluptas.', 1, 0, '2000-06-07 14:56:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (137, 21, 35, 'Quis doloremque non accusamus quas quia iusto. Ut sunt ea fuga cupiditate id iste. Aut voluptas sunt repellendus rerum.', 0, 0, '1991-03-07 03:03:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (138, 4, 52, 'Tempore voluptas molestiae repellendus et aut. Optio et praesentium odit ipsam. Possimus voluptates possimus enim eos numquam enim et. Corrupti aliquid neque et laboriosam quia velit laboriosam impedit. Rerum ut dolorum adipisci aut perferendis occaecati eum.', 0, 1, '1993-07-01 17:02:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (139, 35, 24, 'Amet incidunt voluptates voluptatum impedit nobis. Vel reiciendis in occaecati quos. Rerum autem occaecati rerum iste.', 1, 1, '1990-09-26 23:14:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (140, 92, 77, 'Consequuntur magni magnam voluptas. Id veniam rem enim molestiae enim sint illum cumque. Aut voluptatem similique laudantium repudiandae. Atque quis quibusdam velit praesentium. Rem voluptatem est molestias dolorum sit ducimus provident.', 0, 1, '1978-11-03 11:10:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (141, 39, 12, 'Accusamus distinctio praesentium architecto possimus soluta libero optio. Maiores tenetur pariatur voluptas sed. Est sint voluptatem dolor ullam incidunt quos.', 1, 0, '1971-06-24 19:56:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (142, 15, 86, 'Vitae aut totam et optio sit. Voluptatem nihil et quia repellendus. Corrupti omnis suscipit praesentium voluptas modi dolorem soluta. Vero temporibus tenetur error rerum officia facere.', 0, 1, '1984-02-09 21:20:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (143, 48, 62, 'Quos hic nam sunt quia repellat veniam adipisci hic. Inventore animi quis eos nihil occaecati. Tempore voluptate tenetur sapiente beatae. Ipsum amet eum est.', 1, 0, '2005-10-19 10:17:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (144, 58, 96, 'Quisquam laudantium laborum fugit velit quidem. Perferendis asperiores non sit laborum.', 1, 0, '1984-05-30 17:35:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (145, 29, 59, 'Enim temporibus odit suscipit ducimus. Esse laborum vel sequi recusandae ut. Ad nihil beatae sed ut quisquam.', 1, 1, '2016-04-15 06:17:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (146, 11, 81, 'Deserunt enim natus odio soluta non. Magni vitae non ut necessitatibus. Dolorem quis hic autem aut exercitationem hic et enim. Perferendis aliquid cum repellat facilis qui odit. Consequatur modi eum fugit sint tempore.', 0, 1, '2014-10-08 21:36:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (147, 18, 75, 'Repudiandae incidunt recusandae ut soluta ut ab itaque quia. Sint est aliquam sunt. Nesciunt quia magnam tenetur molestiae aut.', 0, 0, '2015-12-26 21:55:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (148, 95, 14, 'Ipsum et iste qui molestiae nihil. Voluptatem fuga unde qui et aut consequuntur nesciunt quo. Incidunt et ad laboriosam maiores veritatis ipsum enim. Asperiores amet vitae quia alias.', 0, 0, '1974-01-11 05:22:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (149, 44, 82, 'A molestiae pariatur ea quibusdam. Numquam autem corrupti aliquid quia doloribus aut eius. Qui quia qui nihil asperiores maxime delectus quisquam.', 0, 0, '2005-11-20 13:44:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (150, 87, 46, 'Nisi voluptate aut voluptas. Consequuntur cupiditate commodi veniam possimus et facilis.', 0, 1, '1994-07-03 10:21:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (151, 35, 78, 'Aut earum velit voluptatibus iusto iusto facere. Quidem numquam aspernatur ullam atque. Maxime optio dolores repellat vitae consequatur sapiente nulla. Mollitia suscipit saepe ad sequi et excepturi. Eaque aut hic rerum similique.', 1, 0, '1990-12-22 09:44:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (152, 88, 73, 'Hic culpa dolores ipsum itaque consequuntur eos. Ut ullam consequatur dolorum blanditiis ullam saepe. Et magnam quasi et nulla quos.', 1, 1, '1993-08-31 17:40:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (153, 89, 88, 'Eum in dignissimos et qui. Ut distinctio est omnis et eligendi eaque non. Ipsam debitis enim doloribus dignissimos incidunt distinctio consequuntur.', 1, 1, '2018-04-05 10:44:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (154, 16, 92, 'Neque asperiores minima quibusdam voluptate beatae accusamus ut quia. Ducimus nihil aliquid repellat blanditiis. Non nesciunt id aut deserunt consectetur dolorum. Voluptatem eos laudantium pariatur animi consequatur.', 0, 0, '1977-09-17 15:03:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (155, 10, 41, 'Fugiat et est eaque omnis ratione iste explicabo. Labore et est veniam quasi ipsa laudantium. Fugit beatae excepturi ut molestias inventore rerum officia necessitatibus. Dolores officiis dignissimos natus autem.', 1, 1, '1981-02-07 12:32:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (156, 83, 81, 'Veritatis accusamus neque qui illum quae. Ut suscipit corrupti mollitia ex recusandae perferendis animi. Et dolore nemo earum veniam iste reprehenderit.', 1, 0, '1987-06-05 12:10:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (157, 80, 37, 'Necessitatibus ut fugiat aut est. Odit consequatur aut tempora ratione quam. Qui laudantium placeat qui eveniet fuga vitae minus. Aut aut suscipit repudiandae.', 0, 0, '1981-11-12 07:20:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (158, 6, 73, 'Quia labore eos consectetur repellat sunt. Voluptates nulla debitis rerum praesentium. Libero voluptatem expedita voluptates aut.', 1, 0, '1991-07-09 20:59:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (159, 38, 2, 'Velit illum aut dolorum qui blanditiis et. Ut atque reiciendis asperiores aut sed neque amet. Voluptatem quia incidunt hic sit asperiores asperiores at culpa. Earum repellat laboriosam dignissimos odit aut molestias.', 0, 0, '2006-03-24 16:38:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (160, 41, 21, 'Maiores consectetur dolores saepe libero ullam eaque dolores. Id possimus fugiat pariatur eveniet. Quibusdam amet dolores enim doloribus ex.', 0, 0, '1978-03-22 12:51:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (161, 6, 62, 'Unde velit quasi incidunt non repellendus maxime rerum et. Voluptatem nam nulla animi recusandae. Est tenetur voluptatem laborum.', 1, 1, '1978-04-19 04:49:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (162, 83, 36, 'Ut in inventore saepe quia deleniti alias sed. Sit quis dolorum quibusdam odio exercitationem. Quia aut fugit itaque et necessitatibus. Iusto et reprehenderit molestiae non id debitis qui.', 0, 1, '1980-05-10 03:22:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (163, 24, 78, 'Voluptates aliquid quam blanditiis et. Soluta quis voluptatum reprehenderit asperiores minima qui quis. Alias vel necessitatibus est illum necessitatibus quos labore. Molestias praesentium tenetur sed velit sint nihil.', 0, 0, '1985-07-04 19:36:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (164, 68, 23, 'Beatae quis ea nisi. Quasi repellat vel dolores. Ut a quia facilis vel qui. Ipsum suscipit ea repudiandae fugiat ut maxime.', 0, 0, '2010-03-07 22:51:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (165, 58, 20, 'Ut aut exercitationem et eos et cupiditate fuga excepturi. Omnis a commodi aliquam ut. Magnam at suscipit saepe expedita aut vitae amet. Velit tempore quia provident voluptatem fuga soluta. Rerum quaerat molestiae tenetur repellendus consequatur iste.', 1, 1, '2011-05-24 23:40:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (166, 18, 33, 'Ut molestiae ipsum ut ut omnis quis. Corporis dolores nemo quisquam quas. Esse suscipit odit voluptas reprehenderit nobis culpa alias.', 1, 0, '1978-11-16 13:17:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (167, 79, 80, 'Aut corporis similique nesciunt cumque. Ex accusamus magni quasi consequatur quae aperiam praesentium. Odio assumenda temporibus ut dolor et.', 1, 0, '1994-05-02 23:39:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (168, 48, 86, 'Saepe ipsum qui dignissimos sit ad nulla voluptas. Recusandae dolorem quia quisquam quasi. Consequatur quia asperiores veritatis eum pariatur reprehenderit architecto. Ut non iusto atque.', 0, 1, '1998-02-27 15:27:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (169, 42, 68, 'Voluptatem enim aliquid cumque quasi natus. Rerum repudiandae ratione cumque ipsam aperiam quo. Ipsam laudantium harum libero cumque sapiente. Atque sit neque temporibus maxime sed reiciendis.', 1, 1, '1985-06-27 02:47:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (170, 23, 79, 'Dolores nobis quisquam error enim minus. Voluptatem ex ut necessitatibus. Ullam possimus quia occaecati similique aut et voluptates.', 1, 0, '1985-05-09 17:03:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (171, 59, 13, 'Tempora sunt quidem quia est fugiat. Sit iste voluptatem est enim accusamus est corporis libero. Officiis exercitationem maiores optio incidunt.', 1, 1, '2009-12-29 08:17:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (172, 57, 25, 'Harum ad dolorum et quia. Provident libero error fuga est nemo dolor cum. Error culpa et quam veritatis animi atque modi.', 0, 0, '2007-04-21 08:14:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (173, 27, 76, 'Vel iure voluptates repellat qui. Nisi optio facilis quaerat eaque. Hic quos aut deleniti pariatur cumque asperiores molestiae. Non deleniti repellendus dolores possimus earum vel.', 0, 1, '1985-12-23 21:29:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (174, 76, 32, 'Non incidunt alias est enim perspiciatis itaque ex. Placeat doloribus et voluptatem dolore. Nam vitae dolores corrupti ipsa.', 0, 1, '1994-02-04 03:18:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (175, 78, 92, 'Cupiditate omnis voluptatem deserunt perspiciatis. Consequatur asperiores rerum velit eos et sit facilis. Rerum aspernatur inventore veniam culpa eos odio. Aut quia iste facilis voluptas beatae omnis pariatur velit.', 1, 0, '1992-09-09 06:57:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (176, 86, 74, 'Perspiciatis soluta non id quidem magnam voluptatibus et atque. Nostrum reprehenderit assumenda fugit perspiciatis sunt ullam officiis. Architecto et qui neque facere. Id saepe et natus ad.', 0, 1, '1982-08-29 04:15:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (177, 83, 30, 'Vel dolores qui blanditiis. Veritatis eaque est omnis molestias. Rerum quo tempora ut blanditiis eligendi.', 0, 0, '2005-11-28 18:29:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (178, 80, 58, 'Architecto necessitatibus est rem labore blanditiis architecto voluptas. Fugiat corporis ipsum velit ipsam. Voluptatem id ipsum possimus fugiat. Blanditiis dicta molestiae ducimus aspernatur. Consequatur quisquam odio et qui.', 0, 1, '2011-05-20 09:44:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (179, 88, 21, 'Ut porro dicta sunt. Provident enim sint minima iusto voluptas eius iure. Saepe voluptatem amet voluptatem ipsam.', 0, 0, '2008-12-13 04:35:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (180, 39, 65, 'In dolores hic nam dolores. Necessitatibus est amet doloribus aspernatur. Autem facere mollitia aperiam error corrupti ea ea. Debitis incidunt consequatur quia corporis.', 0, 0, '1989-12-25 06:55:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (181, 2, 79, 'Natus ut quis a magni. Voluptatum libero facilis est non similique. Dolores qui dolore molestiae eos pariatur debitis non atque.', 0, 1, '2017-08-04 00:47:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (182, 7, 23, 'Expedita voluptatem ipsam et temporibus aliquam. Excepturi minima optio itaque vel. Magnam perspiciatis nulla qui et totam quia.', 0, 0, '1972-05-21 13:51:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (183, 100, 37, 'Omnis eos consequatur suscipit deserunt vitae impedit dignissimos. Corrupti consequatur est consequuntur. Voluptas fuga voluptas commodi itaque.', 0, 0, '1996-09-27 08:46:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (184, 80, 9, 'Sit et officiis cumque debitis in natus temporibus. Non quae sapiente ex veritatis atque. Nulla in debitis quis architecto. Porro dolor repudiandae ipsum in voluptatem dolores.', 0, 1, '1992-07-05 09:41:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (185, 62, 26, 'Doloribus odit possimus veritatis omnis et pariatur quia. Molestias aliquam error similique molestiae recusandae adipisci et. Porro eum rerum vero dolores et occaecati sint molestiae.', 0, 0, '2008-01-10 03:20:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (186, 3, 38, 'Veniam placeat et quia sint voluptatibus dolores. Ut voluptas quia expedita placeat. Odit et sed necessitatibus in velit odit iusto. Nobis natus nesciunt eius culpa quod. Dolorem eligendi minus rerum exercitationem aut.', 1, 1, '2014-12-04 08:29:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (187, 30, 80, 'Et ut vel similique voluptas. Voluptatem id minus enim placeat explicabo eum. Debitis similique velit fugiat laboriosam nemo qui natus.', 0, 1, '1998-10-08 03:00:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (188, 70, 41, 'Eos et officia distinctio non. Dolore voluptatibus non delectus animi nihil non voluptatem nesciunt. Iste vitae ut voluptates quae sunt aperiam. Rerum nihil sit et soluta impedit libero.', 0, 0, '2009-08-21 07:24:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (189, 17, 52, 'Dolor recusandae ea quis et. Rem voluptates soluta consequatur odio eveniet reiciendis rerum. Praesentium explicabo quas voluptatem ut ratione placeat non. Quo tenetur et nulla eaque fugit.', 0, 0, '1999-09-14 22:58:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (190, 5, 87, 'Voluptatem saepe ipsa eos eos aut odit. Repellat quod ducimus magnam autem dolor. Iusto illum et voluptas et. Repudiandae maiores eius sed dolor ipsa odio quis mollitia. Labore sint deserunt eveniet magnam quos eum.', 1, 1, '1970-04-14 17:21:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (191, 68, 95, 'Quae distinctio voluptate animi. Eius dolorum odio voluptatibus inventore et. Fuga atque et doloribus enim vero. Fugit iste nisi id odit.', 1, 0, '2015-09-23 00:35:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (192, 24, 19, 'Neque aliquam officiis aut omnis culpa saepe iure soluta. Aut molestias quas ipsum harum nobis. Nesciunt ea quibusdam commodi eum rerum quibusdam ipsam.', 0, 0, '1975-09-29 23:07:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (193, 33, 12, 'Quasi eveniet voluptatum ab quo aut sunt alias. Beatae non qui qui voluptatem. Iste quis occaecati porro facilis quasi. Consequatur eum quasi aut repellat et doloremque perferendis voluptatem.', 0, 1, '1989-03-28 03:05:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (194, 39, 100, 'Veniam sed molestiae quis. Itaque neque sit veritatis sint atque. Eos dolore dolores nostrum aut labore nostrum. Id illum nam itaque doloribus et laborum.', 0, 1, '1985-12-24 15:25:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (195, 2, 55, 'Beatae quisquam ea voluptates dolore et sequi ut. Voluptatem nobis numquam deserunt aut consequatur aut. Itaque minima quo quod. At perferendis dignissimos libero modi rerum.', 0, 1, '2000-04-30 14:07:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (196, 20, 7, 'Voluptatibus in eum nostrum est et quae fugit. Quos odio mollitia ullam sed. Qui autem mollitia voluptatem similique dolorum incidunt. Eum dolorem omnis aut voluptatem dolor.', 0, 0, '1995-06-21 17:19:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (197, 89, 95, 'Consequatur amet tempora aut quia ullam molestias itaque. Quis officia et voluptas. Non voluptatem odio maiores ratione. Voluptate eos odio nam eum. Voluptatem consequatur ea id voluptatum quia voluptatibus mollitia.', 0, 0, '1991-06-13 11:56:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (198, 31, 4, 'Modi culpa odio animi. Et sit ab aut optio sit quo aut. Qui eum dolores nisi. Praesentium quo velit qui est et dolor.', 1, 1, '1998-05-30 01:25:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (199, 37, 57, 'Officia dolorum iure non unde nihil id enim. Neque aut sit consequuntur consectetur pariatur. Sed rem quaerat ea aperiam.', 0, 1, '1996-08-06 05:43:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (200, 20, 50, 'Autem totam laboriosam quae laboriosam esse quod dignissimos. Quaerat aliquid quidem facilis sequi recusandae voluptatem ex quasi. Non earum illum ad laborum ex.', 1, 0, '2000-12-04 22:10:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (201, 91, 45, 'Aut aut hic quidem nesciunt. Recusandae ut quae magnam sunt.', 1, 0, '2014-07-11 20:50:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (202, 47, 38, 'Et vel harum et est. Magnam adipisci amet ullam veniam et molestias voluptatem. Ut maxime deleniti reprehenderit quod voluptas. Accusantium expedita et blanditiis esse omnis enim facere.', 0, 0, '1994-07-02 05:44:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (203, 89, 91, 'Aliquid ratione non sit voluptatem fugit sit. Et voluptas sed autem fugiat repellendus id sapiente. Praesentium voluptatem delectus ipsum iusto molestias error.', 0, 0, '2005-04-08 01:59:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (204, 50, 24, 'Voluptate in quae impedit impedit enim tempore dolorem. Reprehenderit dolor pariatur id nemo est quidem ad. Autem sunt cum et provident et assumenda incidunt.', 1, 1, '2008-01-31 04:33:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (205, 76, 54, 'Ut itaque itaque vel aut omnis natus repellendus. Dolores numquam quo porro quos ipsam nostrum molestiae. Ut quia et reprehenderit quam dicta debitis beatae. Similique illo pariatur est labore.', 1, 0, '1997-11-05 08:57:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (206, 14, 89, 'Vel dolores autem dolore nesciunt sed sint. Minima facilis voluptatem magni provident. Libero exercitationem reprehenderit facilis voluptate quo in eos laborum.', 0, 0, '1997-07-05 15:37:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (207, 39, 18, 'Qui adipisci sit dignissimos tempora laudantium est ut rem. Et commodi quaerat dolore voluptas. Commodi voluptatem et est inventore fuga.', 0, 1, '2012-12-20 22:08:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (208, 42, 38, 'Aspernatur earum vel amet quibusdam dolor necessitatibus. Aliquam autem vero blanditiis quo. At eos facere aut perspiciatis ut.', 1, 0, '1997-10-14 23:14:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (209, 49, 12, 'Dolores minima unde accusamus animi. Eum deserunt velit autem pariatur dolor doloribus. Autem velit est magni tempore omnis quidem expedita alias. Architecto distinctio voluptatum nihil voluptatem omnis iusto.', 1, 1, '1981-03-11 18:26:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (210, 31, 7, 'Qui veritatis est dignissimos hic porro nihil. Necessitatibus atque dolorem similique praesentium et. Laudantium perferendis voluptatem aut itaque consequatur qui. Vel similique amet quidem voluptatem quo blanditiis.', 0, 1, '2017-11-12 07:39:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (211, 94, 44, 'Est nostrum quas vel similique optio. Architecto soluta reiciendis voluptatum quis.', 0, 1, '2016-04-04 12:40:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (212, 37, 39, 'Magni consequuntur rerum explicabo aut vitae. Consectetur dignissimos sapiente architecto necessitatibus voluptatem fuga. Soluta eligendi sed adipisci nihil in. Ratione qui unde id qui laboriosam.', 1, 1, '1997-03-17 17:17:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (213, 95, 48, 'Expedita maxime culpa veniam delectus cumque. Ex ut aliquid in eligendi est rerum.', 0, 0, '2012-01-23 07:26:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (214, 28, 27, 'Qui et at molestiae. Ducimus aut ut voluptatum pariatur assumenda. Quo tenetur illo cupiditate ab vitae rerum.', 0, 1, '1972-10-06 05:59:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (215, 14, 75, 'Temporibus et velit magnam incidunt et doloribus. Quam perferendis et id voluptas corrupti qui nobis. Est dolor natus odit.', 1, 1, '1995-01-17 15:01:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (216, 14, 49, 'Beatae ut nemo commodi delectus deleniti voluptas distinctio. Modi et assumenda fugit voluptatem adipisci enim. Labore aut qui numquam eius.', 1, 0, '2012-09-14 09:56:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (217, 50, 36, 'Consequatur et pariatur quod nihil cumque. Aspernatur in doloremque magnam voluptatem dolorum nesciunt natus. Molestiae enim et consequatur quisquam. Occaecati officia temporibus ab qui harum. Accusamus totam natus dolores fugit reiciendis error.', 0, 1, '2010-07-21 19:02:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (218, 39, 53, 'Deserunt tempore nihil eum animi et quas praesentium enim. Est animi quas nostrum. Atque possimus sunt officiis fugiat debitis. Quisquam aut nostrum deleniti fugiat recusandae aliquam.', 0, 0, '2018-10-23 18:01:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (219, 12, 69, 'Pariatur non consectetur repellendus eius et esse aut in. Vitae dolor dolorum natus in quo. Aperiam architecto placeat est. Error dolor saepe doloribus molestiae voluptates ea. Autem temporibus nihil quod quam dolores error soluta.', 0, 0, '1988-06-12 20:17:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (220, 94, 36, 'Et amet fuga et quaerat at. Ut officia aliquid ducimus eaque enim omnis. Quia corrupti saepe explicabo et doloribus vero ullam. Magni distinctio quod repellat expedita atque dignissimos.', 1, 0, '1992-07-19 18:30:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (221, 92, 9, 'Quis aspernatur sapiente consequatur nisi. Qui tempora qui unde eius non commodi sit omnis. Ratione possimus hic odio impedit iusto suscipit. Illum est quis voluptates numquam rerum dolorem.', 0, 1, '1970-08-20 19:34:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (222, 36, 54, 'Et saepe maxime amet consectetur dolores totam sequi odit. Voluptates et repellendus error quas. Nobis qui molestias molestiae ratione modi quibusdam. Eaque aut consequatur saepe.', 1, 1, '1998-06-06 19:14:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (223, 67, 97, 'Asperiores ullam laudantium sit nesciunt qui consequatur. Reiciendis neque minima ipsam omnis. Tempore sequi tenetur aperiam. Quia praesentium ipsum quo molestias velit eveniet.', 1, 1, '2007-03-06 01:13:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (224, 35, 63, 'Qui consequatur cupiditate quia voluptas ullam. Ab accusantium dolorem officiis explicabo aliquam. Aliquid debitis quia et et eveniet.', 1, 0, '2002-08-31 18:56:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (225, 28, 3, 'Fugiat minus sed sit ut. Voluptatem quas consequatur et deleniti non. Modi esse id ullam ipsa vitae.', 1, 1, '1984-03-21 18:33:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (226, 21, 67, 'Cupiditate debitis in deleniti non. Dolores cumque ex nostrum accusamus. Molestiae soluta non ut temporibus iure.', 1, 0, '2003-03-18 10:17:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (227, 45, 17, 'Voluptate alias ipsum odio mollitia sunt. Cumque dolorum fugit rerum accusantium omnis amet omnis veritatis.', 0, 0, '1977-04-26 01:38:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (228, 32, 70, 'Minima mollitia ut necessitatibus ipsam consequuntur vel eligendi autem. Aliquam voluptas ipsam accusantium aliquid quas. Sit corporis sit illum voluptatem porro eaque.', 0, 1, '1978-04-13 10:51:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (229, 19, 88, 'Enim eveniet saepe consectetur. Facilis accusantium at consequatur iusto quia eum. Ea architecto aut quis corporis possimus est sunt.', 0, 1, '1981-06-05 19:05:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (230, 100, 50, 'Dolorum est ut sunt ea maxime laborum explicabo consequatur. Architecto ab assumenda consectetur. Eaque sint esse a nesciunt.', 1, 1, '1995-10-01 17:35:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (231, 32, 22, 'Dolorem dignissimos sed provident dolore deleniti. Ipsum voluptatem animi dolorem illum. Delectus recusandae dolor dolorem dolorum quia consectetur pariatur. Sapiente vel porro et.', 0, 1, '1991-05-22 18:06:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (232, 6, 18, 'Veritatis quaerat ipsam in eos. Itaque repellendus quibusdam qui accusantium beatae sed iste. Mollitia repellat consequatur expedita. Provident earum sed molestiae quod mollitia ab.', 0, 1, '2011-09-01 18:42:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (233, 4, 10, 'Incidunt et velit delectus perferendis et sint fuga quia. Nobis quos non aut eius corrupti.', 0, 0, '1997-10-25 06:43:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (234, 48, 85, 'Maxime est eaque eum cum. Quis dolore tempora temporibus molestias iste voluptatem pariatur.', 0, 0, '2001-07-28 05:51:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (235, 3, 78, 'Modi inventore dignissimos hic mollitia culpa fugiat quo eaque. Molestiae vitae quidem esse ducimus eum. Ut eum distinctio dolores optio est illo fugit.', 0, 0, '2009-10-15 20:02:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (236, 58, 35, 'Itaque libero laboriosam dolores dolores nam aut. Sed provident rem saepe odio voluptatibus qui. In iure nam aperiam necessitatibus autem aut.', 0, 1, '1993-01-28 17:48:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (237, 40, 89, 'Aut corrupti repudiandae rerum consequuntur perspiciatis quibusdam. Ut optio sequi non eius ipsa et hic. Eum accusantium praesentium perspiciatis in ratione aut recusandae. Ullam omnis nemo quaerat omnis expedita omnis.', 1, 1, '2017-07-16 07:36:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (238, 42, 62, 'Est amet doloribus aspernatur eius. Perferendis aut voluptatum quia eum soluta sint. Rerum non aut est mollitia est ipsum nam amet. Aliquid iste illo ut totam ut ad et. Eos illo blanditiis ea eos omnis.', 1, 0, '1994-05-20 06:23:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (239, 99, 61, 'Architecto consequatur velit modi ipsam et perspiciatis. Nulla voluptas sunt sunt cumque perspiciatis nam vitae voluptatibus. Rerum consequuntur aliquid officiis magnam distinctio sapiente. Enim incidunt modi enim veniam soluta.', 0, 1, '2000-06-01 06:30:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (240, 12, 3, 'Adipisci recusandae voluptatum dolor occaecati optio consectetur. Enim aspernatur quae sint. Consequatur voluptatum voluptas ut nihil temporibus.', 0, 1, '1999-01-24 01:56:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (241, 52, 22, 'Et voluptatem et inventore et est reiciendis. Rerum vel optio ducimus non voluptatem et. Dolorem deleniti beatae qui iusto alias dolores.', 1, 1, '1978-02-10 19:33:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (242, 54, 97, 'Ab minima dolores consequuntur et ipsam iusto. At et ut et aspernatur neque distinctio. Labore itaque quaerat autem sit.', 0, 1, '2018-11-29 16:37:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (243, 51, 93, 'Et ut dicta consequatur sed. Cum ipsa repellat et ipsa ut.', 1, 1, '2006-06-15 10:24:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (244, 3, 28, 'Sint dignissimos non libero sapiente perspiciatis quo. Vel et minus fugit. Dignissimos aliquid aliquam asperiores et sit et.', 0, 1, '1981-07-25 08:55:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (245, 5, 12, 'Neque consectetur ratione ut maiores eaque. Error quis maxime qui exercitationem.', 1, 1, '2012-06-09 06:33:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (246, 35, 44, 'Ut aut dignissimos quos illum doloribus eligendi ut quidem. Beatae ut architecto et et aut qui optio. Harum mollitia velit quas magni voluptates nemo. Qui quia inventore harum nemo temporibus.', 0, 1, '1985-07-02 10:16:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (247, 92, 63, 'Sequi temporibus ea nulla pariatur et. Et unde eaque reiciendis sit illum quasi qui. Corrupti cumque expedita dolor eius voluptate.', 1, 1, '1980-03-05 06:04:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (248, 78, 8, 'Aperiam sapiente sunt eaque cupiditate placeat soluta sed. Qui quia sunt voluptas quasi. Eveniet tenetur assumenda rem dolor adipisci omnis. Est numquam et nostrum vero consequatur. In cumque id dolores.', 1, 0, '1994-04-12 13:18:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (249, 30, 70, 'Dolorem illo ut et eos. Sed temporibus voluptas numquam excepturi. Magni similique expedita mollitia qui debitis necessitatibus. Suscipit numquam earum et.', 1, 1, '1976-03-22 01:37:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (250, 90, 35, 'Velit id et in tempora voluptatum itaque facere. Numquam asperiores error amet nam rem qui. Et voluptatem culpa aliquam.', 0, 1, '1996-11-30 06:05:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (251, 23, 51, 'Sunt illum est omnis tempore commodi quod. Qui inventore id ut libero perspiciatis fugit dolor quia. Numquam rerum nulla quod autem eos.', 1, 0, '1980-03-04 18:05:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (252, 26, 98, 'Asperiores vel pariatur non rem. Odio explicabo nobis beatae totam voluptatem tempora. Nemo ratione consequuntur est temporibus illum rerum dignissimos. Sapiente ut accusantium aperiam dolorem ab inventore.', 0, 0, '1978-06-18 07:47:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (253, 79, 28, 'Aliquid tempore mollitia rerum sed qui et consectetur. Voluptatem iure ex ut vitae maiores.', 0, 1, '1992-04-08 02:38:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (254, 67, 75, 'Dolores est quae ea reiciendis eligendi maiores. Et minima sed exercitationem. Qui autem magni tempora qui. Cupiditate iusto ut culpa voluptatum porro officia quia. Occaecati laboriosam ex voluptate totam magni et.', 0, 0, '2003-01-31 07:43:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (255, 91, 31, 'Nam sint earum quam accusamus sed. Vel voluptas hic voluptas est quia. Corrupti minima non qui voluptatem eos beatae. Facilis esse amet expedita. Fugiat numquam perferendis maxime qui ea.', 0, 0, '1980-08-05 12:46:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (256, 77, 49, 'Totam sit omnis placeat sequi quibusdam dolorum harum. Et iste ut consequatur sint cum minima quia. Qui ut fuga suscipit hic quidem perspiciatis commodi.', 1, 1, '1989-09-18 16:05:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (257, 52, 2, 'Omnis ut est assumenda fugit. Qui asperiores laborum cumque omnis. Sit enim aperiam sed ad voluptatem eos. Veritatis hic consectetur vero cumque neque.', 0, 1, '1990-08-03 13:26:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (258, 21, 88, 'Magnam laudantium vero voluptatum. Et temporibus quia eaque dicta. Beatae quibusdam maiores eum sunt.', 0, 1, '1972-03-17 21:20:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (259, 98, 52, 'Iure quidem quidem optio voluptatem vel. Ab quae vitae eveniet delectus.', 1, 1, '1998-01-31 23:10:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (260, 93, 36, 'Magnam aut perspiciatis architecto totam perferendis. Sequi deleniti amet sunt nostrum repudiandae ipsum. Et vel cupiditate rerum quidem quia. Architecto sit iure eius illum maxime ut porro saepe.', 0, 0, '2012-12-08 15:55:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (261, 92, 7, 'Illum quis voluptatem odit placeat. Ut officiis dolorem sint nesciunt officia in voluptatum nulla. Hic voluptatem et sit ullam dolores dolorum autem.', 1, 0, '2000-08-13 09:55:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (262, 57, 35, 'Dolor impedit accusantium libero. Illo adipisci quis minima provident. Inventore cumque deserunt qui aut praesentium sit earum. Non esse nobis quia eos illo officia.', 1, 1, '1981-02-28 16:26:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (263, 35, 85, 'Est qui suscipit quis minus enim. Nesciunt ea iusto exercitationem dolorum. Consectetur aut odit error quae ut.', 1, 0, '1975-11-10 11:30:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (264, 93, 35, 'Cupiditate sed repellat quia exercitationem sint. Eos ullam dolorem perferendis vero qui.', 0, 1, '2016-10-16 11:33:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (265, 17, 21, 'Eum alias numquam commodi dolor voluptatem nobis incidunt. Voluptates sequi est ut est suscipit odit accusamus aut. Quam ut eum accusantium rem ipsa aliquam. Harum ut quis molestias a.', 1, 1, '1999-03-22 07:05:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (266, 62, 69, 'Quisquam amet ut iste repudiandae optio doloribus. A rem quam veritatis aliquid est nam sit. Et deserunt animi voluptatem. Provident dolor molestias eum eaque quasi consectetur eaque.', 1, 1, '2004-08-26 21:27:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (267, 19, 34, 'Et voluptas perferendis quia dolor nobis. Sapiente quam iure voluptas similique assumenda provident. Eligendi aut porro cumque commodi rerum officia. Qui est temporibus accusamus tempora.', 0, 1, '2012-07-25 08:46:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (268, 43, 100, 'Quia voluptatem autem sed veniam aut. Aspernatur qui porro cupiditate libero ipsum voluptas. Harum natus id repellat veniam molestias. Magnam quod asperiores nihil voluptates libero.', 0, 0, '1981-11-15 15:35:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (269, 92, 26, 'Distinctio id voluptatem illo omnis maiores iusto nulla ducimus. Autem nulla optio est. Ullam qui voluptatem quia ut totam. Impedit hic odit sint qui fugiat.', 1, 1, '1990-02-16 23:16:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (270, 45, 76, 'Et et inventore quidem ipsum deserunt. Exercitationem blanditiis laudantium blanditiis aut. Quaerat quia et quasi quo facilis. Sit unde aperiam et.', 0, 1, '2012-07-08 13:37:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (271, 9, 24, 'Quia ex ea aut. Ipsam rerum voluptas quae necessitatibus unde nam qui. Est possimus et beatae laudantium dolorem voluptatem. Maxime dolorum amet architecto architecto dolor ducimus ipsa amet.', 0, 0, '1974-10-07 04:07:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (272, 5, 23, 'Blanditiis dolore et et quia tempora sapiente. Provident est rerum rem exercitationem ea rerum. Placeat porro quasi atque aut autem vero.', 0, 1, '1994-10-12 03:45:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (273, 46, 19, 'Expedita earum sit rerum similique. Veniam sit repellendus et vitae tenetur aspernatur id.', 1, 0, '1978-08-15 13:28:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (274, 65, 39, 'In quibusdam qui tenetur illum. Quas fugit provident voluptatem excepturi aut maiores ducimus voluptatem. Non molestias dolores enim eos eum.', 0, 0, '1994-06-03 03:09:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (275, 78, 26, 'Dolor quia sit dolorem esse cupiditate sed provident accusamus. Omnis ipsum assumenda possimus. Maxime possimus quis est iure eveniet nulla at sed.', 0, 1, '2003-09-06 23:08:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (276, 33, 86, 'Commodi aut dolor et doloremque enim. Delectus voluptas consequatur deleniti modi. Molestias quisquam eum exercitationem occaecati dolore autem dolor. Aut qui enim error totam id sit ut. Cupiditate incidunt modi et et molestiae.', 1, 1, '1988-09-27 22:40:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (277, 62, 54, 'Fugit rem temporibus nihil praesentium natus. Est dolor est laudantium velit nemo. Velit aut ea doloremque eos minus.', 0, 0, '1993-04-03 17:50:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (278, 28, 88, 'Ullam ab tenetur voluptatem rerum. Quia occaecati excepturi esse sequi et eos ipsam. Reiciendis quis ipsam ipsam nisi. Non laboriosam quo blanditiis odio quo et.', 0, 1, '2005-03-31 04:08:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (279, 32, 9, 'Consequatur facilis ut dolores temporibus consequatur. Laborum atque illum similique adipisci ipsum voluptatem laudantium.', 0, 0, '1994-03-30 11:39:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (280, 5, 61, 'Et aliquam quas non eius velit consequatur. Odio molestias sit debitis. Dolores magni et nisi illo aliquam consequuntur unde sit. Nihil nostrum quaerat qui deleniti.', 1, 0, '1982-10-06 16:26:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (281, 40, 85, 'Sed vero quo commodi et quas laudantium ut. Consectetur excepturi quis id soluta vel dignissimos nobis quis. Id minus voluptatum nostrum ipsum.', 0, 1, '2003-07-07 02:12:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (282, 44, 76, 'Unde cumque nam corporis facere vitae reprehenderit similique. Libero sunt tempora dicta eos eligendi. Earum iusto placeat quia ut aliquid.', 1, 0, '1978-05-18 09:10:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (283, 91, 35, 'Non tenetur eaque autem et inventore iusto quo rerum. Quasi et soluta eos est nihil. Voluptatem deleniti dolores ducimus quis. Ut sed nam mollitia et.', 1, 1, '1983-06-08 10:25:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (284, 63, 5, 'Porro iure quidem eum non expedita sint id eligendi. Vero culpa nobis laborum sed ipsam veniam expedita. Iusto eius rem exercitationem qui praesentium quisquam.', 1, 0, '2016-12-25 19:23:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (285, 88, 18, 'Omnis dicta similique in. Quam ut atque atque ut sit ut. Ut hic repudiandae et dolore quidem explicabo.', 1, 1, '1986-09-09 04:58:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (286, 74, 55, 'Quos nostrum sed dolorem. Et voluptatem qui a quia.', 0, 0, '2011-12-16 01:07:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (287, 32, 51, 'Facilis excepturi sit voluptatum soluta nulla placeat. Dolore tenetur harum animi aut iure quibusdam. Ad inventore expedita amet illo dolorem molestiae aliquam. Et voluptas placeat eaque sit.', 1, 0, '2003-03-04 20:43:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (288, 15, 100, 'Est mollitia dolor non repellat assumenda dolores id. Ducimus et quae laboriosam provident consequatur eos itaque. Et officia ducimus ut perferendis. Accusantium est voluptas corporis quod maxime.', 0, 1, '2002-09-19 03:07:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (289, 33, 95, 'Et quos rerum veritatis dolorum sit consectetur accusantium. Ut animi optio incidunt praesentium. Ad tempora dolore qui ipsam odio sint eos.', 0, 1, '1972-09-06 01:28:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (290, 85, 1, 'Quia reiciendis molestiae mollitia dolorem qui molestiae. Exercitationem perferendis repellat aliquam commodi. Unde ea distinctio quo dolorum autem nesciunt. Ut blanditiis et fugit minus sequi in reprehenderit.', 1, 1, '2009-11-15 16:10:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (291, 54, 6, 'Voluptatem voluptas quo molestias porro perferendis debitis perspiciatis. Velit facilis quia accusamus in atque accusantium suscipit. Pariatur ab eligendi qui sunt sed earum et.', 1, 1, '1985-06-05 15:34:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (292, 68, 47, 'Repellendus corporis quis quas ratione. Accusantium aliquid asperiores dolores sequi et. Cumque non numquam cumque et accusantium sit quos corrupti. Praesentium dignissimos mollitia amet voluptatem minus nisi.', 1, 1, '2017-05-03 15:28:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (293, 58, 18, 'Reiciendis aliquid animi id tempore possimus. Qui voluptatum commodi voluptatibus. Maiores doloribus dolorem eos voluptatum molestiae eius at. Accusamus reiciendis doloremque distinctio aut.', 0, 1, '1989-07-26 06:19:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (294, 20, 100, 'Dolorem vitae aperiam unde debitis et. Optio voluptatibus hic laboriosam autem.', 1, 1, '1989-02-02 07:11:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (295, 96, 51, 'Non temporibus sint deleniti. Earum facere similique est itaque et. Iure a nobis dolor velit sunt nulla autem.', 0, 1, '2010-01-19 14:15:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (296, 39, 41, 'Quod laborum voluptatum cum ut impedit consequuntur culpa. Et iure provident nihil corrupti. Dolor ducimus non sit iure placeat consequatur.', 1, 0, '2019-10-23 10:10:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (297, 96, 13, 'Iste quis eum quis ad voluptas repudiandae. Architecto numquam magni quia libero. Non et accusantium dicta nulla. Sit eveniet qui nobis est ut perferendis omnis in.', 0, 0, '2002-10-30 04:04:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (298, 19, 11, 'Voluptas vitae voluptates quibusdam iure commodi minima molestiae. Debitis veritatis voluptatum officiis expedita vel dolore molestias. Placeat nesciunt voluptas officia et. Distinctio et nesciunt ipsam ut. Earum sapiente quaerat fugiat ea ut ipsam.', 0, 1, '2013-05-30 12:50:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (299, 58, 91, 'Voluptatem pariatur doloribus quod ab sint. Minima porro et ducimus recusandae fugiat soluta nihil. Nobis earum quasi nulla provident quia.', 0, 0, '1992-10-07 18:34:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (300, 35, 66, 'Dolores quia qui consequuntur atque qui id ut. Esse sapiente consequatur ut sunt id eligendi. Itaque dolorem quasi velit qui quod. Dolorum adipisci quae a quia qui aliquid omnis.', 1, 1, '1975-04-28 09:09:01');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `sex` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (1, '\'', '1992-01-20', 'Boganview', 50);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (2, '', '1984-04-19', 'Edythbury', 22);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (3, '\'', '1980-01-16', 'Brandymouth', 11);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (4, '', '2005-04-09', 'Bentonshire', 36);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (5, '', '2009-01-19', 'West Macytown', 19);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (6, '\'', '1975-12-07', 'North Modesto', 67);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (7, '\'', '1997-07-10', 'Macktown', 3);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (8, '', '2013-08-22', 'Lake Paula', 27);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (9, '\'', '2000-04-02', 'Arnulfoside', 1);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (10, '\'', '2002-12-04', 'East Issac', 81);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (11, '', '2004-07-14', 'Lake Edmundport', 45);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (12, '', '1974-05-12', 'Antwonbury', 11);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (13, '', '2000-09-18', 'Port Rosemariefort', 60);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (14, '\'', '2000-07-07', 'New Marcel', 44);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (15, '', '1994-05-29', 'New Carolehaven', 70);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (16, '\'', '1971-12-07', 'East Kendrickland', 90);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (17, '', '2010-12-29', 'Crooksstad', 23);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (18, '', '2017-08-28', 'South Johnathon', 53);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (19, '\'', '1979-06-06', 'Jadonside', 85);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (20, '\'', '1972-11-01', 'Windlerside', 98);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (21, '\'', '2006-02-07', 'West Haliefort', 79);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (22, '', '2004-11-30', 'Lake Justina', 67);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (23, '\'', '2019-06-06', 'East Baronmouth', 59);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (24, '\'', '1971-10-23', 'Gibsonburgh', 100);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (25, '', '2001-12-11', 'Jakubowskichester', 55);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (26, '', '1978-03-26', 'West Bradly', 73);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (27, '\'', '1984-07-21', 'South Ludwig', 4);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (28, '', '2018-02-17', 'New Shyannemouth', 59);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (29, '\'', '1991-11-06', 'South Jillianton', 47);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (30, '\'', '2015-05-27', 'Lake Shawnatown', 68);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (31, '', '1970-02-12', 'Ollieville', 31);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (32, '\'', '2008-06-13', 'Lornatown', 54);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (33, '', '1997-11-15', 'West Dessiefurt', 57);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (34, '\'', '1993-07-03', 'Amparohaven', 66);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (35, '', '1987-02-19', 'Keiratown', 64);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (36, '\'', '1999-12-30', 'Brainville', 41);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (37, '\'', '1986-08-16', 'Fridaview', 40);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (38, '', '2013-09-17', 'New Taylor', 59);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (39, '\'', '1970-07-23', 'Howellburgh', 26);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (40, '\'', '1971-04-03', 'Lake Edwardoton', 88);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (41, '', '2016-12-31', 'Lake Cierra', 44);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (42, '', '1978-11-11', 'Reichelton', 63);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (43, '\'', '1981-01-10', 'Lake Jaeden', 85);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (44, '', '1971-09-04', 'Chasitymouth', 24);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (45, '', '1985-12-09', 'Port Hankchester', 43);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (46, '\'', '1978-07-10', 'Kundeborough', 9);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (47, '', '2017-04-12', 'West Deven', 53);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (48, '', '2005-12-03', 'Amaliafurt', 58);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (49, '', '2014-01-30', 'South Bo', 39);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (50, '', '1985-07-23', 'West Addison', 17);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (51, '', '1990-11-11', 'West Nikkomouth', 15);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (52, '\'', '2011-12-01', 'Alizehaven', 90);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (53, '', '2013-07-02', 'Isabellaborough', 58);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (54, '', '2011-11-13', 'Wilberfurt', 76);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (55, '\'', '2000-06-06', 'East Garlandberg', 35);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (56, '', '1991-01-13', 'Lexusstad', 14);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (57, '\'', '1977-11-28', 'North Lucindaberg', 27);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (58, '', '1989-09-20', 'Ivafurt', 50);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (59, '', '1987-06-12', 'New Eusebiobury', 97);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (60, '', '1991-12-02', 'Schowalterchester', 9);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (61, '', '1991-01-09', 'South Garret', 51);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (62, '', '2003-06-26', 'Micahport', 35);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (63, '\'', '2011-10-09', 'Gottliebhaven', 23);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (64, '', '1972-08-27', 'Jordanborough', 82);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (65, '', '1974-09-20', 'Rutherfordhaven', 3);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (66, '\'', '2011-08-30', 'Zacheryville', 39);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (67, '\'', '2016-08-23', 'Borerborough', 36);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (68, '\'', '2007-02-24', 'Port Arturo', 38);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (69, '', '2003-08-26', 'Langton', 5);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (70, '\'', '1980-07-11', 'Ellisberg', 91);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (71, '', '1990-09-03', 'Lake Fleta', 52);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (72, '\'', '1980-04-11', 'Cadefort', 5);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (73, '\'', '1996-01-20', 'Jakubowskistad', 63);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (74, '\'', '2003-11-27', 'West Matteo', 13);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (75, '', '1994-04-10', 'East Mohammed', 48);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (76, '', '2006-10-04', 'New Earnestine', 78);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (77, '\'', '1980-12-13', 'Rebekahfurt', 20);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (78, '', '2012-06-10', 'Dedricstad', 24);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (79, '', '1988-11-12', 'Port Verniemouth', 93);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (80, '', '2006-06-02', 'Wilsonside', 45);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (81, '', '2008-08-29', 'Schillerville', 71);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (82, '\'', '2003-06-18', 'East Jane', 84);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (83, '\'', '1980-05-24', 'Lawsontown', 29);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (84, '\'', '1972-07-16', 'East Emmie', 16);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (85, '', '1971-05-17', 'East Percival', 65);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (86, '', '2002-07-06', 'Ritchieville', 78);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (87, '\'', '2002-03-05', 'Josiannebury', 44);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (88, '', '1978-12-28', 'Reillyport', 19);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (89, '\'', '1998-03-03', 'Kristianberg', 45);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (90, '', '2008-01-30', 'East Nigel', 14);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (91, '\'', '1979-05-18', 'Colbymouth', 39);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (92, '\'', '2014-01-02', 'Lake Lavinia', 91);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (93, '\'', '2011-08-19', 'East Bernadine', 32);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (94, '', '1985-06-15', 'East Hunterside', 22);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (95, '', '1970-03-09', 'Rueckerborough', 67);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (96, '', '2014-01-23', 'North Ellishaven', 5);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (97, '', '2002-10-13', 'Whiteshire', 58);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (98, '\'', '2001-02-21', 'North Jamison', 59);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (99, '\'', '1993-10-03', 'Kuhlmanhaven', 88);
INSERT INTO `profiles` (`user_id`, `sex`, `birthday`, `hometown`, `photo_id`) VALUES (100, '', '1972-11-27', 'Laurenchester', 87);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (1, 'Madilyn', 'Waelchi', 'cindy.heidenreich@example.net', '04783056618', '1984-12-02 19:56:46', '1992-08-25 00:48:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (2, 'Ozella', 'Satterfield', 'thaddeus22@example.org', '(335)539-625', '1981-06-04 03:28:29', '1979-09-17 02:48:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (3, 'Duane', 'Tremblay', 'tristin02@example.com', '153-956-6552', '1988-08-07 15:18:12', '2006-10-27 05:42:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (4, 'Dustin', 'Bogisich', 'drew50@example.org', '1-850-595-17', '1989-03-28 05:17:52', '1990-07-10 14:47:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (5, 'Kathryn', 'Dicki', 'botsford.marcos@example.net', '729-081-3609', '2008-04-16 02:41:19', '2007-07-22 17:23:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (6, 'Karley', 'Lockman', 'ara84@example.com', '399-351-0130', '2005-08-29 17:50:20', '1984-10-14 22:03:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (7, 'Angelina', 'Hyatt', 'dean70@example.net', '1-777-042-61', '1982-06-01 19:51:26', '1994-12-19 16:04:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (8, 'Colin', 'Hirthe', 'dusty67@example.com', '+62(5)518154', '1982-06-15 18:44:27', '1971-12-22 22:22:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (9, 'Bradly', 'Dach', 'percival35@example.org', '407.157.1543', '2011-05-08 01:13:34', '2007-02-24 23:39:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (10, 'Aurelio', 'Kulas', 'scotty53@example.com', '00028163641', '2007-12-14 12:13:30', '2005-12-17 22:02:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (11, 'Lee', 'Hilll', 'mraz.laverne@example.com', '(754)136-190', '2004-05-11 07:44:37', '1994-09-03 15:18:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (12, 'Nakia', 'Koss', 'lindgren.trace@example.com', '293-689-5035', '2014-02-15 13:40:09', '1978-03-14 14:04:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (13, 'Dayna', 'Volkman', 'jazmyne00@example.net', '174.699.1174', '1981-08-15 23:40:18', '2015-08-12 16:48:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (14, 'Nigel', 'Satterfield', 'xwatsica@example.net', '(847)721-026', '1983-02-17 10:52:21', '1989-12-23 07:00:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (15, 'Florida', 'Berge', 'henri38@example.net', '(230)843-232', '1978-05-28 12:13:17', '1983-04-21 10:08:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (16, 'Jeromy', 'Zemlak', 'noble42@example.com', '+30(6)377621', '1996-07-02 12:38:21', '2006-07-27 13:25:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (17, 'Ara', 'Shanahan', 'schultz.otis@example.com', '00320612559', '1989-02-12 12:28:18', '1985-01-04 17:25:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (18, 'Isaiah', 'Roberts', 'hansen.katarina@example.com', '328-977-5449', '1998-05-27 07:19:15', '2000-10-01 16:01:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (19, 'Julian', 'Kohler', 'erika71@example.org', '1-418-980-72', '2019-06-12 01:10:54', '1984-03-30 13:11:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (20, 'Willard', 'Treutel', 'pgrant@example.com', '01913537047', '2001-01-07 22:16:10', '1986-07-22 03:31:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (21, 'Gloria', 'Pfeffer', 'cgibson@example.net', '1-624-729-22', '2017-01-18 01:39:12', '1987-04-24 22:17:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (22, 'Maryam', 'Osinski', 'lon.breitenberg@example.com', '(254)548-203', '1999-04-13 15:40:06', '1976-09-03 07:28:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (23, 'Bethany', 'Ortiz', 'hans.bradtke@example.net', '1-404-161-93', '1990-05-23 16:59:59', '1974-05-09 16:22:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (24, 'Emerson', 'Windler', 'lubowitz.adam@example.com', '741-213-9351', '1989-05-09 22:51:50', '1984-02-15 12:07:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (25, 'Margie', 'Bailey', 'asia98@example.org', '911-470-0452', '1996-11-12 17:11:04', '1981-10-21 15:24:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (26, 'Rahsaan', 'Schultz', 'bartoletti.connie@example.com', '1-029-553-93', '2018-12-04 18:41:09', '1983-10-14 00:41:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (27, 'Andre', 'Breitenberg', 'prohaska.alexanne@example.org', '+95(4)838370', '1976-06-01 23:44:57', '1974-03-19 00:00:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (28, 'Gayle', 'Grimes', 'uveum@example.com', '528-205-2938', '1979-09-27 11:08:14', '1991-04-30 13:20:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (29, 'Oma', 'Kunze', 'ankunding.golden@example.org', '091-491-7461', '1984-02-18 02:44:32', '2006-11-04 17:32:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (30, 'Adelbert', 'Hegmann', 'ruecker.alessandro@example.net', '340-608-8613', '2018-11-26 19:00:14', '2007-01-29 02:25:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (31, 'Holden', 'McCullough', 'tommie.ruecker@example.net', '554-091-4132', '1979-07-04 22:05:24', '2017-01-25 03:52:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (32, 'Armand', 'Homenick', 'muller.carmine@example.net', '235.513.7509', '1986-05-26 05:33:52', '2008-05-25 12:28:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (33, 'Nathanael', 'Brekke', 'delbert.ritchie@example.org', '+86(9)267303', '1985-05-20 19:50:46', '1978-02-14 00:25:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (34, 'Evie', 'Wolff', 'raymond.king@example.net', '994-431-6307', '1971-02-22 04:10:48', '1983-12-06 19:58:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (35, 'Treva', 'Crist', 'bernice53@example.com', '012-042-3227', '2012-02-21 15:01:30', '1985-12-12 05:02:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (36, 'Landen', 'Beahan', 'christelle11@example.org', '1-720-642-30', '1987-09-05 08:11:36', '1998-08-31 04:34:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (37, 'Brennan', 'Ruecker', 'isidro.kuhlman@example.com', '1-666-874-43', '1992-05-15 18:51:22', '1996-04-27 16:09:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (38, 'Linwood', 'Adams', 'dallas84@example.net', '871.107.7204', '1997-10-21 08:52:12', '2015-01-09 09:02:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (39, 'Garry', 'Kling', 'michael.blick@example.com', '1-472-244-17', '1983-07-06 12:10:05', '2008-02-19 16:35:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (40, 'Fiona', 'Johnston', 'jschimmel@example.com', '267.429.1103', '1977-06-04 19:51:02', '1999-03-27 14:54:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (41, 'Eriberto', 'Schuster', 'sven.hintz@example.net', '1-628-653-62', '1986-09-29 05:05:18', '1972-10-08 16:15:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (42, 'Selena', 'Schmidt', 'mariela56@example.com', '548-893-3317', '1992-09-13 07:39:09', '2018-08-19 14:57:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (43, 'Fredrick', 'Hoppe', 'brielle16@example.net', '(985)410-800', '1979-02-17 00:16:08', '1978-10-21 18:03:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (44, 'Julie', 'Littel', 'kayli.roberts@example.org', '1-894-814-02', '2007-04-16 20:28:42', '2012-11-19 05:29:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (45, 'Travis', 'Shields', 'isipes@example.net', '611.217.8058', '1988-05-24 15:52:02', '2016-09-15 22:55:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (46, 'Donnell', 'Hackett', 'moses.abshire@example.net', '481.501.1201', '1983-01-21 12:05:48', '1994-04-29 16:17:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (47, 'Noah', 'Bergstrom', 'pagac.kamren@example.com', '316-992-0414', '1984-05-22 11:42:16', '1992-02-22 19:09:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (48, 'Eladio', 'Fisher', 'lang.eveline@example.net', '(677)047-643', '1997-07-21 10:41:25', '1993-04-01 15:04:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (49, 'Nola', 'Bergstrom', 'tmraz@example.net', '414.428.5514', '1974-06-17 21:45:47', '2002-06-30 10:49:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (50, 'Althea', 'Ziemann', 'cathrine45@example.net', '186-265-8025', '2000-01-23 16:23:11', '1970-10-11 03:16:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (51, 'Tremaine', 'Kuphal', 'bins.gay@example.net', '(767)836-063', '1996-12-15 04:00:17', '1976-07-01 09:26:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (52, 'Muriel', 'Marquardt', 'freida25@example.net', '802-438-4966', '2014-07-08 16:06:54', '1977-06-24 21:24:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (53, 'Clair', 'Glover', 'adelbert70@example.net', '1-725-470-93', '2017-12-09 16:59:49', '2017-05-05 00:06:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (54, 'Albin', 'Schneider', 'cvolkman@example.org', '08162132778', '1977-05-02 05:32:52', '2014-09-12 00:05:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (55, 'Adrien', 'Powlowski', 'otis72@example.com', '628-008-6874', '1993-05-08 13:21:11', '2012-02-25 12:20:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (56, 'Edwina', 'Quigley', 'mayer.erwin@example.net', '(697)773-232', '1980-12-22 14:39:01', '1983-12-30 17:50:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (57, 'Viviane', 'Grant', 'slind@example.net', '+78(5)760871', '1983-08-22 17:23:32', '2006-01-16 14:15:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (58, 'Cristal', 'Swaniawski', 'rrau@example.net', '1-402-661-15', '1987-07-05 05:13:23', '2015-09-13 07:13:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (59, 'Chet', 'Labadie', 'timmy21@example.com', '07952736715', '2016-12-07 16:24:36', '2012-02-20 01:11:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (60, 'Evan', 'Runte', 'felicita38@example.org', '084.667.6910', '1982-05-29 10:55:08', '1975-04-26 00:30:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (61, 'Samara', 'Windler', 'kelsi.boyer@example.org', '552-731-2589', '1976-08-23 11:43:30', '2011-05-28 03:41:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (62, 'Carmelo', 'Herzog', 'erika16@example.net', '+49(1)063696', '1986-04-08 03:56:03', '1975-03-07 20:13:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (63, 'Eladio', 'Labadie', 'ehyatt@example.net', '(574)521-906', '2009-11-25 15:53:34', '2019-02-03 22:48:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (64, 'Eino', 'Simonis', 'cordia.mccullough@example.com', '717-593-6584', '1971-06-18 09:36:11', '2017-05-26 10:37:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (65, 'Eulah', 'Nader', 'destiny.barton@example.com', '(846)263-923', '1973-10-13 23:08:37', '1974-03-09 21:57:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (66, 'Vivian', 'Rippin', 'bokuneva@example.com', '1-577-452-42', '1988-11-04 14:16:34', '2007-10-12 03:19:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (67, 'Dax', 'Emmerich', 'tflatley@example.com', '(697)764-444', '1990-01-09 07:55:22', '2019-04-24 16:07:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (68, 'Laurel', 'Kessler', 'crawford12@example.com', '1-548-480-56', '2002-11-09 19:26:26', '1994-05-15 15:58:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (69, 'Lorine', 'Wuckert', 'clinton.langosh@example.org', '(549)628-322', '1980-09-01 14:41:41', '1985-02-13 23:26:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (70, 'Margarita', 'Mraz', 'price.kaitlyn@example.org', '(219)590-092', '1971-04-06 15:42:49', '1985-02-28 05:46:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (71, 'Dudley', 'Hegmann', 'vonrueden.mylene@example.com', '(655)760-434', '1984-07-08 20:47:20', '2013-11-30 07:09:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (72, 'Efren', 'Schroeder', 'bheller@example.com', '132.759.9681', '1971-05-19 11:33:00', '1985-01-10 08:17:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (73, 'Carlo', 'Toy', 'nyah.williamson@example.net', '701-352-8869', '2014-09-03 01:25:33', '2002-04-10 23:49:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (74, 'Daphne', 'Hilpert', 'dusty.homenick@example.org', '+06(3)131883', '2008-04-05 06:48:54', '1995-08-25 02:46:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (75, 'Tobin', 'Jacobson', 'marian.lynch@example.com', '06469230359', '1990-07-28 20:39:25', '2019-08-07 22:13:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (76, 'Viva', 'Leuschke', 'iva55@example.com', '579.477.7832', '1986-02-01 00:27:02', '1995-03-16 09:30:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (77, 'Emie', 'Walker', 'princess.schinner@example.net', '1-490-535-70', '1984-04-11 23:43:05', '1985-01-17 08:41:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (78, 'Matteo', 'Bartoletti', 'rosemarie82@example.org', '1-744-676-40', '2018-12-19 14:59:41', '1976-12-05 14:14:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (79, 'Alvera', 'Kertzmann', 'keebler.keaton@example.org', '1-285-908-92', '2000-07-08 22:48:42', '1983-07-21 21:23:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (80, 'Eudora', 'Pagac', 'andres72@example.org', '(872)262-614', '2000-10-26 12:47:44', '2002-09-19 14:31:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (81, 'Evalyn', 'Hackett', 'ajacobson@example.com', '1-785-360-65', '1981-01-01 23:18:26', '2000-03-07 14:44:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (82, 'Adah', 'Morissette', 'koss.roberto@example.org', '(331)819-247', '1982-05-31 01:46:15', '1993-02-02 21:29:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (83, 'Corrine', 'Tromp', 'katelyn.christiansen@example.com', '1-881-843-48', '1994-12-07 01:24:02', '1989-03-24 16:19:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (84, 'Madilyn', 'Ernser', 'jerald19@example.net', '(444)197-566', '1982-08-01 06:07:54', '1979-12-23 05:33:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (85, 'Ryleigh', 'Jenkins', 'diana44@example.org', '(199)291-171', '1992-07-29 16:11:56', '1979-09-11 00:01:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (86, 'Nakia', 'Roberts', 'williamson.coty@example.net', '(460)026-127', '1991-01-25 04:50:28', '2001-11-10 08:13:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (87, 'Keaton', 'Kuhn', 'marquardt.daija@example.com', '832-816-1227', '1998-06-12 10:55:56', '2015-01-19 18:00:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (88, 'Angelica', 'Cronin', 'jakayla93@example.com', '1-830-707-08', '2000-12-20 19:24:34', '1999-04-29 06:18:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (89, 'Helga', 'McCullough', 'semard@example.org', '575-110-4361', '1974-09-17 22:40:52', '2013-03-18 05:45:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (90, 'Dorothy', 'Schowalter', 'renee45@example.org', '322.887.0218', '1973-07-03 11:32:14', '1976-06-11 08:33:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (91, 'Larissa', 'Cassin', 'evie.nolan@example.org', '(052)840-981', '2017-07-14 15:44:29', '2016-07-27 23:40:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (92, 'Cyrus', 'Hirthe', 'hsauer@example.net', '09241117512', '2012-08-22 18:27:06', '1993-06-27 11:48:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (93, 'Cleveland', 'Upton', 'cassie49@example.org', '519-991-0639', '1988-03-27 17:20:05', '1988-11-19 16:56:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (94, 'Kristian', 'Medhurst', 'leuschke.cristina@example.net', '479-765-7367', '1976-02-24 14:39:39', '1972-04-28 19:31:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (95, 'Caleigh', 'Yost', 'bschaden@example.net', '1-644-548-37', '2011-08-02 05:09:49', '2000-01-04 04:31:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (96, 'Vergie', 'Heidenreich', 'bode.jess@example.net', '1-402-886-41', '1997-03-10 02:05:44', '1983-05-18 20:13:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (97, 'Demarcus', 'Lakin', 'lindgren.joshua@example.org', '(734)602-049', '1973-11-25 12:06:30', '1984-04-30 14:48:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (98, 'Roselyn', 'Osinski', 'frami.june@example.net', '693-703-4238', '1972-01-31 20:14:02', '2011-05-23 18:26:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (99, 'Rusty', 'Rodriguez', 'eileen60@example.com', '+42(8)204718', '1998-10-04 20:28:01', '1988-07-22 07:27:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `created_at`, `updated_at`) VALUES (100, 'Louisa', 'O\'Keefe', 'shaina73@example.net', '013-533-0163', '1991-07-21 12:03:23', '1995-01-12 08:10:42');


