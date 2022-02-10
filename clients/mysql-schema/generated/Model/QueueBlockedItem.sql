--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'QueueBlockedItem' definition.
--


--
-- SELECT template for table `QueueBlockedItem`
--
SELECT `_class`, `actions`, `blocked`, `buildable`, `id`, `inQueueSince`, `params`, `stuck`, `task`, `url`, `why`, `buildableStartMilliseconds` FROM `QueueBlockedItem` WHERE 1;

--
-- INSERT template for table `QueueBlockedItem`
--
INSERT INTO `QueueBlockedItem`(`_class`, `actions`, `blocked`, `buildable`, `id`, `inQueueSince`, `params`, `stuck`, `task`, `url`, `why`, `buildableStartMilliseconds`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `QueueBlockedItem`
--
UPDATE `QueueBlockedItem` SET `_class` = ?, `actions` = ?, `blocked` = ?, `buildable` = ?, `id` = ?, `inQueueSince` = ?, `params` = ?, `stuck` = ?, `task` = ?, `url` = ?, `why` = ?, `buildableStartMilliseconds` = ? WHERE 1;

--
-- DELETE template for table `QueueBlockedItem`
--
DELETE FROM `QueueBlockedItem` WHERE 0;

