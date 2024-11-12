UPDATE event_ticket
SET
    price = 120,
    capacity = 25
WHERE
    event_id <> 3
    AND category = 'A';