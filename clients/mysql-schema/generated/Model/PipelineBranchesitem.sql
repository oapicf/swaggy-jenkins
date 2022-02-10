--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineBranchesitem' definition.
--


--
-- SELECT template for table `PipelineBranchesitem`
--
SELECT `displayName`, `estimatedDurationInMillis`, `name`, `weatherScore`, `latestRun`, `organization`, `pullRequest`, `totalNumberOfPullRequests`, `_class` FROM `PipelineBranchesitem` WHERE 1;

--
-- INSERT template for table `PipelineBranchesitem`
--
INSERT INTO `PipelineBranchesitem`(`displayName`, `estimatedDurationInMillis`, `name`, `weatherScore`, `latestRun`, `organization`, `pullRequest`, `totalNumberOfPullRequests`, `_class`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PipelineBranchesitem`
--
UPDATE `PipelineBranchesitem` SET `displayName` = ?, `estimatedDurationInMillis` = ?, `name` = ?, `weatherScore` = ?, `latestRun` = ?, `organization` = ?, `pullRequest` = ?, `totalNumberOfPullRequests` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `PipelineBranchesitem`
--
DELETE FROM `PipelineBranchesitem` WHERE 0;

