--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'CauseAction' definition.
--


--
-- SELECT template for table `CauseAction`
--
SELECT `_class`, `causes` FROM `CauseAction` WHERE 1;

--
-- INSERT template for table `CauseAction`
--
INSERT INTO `CauseAction`(`_class`, `causes`) VALUES (?, ?);

--
-- UPDATE template for table `CauseAction`
--
UPDATE `CauseAction` SET `_class` = ?, `causes` = ? WHERE 1;

--
-- DELETE template for table `CauseAction`
--
DELETE FROM `CauseAction` WHERE 0;

