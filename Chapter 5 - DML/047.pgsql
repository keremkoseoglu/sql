CREATE TRIGGER ticket_return_category_c BEFORE
UPDATE ON ticket_sale_item FOR EACH ROW
EXECUTE FUNCTION check_category_c_return ();