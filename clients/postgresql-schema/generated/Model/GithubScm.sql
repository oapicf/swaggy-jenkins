--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'GithubScm' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'github_scm'
--
SELECT _class, _links, credential_id, "id", "uri" FROM github_scm WHERE 1=1;

--
-- INSERT template for table 'github_scm'
--
INSERT INTO github_scm (_class, _links, credential_id, "id", "uri") VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table 'github_scm'
--
UPDATE github_scm SET _class = ?, _links = ?, credential_id = ?, "id" = ?, "uri" = ? WHERE 1=2;

--
-- DELETE template for table 'github_scm'
--
DELETE FROM github_scm WHERE 1=2;

