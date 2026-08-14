--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'GithubRepository' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'github_repository'
--
SELECT _class, _links, default_branch, description, "name", permissions, "private", full_name FROM github_repository WHERE 1=1;

--
-- INSERT template for table 'github_repository'
--
INSERT INTO github_repository (_class, _links, default_branch, description, "name", permissions, "private", full_name) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'github_repository'
--
UPDATE github_repository SET _class = ?, _links = ?, default_branch = ?, description = ?, "name" = ?, permissions = ?, "private" = ?, full_name = ? WHERE 1=2;

--
-- DELETE template for table 'github_repository'
--
DELETE FROM github_repository WHERE 1=2;

