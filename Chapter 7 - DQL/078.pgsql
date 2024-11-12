SELECT
    c.id,
    c.customer_id AS c_customer,
    c.order_id AS c_order_id,
    c.subject,
    o.id AS o_order_id,
    o.customer_id AS o_customer,
    date (o.order_ts) AS o_date
FROM
    complaint AS c
    FULL OUTER JOIN customer_order AS o ON o.id = c.order_id;