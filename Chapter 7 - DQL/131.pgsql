SELECT
    p.category_id,
    ROUND(AVG(o.price)) AS avg_price,
    ROUND(AVG(i.vat_amount)) AS avg_vat
FROM
    invoice_item AS i
    INNER JOIN delivery_item AS d ON d.delivery_id = i.delivery_id
    AND d.delivery_item_no = i.delivery_item_no
    INNER JOIN order_item AS o ON o.order_id = d.order_id
    AND o.order_item_no = d.order_item_no
    INNER JOIN product AS p ON p.id = o.product_id
GROUP BY
    p.category_id;