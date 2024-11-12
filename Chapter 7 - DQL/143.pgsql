SELECT
    id,
    delivery_ts,
    delivery_ts AT TIME ZONE 'America/New_York' AS ny_to_local
FROM
    delivery
WHERE
    id = 301;