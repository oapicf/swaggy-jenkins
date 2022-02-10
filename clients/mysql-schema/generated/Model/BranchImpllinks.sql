--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'BranchImpllinks' definition.
--


--
-- SELECT template for table `BranchImpllinks`
--
SELECT `self`, `actions`, `runs`, `queue`, `_class` FROM `BranchImpllinks` WHERE 1;

--
-- INSERT template for table `BranchImpllinks`
--
INSERT INTO `BranchImpllinks`(`self`, `actions`, `runs`, `queue`, `_class`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `BranchImpllinks`
--
UPDATE `BranchImpllinks` SET `self` = ?, `actions` = ?, `runs` = ?, `queue` = ?, `_class` = ? WHERE 1;

--
-- DELETE template for table `BranchImpllinks`
--
DELETE FROM `BranchImpllinks` WHERE 0;

