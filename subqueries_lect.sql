use employees;

SELECT first_name, last_name, birth_date
FROM employees
limit 10;

SELECT * FROM dept_manager;

SELECT * FROM dept_manager WHERE to_date > NOW();

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager WHERE to_date > NOW()
);

# gives all column info
SELECT *
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager WHERE to_date > NOW()
);

USE quasar_db;

SELECT * from roles;
SELECT * FROM users;

INSERT into users(name, email, role_id)
VALUES('Destiney', 'dessy@gmail.com', (SELECT id FROM roles WHERE name = 'commenter'))

