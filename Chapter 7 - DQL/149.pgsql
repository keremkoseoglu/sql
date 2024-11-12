SELECT
    hd.customer_id,
    SUM(it.amount) AS sum_amt,
    DENSE_RANK() OVER (
        ORDER BY
            SUM(it.amount) DESC
    ) AS amt_rank
FROM
    customer_order AS hd
    INNER JOIN order_item AS it ON it.order_id = hd.id
GROUP BY
    hd.customer_id
ORDER BY
    sum_amt DESC;