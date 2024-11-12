BEGIN;

SELECT
    *
FROM
    bank_customer
WHERE
    id = 1 FOR
UPDATE;

UPDATE bank_customer
SET
    phone = '+1-555-849-6237'
WHERE
    id = 1;

COMMIT;