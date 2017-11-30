--
-- list out the gene identifiers, one per organism. These are the organisms loaded by the chado sequence loader.
--
SELECT primaryidentifier,secondaryidentifier FROM gene,organism WHERE gene.organismid=organism.id AND taxonid=   3821 AND variety='ICPL87119'    LIMIT 1;
SELECT primaryidentifier,secondaryidentifier FROM gene,organism WHERE gene.organismid=organism.id AND taxonid=   3827 AND variety='CDCFrontier'  LIMIT 1;
SELECT primaryidentifier,secondaryidentifier FROM gene,organism WHERE gene.organismid=organism.id AND taxonid=   3827 AND variety='ICC4958'      LIMIT 1;
SELECT primaryidentifier,secondaryidentifier FROM gene,organism WHERE gene.organismid=organism.id AND taxonid=   3847 AND variety='Williams82'   LIMIT 1;
SELECT primaryidentifier,secondaryidentifier FROM gene,organism WHERE gene.organismid=organism.id AND taxonid=   3871 AND variety='Tanjil'       LIMIT 1;
SELECT primaryidentifier,secondaryidentifier FROM gene,organism WHERE gene.organismid=organism.id AND taxonid=   3880 AND variety='A17'          LIMIT 1;
SELECT primaryidentifier,secondaryidentifier FROM gene,organism WHERE gene.organismid=organism.id AND taxonid=   3885 AND variety='G19833'       LIMIT 1;
SELECT primaryidentifier,secondaryidentifier FROM gene,organism WHERE gene.organismid=organism.id AND taxonid=   3914 AND variety='Gyeongwon'    LIMIT 1;
SELECT primaryidentifier,secondaryidentifier FROM gene,organism WHERE gene.organismid=organism.id AND taxonid=   3920 AND variety='IT97K-499-35' LIMIT 1;
SELECT primaryidentifier,secondaryidentifier FROM gene,organism WHERE gene.organismid=organism.id AND taxonid=  34305 AND variety='MG20'         LIMIT 1;
SELECT primaryidentifier,secondaryidentifier FROM gene,organism WHERE gene.organismid=organism.id AND taxonid=  57577 AND variety='MilvusB'      LIMIT 1;
SELECT primaryidentifier,secondaryidentifier FROM gene,organism WHERE gene.organismid=organism.id AND taxonid= 130453 AND variety='V14167'       LIMIT 1;
SELECT primaryidentifier,secondaryidentifier FROM gene,organism WHERE gene.organismid=organism.id AND taxonid= 130454 AND variety='K30076'       LIMIT 1;
SELECT primaryidentifier,secondaryidentifier FROM gene,organism WHERE gene.organismid=organism.id AND taxonid= 157791 AND variety='VC1973A'      LIMIT 1;

