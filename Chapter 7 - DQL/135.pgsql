SELECT
    id,
    req_dlv_date,
    req_dlv_date + INTERVAL '3 days' AS dlv_date_deadline
FROM
    customer_order
WHERE
    req_dlv_date IS NOT NULL;