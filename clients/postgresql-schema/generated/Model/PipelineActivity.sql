--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineActivity' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_activity'
--
SELECT _class, artifacts, duration_in_millis, estimated_duration_in_millis, en_queue_time, end_time, "id", organization, pipeline, "result", run_summary, start_time, "state", "type", commit_id FROM pipeline_activity WHERE 1=1;

--
-- INSERT template for table 'pipeline_activity'
--
INSERT INTO pipeline_activity (_class, artifacts, duration_in_millis, estimated_duration_in_millis, en_queue_time, end_time, "id", organization, pipeline, "result", run_summary, start_time, "state", "type", commit_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline_activity'
--
UPDATE pipeline_activity SET _class = ?, artifacts = ?, duration_in_millis = ?, estimated_duration_in_millis = ?, en_queue_time = ?, end_time = ?, "id" = ?, organization = ?, pipeline = ?, "result" = ?, run_summary = ?, start_time = ?, "state" = ?, "type" = ?, commit_id = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_activity'
--
DELETE FROM pipeline_activity WHERE 1=2;

