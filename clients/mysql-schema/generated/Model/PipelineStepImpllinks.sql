--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineStepImpllinks' definition.
--


--
-- SELECT template for table `PipelineStepImpllinks`
--
SELECT `self`, `actions`, `_class` FROM `PipelineStepImpllinks` WHERE 1;

--
-- INSERT template for table `PipelineStepImpllinks`
--
INSERT INTO `PipelineStepImpllinks`(`self`, `actions`, `_class`) VALUES (?, ?, ?);

--
-- UPDATE template for table `PipelineStepImpllinks`
--
UPDATE `PipelineStepImpllinks` SET `self` = ?, `actions` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `PipelineStepImpllinks`
--
DELETE FROM `PipelineStepImpllinks` WHERE 0;

