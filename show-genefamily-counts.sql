--
-- handy script to spit out the count of genes per organism with and without genefamilyid
--

SELECT 'YES' AS has_genefamily,count(*),taxonid,genus,species,variety FROM organism,gene
	WHERE organism.id=gene.organismid AND genefamilyid IS NOT NULL GROUP BY taxonid,genus,species,variety ORDER BY taxonid,variety;
SELECT 'NO' AS has_genefamily,count(*),taxonid,genus,species,variety FROM organism,gene
	WHERE organism.id=gene.organismid AND genefamilyid IS NULL GROUP BY taxonid,genus,species,variety ORDER BY taxonid,variety;

--SELECT 'YES' AS has_genefamily,organismid,count(*) FROM gene WHERE genefamilyid IS NOT NULL GROUP BY organismid ORDER BY organismid;
--SELECT 'NO' AS has_genefamily,organismid,count(*) FROM gene WHERE genefamilyid IS NULL GROUP BY organismid ORDER BY organismid;
