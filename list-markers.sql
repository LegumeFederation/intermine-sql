--
-- list out the geneticmarkertic markers to check for dupes
--
SELECT taxonid,variety,primaryidentifier,secondaryidentifier FROM geneticmarker,organism WHERE geneticmarker.organismid=organism.id AND taxonid='3821' AND variety='ICPL87119' ORDER BY primaryidentifier LIMIT 5;
SELECT taxonid,variety,primaryidentifier,secondaryidentifier FROM geneticmarker,organism WHERE geneticmarker.organismid=organism.id AND taxonid='3827' AND variety='CDCFrontier' ORDER BY primaryidentifier LIMIT 5;
SELECT taxonid,variety,primaryidentifier,secondaryidentifier FROM geneticmarker,organism WHERE geneticmarker.organismid=organism.id AND taxonid='3827' AND variety='ICC4958' ORDER BY primaryidentifier LIMIT 5;
SELECT taxonid,variety,primaryidentifier,secondaryidentifier FROM geneticmarker,organism WHERE geneticmarker.organismid=organism.id AND taxonid='3847' AND variety='Williams82' ORDER BY primaryidentifier LIMIT 5;
SELECT taxonid,variety,primaryidentifier,secondaryidentifier FROM geneticmarker,organism WHERE geneticmarker.organismid=organism.id AND taxonid='3871' AND variety='Tanjil' ORDER BY primaryidentifier LIMIT 5;
SELECT taxonid,variety,primaryidentifier,secondaryidentifier FROM geneticmarker,organism WHERE geneticmarker.organismid=organism.id AND taxonid='3880' AND variety='A17' ORDER BY primaryidentifier LIMIT 5;
SELECT taxonid,variety,primaryidentifier,secondaryidentifier FROM geneticmarker,organism WHERE geneticmarker.organismid=organism.id AND taxonid='3885' AND variety='G19833' ORDER BY primaryidentifier LIMIT 5;
SELECT taxonid,variety,primaryidentifier,secondaryidentifier FROM geneticmarker,organism WHERE geneticmarker.organismid=organism.id AND taxonid='3914' AND variety='Gyeongwon' ORDER BY primaryidentifier LIMIT 5;
SELECT taxonid,variety,primaryidentifier,secondaryidentifier FROM geneticmarker,organism WHERE geneticmarker.organismid=organism.id AND taxonid='3920' AND variety='IT97K-499-35' ORDER BY primaryidentifier LIMIT 5;
SELECT taxonid,variety,primaryidentifier,secondaryidentifier FROM geneticmarker,organism WHERE geneticmarker.organismid=organism.id AND taxonid='34305' AND variety='MG20' ORDER BY primaryidentifier LIMIT 5;
SELECT taxonid,variety,primaryidentifier,secondaryidentifier FROM geneticmarker,organism WHERE geneticmarker.organismid=organism.id AND taxonid='57577' AND variety='MilvusB' ORDER BY primaryidentifier LIMIT 5;
SELECT taxonid,variety,primaryidentifier,secondaryidentifier FROM geneticmarker,organism WHERE geneticmarker.organismid=organism.id AND taxonid='130453' AND variety='V14167' ORDER BY primaryidentifier LIMIT 5;
SELECT taxonid,variety,primaryidentifier,secondaryidentifier FROM geneticmarker,organism WHERE geneticmarker.organismid=organism.id AND taxonid='130454' AND variety='K30076' ORDER BY primaryidentifier LIMIT 5;
SELECT taxonid,variety,primaryidentifier,secondaryidentifier FROM geneticmarker,organism WHERE geneticmarker.organismid=organism.id AND taxonid='157791' AND variety='VC1973A' ORDER BY primaryidentifier LIMIT 5;
SELECT 'NULL' AS taxonid,'NULL' as variety,primaryidentifier,secondaryidentifier FROM geneticmarker WHERE organismid IS NULL ORDER BY primaryidentifier LIMIT 5;
