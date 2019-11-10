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
)

-- Таблица групп
CREATE TABLE communites (
	id INT  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(150) NOT NULL UNIQUE
)

-- Таблица связи между пользователями и сообществами
CREATE TABLE communites_users (
	community_id INT  UNSIGNED NOT NULL,
	user_id INT UNSIGNED NOT NULL,
	PRIMARY KEY (community_id, user_id)
)
