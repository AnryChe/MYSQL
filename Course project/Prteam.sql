DROP DATABASE IF EXISTS prteam;
CREATE DATABASE prteam;
USE prteam;

-- таблицы пользователей, профилей и фотографий
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    phone VARCHAR(20) NOT NULL UNIQUE
	);

DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
  id int UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  filename VARCHAR(10) NOT NULL
  );
 
DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
  user_id int NOT NULL,
  sex char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  birthday date DEFAULT NULL,
  hometown varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  photo_id int(10) UNSIGNED DEFAULT NULL,
  team_id INT UNSIGNED DEFAULT NULL,
  CONSTRAINT profiles__users_fk
 	 FOREIGN KEY (user_id)  REFERENCES users (id) ON DELETE CASCADE,
  CONSTRAINT profiles_photos_fk
 	 FOREIGN KEY (photo_id)  REFERENCES photos (id) ON DELETE SET NULL  
    );

 -- таблица статуса заказчика (заказчик, менеджер проекта, наемник)
DROP TABLE IF EXISTS owner_statuses;
CREATE TABLE owner_statuses (
	id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(10),
	description varchar(255)
	);

-- скилы пользователей (для IT - знания языков программирования, стеков и т.д.). Вторая таблица - привязка типовых скилов к конкретному пользователю
DROP TABLE IF EXISTS skills;
CREATE TABLE skills (
	id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(10),
	description varchar(255)
	);

DROP TABLE IF EXISTS Users_skills;
CREATE TABLE Users_skills (
	user_id int(10)  NOT NULL,
	skill_id int(10)  NOT NULL,
	start_data timestamp NULL,
	finish_data timestamp NULL,
	CONSTRAINT user_skills_users_fk
		FOREIGN KEY (user_id)  REFERENCES users (id) ON DELETE CASCADE,  
	CONSTRAINT user_skills_skills_fk
   	 FOREIGN KEY (skill_id)  REFERENCES skills (id) ON DELETE RESTRICT
	); 

-- таблицы проектов и задач (типовых).  
DROP TABLE IF EXISTS projects;
CREATE TABLE projects (
	id int PRIMARY KEY AUTO_INCREMENT,
	name varchar(10),
	description varchar(255),
	owner_id int NOT NULL,
	CONSTRAINT projects_owners_fk
		FOREIGN KEY (owner_id)  REFERENCES users (id) ON DELETE RESTRICT 
	);
 	
DROP TABLE IF EXISTS tasks;
CREATE TABLE tasks (
	id int(10) PRIMARY KEY AUTO_INCREMENT,
	name varchar(10),
	description varchar(255)
	);

-- таблица связи проекта, задач, исполнителей задач
DROP TABLE IF EXISTS projects_tasks;
CREATE TABLE projects_tasks (
	prjct_id int(10)  NOT NULL,
	tsk_id int(10)  NOT NULL,
	user_id int(10)  NOT NULL,
	start_data timestamp NULL,
	finish_data timestamp NULL,
	deadline timestamp NULL,
	CONSTRAINT projects_tasks_projects_fk
		FOREIGN KEY (prjct_id)  REFERENCES projects (id) ON DELETE RESTRICT,
	CONSTRAINT projects_tasks_tasks_fk
		FOREIGN KEY (tsk_id)  REFERENCES tasks (id) ON DELETE RESTRICT,
	CONSTRAINT projects_tasks_users_fk
		FOREIGN KEY (user_id)  REFERENCES users (id) ON DELETE RESTRICT 
	);

-- таблица требований, предъявляемых к исполнителю той или иной задачи.
DROP TABLE IF EXISTS tasks_requests;
CREATE TABLE tasks_requests (
	id int(10) PRIMARY KEY AUTO_INCREMENT,
	tsk_id int(10)  NOT NULL,
	skill_id int(10)  NOT NULL,
	CONSTRAINT tasks_requests_tasks_fk
		FOREIGN KEY (tsk_id)  REFERENCES projects (id) ON DELETE RESTRICT,
	CONSTRAINT tasks_requests_skills_fk
		FOREIGN KEY (skill_id)  REFERENCES skills (id) ON DELETE RESTRICT	
	);

-- таблица проектных команд, привязывает команду исполнителей и ПМ к проекту
DROP TABLE IF EXISTS teams;
CREATE TABLE teams (
	id int(10) PRIMARY KEY AUTO_INCREMENT,
	prjct_id int(10)  NOT NULL,
	CONSTRAINT teams_project_fk
		FOREIGN KEY (prjct_id)  REFERENCES projects (id) ON DELETE CASCADE
	);

-- таблица привязки юзеров с командами
DROP TABLE IF EXISTS users_teams;
CREATE TABLE users_teams (
	user_id int(10),
	team_id int(10),
		FOREIGN KEY (team_id)  REFERENCES teams (id) ON DELETE cascade,
		FOREIGN KEY (user_id)  REFERENCES users (id) ON DELETE CASCADE
	);

-- таблица статусов контракта (принят, непринят, завершен, расторгнут)
DROP TABLE IF EXISTS contract_statuses;
CREATE TABLE contract_statuses (
	id INT  UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(10) NOT NULL UNIQUE
);

-- таблица контрактов между заказчиком и наемниками со статусом контракта
DROP TABLE IF EXISTS contracts;
CREATE TABLE contracts (
	owner_id INT  NOT NULL,
	employee_id INT  NOT NULL,
	status_id INT UNSIGNED NOT NULL,
	team_id INT UNSIGNED,
	requested_at  DATETIME DEFAULT NOW(),
	confirmed_at  DATETIME,
	CONSTRAINT contracts_owner_fk
		FOREIGN KEY (owner_id)  REFERENCES users (id) ON DELETE RESTRICT,
	CONSTRAINT contracts_users_fk
		FOREIGN KEY (employee_id)  REFERENCES users (id) ON DELETE RESTRICT,
	CONSTRAINT contracts_contract_statuses_fk
		FOREIGN KEY (status_id)  REFERENCES contract_statuses (id) ON DELETE RESTRICT ON UPDATE CASCADE
	);

-- тут просто переписка
DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  from_user_id int(10)  NOT NULL,
  to_user_id int(10)  NOT NULL,
  body text COLLATE utf8_unicode_ci NOT NULL,
  is_important tinyint(1) DEFAULT NULL,
  is_delivered tinyint(1) DEFAULT NULL,
  created_at datetime DEFAULT current_timestamp(),
  PRIMARY KEY (id),
  CONSTRAINT messages_from_users_fk
		FOREIGN KEY (from_user_id)  REFERENCES users (id) ON DELETE CASCADE,
	CONSTRAINT messages_to_users_fk
		FOREIGN KEY (to_user_id)  REFERENCES users (id) ON DELETE CASCADE
);

-- таблица статусов пользователя (заказчик, ПМ, наемник....)
DROP TABLE IF EXISTS users_statuses;
CREATE TABLE users_statuses (
	user_id int(10),
	owner_statuses_id int(10),
		FOREIGN KEY (owner_statuses_id)  REFERENCES owner_statuses (id) ON DELETE cascade,
		FOREIGN KEY (user_id)  REFERENCES users (id) ON DELETE CASCADE
	);

