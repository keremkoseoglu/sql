SELECT
    id,
    custom_note,
    TRIM(custom_note) AS trimmed_note
FROM
    customer_order;