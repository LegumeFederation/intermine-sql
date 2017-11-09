-----------------------------------------------------------------------------------------------
-- General purpose updater for LIS chado identifiers
--
-- RUN ONLY ONCE!!! ENABLE TRIGGERS FIRST!!!
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- cowpea - V. unguiculata - LIS
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHROMOSOME vigun.IT97K-499-35.gnm1.Vu01    vigun.Vu01
-- SUPERCONTIG vigun.IT97K-499-35.gnm1.contig_100 | vigun.contig_100
-- GENE vigun.IT97K-499-35.gnm1.ann1.VigunL000100 | vigun.VigunL000100
-- EXON vigun.IT97K-499-35.gnm1.ann1.VigunL000100.1.exon.1 | vigun.IT97K-499-35.gnm1.ann1.VigunL000100.1.exon.1
-- PROTEIN vigun.IT97K-499-35.gnm1.ann1.Vigun03g178100.1.p | vigun.Vigun03g178100.1.p
-- mRNA vigun.IT97K-499-35.gnm1.ann1.Vigun01g000100.1 | vigun.Vigun01g000100.1
UPDATE chromosome SET secondaryidentifier=primaryidentifier, primaryidentifier=substring(secondaryidentifier,7) WHERE primaryidentifier LIKE 'vigun.%';
UPDATE gene SET       primaryidentifier=substring(primaryidentifier,30)                                         WHERE primaryidentifier LIKE 'vigun.%';
UPDATE exon SET       primaryidentifier=substring(primaryidentifier,30)                                         WHERE primaryidentifier LIKE 'vigun.%';
UPDATE protein SET    secondaryidentifier=primaryidentifier, primaryidentifier=replace(secondaryidentifier,'.p','') WHERE primaryidentifier LIKE 'vigun.%';
UPDATE protein SET    primaryidentifier=substring(primaryidentifier,7)                                          WHERE primaryidentifier LIKE 'vigun.%';
UPDATE supercontig SET primaryidentifier=substring(secondaryidentifier,7) WHERE primaryidentifier LIKE 'vigun.%';
UPDATE mrna SET primaryidentifier=substring(primaryidentifier,30) WHERE primaryidentifier LIKE 'vigun.%';
UPDATE transcript SET primaryidentifier=substring(primaryidentifier,30) WHERE primaryidentifier LIKE 'vigun.%';
UPDATE linkagegroup SET number=substring(primaryidentifier,24)::integer WHERE primaryidentifier like 'iSelect%';
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- common bean - P. vulgaris - LIS
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHROMOSOME phavu.G19833.v1.Chr01           phavu.Chr01
-- SUPERCONTIG phavu.G19833.v1.scaffold_100       | phavu.scaffold_100
-- GENE Phvul.001G000100.v1.0                     | phavu.Phvul.001G000100
-- EXON Phvul.001G000100.1.v1.0.exon.1                     | phavu.Phvul.001G000100.1.v1.0.exon.1
-- PROTEIN Phvul.001G000300.2.v1.0                         | phavu.Phvul.001G000300.2
-- mRNA Phvul.001G000100.1.v1.0                       | phavu.Phvul.001G000100.1
-- QTL phavu.First flower, bean 1-5 | First flower, bean 1-5
UPDATE gene SET primaryidentifier=replace(primaryidentifier, '.v1.0','') WHERE primaryidentifier LIKE 'Phvul.%';
UPDATE exon SET primaryidentifier=replace(primaryidentifier,'v1.0.','') WHERE primaryidentifier LIKE 'Phvul.%';
UPDATE protein SET primaryidentifier=substring(secondaryidentifier,7) WHERE primaryidentifier LIKE 'Phvul.%';
UPDATE chromosome SET primaryidentifier=secondaryidentifier WHERE primaryidentifier LIKE 'phavu.%';
UPDATE supercontig SET primaryidentifier=secondaryidentifier WHERE primaryidentifier LIKE 'phavu.%';
UPDATE mrna SET primaryidentifier=substring(secondaryidentifier,7) WHERE primaryidentifier LIKE 'Phvul.%';
UPDATE transcript SET primaryidentifier=substring(secondaryidentifier,7) WHERE primaryidentifier LIKE 'Phvul.%';
UPDATE qtl SET primaryidentifier=secondaryidentifier, secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'phavu.%';
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- chickpea desi - C. arietinum desi - LIS
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHROMOSOME cicar.ICC4958.v2.Ca_LG_1        cicar.Ca_LG_1
-- SUPERCONTIG cicar.ICC4958.v2.contig50210       | cicar.contig50210
-- GENE cicar.ICC4958.v2.0.Ca_01216               | cicar.ICC4958.Ca_01216
-- EXON cicar.ICC4958.v2.0.Ca_00001.1.exon1                | cicar.ICC4958.Ca_00001.1.exon1
-- PROTEIN cicar.ICC4958.v2.0.Ca_00005.1                   | cicar.ICC4958.Ca_00005.1
-- mRNA cicar.ICC4958.v2.0.Ca_00001.1                 | cicar.ICC4958.Ca_00001.1
UPDATE gene SET primaryidentifier=replace(primaryidentifier, 'cicar.ICC4958.v2.0', 'ICC4958') WHERE primaryidentifier LIKE 'cicar.%';
UPDATE exon SET primaryidentifier=replace(primaryidentifier, 'cicar.ICC4958.v2.0', 'ICC4958') WHERE primaryidentifier LIKE 'cicar.%';
UPDATE protein SET primaryidentifier=replace(primaryidentifier, 'cicar.ICC4958.v2.0', 'ICC4958') WHERE primaryidentifier LIKE 'cicar.%';
UPDATE mrna SET primaryidentifier=replace(primaryidentifier, 'cicar.ICC4958.v2.0', 'ICC4958') WHERE primaryidentifier LIKE 'cicar.%';
UPDATE chromosome SET primaryidentifier=replace(primaryidentifier, 'cicar.ICC4958.v2', 'ICC4958') WHERE primaryidentifier LIKE '%ICC4958%';
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- chickpea kabuli - C. arietinum kabuli - LIS
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHROMOSOME cicar.CDCFrontier.v1.Ca1          | cicar.Ca1
-- SUPERCONTIG cicar.CDCFrontier.v1.C11044140   | cicar.C11044140
-- GENE Ca_28103_gene                           | cicar.Ca_28103_gene
-- EXON auto2622509                             | exon-auto2622509
-- PROTEIN Ca_00005                             | cicar.Ca_00005
-- mRNA Ca_00001                                | cicar.Ca_00001
UPDATE gene SET primaryidentifier='CDCFrontier.'||primaryidentifier WHERE secondaryidentifier LIKE 'cicar.%';
UPDATE gene SET primaryidentifier=replace(primaryidentifier, '_gene', '') WHERE secondaryidentifier LIKE 'cicar.%';
UPDATE exon SET primaryidentifier='CDCFrontier.'||primaryidentifier WHERE primaryidentifier LIKE 'auto%';
UPDATE mrna SET primaryidentifier='CDCFrontier.'||primaryidentifier WHERE primaryidentifier LIKE 'Ca_%';
UPDATE protein SET primaryidentifier='CDCFrontier.'||primaryidentifier WHERE primaryidentifier LIKE 'Ca_%';
UPDATE chromosome SET primaryidentifier=replace(primaryidentifier, 'cicar.CDCFrontier.v1', 'CDCFrontier') WHERE primaryidentifier LIKE '%CDC%';
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- soybean - G. max - LIS
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHROMOSOME glyma.Wm82.a2.Chr01             glyma.Chr01
-- SUPERCONTIG glyma.Wm82.a2.scaffold_1002        | glyma.scaffold_1002
-- GENE Glyma.15G017000.Wm82.a2.v1                | glyma.Glyma.15G017000
-- EXON Glyma.10G109600.1.Wm82.a2.v1.exon.1                | glyma.Glyma.10G109600.1.Wm82.a2.v1.exon.1
-- PROTEIN Glyma.19G172200.1.Wm82.a2.v1                    | glyma.Glyma.19G172200.1
-- mRNA Glyma.01G000100.1.Wm82.a2.v1                  | glyma.Glyma.01G000100.1
UPDATE gene SET primaryidentifier=replace(primaryidentifier, '.Wm82.a2.v1','') WHERE primaryidentifier LIKE 'Glyma.%';
UPDATE exon SET primaryidentifier=replace(primaryidentifier, '.Wm82.a2.v1','') WHERE primaryidentifier LIKE 'Glyma.%';
UPDATE mrna SET primaryidentifier=substring(secondaryidentifier,7), secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'Glyma.%';
UPDATE protein SET primaryidentifier=substring(secondaryidentifier,7), secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'Glyma.%';
UPDATE chromosome SET primaryidentifier='Gm'||substring(secondaryidentifier,10), secondaryidentifier=initcap(primaryidentifier) WHERE primaryidentifier LIKE 'glyma.%';
UPDATE supercontig SET primaryidentifier=substring(secondaryidentifier,7), secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'glyma.%';
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- medicago - M. truncatula - LIS
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHROMOSOME medtr.A17_HM341.v4.chr1         medtr.chr1
-- SUPERCONTIG medtr.A17_HM341.v4.scaffold0001    | medtr.scaffold0001
-- GENE Medtr0001s0010.JCVIMt4.0v1                | medtr.Medtr0001s0010
-- EXON Medtr1g004930.1.JCVIMt4.0v1.exon.1                 | medtr.Medtr1g004930.1.JCVIMt4.0v1.exon.1
-- PROTEIN Medtr0001s0190.1.JCVIMt4.0v1                    | medtr.Medtr0001s0190.1
-- mRNA Medtr0001s0010.1.JCVIMt4.0v1                  | medtr.Medtr0001s0010.1
UPDATE gene SET primaryidentifier=replace(primaryidentifier, '.JCVIMt4.0v1','') WHERE primaryidentifier LIKE 'Medtr%';
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- wild peanut duranensis - A. duranensis - LIS
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHROMOSOME   aradu.V14167.v1.Aradu.A01 | aradu.Aradu.A01
-- SUPERCONTIG  aradu.V14167.v1.Adur101_2 | aradu.Adur101_2
-- GENE         Aradu.000JC               | aradu.Aradu.000JC
-- EXON         Aradu.TW3FF:exon:45       | Aradu.TW3FF:exon:45
-- PROTEIN      Aradu.007YB.1             | aradu.Aradu.007YB.1
-- mRNA         Aradu.000JC.1             | aradu.Aradu.000JC.1
UPDATE chromosome  SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'aradu.%';
UPDATE supercontig SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'aradu.%';
-- gene, exon, protein, mRNA OK
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- wild peanut ipaensis - A. ipaensis - LIS
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHROMOSOME   araip.K30076.v1.Araip.B02 | araip.Araip.B02
-- SUPERCONTIG  araip.K30076.v1.Aipa1001  | araip.Aipa1001
-- GENE         Araip.000WR               | araip.Araip.000WR
-- EXON         Araip.2M1DM:exon:2        | Araip.2M1DM:exon:2
-- PROTEIN      Araip.002AG.1             | araip.Araip.002AG.1
-- mRNA         Araip.000WR.1             | araip.Araip.000WR.1
UPDATE chromosome  SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'araip.%';
UPDATE supercontig SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'araip.%';
-- gene, exon, protein, mRNA OK
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- cultivated peanut - A. hypogaea - PeanutBase
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- QTL            arahy.Groundnut bruchid 1-1             | Groundnut bruchid 1-1
-- LINKAGE GROUP  TT_AhComposite_QinFeng2012_a-A10(LGJ10) | TT_AhComposite_QinFeng2012_a-A10(LGJ10)
-- GENETIC MARKER 14H06                                   | 14H06
UPDATE qtl SET primaryidentifier=secondaryidentifier,secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'arahy.%';
-- linkage group, genetic marker same
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- lotus - L. japonicus - LIS
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHROMOSOME   lotja.MG-20.v3.Lj3.0_chr1       | lotja.Lj3.0_chr1
-- SUPERCONTIG  NONE
-- GENE         Lj0g3v0000049                   | lotja.Lj0g3v0000049
-- EXON         Ljchlorog3v0000020.1.exon.1     | Ljchlorog3v0000020.1.exon.1
-- PROTEIN      Lj0g3v0000089.2                 | lotja.Lj0g3v0000089.2
-- mRNA         Lj0g3v0000029.1                 | lotja.Lj0g3v0000029.1
UPDATE chromosome  SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'lotja.%';
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- mungbean - V. radiata - LIS
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHROMOSOME   vigra.VC1973A.v6.Vr01           | vigra.Vr01
-- SUPERCONTIG  vigra.VC1973A.v6.scaffold_100   | vigra.scaffold_100
-- GENE         Vradi0007s00010.Vradi.ver6      | vigra.Vradi0007s00010
-- EXON         10000                           | Vradi03g01680.1
-- PROTEIN      Vradi0007s00060.1.Vradi.ver6    | vigra.Vradi0007s00060.1
-- mRNA         Vradi0007s00010.1.Vradi.ver6    | vigra.Vradi0007s00010.1
UPDATE chromosome  SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'vigra.%';
UPDATE supercontig SET primaryidentifier=secondaryidentifier,secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'vigra.%';
UPDATE gene        SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'vigra.%';
UPDATE exon        SET primaryidentifier=secondaryidentifier,secondaryidentifier=NULL WHERE secondaryidentifier LIKE 'Vradi%';
UPDATE protein     SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'vigra.%';
UPDATE mrna        SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'vigra.%';
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- pigeonpea - C. cajan - LIS
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHROMOSOME cajca.ICPL87119.v1.CcLG07         | cajca.CcLG07
-- SUPERCONTIG cajca.ICPL87119.v1.Scaffold000002| cajca.Scaffold000002
-- GENE C.cajan_00001_gene                      | cajca.C.cajan_00001_gene
-- EXON auto3025154                             | exon-auto3025154
-- PROTEIN C.cajan_00006                        | cajca.C.cajan_00006
-- mRNA C.cajan_00001                           | cajca.C.cajan_00001
UPDATE chromosome  SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'cajca.%';
UPDATE supercontig SET primaryidentifier=secondaryidentifier,secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'cajca.%';
UPDATE gene        SET primaryidentifier=replace(primaryidentifier, '_gene', '') WHERE secondaryidentifier LIKE 'cajca.%';
-- exon can't be updated, nothing identifiable
-- protein, mRNA OK
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- narrow-leafed lupin - L. angustifolius - LIS
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHROMOSOME   lupan.Tanjil.a1.NLL-01          | lupan.NLL-01
-- SUPERCONTIG  lupan.Tanjil.a1.Scaffold_1000   | lupan.Scaffold_1000
-- GENE         lupan.Tanjil.a1.0.Lup000010     | lupan.Lup000010
-- EXON         auto9883470                     | exon-auto9883470
-- PROTEIN      lupan.Tanjil.a1.0.Lup000006.1   | lupan.Lup000006.1
-- mRNA         lupan.Tanjil.a1.0.Lup000001.1   | lupan.Lup000001.1
UPDATE chromosome  SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'lupan.%';
UPDATE supercontig SET primaryidentifier=secondaryidentifier,secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'lupan.%';
UPDATE gene        SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'lupan.%';
-- exon can't be updated, nothing identifiable
UPDATE protein     SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'lupan.%';
UPDATE mRNA        SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'lupan.%';
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- red clover - T. pratense -- LIS
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHROMOSOME   tripr.MilvusB.v2.Tp57577_TGAC_v2_LG1            | tripr.Tp57577_TGAC_v2_LG1
-- SUPERCONTIG  tripr.MilvusB.v2.Tp57577_TGAC_v2_scaf_10000     | tripr.Tp57577_TGAC_v2_scaf_10000
-- GENE         tripr.MilvusB.v2.Tp57577_TGAC_v2_gene10         | tripr.Tp57577_TGAC_v2_gene10
-- EXON         tripr.MilvusB.v2.Tp57577_TGAC_v2_mRNA2561.exon5 | tripr.Tp57577_TGAC_v2_mRNA2561.exon5
-- PROTEIN      tripr.MilvusB.v2.Tp57577_TGAC_v2_mRNA1000       | tripr.Tp57577_TGAC_v2_mRNA1000
-- mRNA         tripr.MilvusB.v2.Tp57577_TGAC_v2_mRNA1          | tripr.Tp57577_TGAC_v2_mRNA1
UPDATE chromosome  SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'tripr.%';
UPDATE supercontig SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'tripr.%';
UPDATE gene        SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'tripr.%';
UPDATE exon        SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'tripr.%';
UPDATE protein     SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'tripr.%';
UPDATE mrna        SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'tripr.%';
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- adzuki bean - V. angularis - LIS
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CHROMOSOME   vigan.Gyeongwon.v3.1                            | vigan.1
-- SUPERCONTIG  vigan.Gyeongwon.v3.scaffold_1000                | vigan.scaffold_1000
-- GENE         vigan.Gyeongwon.v3.Vang0002ss00060              | vigan.Vang0002ss00060
-- EXON         vigan.Gyeongwon.v3.Vang0002ss00010.1:exon:17064 | vigan.Gyeongwon.v3.Vang0002ss00010.1:exon:17064
-- PROTEIN      vigan.Gyeongwon.v3.Vang0002ss00040.2            | vigan.Vang0002ss00040.2
-- mRNA         vigan.Gyeongwon.v3.Vang0002ss00010.1            | vigan.Vang0002ss00010.1
UPDATE chromosome  SET primaryidentifier=secondaryidentifier,secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'vigan.%';
UPDATE supercontig SET primaryidentifier=secondaryidentifier,secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'vigan.%';
UPDATE gene        SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'vigan.%';
UPDATE exon        SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'vigan.%';
UPDATE protein     SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'vigan.%';
UPDATE mrna        SET primaryidentifier=substring(secondaryidentifier,7),secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'vigan.%';
