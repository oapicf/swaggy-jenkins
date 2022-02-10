--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineRunNode' definition.
--


--
-- SELECT template for table `PipelineRunNode`
--
SELECT `_class`, `displayName`, `durationInMillis`, `edges`, `id`, `result`, `startTime`, `state` FROM `PipelineRunNode` WHERE 1;

--
-- INSERT template for table `PipelineRunNode`
--
INSERT INTO `PipelineRunNode`(`_class`, `displayName`, `durationInMillis`, `edges`, `id`, `result`, `startTime`, `state`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PipelineRunNode`
--
UPDATE `PipelineRunNode` SET `_class` = ?, `displayName` = ?, `durationInMillis` = ?, `edges` = ?, `id` = ?, `result` = ?, `startTime` = ?, `state` = ? WHERE 1;

--
-- DELETE template for table `PipelineRunNode`
--
DELETE FROM `PipelineRunNode` WHERE 0;

