use rbac;

INSERT INTO users VALUES 
('jsmith@gmail.com', 'James', 'Smith', '314-974-5183'),
('jdoe@gmail.com', 'Joe', 'Doe', NULL),
('jbrack@gmail.com', 'Jack', 'Brack', '314-974-5474'),
('fpenny@gmail.com', 'Fenny', 'Penny', '314-974-4573'),
('bdawson@gmail.com', 'Ben', 'Dawson', NULL)
;

INSERT INTO courses VALUES 
(1, 'ISYS', 100, '01'),
(2, 'BUS', 250, '03')
;

INSERT INTO resourceClasses VALUES 
(1, 'Quiz'),
(2, 'Exam'),
(3, 'Discussion')
;

INSERT INTO resources VALUES 
(1, 'Exam 1', 2, 1),
(2, 'Discussion 1', 3, 1),
(3, 'Quiz 1', 1, 1),
(4, 'Quiz 1', 1, 2)
;

INSERT INTO operations VALUES 
('r', 'Read'),
('c', 'Create'),
('e', 'Edit'),
('dl', 'Delete'),
('l', 'Login'),
('g', 'Grant'),
('d', 'Deny'),
('a', 'Approve'),
('ed', 'Enable'),
('dis', 'Disable')
;

INSERT INTO permissions VALUES 
(1, 'r', 1), #1
(2, 'c', 1),
(3, 'e', 1),
(4, 'dl', 1),
(5, 'l', 1),
(6, 'g', 1),
(7, 'd', 1),
(8, 'a', 1),
(9, 'ed', 1),
(10, 'dis', 1),
(11, 'r', 2), #2
(12, 'c', 2),
(13, 'e', 2),
(14, 'dl', 2),
(15, 'l', 2),
(16, 'g', 2),
(17, 'd', 2),
(18, 'a', 2),
(19, 'ed', 2),
(20, 'dis', 2),
(21, 'r', 3), #3
(22, 'c', 3),
(23, 'e', 3),
(24, 'dl', 3),
(25, 'l', 3),
(26, 'g', 3),
(27, 'd', 3),
(28, 'a', 3),
(29, 'ed', 3),
(30, 'dis', 3)
;

INSERT INTO roles VALUES 
(1, 'Student'),
(2, 'Teacher'),
(3, 'Administrator')
;

INSERT INTO rolePermissions VALUES 
(1, 1, 'Student'),
(2, 3, 'Teacher'),
(3, 3, 'Administrator')
;

INSERT INTO courseUsers VALUES 
(1, 'jsmith@gmail.com', 1),
(2, 'jdoe@gmail.com', 2),
(3, 'jbrack@gmail.com', 1),
(4, 'fpenny@gmail.com', 1),
(5, 'bdawson@gmail.com', 1)
;
