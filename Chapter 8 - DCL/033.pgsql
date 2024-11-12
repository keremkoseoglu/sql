SELECT
    r.rolname AS role_name,
    u.rolname AS member_name
FROM
    pg_roles r
    INNER JOIN pg_auth_members am ON r.oid = am.roleid
    INNER JOIN pg_roles u ON u.oid = am.member
WHERE
    r.rolname = 'sales_role'
    OR r.rolname = 'finance_role'
    OR r.rolname = 'manager_role';