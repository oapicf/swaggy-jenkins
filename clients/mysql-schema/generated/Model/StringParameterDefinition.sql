--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'StringParameterDefinition' definition.
--


--
-- SELECT template for table `StringParameterDefinition`
--
SELECT `_class`, `defaultParameterValue`, `description`, `name`, `type` FROM `StringParameterDefinition` WHERE 1;

--
-- INSERT template for table `StringParameterDefinition`
--
INSERT INTO `StringParameterDefinition`(`_class`, `defaultParameterValue`, `description`, `name`, `type`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `StringParameterDefinition`
--
UPDATE `StringParameterDefinition` SET `_class` = ?, `defaultParameterValue` = ?, `description` = ?, `name` = ?, `type` = ? WHERE 1;

--
-- DELETE template for table `StringParameterDefinition`
--
DELETE FROM `StringParameterDefinition` WHERE 0;

