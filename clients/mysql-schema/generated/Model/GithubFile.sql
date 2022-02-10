--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'GithubFile' definition.
--


--
-- SELECT template for table `GithubFile`
--
SELECT `content`, `_class` FROM `GithubFile` WHERE 1;

--
-- INSERT template for table `GithubFile`
--
INSERT INTO `GithubFile`(`content`, `_class`) VALUES (?, ?);

--
-- UPDATE template for table `GithubFile`
--
UPDATE `GithubFile` SET `content` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `GithubFile`
--
DELETE FROM `GithubFile` WHERE 0;

