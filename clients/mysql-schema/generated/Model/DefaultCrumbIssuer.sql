--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'DefaultCrumbIssuer' definition.
--


--
-- SELECT template for table `DefaultCrumbIssuer`
--
SELECT `_class`, `crumb`, `crumbRequestField` FROM `DefaultCrumbIssuer` WHERE 1;

--
-- INSERT template for table `DefaultCrumbIssuer`
--
INSERT INTO `DefaultCrumbIssuer`(`_class`, `crumb`, `crumbRequestField`) VALUES (?, ?, ?);

--
-- UPDATE template for table `DefaultCrumbIssuer`
--
UPDATE `DefaultCrumbIssuer` SET `_class` = ?, `crumb` = ?, `crumbRequestField` = ? WHERE 1;

--
-- DELETE template for table `DefaultCrumbIssuer`
--
DELETE FROM `DefaultCrumbIssuer` WHERE 0;

