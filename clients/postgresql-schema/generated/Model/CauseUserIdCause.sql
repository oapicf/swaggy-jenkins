--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'CauseUserIdCause' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'cause_user_id_cause'
--
SELECT _class, short_description, user_id, user_name FROM cause_user_id_cause WHERE 1=1;

--
-- INSERT template for table 'cause_user_id_cause'
--
INSERT INTO cause_user_id_cause (_class, short_description, user_id, user_name) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table 'cause_user_id_cause'
--
UPDATE cause_user_id_cause SET _class = ?, short_description = ?, user_id = ?, user_name = ? WHERE 1=2;

--
-- DELETE template for table 'cause_user_id_cause'
--
DELETE FROM cause_user_id_cause WHERE 1=2;

