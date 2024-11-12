SELECT
    pr.category_id,
    oi.product_id,
    SUM(oi.quantity) AS quan_sum,
    ROW_NUMBER() OVER (
        PARTITION BY
            category_id
        ORDER BY
            SUM(oi.quantity) DESC
    ) AS row_no
FROM
    order_item AS oi
    INNER JOIN product AS pr ON pr.id = oi.product_id
GROUP BY
    oi.product_id,
    pr.category_id
ORDER BY
    category_id,
    quan_sum DESC;