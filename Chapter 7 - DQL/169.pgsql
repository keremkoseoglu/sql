SELECT
    id,
    name,
    price,
    CASE
        WHEN price < 35 THEN 'Low'
        WHEN price BETWEEN 35 AND 75  THEN 'Mid'
        ELSE 'High'
    END AS price_cat
FROM
    product;
