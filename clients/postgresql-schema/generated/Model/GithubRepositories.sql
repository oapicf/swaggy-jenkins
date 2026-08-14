--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'GithubRepositories' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'github_repositories'
--
SELECT _class, _links, items, last_page, next_page, page_size FROM github_repositories WHERE 1=1;

--
-- INSERT template for table 'github_repositories'
--
INSERT INTO github_repositories (_class, _links, items, last_page, next_page, page_size) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'github_repositories'
--
UPDATE github_repositories SET _class = ?, _links = ?, items = ?, last_page = ?, next_page = ?, page_size = ? WHERE 1=2;

--
-- DELETE template for table 'github_repositories'
--
DELETE FROM github_repositories WHERE 1=2;

