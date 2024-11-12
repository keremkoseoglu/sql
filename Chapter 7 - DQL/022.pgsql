SELECT
    id,
    NAME,
    stock
FROM
    product
WHERE
    category_id = 'TOP'
    AND gender = 'M'
    AND stock <= 50;