SELECT
    id,
    NAME,
    price,
    stock
FROM
    product
WHERE
    price > 50
    AND stock <= 40;