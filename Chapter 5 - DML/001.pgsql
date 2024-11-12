CREATE TABLE
    artist (
        id VARCHAR(10) PRIMARY KEY,
        NAME VARCHAR(50) NOT NULL,
        bio VARCHAR(200)
    );

CREATE TABLE
    theater (
        id VARCHAR(10) PRIMARY KEY,
        NAME VARCHAR(50) NOT NULL,
        capacity INT NOT NULL
    );

CREATE TABLE
    member (
        id SERIAL PRIMARY KEY,
        NAME VARCHAR(50) NOT NULL,
        birthday DATE,
        phone VARCHAR(15),
        email VARCHAR(50) NOT NULL
    );