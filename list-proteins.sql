--
-- list the counts per organism
--
SELECT taxonid,count(*) AS proteins FROM protein,organism WHERE protein.organismid=organism.id GROUP BY taxonid ORDER BY taxonid;

--
-- list the counts per strain
--
SELECT strain.primaryidentifier AS strain,count(*) AS proteins FROM protein,strain WHERE protein.strainid=strain.id GROUP BY strain.primaryidentifier ORDER BY strain.primaryidentifier;

--
-- list five proteins from each organism to check for dupes.
--
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier LIKE 'medtr.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier LIKE 'vigan.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier LIKE 'lupan.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier LIKE 'vigra.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier LIKE 'araip.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier LIKE 'lotja.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier LIKE 'phavu.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier LIKE 'aradu.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier LIKE 'cajca.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier LIKE 'tripr.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier LIKE 'cicar.I%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier LIKE 'cicar.C%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier LIKE 'glyma.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier LIKE 'vigun.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier FROM protein WHERE protein.secondaryidentifier IS NULL        ORDER BY primaryidentifier LIMIT 5;
