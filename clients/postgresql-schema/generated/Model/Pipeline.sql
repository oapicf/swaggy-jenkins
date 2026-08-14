--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'Pipeline' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline'
--
SELECT _class, organization, "name", display_name, full_name, weather_score, estimated_duration_in_millis, latest_run FROM pipeline WHERE 1=1;

--
-- INSERT template for table 'pipeline'
--
INSERT INTO pipeline (_class, organization, "name", display_name, full_name, weather_score, estimated_duration_in_millis, latest_run) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline'
--
UPDATE pipeline SET _class = ?, organization = ?, "name" = ?, display_name = ?, full_name = ?, weather_score = ?, estimated_duration_in_millis = ?, latest_run = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline'
--
DELETE FROM pipeline WHERE 1=2;

