--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'QueueLeftItem' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'queue_left_item'
--
SELECT _class, actions, "blocked", buildable, "id", in_queue_since, params, stuck, task, url, why, cancelled, executable FROM queue_left_item WHERE 1=1;

--
-- INSERT template for table 'queue_left_item'
--
INSERT INTO queue_left_item (_class, actions, "blocked", buildable, "id", in_queue_since, params, stuck, task, url, why, cancelled, executable) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'queue_left_item'
--
UPDATE queue_left_item SET _class = ?, actions = ?, "blocked" = ?, buildable = ?, "id" = ?, in_queue_since = ?, params = ?, stuck = ?, task = ?, url = ?, why = ?, cancelled = ?, executable = ? WHERE 1=2;

--
-- DELETE template for table 'queue_left_item'
--
DELETE FROM queue_left_item WHERE 1=2;

