RANK() OVER (
    ORDER BY
        price DESC
) AS price_rank