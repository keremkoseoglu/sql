SELECT
    o.product_id,
    SUM(d.dlv_quantity) AS delivered_quantity
FROM
    order_item AS o
    INNER JOIN delivery_item AS d ON d.order_id = o.order_id
    AND d.order_item_no = o.order_item_no
GROUP BY
    o.order_id,
    o.order_item_no
ORDER BY
    o.product_id;