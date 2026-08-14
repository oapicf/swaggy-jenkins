--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineRunartifacts' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_runartifacts'
--
SELECT "name", "size", url, _class FROM pipeline_runartifacts WHERE 1=1;

--
-- INSERT template for table 'pipeline_runartifacts'
--
INSERT INTO pipeline_runartifacts ("name", "size", url, _class) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline_runartifacts'
--
UPDATE pipeline_runartifacts SET "name" = ?, "size" = ?, url = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_runartifacts'
--
DELETE FROM pipeline_runartifacts WHERE 1=2;

