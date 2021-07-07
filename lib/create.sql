CREATE TABLE projects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT, 
    category TEXT, 
    funding_goal REAL, 
    start_date TEXT, 
    end_date TEXT
);


CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER
);


CREATE TABLE pledges (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    amount REAL,
    user_id INTEGER,
    project_id INTEGER,
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(project_id) REFERENCES project(id)
);
