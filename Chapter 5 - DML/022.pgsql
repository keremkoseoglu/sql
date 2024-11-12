UPDATE event_ticket
SET
    price = price * 1.1
WHERE
    category = 'B'
    OR category = 'C';