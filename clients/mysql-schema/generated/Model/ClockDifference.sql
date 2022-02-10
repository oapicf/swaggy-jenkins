--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'ClockDifference' definition.
--


--
-- SELECT template for table `ClockDifference`
--
SELECT `_class`, `diff` FROM `ClockDifference` WHERE 1;

--
-- INSERT template for table `ClockDifference`
--
INSERT INTO `ClockDifference`(`_class`, `diff`) VALUES (?, ?);

--
-- UPDATE template for table `ClockDifference`
--
UPDATE `ClockDifference` SET `_class` = ?, `diff` = ? WHERE 1;

--
-- DELETE template for table `ClockDifference`
--
DELETE FROM `ClockDifference` WHERE 0;

