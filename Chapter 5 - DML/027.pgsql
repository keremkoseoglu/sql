UPDATE event_ticket
SET
    capacity = CASE
        WHEN category = 'A'
        AND currency = 'EUR' THEN 50
        WHEN category = 'B' THEN 42
        ELSE capacity
    END
WHERE
    event_id <> 1;