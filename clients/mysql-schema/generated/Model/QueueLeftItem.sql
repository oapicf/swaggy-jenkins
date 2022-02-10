--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'QueueLeftItem' definition.
--


--
-- SELECT template for table `QueueLeftItem`
--
SELECT `_class`, `actions`, `blocked`, `buildable`, `id`, `inQueueSince`, `params`, `stuck`, `task`, `url`, `why`, `cancelled`, `executable` FROM `QueueLeftItem` WHERE 1;

--
-- INSERT template for table `QueueLeftItem`
--
INSERT INTO `QueueLeftItem`(`_class`, `actions`, `blocked`, `buildable`, `id`, `inQueueSince`, `params`, `stuck`, `task`, `url`, `why`, `cancelled`, `executable`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `QueueLeftItem`
--
UPDATE `QueueLeftItem` SET `_class` = ?, `actions` = ?, `blocked` = ?, `buildable` = ?, `id` = ?, `inQueueSince` = ?, `params` = ?, `stuck` = ?, `task` = ?, `url` = ?, `why` = ?, `cancelled` = ?, `executable` = ? WHERE 1;

--
-- DELETE template for table `QueueLeftItem`
--
DELETE FROM `QueueLeftItem` WHERE 0;

