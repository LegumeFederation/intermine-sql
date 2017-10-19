-----------------------------------------------------------------------------------------------
-- General purpose updater for LIS chado identifiers
--
-- RUN ONLY ONCE!!! ENABLE TRIGGERS FIRST!!!
------------------------------------------------------------------------
-- CHROMOSOME vigun.IT97K-499-35.gnm1.Vu01    vigun.Vu01
-- CHROMOSOME phavu.G19833.v1.Chr01           phavu.Chr01
-- CHROMOSOME cicar.CDCFrontier.v1.Ca1        cicar.Ca1
-- CHROMOSOME cicar.ICC4958.v2.Ca_LG_1        cicar.Ca_LG_1
-- CHROMOSOME glyma.Wm82.a2.Chr01             glyma.Chr01
-- CHROMOSOME medtr.A17_HM341.v4.chr1         medtr.chr1
-- CHROMOSOME vigra.VC1973A.v6.Vr01           vigra.Vr01
-- CHROMOSOME lotja.MG-20.v3.Lj3.0_chr1       lotja.Lj3.0_chr1
-- CHROMOSOME cajca.ICPL87119.v1.CcLG07       cajca.CcLG07
-- CHROMOSOME lupan.Tanjil.a1.NLL-01          lupan.NLL-01
-- CHROMOSOME tripr.MilvusB.v2.Tp57577_TGAC_v2_LG1      tripr.Tp57577_TGAC_v2_LG1
-- CHROMOSOME vigan.Gyeongwon.v3.1            vigan.1
-- CHROMOSOME aradu.V14167.v1.Aradu.A01       aradu.Aradu.A01
-- CHROMOSOME araip.K30076.v1.Araip.B02       araip.Araip.B02
-- *peanutbase*
-- CHROMOSOME Aradu.A02 Aradu.A02
-- CHROMOSOME Araip.B01 Araip.B01
-----------------------------------------------------------------------------------------------
-- 
-- SUPERCONTIG vigun.IT97K-499-35.gnm1.contig_100 | vigun.contig_100
-- SUPERCONTIG phavu.G19833.v1.scaffold_100       | phavu.scaffold_100
-- SUPERCONTIG cicar.CDCFrontier.v1.C11044140     | cicar.C11044140
-- SUPERCONTIG cicar.ICC4958.v2.contig50210       | cicar.contig50210
-- SUPERCONTIG glyma.Wm82.a2.scaffold_1002        | glyma.scaffold_1002
-- SUPERCONTIG medtr.A17_HM341.v4.scaffold0001    | medtr.scaffold0001
-- SUPERCONTIG vigra.VC1973A.v6.scaffold_100      | vigra.scaffold_100
-- SUPERCONTIG NO lotja
-- SUPERCONTIG cajca.ICPL87119.v1.Scaffold000002  | cajca.Scaffold000002
-- SUPERCONTIG lupan.Tanjil.a1.Scaffold_1000      | lupan.Scaffold_1000
-- SUPERCONTIG tripr.MilvusB.v2.Tp57577_TGAC_v2_scaf_10000 | tripr.Tp57577_TGAC_v2_scaf_10000
-- SUPERCONTIG vigan.Gyeongwon.v3.scaffold_1000   | vigan.scaffold_1000
-- SUPERCONTIG aradu.V14167.v1.Adur101_2          | aradu.Adur101_2
-- SUPERCONTIG araip.K30076.v1.Aipa1001           | araip.Aipa1001
-- *peanutbase*
-- SUPERCONTIG Adur2309 | Adur2309
-- SUPERCONTIG Aipa1180 | Aipa1180
-----------------------------------------------------------------------------------------------
-- 
-- GENEvigun.IT97K-499-35.gnm1.ann1.VigunL000100 | vigun.VigunL000100
-- GENEPhvul.001G000100.v1.0                     | phavu.Phvul.001G000100
-- GENECa_28103_gene                             | cicar.Ca_28103_gene
-- GENEcicar.ICC4958.v2.0.Ca_01216               | cicar.ICC4958.Ca_01216
-- GENEGlyma.15G017000.Wm82.a2.v1                | glyma.Glyma.15G017000
-- GENEMedtr0001s0010.JCVIMt4.0v1                | medtr.Medtr0001s0010
-- GENEVradi0007s00010.Vradi.ver6                | vigra.Vradi0007s00010
-- GENELj0g3v0000049                             | lotja.Lj0g3v0000049
-- GENEC.cajan_00001_gene                        | cajca.C.cajan_00001_gene
-- GENElupan.Tanjil.a1.0.Lup000010               | lupan.Lup000010
-- GENEtripr.MilvusB.v2.Tp57577_TGAC_v2_gene10   | tripr.Tp57577_TGAC_v2_gene10
-- GENEvigan.Gyeongwon.v3.Vang0002ss00060        | vigan.Vang0002ss00060
-- GENEAradu.000JC                               | aradu.Aradu.000JC
-- GENEAraip.000WR                               | araip.Araip.000WR
-- *peanutbase*
-- GENEAradu.B2QWP | Aradu.B2QWP
-- GENEAraip.0K3I7 | Araip.0K3I7
-----------------------------------------------------------------------------
-- 
-- vigun.IT97K-499-35.gnm1.ann1.VigunL000100.1.exon.1 | vigun.IT97K-499-35.gnm1.ann1.VigunL000100.1.exon.1
-- Phvul.001G000100.1.v1.0.exon.1                     | phavu.Phvul.001G000100.1.v1.0.exon.1
-- auto2622509                                        | exon-auto2622509
-- cicar.ICC4958.v2.0.Ca_00001.1.exon1                | cicar.ICC4958.Ca_00001.1.exon1
-- Glyma.10G109600.1.Wm82.a2.v1.exon.1                | glyma.Glyma.10G109600.1.Wm82.a2.v1.exon.1
-- Medtr1g004930.1.JCVIMt4.0v1.exon.1                 | medtr.Medtr1g004930.1.JCVIMt4.0v1.exon.1
-- 10000                                              | Vradi03g01680.1
-- Ljchlorog3v0000020.1.exon.1                        | Ljchlorog3v0000020.1.exon.1
-- auto3025154                                        | exon-auto3025154
-- auto9883470                                        | exon-auto9883470
-- tripr.MilvusB.v2.Tp57577_TGAC_v2_mRNA2561.exon5    | tripr.Tp57577_TGAC_v2_mRNA2561.exon5
-- vigan.Gyeongwon.v3.Vang0002ss00010.1:exon:17064    | vigan.Gyeongwon.v3.Vang0002ss00010.1:exon:17064
-- Aradu.TW3FF:exon:45                                | Aradu.TW3FF:exon:45
-- Araip.2M1DM:exon:2                                 | Araip.2M1DM:exon:2
-- *peanutbase*
-- Aradu.B2QWP:exon:0 | Aradu.B2QWP:exon:0
-- Araip.03MS6:exon:7 | Araip.03MS6:exon:7
-----------------------------------------------------------------------------------------------
-- PROTEIN
-- vigun.IT97K-499-35.gnm1.ann1.Vigun03g178100.1.p | vigun.Vigun03g178100.1.p
-- Phvul.001G000300.2.v1.0                         | phavu.Phvul.001G000300.2
-- Ca_00005                                        | cicar.Ca_00005
-- cicar.ICC4958.v2.0.Ca_00005.1                   | cicar.ICC4958.Ca_00005.1
-- Glyma.19G172200.1.Wm82.a2.v1                    | glyma.Glyma.19G172200.1
-- Medtr0001s0190.1.JCVIMt4.0v1                    | medtr.Medtr0001s0190.1
-- Vradi0007s00060.1.Vradi.ver6                    | vigra.Vradi0007s00060.1
-- Lj0g3v0000089.2                                 | lotja.Lj0g3v0000089.2
-- C.cajan_00006                                   | cajca.C.cajan_00006
-- lupan.Tanjil.a1.0.Lup000006.1                   | lupan.Lup000006.1
-- tripr.MilvusB.v2.Tp57577_TGAC_v2_mRNA1000       | tripr.Tp57577_TGAC_v2_mRNA1000
-- vigan.Gyeongwon.v3.Vang0002ss00040.2            | vigan.Vang0002ss00040.2
-- Aradu.007YB.1                                   | aradu.Aradu.007YB.1
-- Araip.002AG.1                                   | araip.Araip.002AG.1
-- *peanutbase*
-- Aradu.NYS45.1 | Aradu.NYS45.1
-- Araip.X53VH.1 | Araip.X53VH.1
-----------------------------------------------------------------------------
-- mRNA
-- vigun.IT97K-499-35.gnm1.ann1.Vigun01g000100.1 | vigun.Vigun01g000100.1
-- Phvul.001G000100.1.v1.0                       | phavu.Phvul.001G000100.1
-- Ca_00001                                      | cicar.Ca_00001
-- cicar.ICC4958.v2.0.Ca_00001.1                 | cicar.ICC4958.Ca_00001.1
-- Glyma.01G000100.1.Wm82.a2.v1                  | glyma.Glyma.01G000100.1
-- Medtr0001s0010.1.JCVIMt4.0v1                  | medtr.Medtr0001s0010.1
-- Vradi0007s00010.1.Vradi.ver6                  | vigra.Vradi0007s00010.1
-- Lj0g3v0000029.1                               | lotja.Lj0g3v0000029.1
-- C.cajan_00001                                 | cajca.C.cajan_00001
-- lupan.Tanjil.a1.0.Lup000001.1                 | lupan.Lup000001.1
-- tripr.MilvusB.v2.Tp57577_TGAC_v2_mRNA1        | tripr.Tp57577_TGAC_v2_mRNA1
-- vigan.Gyeongwon.v3.Vang0002ss00010.1          | vigan.Vang0002ss00010.1
-- Aradu.000JC.1                                 | aradu.Aradu.000JC.1
-- Araip.000WR.1                                 | araip.Araip.000WR.1
-- *peanutbase*
-- Aradu.Z3YP0.1 | Aradu.Z3YP0.1
-- Araip.J9PKW.1 | Araip.J9PKW.1
-----------------------------------------------------------------------------
-- QTL -- only phavu in LIS, arahy in Peanutbase
-- phavu.First flower, bean 1-5 | First flower, bean 1-5
-- *peanutbase*
-- arahy.Groundnut bruchid 1-1  | Groundnut bruchid 1-1
-----------------------------------------------------------------------------
-- LINKAGE GROUP
-- *peanutbase*
-- TT_AhComposite_QinFeng2012_a-A10(LGJ10) | TT_AhComposite_QinFeng2012_a-A10(LGJ10)
-- AA_A.duranensis_x_A.duranensis_a-A01    | AA_A.duranensis_x_A.duranensis_a-A01
-----------------------------------------------------------------------------
-- GENETIC MARKER
-- *peanutbase*
-- 14H06      | 14H06
-- GM10       | GM10
-----------------------------------------------------------------------------

