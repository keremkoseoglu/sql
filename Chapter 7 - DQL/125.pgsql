SELECT
    o.order_id,
    o.order_item_no,
    o.price AS order_price,
    p.price AS current_product_price
FROM
    order_item AS o
    INNER JOIN product AS p ON p.id = o.product_id
WHERE
    o.price <> p.price;