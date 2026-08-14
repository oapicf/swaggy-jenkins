--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'QueueBlockedItem' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'queue_blocked_item'
--
SELECT _class, actions, "blocked", buildable, "id", in_queue_since, params, stuck, task, url, why, buildable_start_milliseconds FROM queue_blocked_item WHERE 1=1;

--
-- INSERT template for table 'queue_blocked_item'
--
INSERT INTO queue_blocked_item (_class, actions, "blocked", buildable, "id", in_queue_since, params, stuck, task, url, why, buildable_start_milliseconds) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'queue_blocked_item'
--
UPDATE queue_blocked_item SET _class = ?, actions = ?, "blocked" = ?, buildable = ?, "id" = ?, in_queue_since = ?, params = ?, stuck = ?, task = ?, url = ?, why = ?, buildable_start_milliseconds = ? WHERE 1=2;

--
-- DELETE template for table 'queue_blocked_item'
--
DELETE FROM queue_blocked_item WHERE 1=2;

