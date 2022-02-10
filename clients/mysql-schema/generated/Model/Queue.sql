--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'Queue' definition.
--


--
-- SELECT template for table `Queue`
--
SELECT `_class`, `items` FROM `Queue` WHERE 1;

--
-- INSERT template for table `Queue`
--
INSERT INTO `Queue`(`_class`, `items`) VALUES (?, ?);

--
-- UPDATE template for table `Queue`
--
UPDATE `Queue` SET `_class` = ?, `items` = ? WHERE 1;

--
-- DELETE template for table `Queue`
--
DELETE FROM `Queue` WHERE 0;

