--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'HudsonMasterComputermonitorData' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'hudson_master_computermonitor_data'
--
SELECT hudson/node_monitors/swap_space_monitor, hudson/node_monitors/temporary_space_monitor, hudson/node_monitors/disk_space_monitor, hudson/node_monitors/architecture_monitor, hudson/node_monitors/response_time_monitor, hudson/node_monitors/clock_monitor, _class FROM hudson_master_computermonitor_data WHERE 1=1;

--
-- INSERT template for table 'hudson_master_computermonitor_data'
--
INSERT INTO hudson_master_computermonitor_data (hudson/node_monitors/swap_space_monitor, hudson/node_monitors/temporary_space_monitor, hudson/node_monitors/disk_space_monitor, hudson/node_monitors/architecture_monitor, hudson/node_monitors/response_time_monitor, hudson/node_monitors/clock_monitor, _class) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'hudson_master_computermonitor_data'
--
UPDATE hudson_master_computermonitor_data SET hudson/node_monitors/swap_space_monitor = ?, hudson/node_monitors/temporary_space_monitor = ?, hudson/node_monitors/disk_space_monitor = ?, hudson/node_monitors/architecture_monitor = ?, hudson/node_monitors/response_time_monitor = ?, hudson/node_monitors/clock_monitor = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'hudson_master_computermonitor_data'
--
DELETE FROM hudson_master_computermonitor_data WHERE 1=2;

