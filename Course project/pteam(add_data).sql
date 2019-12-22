
USE prteam;

INSERT INTO skills (`id`, `name`, `describes`) VALUES (1, 'PYTHON', 'Cnowledge of Phyton language');
INSERT INTO skills (`id`, `name`, `describes`) VALUES (2, 'PHP', 'Cnowledge of PHP language');
INSERT INTO skills (`id`, `name`, `describes`) VALUES (3, 'JAVA', 'Cnowledge of Java language');
INSERT INTO skills (`id`, `name`, `describes`) VALUES (4, 'MYSQL', 'Cnowledge of MYSQL');

INSERT INTO owner_statuses (`id`, `name`, `describes`) VALUES (1, 'Owner', 'Owner of project, employer');
INSERT INTO owner_statuses (`id`, `name`, `describes`) VALUES (2, 'PM', 'Project manager, person, who create team, tasks and accept completed tasks');
INSERT INTO owner_statuses (`id`, `name`, `describes`) VALUES (3, 'Employee', 'Employee, who can to do some tasks');

INSERT INTO contract_statuses (`id`, `name`) VALUES (1, 'OFFERED');
INSERT INTO contract_statuses (`id`, `name`) VALUES (2, 'ACCEPTED');
INSERT INTO contract_statuses (`id`, `name`) VALUES (3, 'NOT ACCEPTED');
INSERT INTO contract_statuses (`id`, `name`) VALUES (4, 'RESCIND');
INSERT INTO contract_statuses (`id`, `name`) VALUES (5, 'CLOSED');