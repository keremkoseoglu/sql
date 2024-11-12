CREATE
OR REPLACE FUNCTION insert_event_and_theater () RETURNS TRIGGER AS $$
BEGIN
    IF NOT EXISTS ( SELECT id FROM theater WHERE id = NEW.theater_id ) THEN
        INSERT INTO theater(id, name, capacity)
        VALUES (NEW.theater_id, NEW.theater_name, NEW.theater_capacity);
    END IF;

    INSERT INTO event(name, gig_ts, theater_id, artist_id, is_cancelled)
    VALUES (NEW.event_name, NEW.gig_ts, NEW.theater_id, 
            NEW.artist_id, NEW.is_cancelled);

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;