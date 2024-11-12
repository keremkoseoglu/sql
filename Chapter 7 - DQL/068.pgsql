SELECT
    order_item.product_id,
    SUM(delivery_item.dlv_quantity) AS delivered_quantity
FROM
    order_item
    INNER JOIN delivery_item ON delivery_item.order_id = order_item.order_id
    AND delivery_item.order_item_no = order_item.order_item_no
GROUP BY
    order_item.order_id,
    order_item.order_item_no
ORDER BY
    order_item.product_id;