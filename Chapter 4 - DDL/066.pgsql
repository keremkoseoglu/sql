ALTER TABLE employee_bonus
ADD CONSTRAINT employee_bonus_chk1 CHECK (
    currency = 'USD'
    OR currency = 'EUR'
);