--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'QueueItemImpl' definition.
--


--
-- SELECT template for table `QueueItemImpl`
--
SELECT `_class`, `expectedBuildNumber`, `id`, `pipeline`, `queuedTime` FROM `QueueItemImpl` WHERE 1;

--
-- INSERT template for table `QueueItemImpl`
--
INSERT INTO `QueueItemImpl`(`_class`, `expectedBuildNumber`, `id`, `pipeline`, `queuedTime`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `QueueItemImpl`
--
UPDATE `QueueItemImpl` SET `_class` = ?, `expectedBuildNumber` = ?, `id` = ?, `pipeline` = ?, `queuedTime` = ? WHERE 1;

--
-- DELETE template for table `QueueItemImpl`
--
DELETE FROM `QueueItemImpl` WHERE 0;

