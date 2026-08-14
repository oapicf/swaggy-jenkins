--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineRun' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_run'
--
SELECT _class, artifacts, duration_in_millis, estimated_duration_in_millis, en_queue_time, end_time, "id", organization, pipeline, "result", run_summary, start_time, "state", "type", commit_id FROM pipeline_run WHERE 1=1;

--
-- INSERT template for table 'pipeline_run'
--
INSERT INTO pipeline_run (_class, artifacts, duration_in_millis, estimated_duration_in_millis, en_queue_time, end_time, "id", organization, pipeline, "result", run_summary, start_time, "state", "type", commit_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline_run'
--
UPDATE pipeline_run SET _class = ?, artifacts = ?, duration_in_millis = ?, estimated_duration_in_millis = ?, en_queue_time = ?, end_time = ?, "id" = ?, organization = ?, pipeline = ?, "result" = ?, run_summary = ?, start_time = ?, "state" = ?, "type" = ?, commit_id = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_run'
--
DELETE FROM pipeline_run WHERE 1=2;