-- cowpea
UPDATE chromosome SET secondaryidentifier=primaryidentifier, primaryidentifier=substring(secondaryidentifier,7) WHERE primaryidentifier LIKE 'vigun.%';
UPDATE gene SET       secondaryidentifier=primaryidentifier, primaryidentifier=substring(secondaryidentifier,7) WHERE primaryidentifier LIKE 'vigun.%';
UPDATE exon SET       primaryidentifier=substring(primaryidentifier,30)                                         WHERE primaryidentifier LIKE 'vigun.%';
UPDATE protein SET    secondaryidentifier=primaryidentifier, primaryidentifier=replace(secondaryidentifier,'.p','') WHERE primaryidentifier LIKE 'vigun.%';
UPDATE protein SET    primaryidentifier=substring(primaryidentifier,7)                                          WHERE primaryidentifier LIKE 'vigun.%';
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
UPDATE qtl SET primaryidentifier=secondaryidentifier, secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'phavu.%';


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
UPDATE supercontig SET primaryidentifier=substring(secondaryidentifier,7), secondaryidentifier=primaryidentifier WHERE primaryidentifier LIKE 'glyma.%';

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

-- vigra.VC1973A.v6.Vr01        | vigra.Vr01
-- vigra.VC1973A.v6.scaffold_100      | vigra.scaffold_100
