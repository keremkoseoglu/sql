BEGIN;

SELECT
    *
FROM
    credit_card
WHERE
    customer_id = 1 FOR
UPDATE;

UPDATE credit_card
SET
    usable_limit = usable_limit * 1.25
WHERE
    customer_id = 1;

COMMIT;