--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineImpl' definition.
--


--
-- SELECT template for table `PipelineImpl`
--
SELECT `_class`, `displayName`, `estimatedDurationInMillis`, `fullName`, `latestRun`, `name`, `organization`, `weatherScore`, `_links` FROM `PipelineImpl` WHERE 1;

--
-- INSERT template for table `PipelineImpl`
--
INSERT INTO `PipelineImpl`(`_class`, `displayName`, `estimatedDurationInMillis`, `fullName`, `latestRun`, `name`, `organization`, `weatherScore`, `_links`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PipelineImpl`
--
UPDATE `PipelineImpl` SET `_class` = ?, `displayName` = ?, `estimatedDurationInMillis` = ?, `fullName` = ?, `latestRun` = ?, `name` = ?, `organization` = ?, `weatherScore` = ?, `_links` = ? WHERE 1;

--
-- DELETE template for table `PipelineImpl`
--
DELETE FROM `PipelineImpl` WHERE 0;

