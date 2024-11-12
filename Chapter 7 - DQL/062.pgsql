SELECT
    category_id,
    COUNT(*) AS product_count
FROM
    product
WHERE
    (
        gender = 'F'
        OR gender = 'U'
    )
GROUP BY
    category_id
HAVING
    COUNT(*) > 1;