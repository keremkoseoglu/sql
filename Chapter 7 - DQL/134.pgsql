SELECT
    o.order_id,
    o.order_item_no,
    o.price AS order_price,
    p.price AS current_product_price,
    o.price - p.price AS price_diff,
    SIGN(o.price - p.price) AS price_diff_sign
FROM
    order_item AS o
    INNER JOIN product AS p ON p.id = o.product_id
WHERE
    o.price <> p.price;