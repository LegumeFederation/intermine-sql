--
-- check for duplicate genotype values per line/marker
--
SELECT markerid,lineid,count(*) FROM genotypevalue GROUP BY markerid,lineid ORDER BY markerid,lineid LIMIT 100;
