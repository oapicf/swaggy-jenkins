--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'GithubRespositoryContainer' definition.
--


--
-- SELECT template for table `GithubRespositoryContainer`
--
SELECT `_class`, `_links`, `repositories` FROM `GithubRespositoryContainer` WHERE 1;

--
-- INSERT template for table `GithubRespositoryContainer`
--
INSERT INTO `GithubRespositoryContainer`(`_class`, `_links`, `repositories`) VALUES (?, ?, ?);

--
-- UPDATE template for table `GithubRespositoryContainer`
--
UPDATE `GithubRespositoryContainer` SET `_class` = ?, `_links` = ?, `repositories` = ? WHERE 1;

--
-- DELETE template for table `GithubRespositoryContainer`
--
DELETE FROM `GithubRespositoryContainer` WHERE 0;

