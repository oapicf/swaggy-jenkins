--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineStepImpllinks' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_step_impllinks'
--
SELECT "self", actions, _class FROM pipeline_step_impllinks WHERE 1=1;

--
-- INSERT template for table 'pipeline_step_impllinks'
--
INSERT INTO pipeline_step_impllinks ("self", actions, _class) VALUES (?, ?, ?);

--
-- UPDATE template for table 'pipeline_step_impllinks'
--
UPDATE pipeline_step_impllinks SET "self" = ?, actions = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_step_impllinks'
--
DELETE FROM pipeline_step_impllinks WHERE 1=2;

