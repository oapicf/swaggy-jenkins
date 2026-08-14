--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'AllView' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'all_view'
--
SELECT _class, "name", url FROM all_view WHERE 1=1;

--
-- INSERT template for table 'all_view'
--
INSERT INTO all_view (_class, "name", url) VALUES (?, ?, ?);

--
-- UPDATE template for table 'all_view'
--
UPDATE all_view SET _class = ?, "name" = ?, url = ? WHERE 1=2;

--
-- DELETE template for table 'all_view'
--
DELETE FROM all_view WHERE 1=2;

