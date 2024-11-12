SELECT
    id,
    NAME,
    category_id,
    price,
    FIRST_VALUE(price) OVER (
        PARTITION BY
            category_id
        ORDER BY
            price DESC
    ) AS max_price
FROM
    product
ORDER BY
    category_id,
    id;