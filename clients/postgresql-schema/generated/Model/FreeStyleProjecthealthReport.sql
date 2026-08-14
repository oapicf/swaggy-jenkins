--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'FreeStyleProjecthealthReport' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'free_style_projecthealth_report'
--
SELECT description, icon_class_name, icon_url, score, _class FROM free_style_projecthealth_report WHERE 1=1;

--
-- INSERT template for table 'free_style_projecthealth_report'
--
INSERT INTO free_style_projecthealth_report (description, icon_class_name, icon_url, score, _class) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table 'free_style_projecthealth_report'
--
UPDATE free_style_projecthealth_report SET description = ?, icon_class_name = ?, icon_url = ?, score = ?, _class = ? WHERE 1=2;

--
-- DELETE template for table 'free_style_projecthealth_report'
--
DELETE FROM free_style_projecthealth_report WHERE 1=2;

