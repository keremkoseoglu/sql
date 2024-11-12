SELECT
    customer_order.id AS order_id,
    expensive_item.product_id,
    expensive_item.amount
FROM
    customer_order
    INNER JOIN LATERAL (
        SELECT
            product_id,
            amount
        FROM
            order_item
        WHERE
            order_id = customer_order.id
        ORDER BY
            amount DESC
        LIMIT
            1
    ) AS expensive_item ON TRUE;