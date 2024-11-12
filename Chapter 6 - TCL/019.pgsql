BEGIN;

LOCK TABLE bank_customer IN SHARE MODE;

LOCK TABLE customer_acc IN SHARE MODE;

SELECT
    (
        COUNT(*) / (
            SELECT
                COUNT(*)
            FROM
                bank_customer
        )
    ) AS avg_account_per_customer
FROM
    customer_acc;

COMMIT;