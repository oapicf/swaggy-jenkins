--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineBranchesitempullRequestlinks' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_branchesitempull_requestlinks'
--
SELECT "self", _class FROM pipeline_branchesitempull_requestlinks WHERE 1=1;

--
-- INSERT template for table 'pipeline_branchesitempull_requestlinks'
--
INSERT INTO pipeline_branchesitempull_requestlinks ("self", _class) VALUES (?, ?);

--
-- UPDATE template for table 'pipeline_branchesitempull_requestlinks'
--
UPDATE pipeline_branchesitempull_requestlinks SET "self" = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_branchesitempull_requestlinks'
--
DELETE FROM pipeline_branchesitempull_requestlinks WHERE 1=2;

