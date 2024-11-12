UPDATE ticket_sale_item
SET
    is_returned = TRUE
WHERE
    sale_id = 1
    AND item_no = 1;