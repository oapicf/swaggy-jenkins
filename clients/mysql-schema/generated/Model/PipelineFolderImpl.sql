--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineFolderImpl' definition.
--


--
-- SELECT template for table `PipelineFolderImpl`
--
SELECT `_class`, `displayName`, `fullName`, `name`, `organization`, `numberOfFolders`, `numberOfPipelines` FROM `PipelineFolderImpl` WHERE 1;

--
-- INSERT template for table `PipelineFolderImpl`
--
INSERT INTO `PipelineFolderImpl`(`_class`, `displayName`, `fullName`, `name`, `organization`, `numberOfFolders`, `numberOfPipelines`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PipelineFolderImpl`
--
UPDATE `PipelineFolderImpl` SET `_class` = ?, `displayName` = ?, `fullName` = ?, `name` = ?, `organization` = ?, `numberOfFolders` = ?, `numberOfPipelines` = ? WHERE 1;

--
-- DELETE template for table `PipelineFolderImpl`
--
DELETE FROM `PipelineFolderImpl` WHERE 0;

