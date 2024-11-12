SELECT
    AVG(req_dlv_date - order_ts) AS avg_span,
    AVG(CURRENT_DATE - req_dlv_date) AS avg_delay
FROM
    customer_order
WHERE
    req_dlv_date IS NOT NULL;