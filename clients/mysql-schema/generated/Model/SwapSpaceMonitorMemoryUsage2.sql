--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'SwapSpaceMonitorMemoryUsage2' definition.
--


--
-- SELECT template for table `SwapSpaceMonitorMemoryUsage2`
--
SELECT `_class`, `availablePhysicalMemory`, `availableSwapSpace`, `totalPhysicalMemory`, `totalSwapSpace` FROM `SwapSpaceMonitorMemoryUsage2` WHERE 1;

--
-- INSERT template for table `SwapSpaceMonitorMemoryUsage2`
--
INSERT INTO `SwapSpaceMonitorMemoryUsage2`(`_class`, `availablePhysicalMemory`, `availableSwapSpace`, `totalPhysicalMemory`, `totalSwapSpace`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `SwapSpaceMonitorMemoryUsage2`
--
UPDATE `SwapSpaceMonitorMemoryUsage2` SET `_class` = ?, `availablePhysicalMemory` = ?, `availableSwapSpace` = ?, `totalPhysicalMemory` = ?, `totalSwapSpace` = ? WHERE 1;

--
-- DELETE template for table `SwapSpaceMonitorMemoryUsage2`
--
DELETE FROM `SwapSpaceMonitorMemoryUsage2` WHERE 0;

