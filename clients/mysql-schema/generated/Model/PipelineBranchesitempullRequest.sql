--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'PipelineBranchesitempullRequest' definition.
--


--
-- SELECT template for table `PipelineBranchesitempullRequest`
--
SELECT `_links`, `author`, `id`, `title`, `url`, `_class` FROM `PipelineBranchesitempullRequest` WHERE 1;

--
-- INSERT template for table `PipelineBranchesitempullRequest`
--
INSERT INTO `PipelineBranchesitempullRequest`(`_links`, `author`, `id`, `title`, `url`, `_class`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `PipelineBranchesitempullRequest`
--
UPDATE `PipelineBranchesitempullRequest` SET `_links` = ?, `author` = ?, `id` = ?, `title` = ?, `url` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `PipelineBranchesitempullRequest`
--
DELETE FROM `PipelineBranchesitempullRequest` WHERE 0;

