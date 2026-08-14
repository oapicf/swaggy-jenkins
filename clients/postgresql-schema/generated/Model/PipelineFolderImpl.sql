--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineFolderImpl' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_folder_impl'
--
SELECT _class, display_name, full_name, "name", organization, number_of_folders, number_of_pipelines FROM pipeline_folder_impl WHERE 1=1;

--
-- INSERT template for table 'pipeline_folder_impl'
--
INSERT INTO pipeline_folder_impl (_class, display_name, full_name, "name", organization, number_of_folders, number_of_pipelines) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline_folder_impl'
--
UPDATE pipeline_folder_impl SET _class = ?, display_name = ?, full_name = ?, "name" = ?, organization = ?, number_of_folders = ?, number_of_pipelines = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_folder_impl'
--
DELETE FROM pipeline_folder_impl WHERE 1=2;

