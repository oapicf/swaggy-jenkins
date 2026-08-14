--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelinelatestRunartifacts' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipelinelatest_runartifacts'
--
SELECT "name", "size", url, _class FROM pipelinelatest_runartifacts WHERE 1=1;

--
-- INSERT template for table 'pipelinelatest_runartifacts'
--
INSERT INTO pipelinelatest_runartifacts ("name", "size", url, _class) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table 'pipelinelatest_runartifacts'
--
UPDATE pipelinelatest_runartifacts SET "name" = ?, "size" = ?, url = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'pipelinelatest_runartifacts'
--
DELETE FROM pipelinelatest_runartifacts WHERE 1=2;

