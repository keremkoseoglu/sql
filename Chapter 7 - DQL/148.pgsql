SELECT
    id,
    category_id,
    NAME,
    price,
    RANK() OVER (
        ORDER BY
            price DESC
    ) AS price_rank,
    DENSE_RANK() OVER (
        ORDER BY
            price DESC
    ) AS price_drank
FROM
    product
ORDER BY
    price DESC;