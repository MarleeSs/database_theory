use sql_dasar;
use laravel_theory;
SELECT DISTINCT title, description from recipes;
SELECT * FROM users;

-- Multi-row function
SELECT count(id) FROM users;

-- Single-row function
SELECT name, length(email) as email_length
FROM users;