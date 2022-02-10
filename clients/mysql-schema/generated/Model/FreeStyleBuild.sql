--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'FreeStyleBuild' definition.
--


--
-- SELECT template for table `FreeStyleBuild`
--
SELECT `_class`, `number`, `url`, `actions`, `building`, `description`, `displayName`, `duration`, `estimatedDuration`, `executor`, `fullDisplayName`, `id`, `keepLog`, `queueId`, `result`, `timestamp`, `builtOn`, `changeSet` FROM `FreeStyleBuild` WHERE 1;

--
-- INSERT template for table `FreeStyleBuild`
--
INSERT INTO `FreeStyleBuild`(`_class`, `number`, `url`, `actions`, `building`, `description`, `displayName`, `duration`, `estimatedDuration`, `executor`, `fullDisplayName`, `id`, `keepLog`, `queueId`, `result`, `timestamp`, `builtOn`, `changeSet`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `FreeStyleBuild`
--
UPDATE `FreeStyleBuild` SET `_class` = ?, `number` = ?, `url` = ?, `actions` = ?, `building` = ?, `description` = ?, `displayName` = ?, `duration` = ?, `estimatedDuration` = ?, `executor` = ?, `fullDisplayName` = ?, `id` = ?, `keepLog` = ?, `queueId` = ?, `result` = ?, `timestamp` = ?, `builtOn` = ?, `changeSet` = ? WHERE 1;

--
-- DELETE template for table `FreeStyleBuild`
--
DELETE FROM `FreeStyleBuild` WHERE 0;

