-- �������� � �� vk � ��������� �������, ������� �� ������������� �����:
-- 1.	���������������� �������, ������� ����������� �� �������, ���������� ��������� ������������� �/��� ��������� (JOIN ���� �� ���������).
-- 2.	����� ����� ��������� ������������. If id = 87 �� ������ �� ���� ������ ����� ������������ ������� ��������, ������� ������ ���� ������� � ����� �������������.

use vk;
Select name, count(*) as total from users where user_id = 
((SELECT friend_id FROM messages WHERE user_id = 87)
UNION
(SELECT user_id FROM messages WHERE friend_id = 87))
order by total
limit1;

-- 3.	���������� ����� ���������� ������, ������� �������� 10 ����� ������� �������������.
Select name, count(*) as total from users where user_id = 
((SELECT friend_id FROM messages WHERE user_id = 87)
UNION
(SELECT user_id FROM messages WHERE friend_id = 87))
order by age
limit1;

-- 4.	���������� ��� ������ �������� ������ (�����) - ������� ��� �������?
SELECT CONCAT ("Male ", count(*)) AS likes_c FROM likes WHERE user_id IN 
	(SELECT user_id FROM profiles WHERE sex = 'm')
	UNION
SELECT CONCAT ("Female ", count(*)) as likes_c FROM likes WHERE user_id IN 
	(SELECT user_id FROM profiles WHERE sex = 'f')
ORDER by likes_c DESC
limit 1;

-- 5.	����� 10 �������������, ������� ��������� ���������� ���������� � ������������� ���������� ����. 
-- �� ������ �������, ��� ������ ���������� ����������. ����� �� ��������, ��� �������� ������ ����� ������, ������ � ��.?
-- ��� ��� ������ ����� ������� ������, ���������, ��������.


SELECT messages.from_user_id, posts.user_id, likes.user_id from messages, posts, likes;

