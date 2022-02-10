--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'FreeStyleProjecthealthReport' definition.
--


--
-- SELECT template for table `FreeStyleProjecthealthReport`
--
SELECT `description`, `iconClassName`, `iconUrl`, `score`, `_class` FROM `FreeStyleProjecthealthReport` WHERE 1;

--
-- INSERT template for table `FreeStyleProjecthealthReport`
--
INSERT INTO `FreeStyleProjecthealthReport`(`description`, `iconClassName`, `iconUrl`, `score`, `_class`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `FreeStyleProjecthealthReport`
--
UPDATE `FreeStyleProjecthealthReport` SET `description` = ?, `iconClassName` = ?, `iconUrl` = ?, `score` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `FreeStyleProjecthealthReport`
--
DELETE FROM `FreeStyleProjecthealthReport` WHERE 0;

