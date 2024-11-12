BEGIN;

LOCK TABLE customer_acc IN EXCLUSIVE MODE;

-- Further SQL statements
COMMIT;