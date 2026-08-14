--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'MultibranchPipeline' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'multibranch_pipeline'
--
SELECT display_name, estimated_duration_in_millis, latest_run, "name", organization, weather_score, branch_names, number_of_failing_branches, number_of_failing_pull_requests, number_of_successful_branches, number_of_successful_pull_requests, total_number_of_branches, total_number_of_pull_requests, _class FROM multibranch_pipeline WHERE 1=1;

--
-- INSERT template for table 'multibranch_pipeline'
--
INSERT INTO multibranch_pipeline (display_name, estimated_duration_in_millis, latest_run, "name", organization, weather_score, branch_names, number_of_failing_branches, number_of_failing_pull_requests, number_of_successful_branches, number_of_successful_pull_requests, total_number_of_branches, total_number_of_pull_requests, _class) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'multibranch_pipeline'
--
UPDATE multibranch_pipeline SET display_name = ?, estimated_duration_in_millis = ?, latest_run = ?, "name" = ?, organization = ?, weather_score = ?, branch_names = ?, number_of_failing_branches = ?, number_of_failing_pull_requests = ?, number_of_successful_branches = ?, number_of_successful_pull_requests = ?, total_number_of_branches = ?, total_number_of_pull_requests = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'multibranch_pipeline'
--
DELETE FROM multibranch_pipeline WHERE 1=2;

