SELECT
    id,
    LEFT(custom_note, 5) || '...' || RIGHT(custom_note, 5) AS short_note
FROM
    customer_order;