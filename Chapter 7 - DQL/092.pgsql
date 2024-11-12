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
            AND is_shipped = FALSE
    );