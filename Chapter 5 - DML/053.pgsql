CREATE VIEW
    event_theater AS
SELECT
    EVENT.id AS event_id,
    EVENT.name AS event_name,
    EVENT.gig_ts,
    EVENT.theater_id,
    EVENT.artist_id,
    EVENT.is_cancelled,
    theater.name AS theater_name,
    theater.capacity AS theater_capacity
FROM
    EVENT
    INNER JOIN theater ON theater.id = EVENT.theater_id;