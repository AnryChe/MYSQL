show databases;
use vk;
show tables;
select * from communites limit 20;
select * from communites WHERE  char_length(name) <3;
UPDATE communites SET name = concat(name, 'ag') WHERE char_length(name) <3; -- в таблице не очень корректно смотрелись короткие названия групп, принято решение добавить к каждой немецкое сокращение (понимаю, возможно не имеет смысла, но для практики конкат, селект, где - вполне.
select * from communites_users limit 20;
select * from friendship limit 20;
select * from friendship where user_id = friend_id; -- ищем в таблице, нет ли конфликтов дружбы (типа дружу сам с собой) 
update friendship set friend_id = friend_id + 1 where user_id = friend_id; -- убираем конфликт, добавив 1 к номеру.
select * from friendship where user_id = friend_id; -- проверка здесь подобных ошибок не выявила
select * from media limit 20; -- метадата явно не в формате джейсон
CREATE TEMPORARY TABLE autor (autor CHAR(255));
INSERT INTO autor VALUES ('ABBA'), ('Bony M'), ('Scorpions'), ('Sandra'), ('Kombinatcia'), ('Adriano Chelentano'), ('Toto Kutunio');
select * from autor;
UPDATE media SET metadata = CONCAT('{"', filename, ' - ', (SELECT autor FROM autor ORDER BY RAND() LIMIT 1), '":"', size, '"}');  -- теперь можно не только слушать, но и сортировать по метаданным.
UPDATE media SET size = FLOOR(1 + (RAND() * 10000)) WHERE size = 0; -- исправляем размер, чтобы был не равен нулю.
select * from messages limit 20;
select * from profiles limit 20;
CREATE TEMPORARY TABLE sex (sex CHAR(1));
INSERT INTO sex VALUES ('m'), ('f');
UPDATE profiles SET sex = (SELECT sex FROM sex ORDER BY RAND() LIMIT 1);
select * from users limit 20;

select * from users;
ALTER TABLE users ADD COLUMN is_banned BOOLEAN AFTER phone_number;
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT  TRUE AFTER is_banned;

UPDATE users SET is_banned = TRUE WHERE id IN (12, 56, 66, 83);
UPDATE users SET is_active = FALSE WHERE id IN (8, 32, 77, 98);
ALTER TABLE communities ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP AFTER name; -- упс, а у меня то с ошибкой название таблицы, communites.
rename table communites to communities; -- исправляемся
ALTER TABLE communities ADD COLUMN is_closed BOOLEAN AFTER created_at;
ALTER TABLE communities ADD COLUMN closed_at TIMESTAMP AFTER is_closed;

UPDATE communities SET is_closed = TRUE WHERE id IN (3, 14, 27, 56);
UPDATE communities SET closed_at = NOW() WHERE is_closed IS TRUE;

ALTER TABLE messages ADD COLUMN header VARCHAR(255) AFTER to_user_id;
UPDATE messages SET header = SUBSTRING(body, 1, 50);
ALTER TABLE messages ADD column attached_media_id INT UNSIGNED AFTER body;
-- Заполним
UPDATE messages SET attached_media_id = (
  SELECT id FROM media WHERE user_id = from_user_id LIMIT 1
);

-- 5. Возможно я бы еще создал таблицу, показывающую степень родства между пользователями.
-- По полям:user_id и степень родства

CREATE TABLE relations (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  relative_id INT UNSIGNED NOT NULL,
  relation_status_id INT UNSIGNED NOT NULL
);

CREATE TABLE relation_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100)
);

INSERT INTO relation_statuses (name) VALUES 
  ('son'),
  ('daughter'),
  ('mother'),
  ('father'),
  ('wife'),
  ('husband')
;

INSERT INTO relations 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 6)) 
  FROM users;

