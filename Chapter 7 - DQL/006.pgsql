CREATE TABLE
    invoice (
        id SERIAL PRIMARY KEY,
        invoice_ts TIMESTAMP NOT NULL,
        is_sent BOOLEAN NOT NULL,
        customer_id INT NOT NULL REFERENCES customer (id)
    );

CREATE TABLE
    invoice_item (
        invoice_id INT NOT NULL REFERENCES invoice (id),
        invoice_item_no INT NOT NULL,
        delivery_id INT NOT NULL,
        delivery_item_no INT NOT NULL,
        amount NUMERIC(15, 2) NOT NULL,
        vat_rate NUMERIC(5, 2) NOT NULL,
        vat_amount NUMERIC(5, 2) NOT NULL,
        total_amount NUMERIC(5, 2) NOT NULL,
        PRIMARY KEY (invoice_id, invoice_item_no),
        CONSTRAINT fk_delivery_item FOREIGN KEY (delivery_id, delivery_item_no) REFERENCES delivery_item (delivery_id, delivery_item_no)
    );