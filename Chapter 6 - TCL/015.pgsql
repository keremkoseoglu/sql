BEGIN;

SELECT
    *
FROM
    bank_day_sum
WHERE
    DAY = CURRENT_DATE
    AND currency = 'EUR' FOR
UPDATE;

DELETE FROM bank_day_sum
WHERE
    DAY = CURRENT_DATE
    AND currency = 'EUR';

COMMIT;