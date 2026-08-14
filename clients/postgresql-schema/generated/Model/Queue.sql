--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'Queue' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'queue'
--
SELECT _class, items FROM queue WHERE 1=1;

--
-- INSERT template for table 'queue'
--
INSERT INTO queue (_class, items) VALUES (?, ?);

--
-- UPDATE template for table 'queue'
--
UPDATE queue SET _class = ?, items = ? WHERE 1=2;

--
-- DELETE template for table 'queue'
--
DELETE FROM queue WHERE 1=2;

