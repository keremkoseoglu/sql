SELECT
    category_id,
    gender,
    MAX(price) AS maximum_price
FROM
    product
GROUP BY
    category_id,
    gender
ORDER BY
    category_id,
    gender;