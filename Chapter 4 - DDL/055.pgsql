ALTER TABLE employee
DROP COLUMN child_count;

ALTER TABLE employee
RENAME COLUMN new_child_count TO child_count;