--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'GithubRepositorylinks' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'github_repositorylinks'
--
SELECT "self", _class FROM github_repositorylinks WHERE 1=1;

--
-- INSERT template for table 'github_repositorylinks'
--
INSERT INTO github_repositorylinks ("self", _class) VALUES (?, ?);

--
-- UPDATE template for table 'github_repositorylinks'
--
UPDATE github_repositorylinks SET "self" = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'github_repositorylinks'
--
DELETE FROM github_repositorylinks WHERE 1=2;

