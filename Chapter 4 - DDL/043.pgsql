CREATE TABLE
    employee (
        id INT PRIMARY KEY,
        NAME VARCHAR(50) NOT NULL,
        country_code VARCHAR(3),
        phone VARCHAR(20),
        address VARCHAR(100) DEFAULT 'Not known as of ' || TO_CHAR(CURRENT_DATE, 'YYYY-MM-DD')
    );