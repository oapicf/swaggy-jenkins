--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'BranchImplpermissions' definition.
--


--
-- SELECT template for table `BranchImplpermissions`
--
SELECT `create`, `read`, `start`, `stop`, `_class` FROM `BranchImplpermissions` WHERE 1;

--
-- INSERT template for table `BranchImplpermissions`
--
INSERT INTO `BranchImplpermissions`(`create`, `read`, `start`, `stop`, `_class`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `BranchImplpermissions`
--
UPDATE `BranchImplpermissions` SET `create` = ?, `read` = ?, `start` = ?, `stop` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `BranchImplpermissions`
--
DELETE FROM `BranchImplpermissions` WHERE 0;

