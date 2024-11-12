SELECT
    grantee,
    table_schema,
    table_name,
    privilege_type
FROM
    information_schema.role_table_grants
WHERE
    grantee = 'sales_role'
    OR grantee = 'finance_role';