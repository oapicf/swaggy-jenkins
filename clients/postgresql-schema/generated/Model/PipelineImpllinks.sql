--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineImpllinks' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_impllinks'
--
SELECT "self", actions, runs, queue, _class FROM pipeline_impllinks WHERE 1=1;

--
-- INSERT template for table 'pipeline_impllinks'
--
INSERT INTO pipeline_impllinks ("self", actions, runs, queue, _class) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline_impllinks'
--
UPDATE pipeline_impllinks SET "self" = ?, actions = ?, runs = ?, queue = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_impllinks'
--
DELETE FROM pipeline_impllinks WHERE 1=2;

