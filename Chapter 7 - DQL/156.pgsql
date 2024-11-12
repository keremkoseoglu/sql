SELECT
    id,
    NAME,
    stock,
    LEAD(stock, 1) OVER (
        ORDER BY
            stock
    ) AS next_stock,
    LEAD(stock, 2) OVER (
        ORDER BY
            stock
    ) AS next_stock_2
FROM
    product
ORDER BY
    stock;