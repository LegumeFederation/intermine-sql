--
-- list out the qtls to check for dupes
--
SELECT 'cajca' AS cajca,taxonid,variety,primaryidentifier,secondaryidentifier FROM qtl,organism WHERE qtl.organismid=organism.id AND taxonid=   3821 AND variety='ICPL87119'    ORDER BY primaryidentifier LIMIT 5;
SELECT 'cicar' AS cicar,taxonid,variety,primaryidentifier,secondaryidentifier FROM qtl,organism WHERE qtl.organismid=organism.id AND taxonid=   3827 AND variety='CDCFrontier'  ORDER BY primaryidentifier LIMIT 5;
SELECT 'cicar' AS cicar,taxonid,variety,primaryidentifier,secondaryidentifier FROM qtl,organism WHERE qtl.organismid=organism.id AND taxonid=   3827 AND variety='ICC4958'      ORDER BY primaryidentifier LIMIT 5;
SELECT 'glyma' AS glyma,taxonid,variety,primaryidentifier,secondaryidentifier FROM qtl,organism WHERE qtl.organismid=organism.id AND taxonid=   3847 AND variety='Williams82'   ORDER BY primaryidentifier LIMIT 5;
SELECT 'lupan' AS lupan,taxonid,variety,primaryidentifier,secondaryidentifier FROM qtl,organism WHERE qtl.organismid=organism.id AND taxonid=   3871 AND variety='Tanjil'       ORDER BY primaryidentifier LIMIT 5;
SELECT 'medtr' AS medtr,taxonid,variety,primaryidentifier,secondaryidentifier FROM qtl,organism WHERE qtl.organismid=organism.id AND taxonid=   3880 AND variety='A17'          ORDER BY primaryidentifier LIMIT 5;
SELECT 'phavu' AS phavu,taxonid,variety,primaryidentifier,secondaryidentifier FROM qtl,organism WHERE qtl.organismid=organism.id AND taxonid=   3885 AND variety='G19833'       ORDER BY primaryidentifier LIMIT 5;
SELECT 'vigan' AS vigan,taxonid,variety,primaryidentifier,secondaryidentifier FROM qtl,organism WHERE qtl.organismid=organism.id AND taxonid=   3914 AND variety='Gyeongwon'    ORDER BY primaryidentifier LIMIT 5;
SELECT 'vigun' AS vigun,taxonid,variety,primaryidentifier,secondaryidentifier FROM qtl,organism WHERE qtl.organismid=organism.id AND taxonid=   3920 AND variety='IT97K-499-35' ORDER BY primaryidentifier LIMIT 5;
SELECT 'lotja' AS lotja,taxonid,variety,primaryidentifier,secondaryidentifier FROM qtl,organism WHERE qtl.organismid=organism.id AND taxonid=  34305 AND variety='MG20'         ORDER BY primaryidentifier LIMIT 5;
SELECT 'tripr' AS tripr,taxonid,variety,primaryidentifier,secondaryidentifier FROM qtl,organism WHERE qtl.organismid=organism.id AND taxonid=  57577 AND variety='MilvusB'      ORDER BY primaryidentifier LIMIT 5;
SELECT 'aradu' AS aradu,taxonid,variety,primaryidentifier,secondaryidentifier FROM qtl,organism WHERE qtl.organismid=organism.id AND taxonid= 130453 AND variety='V14167'       ORDER BY primaryidentifier LIMIT 5;
SELECT 'araip' AS araip,taxonid,variety,primaryidentifier,secondaryidentifier FROM qtl,organism WHERE qtl.organismid=organism.id AND taxonid= 130454 AND variety='K30076'       ORDER BY primaryidentifier LIMIT 5;
SELECT 'vigra' AS vigra,taxonid,variety,primaryidentifier,secondaryidentifier FROM qtl,organism WHERE qtl.organismid=organism.id AND taxonid= 157791 AND variety='VC1973A'      ORDER BY primaryidentifier LIMIT 5;
SELECT 'NO ORG' AS no_org,primaryidentifier,secondaryidentifier FROM qtl WHERE organismid IS NULL ORDER BY primaryidentifier LIMIT 5;
