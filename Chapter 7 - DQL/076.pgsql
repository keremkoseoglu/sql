FROM
    delivery_item AS d
    RIGHT OUTER JOIN order_item AS o ON d.order_id = o.order_id
    AND d.order_item_no = o.order_item_no