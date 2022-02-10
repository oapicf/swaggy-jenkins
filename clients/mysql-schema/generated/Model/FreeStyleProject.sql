--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'FreeStyleProject' definition.
--


--
-- SELECT template for table `FreeStyleProject`
--
SELECT `_class`, `name`, `url`, `color`, `actions`, `description`, `displayName`, `displayNameOrNull`, `fullDisplayName`, `fullName`, `buildable`, `builds`, `firstBuild`, `healthReport`, `inQueue`, `keepDependencies`, `lastBuild`, `lastCompletedBuild`, `lastFailedBuild`, `lastStableBuild`, `lastSuccessfulBuild`, `lastUnstableBuild`, `lastUnsuccessfulBuild`, `nextBuildNumber`, `queueItem`, `concurrentBuild`, `scm` FROM `FreeStyleProject` WHERE 1;

--
-- INSERT template for table `FreeStyleProject`
--
INSERT INTO `FreeStyleProject`(`_class`, `name`, `url`, `color`, `actions`, `description`, `displayName`, `displayNameOrNull`, `fullDisplayName`, `fullName`, `buildable`, `builds`, `firstBuild`, `healthReport`, `inQueue`, `keepDependencies`, `lastBuild`, `lastCompletedBuild`, `lastFailedBuild`, `lastStableBuild`, `lastSuccessfulBuild`, `lastUnstableBuild`, `lastUnsuccessfulBuild`, `nextBuildNumber`, `queueItem`, `concurrentBuild`, `scm`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `FreeStyleProject`
--
UPDATE `FreeStyleProject` SET `_class` = ?, `name` = ?, `url` = ?, `color` = ?, `actions` = ?, `description` = ?, `displayName` = ?, `displayNameOrNull` = ?, `fullDisplayName` = ?, `fullName` = ?, `buildable` = ?, `builds` = ?, `firstBuild` = ?, `healthReport` = ?, `inQueue` = ?, `keepDependencies` = ?, `lastBuild` = ?, `lastCompletedBuild` = ?, `lastFailedBuild` = ?, `lastStableBuild` = ?, `lastSuccessfulBuild` = ?, `lastUnstableBuild` = ?, `lastUnsuccessfulBuild` = ?, `nextBuildNumber` = ?, `queueItem` = ?, `concurrentBuild` = ?, `scm` = ? WHERE 1;

--
-- DELETE template for table `FreeStyleProject`
--
DELETE FROM `FreeStyleProject` WHERE 0;

