WITH
    g AS (
        SELECT DISTINCT
            gender
        FROM
            product
    ),
    cg AS (
        SELECT
            customer_order.id,
            g.gender
        FROM
            customer_order
            CROSS JOIN g
    )
SELECT
    cg.id,
    cg.gender,
    SUM(oi.amount) AS amount_sum
FROM
    cg
    INNER JOIN product AS p ON p.gender = cg.gender
    LEFT OUTER JOIN order_item AS oi ON oi.order_id = cg.id
    AND oi.product_id = p.id
GROUP BY
    cg.id,
    cg.gender;