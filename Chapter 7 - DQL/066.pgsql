SELECT
    order_item.order_id,
    order_item.order_item_no,
    order_item.product_id,
    delivery_item.delivery_id,
    delivery_item.delivery_item_no,
    delivery_item.dlv_quantity
FROM
    order_item
    INNER JOIN delivery_item ON delivery_item.order_id = order_item.order_id
    AND delivery_item.order_item_no = order_item.order_item_no
ORDER BY
    order_item.order_id,
    order_item.order_item_no,
    delivery_item.delivery_id,
    delivery_item.delivery_item_no;