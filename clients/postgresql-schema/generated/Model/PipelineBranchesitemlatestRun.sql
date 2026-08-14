--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineBranchesitemlatestRun' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_branchesitemlatest_run'
--
SELECT duration_in_millis, estimated_duration_in_millis, en_queue_time, end_time, "id", organization, pipeline, "result", run_summary, start_time, "state", "type", commit_id, _class FROM pipeline_branchesitemlatest_run WHERE 1=1;

--
-- INSERT template for table 'pipeline_branchesitemlatest_run'
--
INSERT INTO pipeline_branchesitemlatest_run (duration_in_millis, estimated_duration_in_millis, en_queue_time, end_time, "id", organization, pipeline, "result", run_summary, start_time, "state", "type", commit_id, _class) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline_branchesitemlatest_run'
--
UPDATE pipeline_branchesitemlatest_run SET duration_in_millis = ?, estimated_duration_in_millis = ?, en_queue_time = ?, end_time = ?, "id" = ?, organization = ?, pipeline = ?, "result" = ?, run_summary = ?, start_time = ?, "state" = ?, "type" = ?, commit_id = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_branchesitemlatest_run'
--
DELETE FROM pipeline_branchesitemlatest_run WHERE 1=2;

