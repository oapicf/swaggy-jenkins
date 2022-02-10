--
-- Swaggy Jenkins.
-- Prepared SQL queries for 'EmptyChangeLogSet' definition.
--


--
-- SELECT template for table `EmptyChangeLogSet`
--
SELECT `_class`, `kind` FROM `EmptyChangeLogSet` WHERE 1;

--
-- INSERT template for table `EmptyChangeLogSet`
--
INSERT INTO `EmptyChangeLogSet`(`_class`, `kind`) VALUES (?, ?);

--
-- UPDATE template for table `EmptyChangeLogSet`
--
UPDATE `EmptyChangeLogSet` SET `_class` = ?, `kind` = ? WHERE 1;

--
-- DELETE template for table `EmptyChangeLogSet`
--
DELETE FROM `EmptyChangeLogSet` WHERE 0;

