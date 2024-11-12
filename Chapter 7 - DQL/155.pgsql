SELECT
    id,
    NAME,
    stock,
    LEAD(stock, 1) OVER (
        ORDER BY
            stock
    ) AS next_stock
FROM
    product
ORDER BY
    stock;