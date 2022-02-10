--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'HudsonMasterComputer' definition.
--


--
-- SELECT template for table `HudsonMasterComputer`
--
SELECT `_class`, `displayName`, `executors`, `icon`, `iconClassName`, `idle`, `jnlpAgent`, `launchSupported`, `loadStatistics`, `manualLaunchAllowed`, `monitorData`, `numExecutors`, `offline`, `offlineCause`, `offlineCauseReason`, `temporarilyOffline` FROM `HudsonMasterComputer` WHERE 1;

--
-- INSERT template for table `HudsonMasterComputer`
--
INSERT INTO `HudsonMasterComputer`(`_class`, `displayName`, `executors`, `icon`, `iconClassName`, `idle`, `jnlpAgent`, `launchSupported`, `loadStatistics`, `manualLaunchAllowed`, `monitorData`, `numExecutors`, `offline`, `offlineCause`, `offlineCauseReason`, `temporarilyOffline`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `HudsonMasterComputer`
--
UPDATE `HudsonMasterComputer` SET `_class` = ?, `displayName` = ?, `executors` = ?, `icon` = ?, `iconClassName` = ?, `idle` = ?, `jnlpAgent` = ?, `launchSupported` = ?, `loadStatistics` = ?, `manualLaunchAllowed` = ?, `monitorData` = ?, `numExecutors` = ?, `offline` = ?, `offlineCause` = ?, `offlineCauseReason` = ?, `temporarilyOffline` = ? WHERE 1;

--
-- DELETE template for table `HudsonMasterComputer`
--
DELETE FROM `HudsonMasterComputer` WHERE 0;

