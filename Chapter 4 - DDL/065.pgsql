ALTER TABLE employee_bonus
ADD CONSTRAINT employee_bonus_fkey1 FOREIGN KEY (employee_id) REFERENCES employee (id);