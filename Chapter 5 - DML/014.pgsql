INSERT INTO
    event_ticket (event_id, category, price, capacity)
SELECT
    id,
    'A',
    100,
    30
FROM
    EVENT;