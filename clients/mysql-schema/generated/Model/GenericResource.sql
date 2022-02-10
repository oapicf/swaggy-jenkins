--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'GenericResource' definition.
--


--
-- SELECT template for table `GenericResource`
--
SELECT `_class`, `displayName`, `durationInMillis`, `id`, `result`, `startTime` FROM `GenericResource` WHERE 1;

--
-- INSERT template for table `GenericResource`
--
INSERT INTO `GenericResource`(`_class`, `displayName`, `durationInMillis`, `id`, `result`, `startTime`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `GenericResource`
--
UPDATE `GenericResource` SET `_class` = ?, `displayName` = ?, `durationInMillis` = ?, `id` = ?, `result` = ?, `startTime` = ? WHERE 1;

--
-- DELETE template for table `GenericResource`
--
DELETE FROM `GenericResource` WHERE 0;

