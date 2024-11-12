SELECT
    category_id,
    MAX(price) AS maximum_price
FROM
    product
GROUP BY
    category_id;