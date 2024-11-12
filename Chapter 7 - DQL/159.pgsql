SELECT
    id,
    NAME,
    price,
    NTILE(3) OVER (
        ORDER BY
            price DESC
    ) AS price_cat
FROM
    product
ORDER BY
    price DESC;