--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'GithubOrganization' definition.
--


--
-- SELECT template for table `GithubOrganization`
--
SELECT `_class`, `_links`, `jenkinsOrganizationPipeline`, `name` FROM `GithubOrganization` WHERE 1;

--
-- INSERT template for table `GithubOrganization`
--
INSERT INTO `GithubOrganization`(`_class`, `_links`, `jenkinsOrganizationPipeline`, `name`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `GithubOrganization`
--
UPDATE `GithubOrganization` SET `_class` = ?, `_links` = ?, `jenkinsOrganizationPipeline` = ?, `name` = ? WHERE 1;

--
-- DELETE template for table `GithubOrganization`
--
DELETE FROM `GithubOrganization` WHERE 0;

