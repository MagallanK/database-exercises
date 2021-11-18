USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name VARCHAR(30) DEFAULT 'NONE',
    release_date DATE,
    sales DOUBLE,
    genre VARCHAR(20),
    PRIMARY KEY(id)
);