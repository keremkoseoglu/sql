SELECT
    id,
    NAME
FROM
    customer
WHERE
    NAME ~ '^(?=.*o)(?=.*n).+$';