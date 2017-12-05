--
-- list out the qtls to check for dupes
--
SELECT organismid,primaryidentifier,traitname FROM qtl ORDER BY primaryidentifier,organismid;
