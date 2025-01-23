-- Створення бази даних --
CREATE DATABASE my_database;

-- Створення таблиці даних --
CREATE TABLE IF NOT EXISTS users (
                       id SERIAL PRIMARY KEY,
                       name VARCHAR(255) NOT NULL,
                       age INT NOT NULL,
                       email VARCHAR(255) NOT NULL
);

-- Вставка даних у таблицю --
INSERT INTO users (name, age, email)
VALUES
    ('John', 30, 'john@example.com'),
    ('Alice', 25, 'alice@example.com'),
    ('Bob', 35, 'bob@example.com');

-- Перевірка, виведення таблиці--
SELECT id, name, age, email FROM users
ORDER BY name;

-- Видалення користувача з вказаним ім'ям, виведення таблиці --
DELETE FROM users WHERE name = 'Bob';
SELECT * FROM users
ORDER BY age;

-- Перевірка видалення, виведення інформації з фільтром по імені користувача --
SELECT id, name, age, email FROM users WHERE name = 'Bob';
