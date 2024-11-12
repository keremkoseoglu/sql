SELECT
    id,
    NAME,
    price,
    ABS(max_price - price) AS max_delta,
    ABS(min_price - price) AS min_delta
FROM
    (
        SELECT
            id,
            NAME,
            price,
            FIRST_VALUE(price) OVER (
                ORDER BY
                    price DESC
            ) AS max_price,
            FIRST_VALUE(price) OVER (
                ORDER BY
                    price ASC
            ) AS min_price
        FROM
            product
    );