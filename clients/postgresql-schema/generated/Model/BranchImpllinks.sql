--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'BranchImpllinks' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'branch_impllinks'
--
SELECT "self", actions, runs, queue, _class FROM branch_impllinks WHERE 1=1;

--
-- INSERT template for table 'branch_impllinks'
--
INSERT INTO branch_impllinks ("self", actions, runs, queue, _class) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table 'branch_impllinks'
--
UPDATE branch_impllinks SET "self" = ?, actions = ?, runs = ?, queue = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'branch_impllinks'
--
DELETE FROM branch_impllinks WHERE 1=2;

