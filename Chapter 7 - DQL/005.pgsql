CREATE TABLE
    delivery (
        id SERIAL PRIMARY KEY,
        delivery_ts TIMESTAMP NOT NULL,
        is_shipped BOOLEAN NOT NULL,
        track_url VARCHAR(200),
        customer_id INT NOT NULL REFERENCES customer (id)
    );

CREATE TABLE
    delivery_item (
        delivery_id INT NOT NULL REFERENCES delivery (id),
        delivery_item_no INT NOT NULL,
        order_id INT NOT NULL,
        order_item_no INT NOT NULL,
        dlv_quantity INT NOT NULL,
        PRIMARY KEY (delivery_id, delivery_item_no),
        CONSTRAINT fk_order_item FOREIGN KEY (order_id, order_item_no) REFERENCES order_item (order_id, order_item_no)
    );