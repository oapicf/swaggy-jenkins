--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'Organisation' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'organisation'
--
SELECT _class, "name" FROM organisation WHERE 1=1;

--
-- INSERT template for table 'organisation'
--
INSERT INTO organisation (_class, "name") VALUES (?, ?);

--
-- UPDATE template for table 'organisation'
--
UPDATE organisation SET _class = ?, "name" = ? WHERE 1=2;

--
-- DELETE template for table 'organisation'
--
DELETE FROM organisation WHERE 1=2;

