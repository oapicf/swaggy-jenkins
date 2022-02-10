--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'GithubRepositorypermissions' definition.
--


--
-- SELECT template for table `GithubRepositorypermissions`
--
SELECT `admin`, `push`, `pull`, `_class` FROM `GithubRepositorypermissions` WHERE 1;

--
-- INSERT template for table `GithubRepositorypermissions`
--
INSERT INTO `GithubRepositorypermissions`(`admin`, `push`, `pull`, `_class`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `GithubRepositorypermissions`
--
UPDATE `GithubRepositorypermissions` SET `admin` = ?, `push` = ?, `pull` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `GithubRepositorypermissions`
--
DELETE FROM `GithubRepositorypermissions` WHERE 0;

