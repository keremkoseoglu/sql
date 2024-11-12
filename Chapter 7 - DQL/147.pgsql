SELECT
    id,
    category_id,
    NAME,
    price,
    RANK() OVER (
        PARTITION BY
            category_id
        ORDER BY
            price DESC
    ) AS cat_price_rank
FROM
    product
ORDER BY
    category_id,
    price DESC;