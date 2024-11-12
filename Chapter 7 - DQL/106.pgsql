SELECT
    id,
    LEFT(custom_note, 5) AS first_5,
    RIGHT(custom_note, 5) AS last_5
FROM
    customer_order;