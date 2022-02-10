--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'ClassesByClass' definition.
--


--
-- SELECT template for table `ClassesByClass`
--
SELECT `classes`, `_class` FROM `ClassesByClass` WHERE 1;

--
-- INSERT template for table `ClassesByClass`
--
INSERT INTO `ClassesByClass`(`classes`, `_class`) VALUES (?, ?);

--
-- UPDATE template for table `ClassesByClass`
--
UPDATE `ClassesByClass` SET `classes` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `ClassesByClass`
--
DELETE FROM `ClassesByClass` WHERE 0;

