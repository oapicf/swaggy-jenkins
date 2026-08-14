--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineRunImpl' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_run_impl'
--
SELECT _class, _links, duration_in_millis, en_queue_time, end_time, estimated_duration_in_millis, "id", organization, pipeline, "result", run_summary, start_time, "state", "type", commit_id FROM pipeline_run_impl WHERE 1=1;

--
-- INSERT template for table 'pipeline_run_impl'
--
INSERT INTO pipeline_run_impl (_class, _links, duration_in_millis, en_queue_time, end_time, estimated_duration_in_millis, "id", organization, pipeline, "result", run_summary, start_time, "state", "type", commit_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline_run_impl'
--
UPDATE pipeline_run_impl SET _class = ?, _links = ?, duration_in_millis = ?, en_queue_time = ?, end_time = ?, estimated_duration_in_millis = ?, "id" = ?, organization = ?, pipeline = ?, "result" = ?, run_summary = ?, start_time = ?, "state" = ?, "type" = ?, commit_id = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_run_impl'
--
DELETE FROM pipeline_run_impl WHERE 1=2;

