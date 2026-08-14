--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'ClockDifference' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'clock_difference'
--
SELECT _class, diff FROM clock_difference WHERE 1=1;

--
-- INSERT template for table 'clock_difference'
--
INSERT INTO clock_difference (_class, diff) VALUES (?, ?);

--
-- UPDATE template for table 'clock_difference'
--
UPDATE clock_difference SET _class = ?, diff = ? WHERE 1=2;

--
-- DELETE template for table 'clock_difference'
--
DELETE FROM clock_difference WHERE 1=2;

