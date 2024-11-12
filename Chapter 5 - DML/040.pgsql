CREATE
OR REPLACE PROCEDURE add_theater (
    theater_id VARCHAR(10),
    theater_name VARCHAR(50),
    theater_capacity INTEGER
) LANGUAGE plpgsql AS $$
BEGIN

    IF length( theater_name ) < 5 THEN
        RAISE EXCEPTION 'Theater name too short';
    END IF;

    INSERT INTO theater(id, name, capacity)
    VALUES (theater_id, theater_name, theater_capacity);

EXCEPTION
    WHEN unique_violation
    THEN RAISE NOTICE 'Theater already exists';

END; $$