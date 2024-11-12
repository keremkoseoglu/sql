SELECT
    id,
    NAME,
    category_id,
    price
FROM
    product
WHERE
    category_id = 'ACC'
ORDER BY
    price ASC;