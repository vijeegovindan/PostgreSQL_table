--Write the CREATE TABLE statement to make this table. --
CREATE TABLE todos(
id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
details TEXT NULL,
priority INTEGER NOT NULL DEFAULT 1,
created_at TIMESTAMP NOT NULL,
completed_at TIMESTAMP NULL
);

--Write INSERT statements to insert five todos into this table, with one of them completed. --
INSERT INTO todos(title, details, priority, created_at, completed_at) VALUES('Check emails', 'Check daily emails and reply them on time', 2, '06/27/2017 02:00:00','06/27/2017 02:30:00');
INSERT INTO todos(title, details, priority, created_at) VALUES('Publish post', 'Publish the post written and stored in the technical repository', 3, '06/27/2017 02:02:00');
INSERT INTO todos(title, details, priority, created_at) VALUES('Send newsletters', 'Send daily newsletters to the clients', 5, '06/27/2017 02:05:00');
INSERT INTO todos(title, details, priority, created_at) VALUES('Attend the conference', 'Conference scheduled for Friday and it is supposed to be postponed. Track it down', 6, '06/27/2017 02:10:00');
INSERT INTO todos(title, details,  created_at) VALUES('Talk to Issac', 'Topic to be discussed: how to teach and to handle students', '06/27/2017 02:10:00');

--Write a SELECT statement to find all incomplete todos. --
SELECT * FROM todos WHERE completed_at IS NULL;

--Write a SELECT statement to find all todos with a priority above 1. --
SELECT * FROM todos WHERE priority > 1;

--Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up. --
UPDATE todos SET completed_at = '06/27/2017 03:00:00' WHERE id = (SELECT MIN(id) FROM todos);

--Write a DELETE statement to delete all completed todos. --
DELETE FROM todos WHERE completed_at IS NOT NULL;
