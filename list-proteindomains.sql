--
-- list a sample of genes from each organism to check for dupes.
--
SELECT organismid,primaryidentifier,secondaryidentifier,name,interproid,interproname FROM proteindomain LIMIT 10;
