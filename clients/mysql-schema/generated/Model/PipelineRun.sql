--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineRun' definition.
--


--
-- SELECT template for table `PipelineRun`
--
SELECT `_class`, `artifacts`, `durationInMillis`, `estimatedDurationInMillis`, `enQueueTime`, `endTime`, `id`, `organization`, `pipeline`, `result`, `runSummary`, `startTime`, `state`, `type`, `commitId` FROM `PipelineRun` WHERE 1;

--
-- INSERT template for table `PipelineRun`
--
INSERT INTO `PipelineRun`(`_class`, `artifacts`, `durationInMillis`, `estimatedDurationInMillis`, `enQueueTime`, `endTime`, `id`, `organization`, `pipeline`, `result`, `runSummary`, `startTime`, `state`, `type`, `commitId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PipelineRun`
--
UPDATE `PipelineRun` SET `_class` = ?, `artifacts` = ?, `durationInMillis` = ?, `estimatedDurationInMillis` = ?, `enQueueTime` = ?, `endTime` = ?, `id` = ?, `organization` = ?, `pipeline` = ?, `result` = ?, `runSummary` = ?, `startTime` = ?, `state` = ?, `type` = ?, `commitId` = ? WHERE 1;

--
-- DELETE template for table `PipelineRun`
--
DELETE FROM `PipelineRun` WHERE 0;

