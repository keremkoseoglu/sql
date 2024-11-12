SELECT
    invoice_id,
    invoice_item_no,
    vat_rate,
    CAST(vat_rate AS VARCHAR(2)) || ' %' AS vat_rate_txt
FROM
    invoice_item;