SELECT
    grantee,
    table_schema,
    table_name,
    privilege_type,
    is_grantable
FROM
    information_schema.role_table_grants
WHERE
    grantee = 'liam_harper';