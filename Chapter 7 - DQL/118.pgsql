SELECT
    id,
    NAME
FROM
    customer
WHERE
    NAME ~* 'a.*s|s.*a';