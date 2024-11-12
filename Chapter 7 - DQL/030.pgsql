SELECT
    id,
    NAME,
    category_id
FROM
    product
WHERE
    category_id IN ('TOP', 'BOT');