--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'CauseAction' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'cause_action'
--
SELECT _class, causes FROM cause_action WHERE 1=1;

--
-- INSERT template for table 'cause_action'
--
INSERT INTO cause_action (_class, causes) VALUES (?, ?);

--
-- UPDATE template for table 'cause_action'
--
UPDATE cause_action SET _class = ?, causes = ? WHERE 1=2;

--
-- DELETE template for table 'cause_action'
--
DELETE FROM cause_action WHERE 1=2;

