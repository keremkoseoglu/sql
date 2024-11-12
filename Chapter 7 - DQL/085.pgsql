SELECT
    c.id,
    c.name
FROM
    customer AS c
WHERE
    EXISTS (
        SELECT
            customer_id
        FROM
            complaint
        WHERE
            customer_id = c.id
            AND is_resolved = FALSE
    );