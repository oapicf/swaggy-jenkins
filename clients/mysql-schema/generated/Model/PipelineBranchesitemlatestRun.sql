--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineBranchesitemlatestRun' definition.
--


--
-- SELECT template for table `PipelineBranchesitemlatestRun`
--
SELECT `durationInMillis`, `estimatedDurationInMillis`, `enQueueTime`, `endTime`, `id`, `organization`, `pipeline`, `result`, `runSummary`, `startTime`, `state`, `type`, `commitId`, `_class` FROM `PipelineBranchesitemlatestRun` WHERE 1;

--
-- INSERT template for table `PipelineBranchesitemlatestRun`
--
INSERT INTO `PipelineBranchesitemlatestRun`(`durationInMillis`, `estimatedDurationInMillis`, `enQueueTime`, `endTime`, `id`, `organization`, `pipeline`, `result`, `runSummary`, `startTime`, `state`, `type`, `commitId`, `_class`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PipelineBranchesitemlatestRun`
--
UPDATE `PipelineBranchesitemlatestRun` SET `durationInMillis` = ?, `estimatedDurationInMillis` = ?, `enQueueTime` = ?, `endTime` = ?, `id` = ?, `organization` = ?, `pipeline` = ?, `result` = ?, `runSummary` = ?, `startTime` = ?, `state` = ?, `type` = ?, `commitId` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `PipelineBranchesitemlatestRun`
--
DELETE FROM `PipelineBranchesitemlatestRun` WHERE 0;

