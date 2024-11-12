BEGIN;

LOCK TABLE customer_acc IN SHARE MODE;

-- Further SQL statements
COMMIT;