SELECT
    category_id,
    SUM(stock) AS total_stock
FROM
    product
WHERE
    category_id <> 'ACC'
GROUP BY
    category_id;