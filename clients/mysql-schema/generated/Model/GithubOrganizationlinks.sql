--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'GithubOrganizationlinks' definition.
--


--
-- SELECT template for table `GithubOrganizationlinks`
--
SELECT `repositories`, `self`, `_class` FROM `GithubOrganizationlinks` WHERE 1;

--
-- INSERT template for table `GithubOrganizationlinks`
--
INSERT INTO `GithubOrganizationlinks`(`repositories`, `self`, `_class`) VALUES (?, ?, ?);

--
-- UPDATE template for table `GithubOrganizationlinks`
--
UPDATE `GithubOrganizationlinks` SET `repositories` = ?, `self` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `GithubOrganizationlinks`
--
DELETE FROM `GithubOrganizationlinks` WHERE 0;

