--
-- list out the organisms, to find dupes
--
SELECT taxonid,genus,species,variety,commonname,substring(description,1,32) AS description FROM organism ORDER BY taxonid,variety;
