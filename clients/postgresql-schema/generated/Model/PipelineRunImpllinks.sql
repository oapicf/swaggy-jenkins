--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineRunImpllinks' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_run_impllinks'
--
SELECT nodes, "log", "self", actions, steps, _class FROM pipeline_run_impllinks WHERE 1=1;

--
-- INSERT template for table 'pipeline_run_impllinks'
--
INSERT INTO pipeline_run_impllinks (nodes, "log", "self", actions, steps, _class) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline_run_impllinks'
--
UPDATE pipeline_run_impllinks SET nodes = ?, "log" = ?, "self" = ?, actions = ?, steps = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_run_impllinks'
--
DELETE FROM pipeline_run_impllinks WHERE 1=2;

