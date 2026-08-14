--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'DefaultCrumbIssuer' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'default_crumb_issuer'
--
SELECT _class, crumb, crumb_request_field FROM default_crumb_issuer WHERE 1=1;

--
-- INSERT template for table 'default_crumb_issuer'
--
INSERT INTO default_crumb_issuer (_class, crumb, crumb_request_field) VALUES (?, ?, ?);

--
-- UPDATE template for table 'default_crumb_issuer'
--
UPDATE default_crumb_issuer SET _class = ?, crumb = ?, crumb_request_field = ? WHERE 1=2;

--
-- DELETE template for table 'default_crumb_issuer'
--
DELETE FROM default_crumb_issuer WHERE 1=2;

