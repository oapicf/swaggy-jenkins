--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'GithubFile' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'github_file'
--
SELECT "content", _class FROM github_file WHERE 1=1;

--
-- INSERT template for table 'github_file'
--
INSERT INTO github_file ("content", _class) VALUES (?, ?);

--
-- UPDATE template for table 'github_file'
--
UPDATE github_file SET "content" = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'github_file'
--
DELETE FROM github_file WHERE 1=2;

