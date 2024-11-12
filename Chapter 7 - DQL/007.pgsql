CREATE TABLE
    complaint (
        id serial NOT NULL PRIMARY KEY,
        customer_id INTEGER NOT NULL REFERENCES customer (id),
        order_id INTEGER REFERENCES customer_order (id),
        complaint_ts TIMESTAMP NOT NULL,
        subject CHARACTER VARYING(50),
        description CHARACTER VARYING(200),
        is_resolved BOOLEAN NOT NULL
    );