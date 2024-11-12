SELECT
    id AS order_id,
    req_dlv_date - order_ts AS req_dlv_span,
    CURRENT_DATE - req_dlv_date AS req_dlv_delay
FROM
    customer_order
WHERE
    req_dlv_date IS NOT NULL;