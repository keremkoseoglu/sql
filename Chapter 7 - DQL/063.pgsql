SELECT
    order_item.order_id,
    order_item.order_item_no,
    order_item.product_id,
    order_item.quantity,
    product.name,
    product.category_id
FROM
    order_item
    INNER JOIN product ON product.id = order_item.product_id
LIMIT
    2;