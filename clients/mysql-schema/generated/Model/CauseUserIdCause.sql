--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'CauseUserIdCause' definition.
--


--
-- SELECT template for table `CauseUserIdCause`
--
SELECT `_class`, `shortDescription`, `userId`, `userName` FROM `CauseUserIdCause` WHERE 1;

--
-- INSERT template for table `CauseUserIdCause`
--
INSERT INTO `CauseUserIdCause`(`_class`, `shortDescription`, `userId`, `userName`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `CauseUserIdCause`
--
UPDATE `CauseUserIdCause` SET `_class` = ?, `shortDescription` = ?, `userId` = ?, `userName` = ? WHERE 1;

--
-- DELETE template for table `CauseUserIdCause`
--
DELETE FROM `CauseUserIdCause` WHERE 0;

