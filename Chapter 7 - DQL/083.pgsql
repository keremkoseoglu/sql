SELECT
    c.name AS customer_name,
    recent_orders.order_ts
FROM
    customer AS c
    LEFT OUTER JOIN (
        SELECT
            customer_id,
            CAST(order_ts AS date)
        FROM
            customer_order
        WHERE
            order_ts >= NOW() - INTERVAL '1 month'
    ) AS recent_orders ON c.id = recent_orders.customer_id;