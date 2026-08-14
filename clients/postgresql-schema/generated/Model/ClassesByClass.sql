--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'ClassesByClass' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'classes_by_class'
--
SELECT classes, _class FROM classes_by_class WHERE 1=1;

--
-- INSERT template for table 'classes_by_class'
--
INSERT INTO classes_by_class (classes, _class) VALUES (?, ?);

--
-- UPDATE template for table 'classes_by_class'
--
UPDATE classes_by_class SET classes = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'classes_by_class'
--
DELETE FROM classes_by_class WHERE 1=2;

