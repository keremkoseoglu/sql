SELECT
    *
FROM
    crosstab (
        $$
    SELECT
        cg.id,
        cg.gender,
        COALESCE(SUM(oi.amount), 0) AS amount_sum
    FROM
        (
            SELECT
                customer_order.id,
                g.gender
            FROM
                customer_order
                CROSS JOIN (
                    SELECT DISTINCT
                        gender
                    FROM
                        product
                ) AS g
        ) AS cg
        INNER JOIN product AS p ON p.gender = cg.gender
        LEFT OUTER JOIN order_item AS oi ON oi.order_id = cg.id
        AND oi.product_id = p.id
    GROUP BY
        cg.id,
        cg.gender
    ORDER BY
        cg.id,
        cg.gender
$$
    ) AS ct (
        id INTEGER,
        f_sum NUMERIC(15, 2),
        m_sum NUMERIC(15, 2),
        u_sum NUMERIC(15, 2)
    );