UPDATE event_ticket
SET
    price = 1000 / capacity
WHERE
    event_id = 5;