SELECT
    id,
    NAME,
    category_id,
    gender,
    stock
FROM
    product
WHERE
    category_id = 'ACC'
    OR (
        NOT (
            gender = 'U'
            AND stock > 20
        )
    );