CREATE TABLE
    customer_order (
        id SERIAL PRIMARY KEY,
        customer_id INT NOT NULL REFERENCES customer (id),
        order_ts TIMESTAMP NOT NULL,
        is_gift BOOLEAN NOT NULL,
        custom_note VARCHAR(100),
        req_dlv_date DATE
    );

CREATE TABLE
    order_item (
        order_id INT NOT NULL REFERENCES customer_order (id),
        order_item_no INT NOT NULL,
        product_id VARCHAR(20) NOT NULL REFERENCES product (id),
        quantity INT NOT NULL,
        price NUMERIC(15, 2) NOT NULL,
        amount NUMERIC(15, 2) NOT NULL,
        PRIMARY KEY (order_id, order_item_no)
    );