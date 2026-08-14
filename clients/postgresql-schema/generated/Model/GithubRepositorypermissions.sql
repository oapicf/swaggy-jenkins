--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'GithubRepositorypermissions' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'github_repositorypermissions'
--
SELECT "admin", push, pull, _class FROM github_repositorypermissions WHERE 1=1;

--
-- INSERT template for table 'github_repositorypermissions'
--
INSERT INTO github_repositorypermissions ("admin", push, pull, _class) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table 'github_repositorypermissions'
--
UPDATE github_repositorypermissions SET "admin" = ?, push = ?, pull = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'github_repositorypermissions'
--
DELETE FROM github_repositorypermissions WHERE 1=2;

