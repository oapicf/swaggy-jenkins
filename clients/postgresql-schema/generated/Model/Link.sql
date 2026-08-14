--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'Link' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'link'
--
SELECT _class, href FROM "link" WHERE 1=1;

--
-- INSERT template for table 'link'
--
INSERT INTO "link" (_class, href) VALUES (?, ?);

--
-- UPDATE template for table 'link'
--
UPDATE "link" SET _class = ?, href = ? WHERE 1=2;

--
-- DELETE template for table 'link'
--
DELETE FROM "link" WHERE 1=2;

