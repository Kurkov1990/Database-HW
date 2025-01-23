CREATE DATABASE my_database;

CREATE TABLE IF NOT EXISTS users (
                       id SERIAL PRIMARY KEY,
                       name VARCHAR(255) NOT NULL,
                       age INT NOT NULL,
                       email VARCHAR(255) NOT NULL
);

INSERT INTO users (name, age, email)
VALUES
    ('John', 30, 'john@example.com'),
    ('Alice', 25, 'alice@example.com'),
    ('Bob', 35, 'bob@example.com');

SELECT id, name, age, email FROM users
ORDER BY name;

DELETE FROM users WHERE name = 'Bob';

SELECT * FROM users
ORDER BY age;

SELECT id, name, age, email FROM users WHERE name = 'Bob';
