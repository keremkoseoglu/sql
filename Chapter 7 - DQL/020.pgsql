SELECT
    id,
    category_id,
    NAME,
    stock
FROM
    product
WHERE
    category_id = 'TOP'
    AND stock >= 50;