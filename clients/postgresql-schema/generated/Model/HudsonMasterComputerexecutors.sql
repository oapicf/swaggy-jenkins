--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'HudsonMasterComputerexecutors' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'hudson_master_computerexecutors'
--
SELECT current_executable, idle, likely_stuck, "number", progress, _class FROM hudson_master_computerexecutors WHERE 1=1;

--
-- INSERT template for table 'hudson_master_computerexecutors'
--
INSERT INTO hudson_master_computerexecutors (current_executable, idle, likely_stuck, "number", progress, _class) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'hudson_master_computerexecutors'
--
UPDATE hudson_master_computerexecutors SET current_executable = ?, idle = ?, likely_stuck = ?, "number" = ?, progress = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'hudson_master_computerexecutors'
--
DELETE FROM hudson_master_computerexecutors WHERE 1=2;

