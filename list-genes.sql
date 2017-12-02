--
-- list a sample of genes from each organism to check for dupes.
--
SELECT primaryidentifier,secondaryidentifier FROM gene WHERE gene.secondaryidentifier LIKE 'medtr.%' ORDER BY primaryidentifier LIMIT 5;
SELECT primaryidentifier,secondaryidentifier FROM gene WHERE gene.secondaryidentifier LIKE 'vigan.%' ORDER BY primaryidentifier LIMIT 5;
SELECT primaryidentifier,secondaryidentifier FROM gene WHERE gene.secondaryidentifier LIKE 'lupan.%' ORDER BY primaryidentifier LIMIT 5;
SELECT primaryidentifier,secondaryidentifier FROM gene WHERE gene.secondaryidentifier LIKE 'vigra.%' ORDER BY primaryidentifier LIMIT 5;
SELECT primaryidentifier,secondaryidentifier FROM gene WHERE gene.secondaryidentifier LIKE 'araip.%' ORDER BY primaryidentifier LIMIT 5;
SELECT primaryidentifier,secondaryidentifier FROM gene WHERE gene.secondaryidentifier LIKE 'lotja.%' ORDER BY primaryidentifier LIMIT 5;
SELECT primaryidentifier,secondaryidentifier FROM gene WHERE gene.secondaryidentifier LIKE 'phavu.%' ORDER BY primaryidentifier LIMIT 5;
SELECT primaryidentifier,secondaryidentifier FROM gene WHERE gene.secondaryidentifier LIKE 'aradu.%' ORDER BY primaryidentifier LIMIT 5;
SELECT primaryidentifier,secondaryidentifier FROM gene WHERE gene.secondaryidentifier LIKE 'cajca.%' ORDER BY primaryidentifier LIMIT 5;
SELECT primaryidentifier,secondaryidentifier FROM gene WHERE gene.secondaryidentifier LIKE 'tripr.%' ORDER BY primaryidentifier LIMIT 5;
SELECT primaryidentifier,secondaryidentifier FROM gene WHERE gene.secondaryidentifier LIKE 'cicar.%' ORDER BY primaryidentifier LIMIT 5;
SELECT primaryidentifier,secondaryidentifier FROM gene WHERE gene.secondaryidentifier LIKE 'glyma.%' ORDER BY primaryidentifier LIMIT 5;
SELECT primaryidentifier,secondaryidentifier FROM gene WHERE gene.secondaryidentifier LIKE 'vigun.%' ORDER BY primaryidentifier LIMIT 5;
SELECT primaryidentifier,secondaryidentifier FROM gene WHERE gene.secondaryidentifier IS NULL        ORDER BY primaryidentifier LIMIT 5;
