--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'FreeStyleProject' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'free_style_project'
--
SELECT _class, "name", url, color, actions, description, display_name, display_name_or_null, full_display_name, full_name, buildable, builds, first_build, health_report, in_queue, keep_dependencies, last_build, last_completed_build, last_failed_build, last_stable_build, last_successful_build, last_unstable_build, last_unsuccessful_build, next_build_number, queue_item, concurrent_build, scm FROM free_style_project WHERE 1=1;

--
-- INSERT template for table 'free_style_project'
--
INSERT INTO free_style_project (_class, "name", url, color, actions, description, display_name, display_name_or_null, full_display_name, full_name, buildable, builds, first_build, health_report, in_queue, keep_dependencies, last_build, last_completed_build, last_failed_build, last_stable_build, last_successful_build, last_unstable_build, last_unsuccessful_build, next_build_number, queue_item, concurrent_build, scm) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'free_style_project'
--
UPDATE free_style_project SET _class = ?, "name" = ?, url = ?, color = ?, actions = ?, description = ?, display_name = ?, display_name_or_null = ?, full_display_name = ?, full_name = ?, buildable = ?, builds = ?, first_build = ?, health_report = ?, in_queue = ?, keep_dependencies = ?, last_build = ?, last_completed_build = ?, last_failed_build = ?, last_stable_build = ?, last_successful_build = ?, last_unstable_build = ?, last_unsuccessful_build = ?, next_build_number = ?, queue_item = ?, concurrent_build = ?, scm = ? WHERE 1=2;

--
-- DELETE template for table 'free_style_project'
--
DELETE FROM free_style_project WHERE 1=2;

