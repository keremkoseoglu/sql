SELECT
    customer_order.id AS order_id,
    below_avg_item.product_id,
    below_avg_item.amount
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
            AND amount < (
                SELECT
                    AVG(amount)
                FROM
                    order_item AS oi2
            )
        ORDER BY
            amount DESC
    ) AS below_avg_item ON TRUE;