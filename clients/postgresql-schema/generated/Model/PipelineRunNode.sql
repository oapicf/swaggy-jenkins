--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineRunNode' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_run_node'
--
SELECT _class, display_name, duration_in_millis, edges, "id", "result", start_time, "state" FROM pipeline_run_node WHERE 1=1;

--
-- INSERT template for table 'pipeline_run_node'
--
INSERT INTO pipeline_run_node (_class, display_name, duration_in_millis, edges, "id", "result", start_time, "state") VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline_run_node'
--
UPDATE pipeline_run_node SET _class = ?, display_name = ?, duration_in_millis = ?, edges = ?, "id" = ?, "result" = ?, start_time = ?, "state" = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_run_node'
--
DELETE FROM pipeline_run_node WHERE 1=2;

