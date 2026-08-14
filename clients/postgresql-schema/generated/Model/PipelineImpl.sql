--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineImpl' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_impl'
--
SELECT _class, display_name, estimated_duration_in_millis, full_name, latest_run, "name", organization, weather_score, _links FROM pipeline_impl WHERE 1=1;

--
-- INSERT template for table 'pipeline_impl'
--
INSERT INTO pipeline_impl (_class, display_name, estimated_duration_in_millis, full_name, latest_run, "name", organization, weather_score, _links) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline_impl'
--
UPDATE pipeline_impl SET _class = ?, display_name = ?, estimated_duration_in_millis = ?, full_name = ?, latest_run = ?, "name" = ?, organization = ?, weather_score = ?, _links = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_impl'
--
DELETE FROM pipeline_impl WHERE 1=2;

