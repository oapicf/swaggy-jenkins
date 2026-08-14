--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'ExtensionClassImpllinks' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'extension_class_impllinks'
--
SELECT "self", _class FROM extension_class_impllinks WHERE 1=1;

--
-- INSERT template for table 'extension_class_impllinks'
--
INSERT INTO extension_class_impllinks ("self", _class) VALUES (?, ?);

--
-- UPDATE template for table 'extension_class_impllinks'
--
UPDATE extension_class_impllinks SET "self" = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'extension_class_impllinks'
--
DELETE FROM extension_class_impllinks WHERE 1=2;

