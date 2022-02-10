--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineStepImpl' definition.
--


--
-- SELECT template for table `PipelineStepImpl`
--
SELECT `_class`, `_links`, `displayName`, `durationInMillis`, `id`, `input`, `result`, `startTime`, `state` FROM `PipelineStepImpl` WHERE 1;

--
-- INSERT template for table `PipelineStepImpl`
--
INSERT INTO `PipelineStepImpl`(`_class`, `_links`, `displayName`, `durationInMillis`, `id`, `input`, `result`, `startTime`, `state`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PipelineStepImpl`
--
UPDATE `PipelineStepImpl` SET `_class` = ?, `_links` = ?, `displayName` = ?, `durationInMillis` = ?, `id` = ?, `input` = ?, `result` = ?, `startTime` = ?, `state` = ? WHERE 1;

--
-- DELETE template for table `PipelineStepImpl`
--
DELETE FROM `PipelineStepImpl` WHERE 0;

