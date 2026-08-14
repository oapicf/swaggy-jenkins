--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'GithubOrganizationlinks' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'github_organizationlinks'
--
SELECT repositories, "self", _class FROM github_organizationlinks WHERE 1=1;

--
-- INSERT template for table 'github_organizationlinks'
--
INSERT INTO github_organizationlinks (repositories, "self", _class) VALUES (?, ?, ?);

--
-- UPDATE template for table 'github_organizationlinks'
--
UPDATE github_organizationlinks SET repositories = ?, "self" = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'github_organizationlinks'
--
DELETE FROM github_organizationlinks WHERE 1=2;

