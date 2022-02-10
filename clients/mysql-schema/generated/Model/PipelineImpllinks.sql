--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineImpllinks' definition.
--


--
-- SELECT template for table `PipelineImpllinks`
--
SELECT `runs`, `self`, `queue`, `actions`, `_class` FROM `PipelineImpllinks` WHERE 1;

--
-- INSERT template for table `PipelineImpllinks`
--
INSERT INTO `PipelineImpllinks`(`runs`, `self`, `queue`, `actions`, `_class`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `PipelineImpllinks`
--
UPDATE `PipelineImpllinks` SET `runs` = ?, `self` = ?, `queue` = ?, `actions` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `PipelineImpllinks`
--
DELETE FROM `PipelineImpllinks` WHERE 0;

