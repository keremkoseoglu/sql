CREATE
OR REPLACE FUNCTION return_cancelled_tickets () RETURNS TRIGGER AS $$
BEGIN
    IF NEW.is_cancelled = TRUE THEN
        UPDATE ticket_sale_item 
        SET is_returned = TRUE
        WHERE event_id = NEW.event_id 
          AND category <> 'C'; 
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;