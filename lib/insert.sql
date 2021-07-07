-- Insert 10 projects
INSERT INTO projects (title, category, funding_goal, start_date, end_date)
VALUES
('Project Title A', 'Project Category 1', 1000, '2020-02-01', '2020-12-01'),
('Project Title B', 'Project Category 2', 1000, '2020-02-01', '2020-12-01'),
('Project Title C', 'Project Category 3', 1000, '2020-02-01', '2020-12-01'),
('Project Title D', 'Project Category 1', 1000, '2020-02-02', '2020-12-02'),
('Project Title E', 'Project Category 2', 1000, '2020-02-02', '2020-12-02'),
('Project Title F', 'Project Category 3', 1000, '2020-02-02', '2020-12-02'),
('Project Title G', 'Project Category 1', 1000, '2020-02-03', '2020-12-03'),
('Project Title H', 'Project Category 2', 1000, '2020-02-03', '2020-12-03'),
('Project Title I', 'Project Category 3', 1000, '2020-02-03', '2020-12-03'),
('Project Title J', 'Project Category 1', 1000, '2020-02-04', '2020-12-04');


-- Insert 20 users
INSERT INTO users (name, age) 
VALUES
('User 1', 20),
('User 2', 21),
('User 3', 22),
('User 4', 23),
('User 5', 24),
('User 6', 25),
('User 7', 26),
('User 8', 27),
('User 9', 28),
('User 10', 29),
('User 11', 30),
('User 12', 31),
('User 13', 32),
('User 14', 33),
('User 15', 34),
('User 16', 35),
('User 17', 36),
('User 18', 37),
('User 19', 38),
('User 20', 39);


-- Insert 30 pledges into the database
INSERT INTO pledges (amount, user_id, project_id)
VALUES
(100, 1, 1),
(100, 2, 2),
(100, 3, 3),
(100, 4, 4),
(100, 5, 5),
(100, 6, 6),
(100, 7, 7),
(100, 8, 8),
(100, 9, 9),
(100, 10, 10),
(100, 12, 1),
(100, 13, 2),
(100, 14, 3),
(100, 15, 4),
(100, 16, 5),
(100, 17, 6),
(100, 18, 7),
(100, 19, 8),
(100, 20, 9),
(100, 1, 10),
(100, 2, 1),
(100, 3, 2),
(100, 4, 3),
(100, 5, 4),
(100, 6, 5),
(100, 7, 6),
(100, 8, 7),
(100, 9, 8),
(100, 10, 9),
(100, 11, 10);
