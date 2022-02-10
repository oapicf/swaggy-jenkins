--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'ListView' definition.
--


--
-- SELECT template for table `ListView`
--
SELECT `_class`, `description`, `jobs`, `name`, `url` FROM `ListView` WHERE 1;

--
-- INSERT template for table `ListView`
--
INSERT INTO `ListView`(`_class`, `description`, `jobs`, `name`, `url`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `ListView`
--
UPDATE `ListView` SET `_class` = ?, `description` = ?, `jobs` = ?, `name` = ?, `url` = ? WHERE 1;

--
-- DELETE template for table `ListView`
--
DELETE FROM `ListView` WHERE 0;

