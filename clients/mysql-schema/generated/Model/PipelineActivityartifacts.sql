--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineActivityartifacts' definition.
--


--
-- SELECT template for table `PipelineActivityartifacts`
--
SELECT `name`, `size`, `url`, `_class` FROM `PipelineActivityartifacts` WHERE 1;

--
-- INSERT template for table `PipelineActivityartifacts`
--
INSERT INTO `PipelineActivityartifacts`(`name`, `size`, `url`, `_class`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `PipelineActivityartifacts`
--
UPDATE `PipelineActivityartifacts` SET `name` = ?, `size` = ?, `url` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `PipelineActivityartifacts`
--
DELETE FROM `PipelineActivityartifacts` WHERE 0;

