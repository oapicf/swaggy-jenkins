--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'GithubRepositories' definition.
--


--
-- SELECT template for table `GithubRepositories`
--
SELECT `_class`, `_links`, `items`, `lastPage`, `nextPage`, `pageSize` FROM `GithubRepositories` WHERE 1;

--
-- INSERT template for table `GithubRepositories`
--
INSERT INTO `GithubRepositories`(`_class`, `_links`, `items`, `lastPage`, `nextPage`, `pageSize`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `GithubRepositories`
--
UPDATE `GithubRepositories` SET `_class` = ?, `_links` = ?, `items` = ?, `lastPage` = ?, `nextPage` = ?, `pageSize` = ? WHERE 1;

--
-- DELETE template for table `GithubRepositories`
--
DELETE FROM `GithubRepositories` WHERE 0;

