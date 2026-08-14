--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'DiskSpaceMonitorDescriptorDiskSpace' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'disk_space_monitor_descriptor_disk_space'
--
SELECT _class, "timestamp", "path", "size" FROM disk_space_monitor_descriptor_disk_space WHERE 1=1;

--
-- INSERT template for table 'disk_space_monitor_descriptor_disk_space'
--
INSERT INTO disk_space_monitor_descriptor_disk_space (_class, "timestamp", "path", "size") VALUES (?, ?, ?, ?);

--
-- UPDATE template for table 'disk_space_monitor_descriptor_disk_space'
--
UPDATE disk_space_monitor_descriptor_disk_space SET _class = ?, "timestamp" = ?, "path" = ?, "size" = ? WHERE 1=2;

--
-- DELETE template for table 'disk_space_monitor_descriptor_disk_space'
--
DELETE FROM disk_space_monitor_descriptor_disk_space WHERE 1=2;

