DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;
DROP TABLE if EXISTS users;
CREATE TABLE users (
	id INT UNSIGNED,
	name varchar(255)
);
EXIT #����� � ��������� ������ ��������� ��� �������� �����
mysqldump example > example.sql 
mysql # ����� ������ � �����, ������� ���� ������, ������� ����� ������
DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
EXIT # ����� � �������������� ����� � ����
mysql -u root example < example.sql
mysql
SHOW TABLES FROM example # ��������������, ��� ������� users �� �����.
mysqldump --opt --where="1 limit 100" mysql help_keywords> 100.sql

