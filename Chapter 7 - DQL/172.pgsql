SELECT
    id,
    NAME,
    COALESCE(mobile, phone) AS valid_phone
FROM
    customer;