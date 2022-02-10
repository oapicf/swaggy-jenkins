--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineRunImpllinks' definition.
--


--
-- SELECT template for table `PipelineRunImpllinks`
--
SELECT `nodes`, `log`, `self`, `actions`, `steps`, `_class` FROM `PipelineRunImpllinks` WHERE 1;

--
-- INSERT template for table `PipelineRunImpllinks`
--
INSERT INTO `PipelineRunImpllinks`(`nodes`, `log`, `self`, `actions`, `steps`, `_class`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PipelineRunImpllinks`
--
UPDATE `PipelineRunImpllinks` SET `nodes` = ?, `log` = ?, `self` = ?, `actions` = ?, `steps` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `PipelineRunImpllinks`
--
DELETE FROM `PipelineRunImpllinks` WHERE 0;

