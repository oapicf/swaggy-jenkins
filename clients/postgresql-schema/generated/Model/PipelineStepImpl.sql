--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineStepImpl' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_step_impl'
--
SELECT _class, _links, display_name, duration_in_millis, "id", "input", "result", start_time, "state" FROM pipeline_step_impl WHERE 1=1;

--
-- INSERT template for table 'pipeline_step_impl'
--
INSERT INTO pipeline_step_impl (_class, _links, display_name, duration_in_millis, "id", "input", "result", start_time, "state") VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline_step_impl'
--
UPDATE pipeline_step_impl SET _class = ?, _links = ?, display_name = ?, duration_in_millis = ?, "id" = ?, "input" = ?, "result" = ?, start_time = ?, "state" = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_step_impl'
--
DELETE FROM pipeline_step_impl WHERE 1=2;

