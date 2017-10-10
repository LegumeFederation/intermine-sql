-----------------------------------------------------------------------------------------------
-- General purpose updater for chado identifiers, mostly uniquename munged to primaryIdentifier
--
-- RUN ONLY ONCE!!! ENABLE TRIGGERS FIRST!!!
------------------------------------------------------------------------
-- CHROMOSOME
-- glyma.Wm82.a2.Chr01 | glyma.Chr01
-----------------------------------------------------------------------------------------------
-- GENE
-- vigun.IT97K-499-35.gnm1.ann1.VigunL000100 | vigun.VigunL000100
-- Phvul.001G000100.v1.0                     | phavu.Phvul.001G000100
-- Ca_28103_gene                             | cicar.Ca_28103_gene
-- cicar.ICC4958.v2.0.Ca_01216               | cicar.ICC4958.Ca_01216
-- Glyma.15G017000.Wm82.a2.v1                | glyma.Glyma.15G017000
-- Medtr7g117900.JCVIMt4.0v1
-- Aradu.Y681G
-- Araip.SUM3W
-- Vradi0083s00330.Vradi.ver6
-- Lj0g3v0234849
-- C.cajan_27174_gene
-- lupan.Tanjil.a1.0.Lup007085
-- tripr.MilvusB.v2.Tp57577_TGAC_v2_gene4697
-- vigan.Gyeongwon.v3.Vang05g01450
-----------------------------------------------------------------------------------------------
-- PROTEIN
-- vigun.IT97K-499-35.gnm1.ann1.Vigun03g178100.1.p | vigun.Vigun03g178100.1.p
-- Glyma.19G172200.1.Wm82.a2.v1                    | glyma.Glyma.19G172200.1
-----------------------------------------------------------------------------
-- EXON
-- Glyma.10G109600.1.Wm82.a2.v1.exon.1             | glyma.Glyma.10G109600.1.Wm82.a2.v1.exon.1
-----------------------------------------------------------------------------
-- mRNA
-- Glyma.01G092900.1.Wm82.a2.v1 | glyma.Glyma.01G092900.1
-----------------------------------------------------------------------------
 

-- cowpea
UPDATE gene SET primaryidentifier=substring(secondaryidentifier,7) WHERE primaryidentifier LIKE 'vigun.%';
UPDATE exon SET primaryidentifier=substring(primaryidentifier,30) WHERE primaryidentifier LIKE 'vigun.%';
UPDATE protein SET primaryidentifier=replace(secondaryidentifier,'.p',''), secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'vigun.%';
UPDATE protein SET primaryidentifier=substring(primaryidentifier,7) WHERE primaryidentifier LIKE 'vigun.%';
UPDATE chromosome SET primaryidentifier=substring(secondaryidentifier,7) WHERE primaryidentifier LIKE 'vigun.%';
UPDATE supercontig SET primaryidentifier=substring(secondaryidentifier,7) WHERE primaryidentifier LIKE 'vigun.%';
UPDATE mrna SET primaryidentifier=substring(primaryidentifier,30) WHERE primaryidentifier LIKE 'vigun.%';
UPDATE transcript SET primaryidentifier=substring(primaryidentifier,30) WHERE primaryidentifier LIKE 'vigun.%';

-- common bean
UPDATE gene SET primaryidentifier=replace(primaryidentifier, '.v1.0','') WHERE primaryidentifier LIKE 'Phvul.%';
UPDATE exon SET primaryidentifier=replace(primaryidentifier,'v1.0.','') WHERE primaryidentifier LIKE 'Phvul.%';
UPDATE protein SET primaryidentifier=substring(secondaryidentifier,7) WHERE primaryidentifier LIKE 'Phvul.%';
UPDATE chromosome SET primaryidentifier=secondaryidentifier WHERE primaryidentifier LIKE 'phavu.%';
UPDATE supercontig SET primaryidentifier=secondaryidentifier WHERE primaryidentifier LIKE 'phavu.%';
UPDATE mrna SET primaryidentifier=substring(secondaryidentifier,7) WHERE primaryidentifier LIKE 'Phvul.%';
UPDATE transcript SET primaryidentifier=substring(secondaryidentifier,7) WHERE primaryidentifier LIKE 'Phvul.%';

