SELECT
    id,
    category_id,
    NAME,
    price,
    RANK() OVER (
        ORDER BY
            price DESC
    ) AS price_rank
FROM
    product
ORDER BY
    price DESC;