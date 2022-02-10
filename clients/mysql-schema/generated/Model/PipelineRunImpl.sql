--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineRunImpl' definition.
--


--
-- SELECT template for table `PipelineRunImpl`
--
SELECT `_class`, `_links`, `durationInMillis`, `enQueueTime`, `endTime`, `estimatedDurationInMillis`, `id`, `organization`, `pipeline`, `result`, `runSummary`, `startTime`, `state`, `type`, `commitId` FROM `PipelineRunImpl` WHERE 1;

--
-- INSERT template for table `PipelineRunImpl`
--
INSERT INTO `PipelineRunImpl`(`_class`, `_links`, `durationInMillis`, `enQueueTime`, `endTime`, `estimatedDurationInMillis`, `id`, `organization`, `pipeline`, `result`, `runSummary`, `startTime`, `state`, `type`, `commitId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PipelineRunImpl`
--
UPDATE `PipelineRunImpl` SET `_class` = ?, `_links` = ?, `durationInMillis` = ?, `enQueueTime` = ?, `endTime` = ?, `estimatedDurationInMillis` = ?, `id` = ?, `organization` = ?, `pipeline` = ?, `result` = ?, `runSummary` = ?, `startTime` = ?, `state` = ?, `type` = ?, `commitId` = ? WHERE 1;

--
-- DELETE template for table `PipelineRunImpl`
--
DELETE FROM `PipelineRunImpl` WHERE 0;

