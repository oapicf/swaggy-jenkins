--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'ListView' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'list_view'
--
SELECT _class, description, jobs, "name", url FROM list_view WHERE 1=1;

--
-- INSERT template for table 'list_view'
--
INSERT INTO list_view (_class, description, jobs, "name", url) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table 'list_view'
--
UPDATE list_view SET _class = ?, description = ?, jobs = ?, "name" = ?, url = ? WHERE 1=2;

--
-- DELETE template for table 'list_view'
--
DELETE FROM list_view WHERE 1=2;

