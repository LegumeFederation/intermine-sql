--
-- list out the organisms, to find dupes
--
SELECT taxonid,genus,species,variety,commonname FROM organism ORDER BY taxonid,variety;
