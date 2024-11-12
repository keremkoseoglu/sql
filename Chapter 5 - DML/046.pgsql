CREATE
OR REPLACE FUNCTION check_category_c_return () RETURNS TRIGGER AS $$
BEGIN
    IF NEW.category = 'C' AND NEW.is_returned = TRUE THEN
        RAISE EXCEPTION 'Cannot return a ticket with category C';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;