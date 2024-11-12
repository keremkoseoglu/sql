SELECT
    category_id,
    COUNT(*) AS product_count
FROM
    product
GROUP BY
    category_id;