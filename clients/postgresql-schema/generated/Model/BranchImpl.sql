--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'BranchImpl' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'branch_impl'
--
SELECT _class, display_name, estimated_duration_in_millis, full_display_name, full_name, "name", organization, parameters, permissions, weather_score, pull_request, _links, latest_run FROM branch_impl WHERE 1=1;

--
-- INSERT template for table 'branch_impl'
--
INSERT INTO branch_impl (_class, display_name, estimated_duration_in_millis, full_display_name, full_name, "name", organization, parameters, permissions, weather_score, pull_request, _links, latest_run) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'branch_impl'
--
UPDATE branch_impl SET _class = ?, display_name = ?, estimated_duration_in_millis = ?, full_display_name = ?, full_name = ?, "name" = ?, organization = ?, parameters = ?, permissions = ?, weather_score = ?, pull_request = ?, _links = ?, latest_run = ? WHERE 1=2;

--
-- DELETE template for table 'branch_impl'
--
DELETE FROM branch_impl WHERE 1=2;

