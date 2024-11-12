SELECT
    id,
    NAME,
    price
FROM
    product
WHERE
    NOT (price BETWEEN 35 AND 55);