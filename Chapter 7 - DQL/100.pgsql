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
    );