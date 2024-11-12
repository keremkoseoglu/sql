SELECT
    id,
    NAME,
    category_id
FROM
    product
WHERE
    NOT (NAME LIKE '%ir%');