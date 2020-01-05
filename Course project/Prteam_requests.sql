-- запрос на выборку  2-х проектов с максимальным количеством задач
use prteam;

SELECT PRJCT_ID, count(*) AS total_tasks FROM PROJECTS_TASKS  
	GROUP by PRJCT_ID
	ORDER BY total_tasks desc
	LIMIT 2;

-- запрос поиска наемника по требованиям к задаче (например №8)
-- сначала попутно приводим к логическому виду даты
UPDATE users_skills	SET FINISH_DATA = FROM_UNIXTIME(UNIX_TIMESTAMP(START_DATA) + (17280000 * FLOOR(RAND()*(24-2)+2))) 
	where user_id IN (SELECT * FROM (SELECT user_id FROM users_skills WHERE (UNIX_TIMESTAMP(FINISH_DATA) - UNIX_TIMESTAMP(START_DATA))<202801) AS user_id); 
UPDATE users_skills	SET start_data = FROM_UNIXTIME(UNIX_TIMESTAMP('1992-01-01') + (86400*30*FLOOR(RAND()*(330-2)+2)))
	where user_id IN (SELECT * FROM (SELECT user_id FROM users_skills WHERE start_data < '1997-01-01') AS user_id); 


-- а теперь сам запрос на выборку пользователей с опытом, требуемым для решения задачи №8. На вывод - данные пользователя, задача, требуемые скилы и опыт каждого юзера.
SELECT users.first_name, users.last_name, users.phone, tasks.name AS task, skills.name as skill, TRUNCATE((UNIX_TIMESTAMP(FINISH_DATA) - UNIX_TIMESTAMP(START_DATA))/31556926, 1) as exp_years from TASKS_REQUESTS
					LEFT JOIN users_skills ON (users_skills.skill_id  = tasks_requests.skill_id)
					LEFT JOIN skills ON (users_skills.skill_id = skills.id)
					LEFT JOIN users ON (users_skills.user_id = users.id)
					LEFT JOIN tasks ON (tasks.id = tasks_requests.tsk_id) 
					WHERE TSK_ID = 8
					HAVING exp_years > 10
					ORDER BY skill, exp_years desc;                         -- С НОВЫМ ГОДОМ!


-- запрос поиска проектов если количество привлеченных исполнителей больше 4
SELECT * from (
	SELECT projects.id, projects.name, count(*) as TOTAL FROM PROJECTS 
		JOIN TEAMS ON (teams.prjct_id = projects.id)
		JOIN USERS_TEAMS ON (users_teams.team_id = teams.id)
		GROUP BY projects.id
		ORDER BY total desc) 
	as teams where total >= 5;






