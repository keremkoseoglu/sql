SELECT
    id,
    LOWER(NAME) AS low_name,
    UPPER(NAME) AS up_name
FROM
    customer;