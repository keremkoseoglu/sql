SELECT
    MIN(price)
FROM
    event_ticket
WHERE
    category = 'C'
    AND currency = 'USD'