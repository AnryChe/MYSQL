DROP DATABASE IF EXISTS prteam;
CREATE DATABASE prteam;
USE prteam;
DROP TABLE IF EXISTS users;
CREATE TABLE Users (
	id INT UNSIGNED,
	name varchar(255),
	contacts varchar(255),
	prfl_id INT UNSIGNED
);


DROP TABLE IF EXISTS owner_statuses;
CREATE TABLE owner_statuses (
	id int(10) unsigned NOT NULL,
	name varchar(10),
	describes varchar(255)
	);
INSERT INTO owner_statuses (`id`, `name`, `describes`) VALUES (1, 'Owner', 'Owner of project, employer');
INSERT INTO owner_statuses (`id`, `name`, `describes`) VALUES (2, 'PM', 'Project manager, person, who create team, tasks and accept completed tasks');
INSERT INTO owner_statuses (`id`, `name`, `describes`) VALUES (3, 'Employee', 'Employee, who can to do some tasks');

DROP TABLE IF EXISTS skills;
CREATE TABLE skills (
	id int(10) unsigned NOT NULL,
	name varchar(10),
	describes varchar(255)
	);

INSERT INTO skills (`id`, `name`, `describes`) VALUES (1, 'PYTHON', 'Cnowledge of Phyton language');
INSERT INTO skills (`id`, `name`, `describes`) VALUES (2, 'PHP', 'Cnowledge of PHP language');
INSERT INTO skills (`id`, `name`, `describes`) VALUES (3, 'JAVA', 'Cnowledge of Java language');
INSERT INTO skills (`id`, `name`, `describes`) VALUES (4, 'MYSQL', 'Cnowledge of MYSQL');


DROP TABLE IF EXISTS Users_skills;
CREATE TABLE Users_skills (
	users_id int(10) unsigned NOT NULL,
	skill_id int(10) unsigned NOT NULL,
	start_data timestamp NULL,
	finish_data timestamp NULL
	); 

DROP TABLE IF EXISTS projects;
CREATE TABLE projects (
	id int(10) unsigned NOT NULL,
	name varchar(10),
	describes varchar(255),
	owner_id int(10) unsigned NOT NULL
	);
 
DROP TABLE IF EXISTS projects_tasks;
CREATE TABLE projects_tasks (
	prjct_id int(10) unsigned NOT NULL,
	tsks_id int(10) unsigned NOT NULL,
	users_id int(10) unsigned NOT NULL,
	start_data timestamp NULL,
	finish_data timestamp NULL
	deadline timestamp NULL
	);
	
DROP TABLE IF EXISTS tasks;
CREATE TABLE tasks (
	id int(10) unsigned NOT NULL,
	name varchar(10),
	describes varchar(255),
	);

DROP TABLE IF EXISTS tasks_requests;
CREATE TABLE tasks_requests (
	id int(10) unsigned NOT NULL,
	tsks_id int(10) unsigned NOT NULL,
	skill_id int(10) unsigned NOT NULL,
	);

DROP TABLE IF EXISTS teams;
CREATE TABLE teams (
	id int(10) unsigned NOT NULL,
	prjct_id int(10) unsigned NOT NULL,
	users_id int(10) unsigned NOT NULL,
	);


CREATE TABLE profiles (
  user_id int(10) unsigned NOT NULL,
  sex char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  birthday date DEFAULT NULL,
  hometown varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  photo_id int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (user_id),
  );
