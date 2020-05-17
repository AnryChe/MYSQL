-- Работаем с БД vk и тестовыми данными, которые вы сгенерировали ранее:
-- 1.	Проанализировать запросы, которые выполнялись на занятии, определить возможные корректировки и/или улучшения (JOIN пока не применять).
-- 2.	Пусть задан некоторый пользователь. If id = 87 Из списка Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.

use vk;
Select name, count(*) as total from users where user_id = 
((SELECT friend_id FROM messages WHERE user_id = 87)
UNION
(SELECT user_id FROM messages WHERE friend_id = 87))
order by total
limit1;

-- 3.	Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
Select name, count(*) as total from users where user_id = 
((SELECT friend_id FROM messages WHERE user_id = 87)
UNION
(SELECT user_id FROM messages WHERE friend_id = 87))
order by age
limit1;

-- 4.	Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT CONCAT ("Male ", count(*)) AS likes_c FROM likes WHERE user_id IN 
	(SELECT user_id FROM profiles WHERE sex = 'm')
	UNION
SELECT CONCAT ("Female ", count(*)) as likes_c FROM likes WHERE user_id IN 
	(SELECT user_id FROM profiles WHERE sex = 'f')
ORDER by likes_c DESC
limit 1;

-- 5.	Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети. 
-- Не восвем понимаю, что значит наименьшую активность. давно не заходили, или написали меньше всего постов, лайков и пр.?
-- Ищу кто меньше всего написал постов, сообщений, картинок.


SELECT messages.from_user_id, posts.user_id, likes.user_id from messages, posts, likes;

