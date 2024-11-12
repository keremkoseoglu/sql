SELECT
    routine_schema,
    routine_name,
    grantee,
    privilege_type
FROM
    information_schema.routine_privileges
WHERE
    routine_name = 'make_bad_money_transfer';