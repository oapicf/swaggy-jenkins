--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineRunNodeedges' definition.
--


--
-- SELECT template for table `PipelineRunNodeedges`
--
SELECT `id`, `_class` FROM `PipelineRunNodeedges` WHERE 1;

--
-- INSERT template for table `PipelineRunNodeedges`
--
INSERT INTO `PipelineRunNodeedges`(`id`, `_class`) VALUES (?, ?);

--
-- UPDATE template for table `PipelineRunNodeedges`
--
UPDATE `PipelineRunNodeedges` SET `id` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `PipelineRunNodeedges`
--
DELETE FROM `PipelineRunNodeedges` WHERE 0;

