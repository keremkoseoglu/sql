CALL reset_and_populate_bank_data ();

BEGIN;

-- Customer 1
INSERT INTO
    bank_customer (NAME, phone)
VALUES
    ('Sarah Livingston', '+1-555-897-2341');

SAVEPOINT first_customer;

-- Customer 2
INSERT INTO
    bank_customer (NAME, phone)
VALUES
    ('Michael Thompson', '+1-555-762-1943');

SAVEPOINT second_customer;

-- Customer 3
INSERT INTO
    bank_customer (NAME, phone)
VALUES
    ('Emma Reynolds', '+1-555-348-7265');

SAVEPOINT third_customer;

-- Finish
COMMIT;