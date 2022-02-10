--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'GithubScm' definition.
--


--
-- SELECT template for table `GithubScm`
--
SELECT `_class`, `_links`, `credentialId`, `id`, `uri` FROM `GithubScm` WHERE 1;

--
-- INSERT template for table `GithubScm`
--
INSERT INTO `GithubScm`(`_class`, `_links`, `credentialId`, `id`, `uri`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `GithubScm`
--
UPDATE `GithubScm` SET `_class` = ?, `_links` = ?, `credentialId` = ?, `id` = ?, `uri` = ? WHERE 1;

--
-- DELETE template for table `GithubScm`
--
DELETE FROM `GithubScm` WHERE 0;

