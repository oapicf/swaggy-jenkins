--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'GithubContent' definition.
--


--
-- SELECT template for table `GithubContent`
--
SELECT `name`, `sha`, `_class`, `repo`, `size`, `owner`, `path`, `base64Data` FROM `GithubContent` WHERE 1;

--
-- INSERT template for table `GithubContent`
--
INSERT INTO `GithubContent`(`name`, `sha`, `_class`, `repo`, `size`, `owner`, `path`, `base64Data`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `GithubContent`
--
UPDATE `GithubContent` SET `name` = ?, `sha` = ?, `_class` = ?, `repo` = ?, `size` = ?, `owner` = ?, `path` = ?, `base64Data` = ? WHERE 1;

--
-- DELETE template for table `GithubContent`
--
DELETE FROM `GithubContent` WHERE 0;

