--
-- list out genetic maps to check for dupes
--
SELECT organismid,primaryidentifier,substring(description,1,50) AS description FROM geneticmap
	ORDER BY organismid,primaryidentifier;

SELECT primaryidentifier,pubmedid,doi,substring(title,1,50) AS title FROM geneticmap,publication,bioentitiespublications
	WHERE geneticmap.id=bioentitiespublications.bioentities AND publication.id=bioentitiespublications.publications
	ORDER BY primaryidentifier; 
