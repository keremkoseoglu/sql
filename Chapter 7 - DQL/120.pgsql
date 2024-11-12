SELECT
    id,
    NAME,
    REGEXP_REPLACE(NAME, 'a.*s|s.*a', '#')
FROM
    customer
WHERE
    id = 75;