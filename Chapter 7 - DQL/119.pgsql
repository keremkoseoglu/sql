SELECT
    id,
    NAME,
    REGEXP_MATCHES(NAME, 'a.*s|s.*a')
FROM
    customer;