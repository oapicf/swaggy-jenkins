--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'FavoriteImpl' definition.
--


--
-- SELECT template for table `FavoriteImpl`
--
SELECT `_class`, `_links`, `item` FROM `FavoriteImpl` WHERE 1;

--
-- INSERT template for table `FavoriteImpl`
--
INSERT INTO `FavoriteImpl`(`_class`, `_links`, `item`) VALUES (?, ?, ?);

--
-- UPDATE template for table `FavoriteImpl`
--
UPDATE `FavoriteImpl` SET `_class` = ?, `_links` = ?, `item` = ? WHERE 1;

--
-- DELETE template for table `FavoriteImpl`
--
DELETE FROM `FavoriteImpl` WHERE 0;

