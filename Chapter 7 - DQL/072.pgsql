SELECT
    o.order_id,
    o.order_item_no,
    p.name AS prod_name,
    d.delivery_id,
    d.delivery_item_no,
    d.dlv_quantity
FROM
    order_item AS o
    INNER JOIN product AS p ON p.id = o.product_id
    LEFT OUTER JOIN delivery_item AS d ON d.order_id = o.order_id
    AND d.order_item_no = o.order_item_no
WHERE
    p.name LIKE '%a%e%'
ORDER BY
    o.order_id,
    o.order_item_no,
    d.delivery_id,
    d.delivery_item_no;