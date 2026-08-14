--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'InputStepImpl' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'input_step_impl'
--
SELECT _class, _links, "id", message, ok, parameters, submitter FROM input_step_impl WHERE 1=1;

--
-- INSERT template for table 'input_step_impl'
--
INSERT INTO input_step_impl (_class, _links, "id", message, ok, parameters, submitter) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'input_step_impl'
--
UPDATE input_step_impl SET _class = ?, _links = ?, "id" = ?, message = ?, ok = ?, parameters = ?, submitter = ? WHERE 1=2;

--
-- DELETE template for table 'input_step_impl'
--
DELETE FROM input_step_impl WHERE 1=2;

