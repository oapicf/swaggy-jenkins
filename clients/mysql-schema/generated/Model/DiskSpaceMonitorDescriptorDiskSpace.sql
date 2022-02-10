--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'DiskSpaceMonitorDescriptorDiskSpace' definition.
--


--
-- SELECT template for table `DiskSpaceMonitorDescriptorDiskSpace`
--
SELECT `_class`, `timestamp`, `path`, `size` FROM `DiskSpaceMonitorDescriptorDiskSpace` WHERE 1;

--
-- INSERT template for table `DiskSpaceMonitorDescriptorDiskSpace`
--
INSERT INTO `DiskSpaceMonitorDescriptorDiskSpace`(`_class`, `timestamp`, `path`, `size`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `DiskSpaceMonitorDescriptorDiskSpace`
--
UPDATE `DiskSpaceMonitorDescriptorDiskSpace` SET `_class` = ?, `timestamp` = ?, `path` = ?, `size` = ? WHERE 1;

--
-- DELETE template for table `DiskSpaceMonitorDescriptorDiskSpace`
--
DELETE FROM `DiskSpaceMonitorDescriptorDiskSpace` WHERE 0;

