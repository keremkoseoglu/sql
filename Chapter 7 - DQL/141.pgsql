SELECT
    id,
    invoice_ts
FROM
    invoice
WHERE
    EXTRACT(
        dow
        FROM
            invoice_ts
    ) = 1;