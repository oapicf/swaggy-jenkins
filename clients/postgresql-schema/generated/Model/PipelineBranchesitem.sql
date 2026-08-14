--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineBranchesitem' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_branchesitem'
--
SELECT display_name, estimated_duration_in_millis, "name", weather_score, latest_run, organization, pull_request, total_number_of_pull_requests, _class FROM pipeline_branchesitem WHERE 1=1;

--
-- INSERT template for table 'pipeline_branchesitem'
--
INSERT INTO pipeline_branchesitem (display_name, estimated_duration_in_millis, "name", weather_score, latest_run, organization, pull_request, total_number_of_pull_requests, _class) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline_branchesitem'
--
UPDATE pipeline_branchesitem SET display_name = ?, estimated_duration_in_millis = ?, "name" = ?, weather_score = ?, latest_run = ?, organization = ?, pull_request = ?, total_number_of_pull_requests = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_branchesitem'
--
DELETE FROM pipeline_branchesitem WHERE 1=2;

