DELETE FROM ticket_sale_item CASCADE;

DELETE FROM ticket_sale_head CASCADE;

ALTER SEQUENCE ticket_sale_head_id_seq RESTART
WITH
    1;

INSERT INTO
    ticket_sale_head (member_id, sale_ts)
SELECT
    id,
    CURRENT_TIMESTAMP AS sales_ts
FROM
    member
ORDER BY
    NAME
LIMIT
    3;

WITH
    ranked_events AS (
        SELECT
            id AS event_id,
            ROW_NUMBER() OVER (
                ORDER BY
                    id
            ) AS rn
        FROM
            EVENT
    ),
    expanded_sales AS (
        SELECT
            id AS sale_id,
            ROW_NUMBER() OVER (
                ORDER BY
                    id
            ) * 2 - 1 AS rn1,
            ROW_NUMBER() OVER (
                ORDER BY
                    id
            ) * 2 AS rn2
        FROM
            ticket_sale_head
    )
INSERT INTO
    ticket_sale_item (sale_id, item_no, event_id, category, quantity)
SELECT
    es.sale_id,
    1,
    re1.event_id,
    'B',
    1
FROM
    expanded_sales es
    JOIN ranked_events re1 ON es.rn1 = re1.rn
UNION ALL
SELECT
    es.sale_id,
    2,
    re2.event_id,
    'C',
    3
FROM
    expanded_sales es
    JOIN ranked_events re2 ON es.rn2 = re2.rn;