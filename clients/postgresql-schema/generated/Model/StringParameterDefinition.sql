--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'StringParameterDefinition' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'string_parameter_definition'
--
SELECT _class, default_parameter_value, description, "name", "type" FROM string_parameter_definition WHERE 1=1;

--
-- INSERT template for table 'string_parameter_definition'
--
INSERT INTO string_parameter_definition (_class, default_parameter_value, description, "name", "type") VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table 'string_parameter_definition'
--
UPDATE string_parameter_definition SET _class = ?, default_parameter_value = ?, description = ?, "name" = ?, "type" = ? WHERE 1=2;

--
-- DELETE template for table 'string_parameter_definition'
--
DELETE FROM string_parameter_definition WHERE 1=2;

