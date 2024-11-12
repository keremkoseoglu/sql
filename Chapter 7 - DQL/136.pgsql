SELECT
    id,
    order_ts,
    order_ts + INTERVAL '10 minutes' AS order_ts_plus_10
FROM
    customer_order;