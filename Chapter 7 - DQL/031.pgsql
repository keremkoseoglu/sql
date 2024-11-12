SELECT
    id,
    NAME,
    category_id
FROM
    product
WHERE
    category_id = 'TOP'
    OR category_id = 'BOT';