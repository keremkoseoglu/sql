BEGIN;

LOCK TABLE credit_card IN EXCLUSIVE MODE;

ALTER TABLE credit_card
ADD COLUMN is_active BOOLEAN;

COMMIT;