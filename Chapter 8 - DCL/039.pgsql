SELECT
    rolname
FROM
    pg_roles
WHERE
    rolname LIKE '%_role'
ORDER BY
    rolname;