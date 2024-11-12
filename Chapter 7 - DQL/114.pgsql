SELECT
    id,
    LENGTH(custom_note) AS gross_note_len,
    LENGTH(TRIM(custom_note)) AS net_note_len
FROM
    customer_order;