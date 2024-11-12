UPDATE event_ticket
SET
    price = (
        SELECT
            MIN(price)
        FROM
            event_ticket
        WHERE
            category = 'C'
            AND currency = 'USD'
    )
WHERE
    event_id = 4
    AND category = 'C';