CREATE
OR REPLACE PROCEDURE add_theater (
    theater_id VARCHAR(10),
    theater_name VARCHAR(50),
    theater_capacity INTEGER
) LANGUAGE plpgsql AS $$
BEGIN

    INSERT INTO theater(id, name, capacity)
    VALUES (theater_id, theater_name, theater_capacity);

END; $$