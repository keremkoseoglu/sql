SELECT
    customer.id,
    customer.name
FROM
    customer
WHERE
    EXISTS (
        SELECT
            id
        FROM
            delivery
        WHERE
            customer_id = customer.id
            AND is_shipped = TRUE
    )
INTERSECT
SELECT
    customer.id,
    customer.name
FROM
    customer
WHERE
    EXISTS (
        SELECT
            id
        FROM
            invoice
        WHERE
            customer_id = customer.id
            AND is_sent = TRUE
    )