SELECT
    invoice_id,
    invoice_item_no,
    amount
FROM
    invoice_item
WHERE
    amount * (vat_rate / 100) > 20;