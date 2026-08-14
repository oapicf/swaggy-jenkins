--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'ResponseTimeMonitorData' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'response_time_monitor_data'
--
SELECT _class, "timestamp", average FROM response_time_monitor_data WHERE 1=1;

--
-- INSERT template for table 'response_time_monitor_data'
--
INSERT INTO response_time_monitor_data (_class, "timestamp", average) VALUES (?, ?, ?);

--
-- UPDATE template for table 'response_time_monitor_data'
--
UPDATE response_time_monitor_data SET _class = ?, "timestamp" = ?, average = ? WHERE 1=2;

--
-- DELETE template for table 'response_time_monitor_data'
--
DELETE FROM response_time_monitor_data WHERE 1=2;

