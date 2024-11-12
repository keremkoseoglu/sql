CREATE TABLE
    bank_customer (
        id SERIAL PRIMARY KEY,
        NAME VARCHAR(50) NOT NULL,
        phone VARCHAR(20) NOT NULL,
        email VARCHAR(50)
    );

CREATE TABLE
    customer_acc (
        id SERIAL PRIMARY KEY,
        customer_id INT NOT NULL,
        is_active BOOLEAN NOT NULL,
        under_review BOOLEAN NOT NULL,
        balance NUMERIC(15, 2) NOT NULL,
        currency VARCHAR(3) NOT NULL,
        FOREIGN KEY (customer_id) REFERENCES bank_customer (id)
    );

CREATE TABLE
    credit_card (
        card_number VARCHAR(16) PRIMARY KEY,
        customer_id INT NOT NULL,
        card_network VARCHAR(10) NOT NULL,
        expiration_day DATE NOT NULL,
        cvv VARCHAR(3) NOT NULL,
        card_limit NUMERIC(15, 2) NOT NULL,
        usable_limit NUMERIC(15, 2) NOT NULL,
        currency VARCHAR(3) NOT NULL,
        FOREIGN KEY (customer_id) REFERENCES bank_customer (id)
    );

CREATE TABLE
    TRANSACTION (
        id SERIAL PRIMARY KEY,
        transaction_type VARCHAR(3) NOT NULL,
        from_acc INT,
        to_acc INT,
        from_credit_card VARCHAR(16),
        to_credit_card VARCHAR(16),
        amount NUMERIC(15, 2) NOT NULL,
        currency VARCHAR(3) NOT NULL,
        trans_ts TIMESTAMP NOT NULL,
        FOREIGN KEY (from_acc) REFERENCES customer_acc (id),
        FOREIGN KEY (to_acc) REFERENCES customer_acc (id),
        FOREIGN KEY (from_credit_card) REFERENCES credit_card (card_number),
        FOREIGN KEY (to_credit_card) REFERENCES credit_card (card_number)
    );

CREATE TABLE
    bank_day_sum (
        DAY DATE NOT NULL,
        currency VARCHAR(3) NOT NULL,
        account_balance NUMERIC(15, 2) NOT NULL,
        usable_card_limit NUMERIC(15, 2) NOT NULL,
        total_transaction NUMERIC(15, 2) NOT NULL,
        PRIMARY KEY (DAY, currency)
    );