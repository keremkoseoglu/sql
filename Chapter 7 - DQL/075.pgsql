FROM
    order_item AS o
    LEFT OUTER JOIN delivery_item AS d ON d.order_id = o.order_id
    AND d.order_item_no = o.order_item_no