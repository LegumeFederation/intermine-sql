--
-- list out the ontology terms, to find dupes
--
<<<<<<< HEAD
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
	WHERE identifier LIKE 'SO:%' ORDER BY identifier,name LIMIT 5;
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
        WHERE identifier LIKE 'GO:%' ORDER BY identifier,name LIMIT 5;
=======
SELECT 'NULL' AS ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm
	WHERE ontologyid IS NULL ORDER BY identifier,name LIMIT 10;
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
        WHERE ontologyid=1000000 ORDER BY identifier,name LIMIT 10;
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm
        WHERE ontologyid=3000000 ORDER BY identifier,name LIMIT 10;
>>>>>>> 2756d480cde025ec8fa85eb6c054d72772ba9e2e
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
        WHERE identifier LIKE 'PO:%' ORDER BY identifier,name LIMIT 5;
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
	WHERE identifier LIKE 'TO:%' ORDER BY identifier,name LIMIT 5;
SELECT ontologyid,id,identifier,substring(name,1,20) AS name,substring(description,1,20) AS description FROM ontologyterm 
        WHERE identifier LIKE 'CO%'  ORDER BY identifier,name LIMIT 5;
