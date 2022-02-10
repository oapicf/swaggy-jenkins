--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'HudsonMasterComputerexecutors' definition.
--


--
-- SELECT template for table `HudsonMasterComputerexecutors`
--
SELECT `currentExecutable`, `idle`, `likelyStuck`, `number`, `progress`, `_class` FROM `HudsonMasterComputerexecutors` WHERE 1;

--
-- INSERT template for table `HudsonMasterComputerexecutors`
--
INSERT INTO `HudsonMasterComputerexecutors`(`currentExecutable`, `idle`, `likelyStuck`, `number`, `progress`, `_class`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `HudsonMasterComputerexecutors`
--
UPDATE `HudsonMasterComputerexecutors` SET `currentExecutable` = ?, `idle` = ?, `likelyStuck` = ?, `number` = ?, `progress` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `HudsonMasterComputerexecutors`
--
DELETE FROM `HudsonMasterComputerexecutors` WHERE 0;

