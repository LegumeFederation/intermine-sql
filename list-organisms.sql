--
-- list out the organisms, to find dupes
--
SELECT taxonid,genus,species,variety,commonname,substring(comment,1,32) AS comment FROM organism ORDER BY taxonid,variety;
