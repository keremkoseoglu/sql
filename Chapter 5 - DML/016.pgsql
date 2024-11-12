INSERT INTO
    event_ticket (event_id, category, price, capacity)
SELECT
    id,
    'B',
    80,
    50
FROM
    EVENT;

INSERT INTO
    event_ticket (event_id, category, price, capacity)
SELECT
    id,
    'C',
    60,
    100
FROM
    EVENT;