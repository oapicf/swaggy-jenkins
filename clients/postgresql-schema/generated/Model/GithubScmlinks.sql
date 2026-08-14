--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'GithubScmlinks' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'github_scmlinks'
--
SELECT "self", _class FROM github_scmlinks WHERE 1=1;

--
-- INSERT template for table 'github_scmlinks'
--
INSERT INTO github_scmlinks ("self", _class) VALUES (?, ?);

--
-- UPDATE template for table 'github_scmlinks'
--
UPDATE github_scmlinks SET "self" = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'github_scmlinks'
--
DELETE FROM github_scmlinks WHERE 1=2;

