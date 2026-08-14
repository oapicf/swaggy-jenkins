--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'GithubContent' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'github_content'
--
SELECT "name", sha, _class, repo, "size", "owner", "path", base64_data FROM github_content WHERE 1=1;

--
-- INSERT template for table 'github_content'
--
INSERT INTO github_content ("name", sha, _class, repo, "size", "owner", "path", base64_data) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'github_content'
--
UPDATE github_content SET "name" = ?, sha = ?, _class = ?, repo = ?, "size" = ?, "owner" = ?, "path" = ?, base64_data = ? WHERE 1=2;

--
-- DELETE template for table 'github_content'
--
DELETE FROM github_content WHERE 1=2;

