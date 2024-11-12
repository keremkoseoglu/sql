CREATE OR REPLACE VIEW
    employees_with_many_children AS
SELECT
    id,
    NAME,
    child_count
FROM
    employee
WHERE
    child_count >= 4;