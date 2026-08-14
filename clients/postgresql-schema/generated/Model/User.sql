--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'User' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'user'
--
SELECT _class, "id", full_name, email, "name" FROM "user" WHERE 1=1;

--
-- INSERT template for table 'user'
--
INSERT INTO "user" (_class, "id", full_name, email, "name") VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table 'user'
--
UPDATE "user" SET _class = ?, "id" = ?, full_name = ?, email = ?, "name" = ? WHERE 1=2;

--
-- DELETE template for table 'user'
--
DELETE FROM "user" WHERE 1=2;

