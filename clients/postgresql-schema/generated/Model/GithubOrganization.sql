--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'GithubOrganization' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'github_organization'
--
SELECT _class, _links, jenkins_organization_pipeline, "name" FROM github_organization WHERE 1=1;

--
-- INSERT template for table 'github_organization'
--
INSERT INTO github_organization (_class, _links, jenkins_organization_pipeline, "name") VALUES (?, ?, ?, ?);

--
-- UPDATE template for table 'github_organization'
--
UPDATE github_organization SET _class = ?, _links = ?, jenkins_organization_pipeline = ?, "name" = ? WHERE 1=2;

--
-- DELETE template for table 'github_organization'
--
DELETE FROM github_organization WHERE 1=2;

