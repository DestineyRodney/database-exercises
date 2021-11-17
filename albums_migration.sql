USE codeup_test_db;
DROP TABLE IF EXISTS albulms;

CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name VARCHAR(75) NOT NULL,
    release_date INT,
    sales FLOAT,
    genre VARCHAR(50),
    PRIMARY KEY (id)
);


