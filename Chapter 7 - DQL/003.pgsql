CREATE TABLE
    customer (
        id SERIAL PRIMARY KEY,
        NAME VARCHAR(50) NOT NULL,
        email VARCHAR(50) NOT NULL,
        phone VARCHAR(50),
        mobile VARCHAR(50),
        address VARCHAR(200) NOT NULL,
        is_active BOOLEAN NOT NULL,
        referrer_id INT REFERENCES customer (id)
    );