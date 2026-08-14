--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'BranchImplpermissions' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'branch_implpermissions'
--
SELECT "create", "read", "start", stop, _class FROM branch_implpermissions WHERE 1=1;

--
-- INSERT template for table 'branch_implpermissions'
--
INSERT INTO branch_implpermissions ("create", "read", "start", stop, _class) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table 'branch_implpermissions'
--
UPDATE branch_implpermissions SET "create" = ?, "read" = ?, "start" = ?, stop = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'branch_implpermissions'
--
DELETE FROM branch_implpermissions WHERE 1=2;

