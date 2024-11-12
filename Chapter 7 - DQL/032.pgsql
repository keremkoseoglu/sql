SELECT
    id,
    NAME,
    category_id
FROM
    product
WHERE
    NOT (category_id IN ('TOP', 'BOT'));