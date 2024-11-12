SELECT
    id,
    NAME,
    stock,
    next_stock,
    (next_stock - stock) AS stock_delta
FROM
    (
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
            stock
    );