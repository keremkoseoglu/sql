SELECT
    id,
    NAME,
    COALESCE(address, '') || ' (' || COALESCE(phone, '') || ')' AS full_address
FROM
    customer;