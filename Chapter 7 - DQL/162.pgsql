SELECT
    id,
    NAME,
    price,
    FIRST_VALUE(price) OVER (
        ORDER BY
            price DESC
    ) AS max_price,
    FIRST_VALUE(price) OVER (
        ORDER BY
            price ASC
    ) AS min_price
FROM
    product;