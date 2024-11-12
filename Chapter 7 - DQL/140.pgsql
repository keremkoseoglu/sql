SELECT
    id,
    invoice_ts,
    EXTRACT(
        DAY
        FROM
            invoice_ts
    ) AS dy,
    EXTRACT(
        MONTH
        FROM
            invoice_ts
    ) AS mo,
    EXTRACT(
        YEAR
        FROM
            invoice_ts
    ) AS yr,
    EXTRACT(
        HOUR
        FROM
            invoice_ts
    ) AS hr,
    EXTRACT(
        MINUTE
        FROM
            invoice_ts
    ) AS mn,
    EXTRACT(
        SECOND
        FROM
            invoice_ts
    ) AS sc,
    EXTRACT(
        DOW
        FROM
            invoice_ts
    ) AS dw
FROM
    invoice
WHERE
    id = 501;