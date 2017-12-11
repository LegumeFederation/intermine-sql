--
-- list out genetic maps to check for dupes
--
SELECT primaryidentifier,substring(description,1,50) AS description FROM geneticmap ORDER BY primaryidentifier;
