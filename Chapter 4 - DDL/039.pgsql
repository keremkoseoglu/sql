CREATE TABLE
    employee_bonus (
        employee_id INT,
        bonus_year INT,
        bonus_amount NUMERIC(12, 2),
        currency VARCHAR(3),
        PRIMARY KEY (employee_id, bonus_year),
        FOREIGN KEY (employee_id) REFERENCES employee (id) CHECK (
            currency = 'USD'
            OR currency = 'EUR'
        )
    );