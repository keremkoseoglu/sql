SELECT
    id,
    NAME,
    price,
    stock
FROM
    product
WHERE
    NOT (
        price > 50
        AND stock <= 40
    );