CREATE DATABASE IF NOT EXISTS join_test_db;

USE join_test_db;

CREATE TABLE roles (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE users (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
role_id INT UNSIGNED DEFAULT NULL,
PRIMARY KEY (id),
FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

# Insert 4 new users into the database. One should have a NULL role. The other three should be authors.

INSERT INTO users (name, email, role_id) VALUES
('Destiney', 'destiney@xmail.com', null ),
('Lex', 'Lex@xmail.com', 2),
('Tk', 'TK@xmail.com', 2),
('Jay', 'Jay@xmail.com', 2);

# JOIN
SELECT users.name AS user_name, roles.name AS role_name
FROM users
         JOIN roles ON users.role_id = roles.id;

# LEFT-JOIN
SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

# RIGHT-JOIN

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

# Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role. Hint: You will also need to use GROUP BY in the query.
