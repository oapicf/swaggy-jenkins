--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'FavoriteImpl' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'favorite_impl'
--
SELECT _class, _links, item FROM favorite_impl WHERE 1=1;

--
-- INSERT template for table 'favorite_impl'
--
INSERT INTO favorite_impl (_class, _links, item) VALUES (?, ?, ?);

--
-- UPDATE template for table 'favorite_impl'
--
UPDATE favorite_impl SET _class = ?, _links = ?, item = ? WHERE 1=2;

--
-- DELETE template for table 'favorite_impl'
--
DELETE FROM favorite_impl WHERE 1=2;

