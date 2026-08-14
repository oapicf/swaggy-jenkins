--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'HudsonMasterComputer' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'hudson_master_computer'
--
SELECT _class, display_name, executors, icon, icon_class_name, idle, jnlp_agent, launch_supported, load_statistics, manual_launch_allowed, monitor_data, num_executors, offline, offline_cause, offline_cause_reason, temporarily_offline FROM hudson_master_computer WHERE 1=1;

--
-- INSERT template for table 'hudson_master_computer'
--
INSERT INTO hudson_master_computer (_class, display_name, executors, icon, icon_class_name, idle, jnlp_agent, launch_supported, load_statistics, manual_launch_allowed, monitor_data, num_executors, offline, offline_cause, offline_cause_reason, temporarily_offline) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'hudson_master_computer'
--
UPDATE hudson_master_computer SET _class = ?, display_name = ?, executors = ?, icon = ?, icon_class_name = ?, idle = ?, jnlp_agent = ?, launch_supported = ?, load_statistics = ?, manual_launch_allowed = ?, monitor_data = ?, num_executors = ?, offline = ?, offline_cause = ?, offline_cause_reason = ?, temporarily_offline = ? WHERE 1=2;

--
-- DELETE template for table 'hudson_master_computer'
--
DELETE FROM hudson_master_computer WHERE 1=2;

