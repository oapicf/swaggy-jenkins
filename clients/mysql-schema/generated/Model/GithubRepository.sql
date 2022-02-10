--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'GithubRepository' definition.
--


--
-- SELECT template for table `GithubRepository`
--
SELECT `_class`, `_links`, `defaultBranch`, `description`, `name`, `permissions`, `private`, `fullName` FROM `GithubRepository` WHERE 1;

--
-- INSERT template for table `GithubRepository`
--
INSERT INTO `GithubRepository`(`_class`, `_links`, `defaultBranch`, `description`, `name`, `permissions`, `private`, `fullName`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `GithubRepository`
--
UPDATE `GithubRepository` SET `_class` = ?, `_links` = ?, `defaultBranch` = ?, `description` = ?, `name` = ?, `permissions` = ?, `private` = ?, `fullName` = ? WHERE 1;

--
-- DELETE template for table `GithubRepository`
--
DELETE FROM `GithubRepository` WHERE 0;

