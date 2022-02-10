--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelinelatestRunartifacts' definition.
--


--
-- SELECT template for table `PipelinelatestRunartifacts`
--
SELECT `name`, `size`, `url`, `_class` FROM `PipelinelatestRunartifacts` WHERE 1;

--
-- INSERT template for table `PipelinelatestRunartifacts`
--
INSERT INTO `PipelinelatestRunartifacts`(`name`, `size`, `url`, `_class`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `PipelinelatestRunartifacts`
--
UPDATE `PipelinelatestRunartifacts` SET `name` = ?, `size` = ?, `url` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `PipelinelatestRunartifacts`
--
DELETE FROM `PipelinelatestRunartifacts` WHERE 0;

