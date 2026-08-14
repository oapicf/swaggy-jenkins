--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'EmptyChangeLogSet' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'empty_change_log_set'
--
SELECT _class, kind FROM empty_change_log_set WHERE 1=1;

--
-- INSERT template for table 'empty_change_log_set'
--
INSERT INTO empty_change_log_set (_class, kind) VALUES (?, ?);

--
-- UPDATE template for table 'empty_change_log_set'
--
UPDATE empty_change_log_set SET _class = ?, kind = ? WHERE 1=2;

--
-- DELETE template for table 'empty_change_log_set'
--
DELETE FROM empty_change_log_set WHERE 1=2;

