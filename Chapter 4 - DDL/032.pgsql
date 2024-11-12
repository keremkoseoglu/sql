CREATE TABLE
    employee_bonus_payment (
        employee_id INT,
        bonus_year INT,
        installment INT,
        payment_amount NUMERIC(12, 2),
        currency VARCHAR(3),
        is_paid BOOLEAN,
        payment_date DATE,
        PRIMARY KEY (employee_id, bonus_year, installment),
        FOREIGN KEY (employee_id) REFERENCES employee (id),
        FOREIGN KEY (employee_id, bonus_year) REFERENCES employee_bonus (employee_id, bonus_year)
    );