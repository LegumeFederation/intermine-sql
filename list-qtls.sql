--
-- list out the qtls to check for dupes
--
SELECT organismid,primaryidentifier,secondaryidentifier,traitname FROM qtl ORDER BY primaryidentifier,organismid;
