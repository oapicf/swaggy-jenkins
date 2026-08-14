--
-- "Swaggy Jenkins"
-- Prepared SQL queries for 'Hudson' definition.
-- Created using 'openapi-generator' ('postgresql-schema' generator)
-- (https://openapi-generator.tech/docs/generators/postgresql-schema)
--


--
-- SELECT template for table 'hudson'
--
SELECT _class, assigned_labels, "mode", node_description, node_name, num_executors, description, jobs, primary_view, quieting_down, slave_agent_port, unlabeled_load, use_crumbs, use_security, "views" FROM hudson WHERE 1=1;

--
-- INSERT template for table 'hudson'
--
INSERT INTO hudson (_class, assigned_labels, "mode", node_description, node_name, num_executors, description, jobs, primary_view, quieting_down, slave_agent_port, unlabeled_load, use_crumbs, use_security, "views") VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table 'hudson'
--
UPDATE hudson SET _class = ?, assigned_labels = ?, "mode" = ?, node_description = ?, node_name = ?, num_executors = ?, description = ?, jobs = ?, primary_view = ?, quieting_down = ?, slave_agent_port = ?, unlabeled_load = ?, use_crumbs = ?, use_security = ?, "views" = ? WHERE 1=2;

--
-- DELETE template for table 'hudson'
--
DELETE FROM hudson WHERE 1=2;

