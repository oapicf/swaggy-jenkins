--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'PipelineBranchesitempullRequest' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'pipeline_branchesitempull_request'
--
SELECT _links, author, "id", title, url, _class FROM pipeline_branchesitempull_request WHERE 1=1;

--
-- INSERT template for table 'pipeline_branchesitempull_request'
--
INSERT INTO pipeline_branchesitempull_request (_links, author, "id", title, url, _class) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'pipeline_branchesitempull_request'
--
UPDATE pipeline_branchesitempull_request SET _links = ?, author = ?, "id" = ?, title = ?, url = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'pipeline_branchesitempull_request'
--
DELETE FROM pipeline_branchesitempull_request WHERE 1=2;

