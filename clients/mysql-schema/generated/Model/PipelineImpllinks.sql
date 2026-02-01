--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineImpllinks' definition.
--


--
-- SELECT template for table `PipelineImpllinks`
--
SELECT `self`, `actions`, `runs`, `queue`, `_class` FROM `PipelineImpllinks` WHERE 1;

--
-- INSERT template for table `PipelineImpllinks`
--
INSERT INTO `PipelineImpllinks`(`self`, `actions`, `runs`, `queue`, `_class`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `PipelineImpllinks`
--
UPDATE `PipelineImpllinks` SET `self` = ?, `actions` = ?, `runs` = ?, `queue` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `PipelineImpllinks`
--
DELETE FROM `PipelineImpllinks` WHERE 0;

