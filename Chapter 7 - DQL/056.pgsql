SELECT
    category_id,
    MIN(price) AS minimum_price
FROM
    product
GROUP BY
    category_id;