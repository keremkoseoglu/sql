CREATE TRIGGER event_theater_insert INSTEAD OF INSERT ON event_theater FOR EACH ROW
EXECUTE FUNCTION insert_event_and_theater ();