--
-- list out the ontology terms, to find dupes
--
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
	WHERE identifier LIKE 'SO:%' ORDER BY identifier,name LIMIT 5;
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
        WHERE identifier LIKE 'GO:%' ORDER BY identifier,name LIMIT 5;
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
        WHERE identifier LIKE 'PO:%' ORDER BY identifier,name LIMIT 5;
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
	WHERE identifier LIKE 'TO:%' ORDER BY identifier,name LIMIT 5;
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
        WHERE identifier LIKE 'CO%'  ORDER BY identifier,name LIMIT 5;
