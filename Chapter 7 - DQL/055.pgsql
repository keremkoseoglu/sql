SELECT
    category_id,
    SUM(stock) AS total_stock,
    AVG(stock) AS average_stock
FROM
    product
GROUP BY
    category_id;