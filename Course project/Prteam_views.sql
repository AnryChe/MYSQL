USE prteam;

-- для разминки упорядочим пользователей по порядку
DROP VIEW IF EXISTS own_stat;
CREATE VIEW own_stat AS SELECT * FROM users_statuses ORDER BY user_id, owner_statuses_id;
SELECT * FROM own_stat;

-- Представление, показывающее задачи проектов в порядке их старта
DROP VIEW IF EXISTS ordered_tasks;
CREATE VIEW ordered_tasks AS SELECT projects.name AS Project, tasks.name AS Task, projects_tasks.start_data FROM projects
	LEFT JOIN projects_tasks ON (projects.id = projects_tasks.prjct_id)
	LEFT JOIN tasks ON (projects_tasks.tsk_id = tasks.id)
	ORDER BY start_data;\
	
SELECT * FROM ordered_tasks;

-- Представление для пользователей, выборка заданий для всех пользователей с указанием дедлайна.
DROP VIEW IF EXISTS user_tasks;
CREATE VIEW user_tasks AS SELECT users.first_name AS Name,  users.last_name AS LName, tasks.name AS Task, projects_tasks.deadline
	FROM projects_tasks
	LEFT JOIN users ON (users.id = projects_tasks.user_id)
	LEFT JOIN tasks ON (projects_tasks.tsk_id = tasks.id)
	ORDER BY LName, start_data;

SELECT * FROM user_tasks;
