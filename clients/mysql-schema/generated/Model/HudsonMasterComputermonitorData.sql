--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'HudsonMasterComputermonitorData' definition.
--


--
-- SELECT template for table `HudsonMasterComputermonitorData`
--
SELECT `hudson.node_monitors.SwapSpaceMonitor`, `hudson.node_monitors.TemporarySpaceMonitor`, `hudson.node_monitors.DiskSpaceMonitor`, `hudson.node_monitors.ArchitectureMonitor`, `hudson.node_monitors.ResponseTimeMonitor`, `hudson.node_monitors.ClockMonitor`, `_class` FROM `HudsonMasterComputermonitorData` WHERE 1;

--
-- INSERT template for table `HudsonMasterComputermonitorData`
--
INSERT INTO `HudsonMasterComputermonitorData`(`hudson.node_monitors.SwapSpaceMonitor`, `hudson.node_monitors.TemporarySpaceMonitor`, `hudson.node_monitors.DiskSpaceMonitor`, `hudson.node_monitors.ArchitectureMonitor`, `hudson.node_monitors.ResponseTimeMonitor`, `hudson.node_monitors.ClockMonitor`, `_class`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `HudsonMasterComputermonitorData`
--
UPDATE `HudsonMasterComputermonitorData` SET `hudson.node_monitors.SwapSpaceMonitor` = ?, `hudson.node_monitors.TemporarySpaceMonitor` = ?, `hudson.node_monitors.DiskSpaceMonitor` = ?, `hudson.node_monitors.ArchitectureMonitor` = ?, `hudson.node_monitors.ResponseTimeMonitor` = ?, `hudson.node_monitors.ClockMonitor` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `HudsonMasterComputermonitorData`
--
DELETE FROM `HudsonMasterComputermonitorData` WHERE 0;

