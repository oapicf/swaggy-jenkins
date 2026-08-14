--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'GithubRespositoryContainer' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'github_respository_container'
--
SELECT _class, _links, repositories FROM github_respository_container WHERE 1=1;

--
-- INSERT template for table 'github_respository_container'
--
INSERT INTO github_respository_container (_class, _links, repositories) VALUES (?, ?, ?);

--
-- UPDATE template for table 'github_respository_container'
--
UPDATE github_respository_container SET _class = ?, _links = ?, repositories = ? WHERE 1=2;

--
-- DELETE template for table 'github_respository_container'
--
DELETE FROM github_respository_container WHERE 1=2;

