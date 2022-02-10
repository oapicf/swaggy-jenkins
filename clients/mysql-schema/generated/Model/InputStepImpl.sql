--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'InputStepImpl' definition.
--


--
-- SELECT template for table `InputStepImpl`
--
SELECT `_class`, `_links`, `id`, `message`, `ok`, `parameters`, `submitter` FROM `InputStepImpl` WHERE 1;

--
-- INSERT template for table `InputStepImpl`
--
INSERT INTO `InputStepImpl`(`_class`, `_links`, `id`, `message`, `ok`, `parameters`, `submitter`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `InputStepImpl`
--
UPDATE `InputStepImpl` SET `_class` = ?, `_links` = ?, `id` = ?, `message` = ?, `ok` = ?, `parameters` = ?, `submitter` = ? WHERE 1;

--
-- DELETE template for table `InputStepImpl`
--
DELETE FROM `InputStepImpl` WHERE 0;

