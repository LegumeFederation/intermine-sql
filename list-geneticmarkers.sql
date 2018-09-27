--
-- list out genetic markers with dupes on top
--
SELECT count(*),primaryidentifier FROM geneticmarker GROUP BY primaryidentifier ORDER BY count DESC,primaryidentifier;
