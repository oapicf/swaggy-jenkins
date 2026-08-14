--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'FreeStyleBuild' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'free_style_build'
--
SELECT _class, "number", url, actions, building, description, display_name, duration, estimated_duration, executor, full_display_name, "id", keep_log, queue_id, "result", "timestamp", built_on, change_set FROM free_style_build WHERE 1=1;

--
-- INSERT template for table 'free_style_build'
--
INSERT INTO free_style_build (_class, "number", url, actions, building, description, display_name, duration, estimated_duration, executor, full_display_name, "id", keep_log, queue_id, "result", "timestamp", built_on, change_set) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'free_style_build'
--
UPDATE free_style_build SET _class = ?, "number" = ?, url = ?, actions = ?, building = ?, description = ?, display_name = ?, duration = ?, estimated_duration = ?, executor = ?, full_display_name = ?, "id" = ?, keep_log = ?, queue_id = ?, "result" = ?, "timestamp" = ?, built_on = ?, change_set = ? WHERE 1=2;

--
-- DELETE template for table 'free_style_build'
--
DELETE FROM free_style_build WHERE 1=2;

