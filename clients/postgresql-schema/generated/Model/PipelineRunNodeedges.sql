--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineRunNodeedges' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_run_nodeedges'
--
SELECT "id", _class FROM pipeline_run_nodeedges WHERE 1=1;

--
-- INSERT template for table 'pipeline_run_nodeedges'
--
INSERT INTO pipeline_run_nodeedges ("id", _class) VALUES (?, ?);

--
-- UPDATE template for table 'pipeline_run_nodeedges'
--
UPDATE pipeline_run_nodeedges SET "id" = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_run_nodeedges'
--
DELETE FROM pipeline_run_nodeedges WHERE 1=2;

