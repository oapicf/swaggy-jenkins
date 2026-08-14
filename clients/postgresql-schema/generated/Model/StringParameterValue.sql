--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'StringParameterValue' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'string_parameter_value'
--
SELECT _class, "name", "value" FROM string_parameter_value WHERE 1=1;

--
-- INSERT template for table 'string_parameter_value'
--
INSERT INTO string_parameter_value (_class, "name", "value") VALUES (?, ?, ?);

--
-- UPDATE template for table 'string_parameter_value'
--
UPDATE string_parameter_value SET _class = ?, "name" = ?, "value" = ? WHERE 1=2;

--
-- DELETE template for table 'string_parameter_value'
--
DELETE FROM string_parameter_value WHERE 1=2;

