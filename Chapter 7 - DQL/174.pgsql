WITH
    order_count AS (
        SELECT
            customer_id,
            COUNT(*) AS total_orders
        FROM
            customer_order
        GROUP BY
            customer_id
    )
SELECT
    c.name AS customer_name,
    c.email AS customer_email,
    o.total_orders
FROM
    customer AS c
    INNER JOIN order_count AS o ON o.customer_id = c.id;