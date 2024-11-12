CREATE TABLE
    employee (
        id INT PRIMARY KEY,
        NAME VARCHAR(50) NOT NULL,
        country_code VARCHAR(3),
        phone VARCHAR(20),
        address VARCHAR(100),
        CHECK (phone <> address),
        CHECK (LENGTH(address) >= 10)
    );