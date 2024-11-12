SELECT
    invoice_id,
    invoice_item_no,
    amount,
    vat_rate,
    amount * (vat_rate / 100) AS vat_amt
FROM
    invoice_item;