CREATE TABLE
    employee (
        id INT PRIMARY KEY,
        NAME VARCHAR(50) NOT NULL,
        phone VARCHAR(20) UNIQUE,
        address VARCHAR(100)
    );