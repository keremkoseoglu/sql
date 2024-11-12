SELECT
    id,
    NAME,
    price,
    price ^ 2 AS price_squared
FROM
    product
WHERE
    category_id = 'ACC';