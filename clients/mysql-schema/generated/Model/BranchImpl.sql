--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'BranchImpl' definition.
--


--
-- SELECT template for table `BranchImpl`
--
SELECT `_class`, `displayName`, `estimatedDurationInMillis`, `fullDisplayName`, `fullName`, `name`, `organization`, `parameters`, `permissions`, `weatherScore`, `pullRequest`, `_links`, `latestRun` FROM `BranchImpl` WHERE 1;

--
-- INSERT template for table `BranchImpl`
--
INSERT INTO `BranchImpl`(`_class`, `displayName`, `estimatedDurationInMillis`, `fullDisplayName`, `fullName`, `name`, `organization`, `parameters`, `permissions`, `weatherScore`, `pullRequest`, `_links`, `latestRun`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `BranchImpl`
--
UPDATE `BranchImpl` SET `_class` = ?, `displayName` = ?, `estimatedDurationInMillis` = ?, `fullDisplayName` = ?, `fullName` = ?, `name` = ?, `organization` = ?, `parameters` = ?, `permissions` = ?, `weatherScore` = ?, `pullRequest` = ?, `_links` = ?, `latestRun` = ? WHERE 1;

--
-- DELETE template for table `BranchImpl`
--
DELETE FROM `BranchImpl` WHERE 0;

