--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'ComputerSet' definition.
--


--
-- SELECT template for table `ComputerSet`
--
SELECT `_class`, `busyExecutors`, `computer`, `displayName`, `totalExecutors` FROM `ComputerSet` WHERE 1;

--
-- INSERT template for table `ComputerSet`
--
INSERT INTO `ComputerSet`(`_class`, `busyExecutors`, `computer`, `displayName`, `totalExecutors`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `ComputerSet`
--
UPDATE `ComputerSet` SET `_class` = ?, `busyExecutors` = ?, `computer` = ?, `displayName` = ?, `totalExecutors` = ? WHERE 1;

--
-- DELETE template for table `ComputerSet`
--
DELETE FROM `ComputerSet` WHERE 0;

