--
-- list the counts per organism
--
SELECT taxonid,count(*) AS genes FROM gene,organism WHERE gene.organismid=organism.id GROUP BY taxonid ORDER BY taxonid;

--
-- list the counts per strain
--
SELECT strain.primaryidentifier AS strain,count(*) AS genes FROM gene,strain WHERE gene.strainid=strain.id GROUP BY strain.primaryidentifier ORDER BY strain.primaryidentifier;

--
-- list five genes from each organism to check for dupes.
--
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier LIKE 'medtr.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier LIKE 'vigan.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier LIKE 'lupan.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier LIKE 'vigra.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier LIKE 'araip.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier LIKE 'lotja.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier LIKE 'phavu.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier LIKE 'aradu.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier LIKE 'cajca.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier LIKE 'tripr.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier LIKE 'cicar.I%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier LIKE 'cicar.C%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier LIKE 'glyma.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier LIKE 'vigun.%' ORDER BY primaryidentifier LIMIT 5;
SELECT organismid,strainid,primaryidentifier,secondaryidentifier,substring(description,1,10) AS description,genefamilyid FROM gene WHERE gene.secondaryidentifier IS NULL        ORDER BY primaryidentifier LIMIT 5;
