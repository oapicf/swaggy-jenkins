--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'StringParameterValue' definition.
--


--
-- SELECT template for table `StringParameterValue`
--
SELECT `_class`, `name`, `value` FROM `StringParameterValue` WHERE 1;

--
-- INSERT template for table `StringParameterValue`
--
INSERT INTO `StringParameterValue`(`_class`, `name`, `value`) VALUES (?, ?, ?);

--
-- UPDATE template for table `StringParameterValue`
--
UPDATE `StringParameterValue` SET `_class` = ?, `name` = ?, `value` = ? WHERE 1;

--
-- DELETE template for table `StringParameterValue`
--
DELETE FROM `StringParameterValue` WHERE 0;

