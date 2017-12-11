--
-- list out the ontology terms, to find dupes
--
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
	WHERE ontologyid IS NULL ORDER BY identifier,name LIMIT 10;
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
        WHERE ontologyid=1000000 ORDER BY identifier,name LIMIT 10;
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
        WHERE ontologyid=2000000 ORDER BY identifier,name LIMIT 10;
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
        WHERE ontologyid=4000000 ORDER BY identifier,name LIMIT 10;
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
        WHERE ontologyid=5000000 ORDER BY identifier,name LIMIT 10;
