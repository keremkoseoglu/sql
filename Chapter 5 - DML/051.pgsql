CREATE TRIGGER event_cancel_ticket_return
AFTER
UPDATE ON EVENT FOR EACH ROW
EXECUTE FUNCTION return_cancelled_tickets ();