BEGIN;

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

SELECT
    *
FROM
    bank_customer;

SELECT
    *
FROM
    bank_customer;

SELECT
    *
FROM
    bank_customer;

END;