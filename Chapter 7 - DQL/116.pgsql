SELECT
    id,
    NAME,
    SUBSTRING(NAME, 7, 3) AS mid_7_3
FROM
    customer;