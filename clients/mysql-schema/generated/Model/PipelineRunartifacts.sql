--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineRunartifacts' definition.
--


--
-- SELECT template for table `PipelineRunartifacts`
--
SELECT `name`, `size`, `url`, `_class` FROM `PipelineRunartifacts` WHERE 1;

--
-- INSERT template for table `PipelineRunartifacts`
--
INSERT INTO `PipelineRunartifacts`(`name`, `size`, `url`, `_class`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `PipelineRunartifacts`
--
UPDATE `PipelineRunartifacts` SET `name` = ?, `size` = ?, `url` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `PipelineRunartifacts`
--
DELETE FROM `PipelineRunartifacts` WHERE 0;

