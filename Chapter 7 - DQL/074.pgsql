SELECT
    p.name AS prod_name,
    SUM(d.dlv_quantity) AS dlv_sum
FROM
    order_item AS o
    INNER JOIN product AS p ON p.id = o.product_id
    LEFT OUTER JOIN delivery_item AS d ON d.order_id = o.order_id
    AND d.order_item_no = o.order_item_no
WHERE
    p.name LIKE '%a%e%'
GROUP BY
    p.name
ORDER BY
    p.name;