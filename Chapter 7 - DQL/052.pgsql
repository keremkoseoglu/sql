SELECT
    category_id,
    SUM(stock) AS total_stock
FROM
    product
GROUP BY
    category_id;