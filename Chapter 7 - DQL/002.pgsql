CREATE TABLE
    product (
        id VARCHAR(20) PRIMARY KEY,
        NAME VARCHAR(50) NOT NULL,
        category_id VARCHAR(10) NOT NULL REFERENCES product_cat (id),
        gender CHAR(1) NOT NULL,
        price NUMERIC(15, 2) NOT NULL,
        stock INT NOT NULL
    );