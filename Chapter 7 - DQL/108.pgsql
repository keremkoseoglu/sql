SELECT
    id,
    NAME
FROM
    customer
WHERE
    LEFT(NAME, 3) = 'Ali';