SELECT
    c.id,
    c.name
FROM
    customer AS c
WHERE
    id IN (
        SELECT
            customer_id
        FROM
            complaint
        WHERE
            is_resolved = FALSE
    );