-- chickpea desi
UPDATE gene SET primaryidentifier=replace(primaryidentifier, 'cicar.ICC4958.v2.0', 'ICC4958') WHERE primaryidentifier LIKE 'cicar.%';
UPDATE exon SET primaryidentifier=replace(primaryidentifier, 'cicar.ICC4958.v2.0', 'ICC4958') WHERE primaryidentifier LIKE 'cicar.%';
UPDATE protein SET primaryidentifier=replace(primaryidentifier, 'cicar.ICC4958.v2.0', 'ICC4958') WHERE primaryidentifier LIKE 'cicar.%';
UPDATE mrna SET primaryidentifier=replace(primaryidentifier, 'cicar.ICC4958.v2.0', 'ICC4958') WHERE primaryidentifier LIKE 'cicar.%';
UPDATE chromosome SET primaryidentifier=replace(primaryidentifier, 'cicar.ICC4958.v2', 'ICC4958') WHERE primaryidentifier LIKE '%ICC4958%';

-- chickpea kabuli
UPDATE gene SET primaryidentifier='CDCFrontier.'||primaryidentifier WHERE primaryidentifier LIKE '%_gene';
UPDATE gene SET primaryidentifier=replace(primaryidentifier, '_gene', '') WHERE primaryidentifier LIKE '%_gene';
UPDATE exon SET primaryidentifier='CDCFrontier.'||primaryidentifier WHERE primaryidentifier LIKE 'auto%';
UPDATE mrna SET primaryidentifier='CDCFrontier.'||primaryidentifier WHERE primaryidentifier LIKE 'Ca_%';
UPDATE protein SET primaryidentifier='CDCFrontier.'||primaryidentifier WHERE primaryidentifier LIKE 'Ca_%';
UPDATE chromosome SET primaryidentifier=replace(primaryidentifier, 'cicar.CDCFrontier.v1', 'CDCFrontier') WHERE primaryidentifier LIKE '%CDC%';

-- soybean
UPDATE gene SET primaryidentifier=replace(primaryidentifier, '.Wm82.a2.v1','') WHERE primaryidentifier LIKE 'Glyma.%';
UPDATE exon SET primaryidentifier=replace(primaryidentifier, '.Wm82.a2.v1','') WHERE primaryidentifier LIKE 'Glyma.%';
UPDATE mrna SET primaryidentifier=substring(secondaryidentifier,7), secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'Glyma.%';
UPDATE protein SET primaryidentifier=substring(secondaryidentifier,7), secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'Glyma.%';
UPDATE chromosome SET primaryidentifier='Gm'||substring(secondaryidentifier,10), secondaryidentifier=initcap(primaryidentifier) WHERE primaryidentifier LIKE 'glyma.%';

-- medicago
UPDATE gene SET primaryidentifier=replace(primaryidentifier, '.JCVIMt4.0v1','') WHERE primaryidentifier LIKE 'Medtr%';

-- A. duranensis
-- NO CHANGE

-- A. ipaensis
-- NO CHANGE

-- others
UPDATE gene SET primaryidentifier=replace(primaryidentifier, '.Vradi.ver6', '') WHERE primaryidentifier LIKE 'Vradi%';
UPDATE gene SET primaryidentifier=replace(primaryidentifier, 'lupan.Tanjil.a1.0.', '') WHERE primaryidentifier LIKE 'lupan.%';
UPDATE gene SET primaryidentifier=replace(primaryidentifier, 'tripr.MilvusB.v2.', '') WHERE primaryidentifier LIKE 'tripr.%';
UPDATE gene SET primaryidentifier=replace(primaryidentifier, 'vigan.Gyeongwon.v3.', '') WHERE primaryidentifier LIKE 'vigan.%';

