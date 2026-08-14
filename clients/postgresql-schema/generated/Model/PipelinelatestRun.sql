--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelinelatestRun' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipelinelatest_run'
--
SELECT artifacts, duration_in_millis, estimated_duration_in_millis, en_queue_time, end_time, "id", organization, pipeline, "result", run_summary, start_time, "state", "type", commit_id, _class FROM pipelinelatest_run WHERE 1=1;

--
-- INSERT template for table 'pipelinelatest_run'
--
INSERT INTO pipelinelatest_run (artifacts, duration_in_millis, estimated_duration_in_millis, en_queue_time, end_time, "id", organization, pipeline, "result", run_summary, start_time, "state", "type", commit_id, _class) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'pipelinelatest_run'
--
UPDATE pipelinelatest_run SET artifacts = ?, duration_in_millis = ?, estimated_duration_in_millis = ?, en_queue_time = ?, end_time = ?, "id" = ?, organization = ?, pipeline = ?, "result" = ?, run_summary = ?, start_time = ?, "state" = ?, "type" = ?, commit_id = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'pipelinelatest_run'
--
DELETE FROM pipelinelatest_run WHERE 1=2;

