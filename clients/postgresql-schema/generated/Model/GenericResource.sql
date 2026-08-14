--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'GenericResource' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'generic_resource'
--
SELECT _class, display_name, duration_in_millis, "id", "result", start_time FROM generic_resource WHERE 1=1;

--
-- INSERT template for table 'generic_resource'
--
INSERT INTO generic_resource (_class, display_name, duration_in_millis, "id", "result", start_time) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'generic_resource'
--
UPDATE generic_resource SET _class = ?, display_name = ?, duration_in_millis = ?, "id" = ?, "result" = ?, start_time = ? WHERE 1=2;

--
-- DELETE template for table 'generic_resource'
--
DELETE FROM generic_resource WHERE 1=2;

