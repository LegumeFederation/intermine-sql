--
-- list out genetic maps to check for dupes
--
SELECT primaryidentifier,substring(description,1,50) AS description
       FROM geneticmap
       ORDER BY primaryidentifier;

SELECT primaryidentifier,pubmedid,doi,substring(title,1,50) AS title
       FROM geneticmap,publication,entitiespublications
	WHERE geneticmap.id=entitiespublications.entities AND publication.id=entitiespublications.publications
	ORDER BY primaryidentifier; 
