--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'User' definition.
--


--
-- SELECT template for table `User`
--
SELECT `_class`, `id`, `fullName`, `email`, `name` FROM `User` WHERE 1;

--
-- INSERT template for table `User`
--
INSERT INTO `User`(`_class`, `id`, `fullName`, `email`, `name`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `User`
--
UPDATE `User` SET `_class` = ?, `id` = ?, `fullName` = ?, `email` = ?, `name` = ? WHERE 1;

--
-- DELETE template for table `User`
--
DELETE FROM `User` WHERE 0;

