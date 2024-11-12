SELECT
    category_id,
    AVG(stock) AS average_stock
FROM
    product
GROUP BY
    category_id;