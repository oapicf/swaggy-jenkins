--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'ResponseTimeMonitorData' definition.
--


--
-- SELECT template for table `ResponseTimeMonitorData`
--
SELECT `_class`, `timestamp`, `average` FROM `ResponseTimeMonitorData` WHERE 1;

--
-- INSERT template for table `ResponseTimeMonitorData`
--
INSERT INTO `ResponseTimeMonitorData`(`_class`, `timestamp`, `average`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ResponseTimeMonitorData`
--
UPDATE `ResponseTimeMonitorData` SET `_class` = ?, `timestamp` = ?, `average` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeMonitorData`
--
DELETE FROM `ResponseTimeMonitorData` WHERE 0;

