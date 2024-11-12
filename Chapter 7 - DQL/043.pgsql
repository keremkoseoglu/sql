SELECT
    id,
    NAME,
    category_id,
    stock
FROM
    product
WHERE
    category_id = 'BOT'
ORDER BY
    stock ASC
LIMIT
    2;