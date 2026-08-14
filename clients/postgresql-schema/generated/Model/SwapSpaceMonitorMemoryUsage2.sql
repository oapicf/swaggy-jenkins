--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'SwapSpaceMonitorMemoryUsage2' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'swap_space_monitor_memory_usage2'
--
SELECT _class, available_physical_memory, available_swap_space, total_physical_memory, total_swap_space FROM swap_space_monitor_memory_usage2 WHERE 1=1;

--
-- INSERT template for table 'swap_space_monitor_memory_usage2'
--
INSERT INTO swap_space_monitor_memory_usage2 (_class, available_physical_memory, available_swap_space, total_physical_memory, total_swap_space) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table 'swap_space_monitor_memory_usage2'
--
UPDATE swap_space_monitor_memory_usage2 SET _class = ?, available_physical_memory = ?, available_swap_space = ?, total_physical_memory = ?, total_swap_space = ? WHERE 1=2;

--
-- DELETE template for table 'swap_space_monitor_memory_usage2'
--
DELETE FROM swap_space_monitor_memory_usage2 WHERE 1=2;

