--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'Link' definition.
--


--
-- SELECT template for table `Link`
--
SELECT `_class`, `href` FROM `Link` WHERE 1;

--
-- INSERT template for table `Link`
--
INSERT INTO `Link`(`_class`, `href`) VALUES (?, ?);

--
-- UPDATE template for table `Link`
--
UPDATE `Link` SET `_class` = ?, `href` = ? WHERE 1;

--
-- DELETE template for table `Link`
--
DELETE FROM `Link` WHERE 0;

