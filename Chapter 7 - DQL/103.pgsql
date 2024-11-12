SELECT
    id,
    NAME,
    address || ' (' || phone || ')' AS full_address
FROM
    customer;