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
            customer_order
        WHERE
            customer_id = customer.id
    )
EXCEPT
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
            complaint
        WHERE
            customer_id = customer.id
    )