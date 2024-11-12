CREATE TRIGGER { trigger_name }
[ BEFORE | AFTER | INSTEAD OF ] [ INSERT | UPDATE | DELETE ] 
ON { table_name }
FOR EACH ROW
EXECUTE FUNCTION { function_name } ();
