--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'AllView' definition.
--


--
-- SELECT template for table `AllView`
--
SELECT `_class`, `name`, `url` FROM `AllView` WHERE 1;

--
-- INSERT template for table `AllView`
--
INSERT INTO `AllView`(`_class`, `name`, `url`) VALUES (?, ?, ?);

--
-- UPDATE template for table `AllView`
--
UPDATE `AllView` SET `_class` = ?, `name` = ?, `url` = ? WHERE 1;

--
-- DELETE template for table `AllView`
--
DELETE FROM `AllView` WHERE 0;

