--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'MultibranchPipeline' definition.
--


--
-- SELECT template for table `MultibranchPipeline`
--
SELECT `displayName`, `estimatedDurationInMillis`, `latestRun`, `name`, `organization`, `weatherScore`, `branchNames`, `numberOfFailingBranches`, `numberOfFailingPullRequests`, `numberOfSuccessfulBranches`, `numberOfSuccessfulPullRequests`, `totalNumberOfBranches`, `totalNumberOfPullRequests`, `_class` FROM `MultibranchPipeline` WHERE 1;

--
-- INSERT template for table `MultibranchPipeline`
--
INSERT INTO `MultibranchPipeline`(`displayName`, `estimatedDurationInMillis`, `latestRun`, `name`, `organization`, `weatherScore`, `branchNames`, `numberOfFailingBranches`, `numberOfFailingPullRequests`, `numberOfSuccessfulBranches`, `numberOfSuccessfulPullRequests`, `totalNumberOfBranches`, `totalNumberOfPullRequests`, `_class`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `MultibranchPipeline`
--
UPDATE `MultibranchPipeline` SET `displayName` = ?, `estimatedDurationInMillis` = ?, `latestRun` = ?, `name` = ?, `organization` = ?, `weatherScore` = ?, `branchNames` = ?, `numberOfFailingBranches` = ?, `numberOfFailingPullRequests` = ?, `numberOfSuccessfulBranches` = ?, `numberOfSuccessfulPullRequests` = ?, `totalNumberOfBranches` = ?, `totalNumberOfPullRequests` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `MultibranchPipeline`
--
DELETE FROM `MultibranchPipeline` WHERE 0;

