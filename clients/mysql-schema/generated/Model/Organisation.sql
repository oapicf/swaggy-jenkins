--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'Organisation' definition.
--


--
-- SELECT template for table `Organisation`
--
SELECT `_class`, `name` FROM `Organisation` WHERE 1;

--
-- INSERT template for table `Organisation`
--
INSERT INTO `Organisation`(`_class`, `name`) VALUES (?, ?);

--
-- UPDATE template for table `Organisation`
--
UPDATE `Organisation` SET `_class` = ?, `name` = ? WHERE 1;

--
-- DELETE template for table `Organisation`
--
DELETE FROM `Organisation` WHERE 0;

