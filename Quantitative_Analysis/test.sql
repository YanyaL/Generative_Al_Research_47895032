CREATE TRIGGER trg_after_insert
AFTER INSERT ON your_table_name
FOR EACH ROW
BEGIN
    INSERT INTO audit_table (action, table_name, action_time)
    VALUES ('INSERT', 'your_table_name', NOW());
END;