SELECT
    id,
    NAME
FROM
    (
        SELECT
            id,
            NAME,
            price,
            NTILE(2) OVER (
                ORDER BY
                    price DESC
            ) AS price_cat
        FROM
            product
    )
WHERE
    price_cat = 1;