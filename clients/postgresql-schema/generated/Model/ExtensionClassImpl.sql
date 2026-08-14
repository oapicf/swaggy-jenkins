--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'ExtensionClassImpl' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'extension_class_impl'
--
SELECT _class, _links, classes FROM extension_class_impl WHERE 1=1;

--
-- INSERT template for table 'extension_class_impl'
--
INSERT INTO extension_class_impl (_class, _links, classes) VALUES (?, ?, ?);

--
-- UPDATE template for table 'extension_class_impl'
--
UPDATE extension_class_impl SET _class = ?, _links = ?, classes = ? WHERE 1=2;

--
-- DELETE template for table 'extension_class_impl'
--
DELETE FROM extension_class_impl WHERE 1=2;

