




-- очень хочется триггер, чтобы при принятии контракта пользователем обязательно добавлялась информация в таблицу команды. 

DROP TRIGGER IF EXISTS upd_users_team;
DELIMITER $$

    CREATE TRIGGER upd_users_team AFTER UPDATE ON contracts
    FOR EACH ROW BEGIN
      IF NEW.status_id = 2 THEN
            INSERT INTO users_teams (user_id, team_id) VALUES (NEW.employee_id, NEW.team_id);
      END IF;
    END$$

DELIMITER ;

DROP TRIGGER IF EXISTS ins_users_team;
DELIMITER $$

    CREATE TRIGGER ins_users_team AFTER INSERT ON contracts
    FOR EACH ROW BEGIN
      IF NEW.status_id = 2 THEN
            INSERT INTO users_teams (user_id, team_id) VALUES (NEW.employee_id, NEW.team_id);
      END IF;
    END$$

DELIMITER ;

-- Проверяем, работает.
INSERT INTO `contracts` (`owner_id`, `employee_id`, `status_id`, `team_id`, `requested_at`, `confirmed_at`) VALUES (7, 22, 2, 6, '2020-01-01 12:25:07', '2020-01-01 13:41:48');

SHOW TRIGGERS;