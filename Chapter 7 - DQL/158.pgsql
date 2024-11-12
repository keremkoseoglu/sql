SELECT
    id,
    NAME,
    stock,
    LAG(stock, 1) OVER (
        ORDER BY
            stock
    ) AS prev_stock,
    LAG(stock, 2) OVER (
        ORDER BY
            stock
    ) AS prev_stock_2
FROM
    product
ORDER BY
    stock;