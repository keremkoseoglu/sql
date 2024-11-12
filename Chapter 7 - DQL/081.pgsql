SELECT
    c1.id,
    c1.name,
    c1.referrer_id,
    c2.name AS referrer_name
FROM
    customer AS c1
    INNER JOIN customer AS c2 ON c2.id = c1.referrer_id;