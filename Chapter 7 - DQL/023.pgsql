SELECT
    id,
    NAME,
    category_id,
    stock
FROM
    product
WHERE
    (
        category_id = 'TOP'
        AND stock > 50
    )
    OR (
        category_id = 'ACC'
        AND stock > 70
    );