SELECT
    grantee,
    table_schema,
    table_name,
    privilege_type
FROM
    information_schema.role_table_grants
WHERE
    grantee = 'john_doe'
    OR grantee = 'sales_role';