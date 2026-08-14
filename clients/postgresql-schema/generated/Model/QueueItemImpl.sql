--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'QueueItemImpl' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'queue_item_impl'
--
SELECT _class, expected_build_number, "id", pipeline, queued_time FROM queue_item_impl WHERE 1=1;

--
-- INSERT template for table 'queue_item_impl'
--
INSERT INTO queue_item_impl (_class, expected_build_number, "id", pipeline, queued_time) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table 'queue_item_impl'
--
UPDATE queue_item_impl SET _class = ?, expected_build_number = ?, "id" = ?, pipeline = ?, queued_time = ? WHERE 1=2;

--
-- DELETE template for table 'queue_item_impl'
--
DELETE FROM queue_item_impl WHERE 1=2;

