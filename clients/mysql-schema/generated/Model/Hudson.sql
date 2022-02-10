--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'Hudson' definition.
--


--
-- SELECT template for table `Hudson`
--
SELECT `_class`, `assignedLabels`, `mode`, `nodeDescription`, `nodeName`, `numExecutors`, `description`, `jobs`, `primaryView`, `quietingDown`, `slaveAgentPort`, `unlabeledLoad`, `useCrumbs`, `useSecurity`, `views` FROM `Hudson` WHERE 1;

--
-- INSERT template for table `Hudson`
--
INSERT INTO `Hudson`(`_class`, `assignedLabels`, `mode`, `nodeDescription`, `nodeName`, `numExecutors`, `description`, `jobs`, `primaryView`, `quietingDown`, `slaveAgentPort`, `unlabeledLoad`, `useCrumbs`, `useSecurity`, `views`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `Hudson`
--
UPDATE `Hudson` SET `_class` = ?, `assignedLabels` = ?, `mode` = ?, `nodeDescription` = ?, `nodeName` = ?, `numExecutors` = ?, `description` = ?, `jobs` = ?, `primaryView` = ?, `quietingDown` = ?, `slaveAgentPort` = ?, `unlabeledLoad` = ?, `useCrumbs` = ?, `useSecurity` = ?, `views` = ? WHERE 1;

--
-- DELETE template for table `Hudson`
--
DELETE FROM `Hudson` WHERE 0;

