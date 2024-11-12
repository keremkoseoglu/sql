SELECT
    o.order_id,
    o.order_item_no,
    o.product_id,
    d.delivery_id,
    d.delivery_item_no,
    d.dlv_quantity
FROM
    order_item AS o
    LEFT OUTER JOIN delivery_item AS d ON d.order_id = o.order_id
    AND d.order_item_no = o.order_item_no
ORDER BY
    o.order_id,
    o.order_item_no,
    d.delivery_id,
    d.delivery_item_no;