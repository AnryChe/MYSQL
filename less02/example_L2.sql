DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;
DROP TABLE if EXISTS users;
CREATE TABLE users (
	id INT UNSIGNED,
	name varchar(255)
);
EXIT #выход в командную строку терминала для создания дампа
mysqldump example > example.sql 
mysql # снова входим в мускл, удаляем базу данных, создаем новую пустую
DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
EXIT # выход и восстановление дампа в базу
mysql -u root example < example.sql
mysql
SHOW TABLES FROM example # удостоверились, что таблица users на месте.
mysqldump --opt --where="1 limit 100" mysql help_keywords> 100.sql

