--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'Pipeline' definition.
--


--
-- SELECT template for table `Pipeline`
--
SELECT `_class`, `organization`, `name`, `displayName`, `fullName`, `weatherScore`, `estimatedDurationInMillis`, `latestRun` FROM `Pipeline` WHERE 1;

--
-- INSERT template for table `Pipeline`
--
INSERT INTO `Pipeline`(`_class`, `organization`, `name`, `displayName`, `fullName`, `weatherScore`, `estimatedDurationInMillis`, `latestRun`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `Pipeline`
--
UPDATE `Pipeline` SET `_class` = ?, `organization` = ?, `name` = ?, `displayName` = ?, `fullName` = ?, `weatherScore` = ?, `estimatedDurationInMillis` = ?, `latestRun` = ? WHERE 1;

--
-- DELETE template for table `Pipeline`
--
DELETE FROM `Pipeline` WHERE 0;

