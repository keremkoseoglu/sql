UPDATE event_ticket
SET
    price = CASE
        WHEN category = 'A' THEN price + 20
        WHEN category = 'B' THEN price + 10
        WHEN category = 'C' THEN price + 5
    END
WHERE
    currency = 'USD';