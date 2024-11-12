ALTER TABLE employee
ALTER COLUMN child_count
TYPE INT USING child_count::INT;