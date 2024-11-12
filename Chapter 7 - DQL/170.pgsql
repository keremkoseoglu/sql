SELECT
    co.id AS order_id,
    CASE
        WHEN EXISTS (
            SELECT
                id
            FROM
                delivery_item
            WHERE
                order_id = co.id
        ) THEN 'Has delivery'
        ELSE 'No delivery'
    END AS dlv_state
FROM
    customer_order AS co;