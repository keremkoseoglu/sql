SELECT
    id,
    NAME
FROM
    customer
WHERE
    RIGHT(UPPER(NAME), 1) = 'N';