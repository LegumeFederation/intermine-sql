--
-- list out the qtls to check for dupes
--
SELECT organismid,primaryidentifier,secondaryidentifier FROM qtl ORDER BY primaryidentifier,organismid;
