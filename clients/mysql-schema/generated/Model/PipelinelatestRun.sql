--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelinelatestRun' definition.
--


--
-- SELECT template for table `PipelinelatestRun`
--
SELECT `artifacts`, `durationInMillis`, `estimatedDurationInMillis`, `enQueueTime`, `endTime`, `id`, `organization`, `pipeline`, `result`, `runSummary`, `startTime`, `state`, `type`, `commitId`, `_class` FROM `PipelinelatestRun` WHERE 1;

--
-- INSERT template for table `PipelinelatestRun`
--
INSERT INTO `PipelinelatestRun`(`artifacts`, `durationInMillis`, `estimatedDurationInMillis`, `enQueueTime`, `endTime`, `id`, `organization`, `pipeline`, `result`, `runSummary`, `startTime`, `state`, `type`, `commitId`, `_class`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PipelinelatestRun`
--
UPDATE `PipelinelatestRun` SET `artifacts` = ?, `durationInMillis` = ?, `estimatedDurationInMillis` = ?, `enQueueTime` = ?, `endTime` = ?, `id` = ?, `organization` = ?, `pipeline` = ?, `result` = ?, `runSummary` = ?, `startTime` = ?, `state` = ?, `type` = ?, `commitId` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `PipelinelatestRun`
--
DELETE FROM `PipelinelatestRun` WHERE 0;

