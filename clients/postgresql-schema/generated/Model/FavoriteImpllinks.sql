--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'FavoriteImpllinks' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'favorite_impllinks'
--
SELECT "self", _class FROM favorite_impllinks WHERE 1=1;

--
-- INSERT template for table 'favorite_impllinks'
--
INSERT INTO favorite_impllinks ("self", _class) VALUES (?, ?);

--
-- UPDATE template for table 'favorite_impllinks'
--
UPDATE favorite_impllinks SET "self" = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'favorite_impllinks'
--
DELETE FROM favorite_impllinks WHERE 1=2;

