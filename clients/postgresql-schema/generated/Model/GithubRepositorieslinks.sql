--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'GithubRepositorieslinks' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'github_repositorieslinks'
--
SELECT "self", _class FROM github_repositorieslinks WHERE 1=1;

--
-- INSERT template for table 'github_repositorieslinks'
--
INSERT INTO github_repositorieslinks ("self", _class) VALUES (?, ?);

--
-- UPDATE template for table 'github_repositorieslinks'
--
UPDATE github_repositorieslinks SET "self" = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'github_repositorieslinks'
--
DELETE FROM github_repositorieslinks WHERE 1=2;

