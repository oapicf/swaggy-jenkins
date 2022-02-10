--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineActivity' definition.
--


--
-- SELECT template for table `PipelineActivity`
--
SELECT `_class`, `artifacts`, `durationInMillis`, `estimatedDurationInMillis`, `enQueueTime`, `endTime`, `id`, `organization`, `pipeline`, `result`, `runSummary`, `startTime`, `state`, `type`, `commitId` FROM `PipelineActivity` WHERE 1;

--
-- INSERT template for table `PipelineActivity`
--
INSERT INTO `PipelineActivity`(`_class`, `artifacts`, `durationInMillis`, `estimatedDurationInMillis`, `enQueueTime`, `endTime`, `id`, `organization`, `pipeline`, `result`, `runSummary`, `startTime`, `state`, `type`, `commitId`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PipelineActivity`
--
UPDATE `PipelineActivity` SET `_class` = ?, `artifacts` = ?, `durationInMillis` = ?, `estimatedDurationInMillis` = ?, `enQueueTime` = ?, `endTime` = ?, `id` = ?, `organization` = ?, `pipeline` = ?, `result` = ?, `runSummary` = ?, `startTime` = ?, `state` = ?, `type` = ?, `commitId` = ? WHERE 1;

--
-- DELETE template for table `PipelineActivity`
--
DELETE FROM `PipelineActivity` WHERE 0;

