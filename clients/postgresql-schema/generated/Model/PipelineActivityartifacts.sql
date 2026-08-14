--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineActivityartifacts' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_activityartifacts'
--
SELECT "name", "size", url, _class FROM pipeline_activityartifacts WHERE 1=1;

--
-- INSERT template for table 'pipeline_activityartifacts'
--
INSERT INTO pipeline_activityartifacts ("name", "size", url, _class) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline_activityartifacts'
--
UPDATE pipeline_activityartifacts SET "name" = ?, "size" = ?, url = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_activityartifacts'
--
DELETE FROM pipeline_activityartifacts WHERE 1=2;

