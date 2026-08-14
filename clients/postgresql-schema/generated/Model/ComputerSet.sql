--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'ComputerSet' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'computer_set'
--
SELECT _class, busy_executors, computer, display_name, total_executors FROM computer_set WHERE 1=1;

--
-- INSERT template for table 'computer_set'
--
INSERT INTO computer_set (_class, busy_executors, computer, display_name, total_executors) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table 'computer_set'
--
UPDATE computer_set SET _class = ?, busy_executors = ?, computer = ?, display_name = ?, total_executors = ? WHERE 1=2;

--
-- DELETE template for table 'computer_set'
--
DELETE FROM computer_set WHERE 1=2;

