-------------------------------------------------
-- General purpose organism updater for all mines
-------------------------------------------------

--
-- main fields
--

UPDATE organism SET genus='Cicer', species='arietinum', name='Cicer arietinum (kabuli)', commonname='chickpea (kabuli)', shortname='C. arietinum (kabuli)' WHERE variety='CDCFrontier';
UPDATE organism SET genus='Cicer', species='arietinum', name='Cicer arietinum (desi)', commonname='chickpea (desi)', shortname='C. arietinum (desi)' WHERE variety='ICC4958';
UPDATE organism SET genus='Phaseolus', species='vulgaris', name='Phaseolus vulgaris', commonname='string bean', shortname='P. vulgaris' WHERE taxonid=3885;
UPDATE organism SET genus='Glycine', species='max', name='Glycine max', commonname='soybean', shortname='G. max' WHERE taxonid=3847;
UPDATE organism SET genus='Arachis', species='duranensis', name='Arachis duranensis', commonname='peanut', shortname='A. duranensis' WHERE taxonid=130453;
UPDATE organism SET genus='Arachis', species='ipaensis', name='Arachis ipaensis', commonname='peanut', shortname='A. ipaensis' WHERE taxonid=130454;
UPDATE organism SET genus='Medicago', species='truncatula', name='Medicago truncatula', commonname='barrel medic', shortname='M. truncatula', variety='A17' WHERE taxonid=3880;
UPDATE organism SET genus='Arabidopsis', species='thaliana', name='Arabidopsis thaliana', commonname='thale cress', shortname='A. thaliana' WHERE taxonid=3702;
UPDATE organism SET genus='Vigna', species='unguiculata', name='Vigna unguiculata', commonname='cowpea', shortname='V. unguiculata' WHERE taxonid=3917 OR taxonid=3920;
UPDATE organism SET genus='Vigna', species='unguiculata subsp. sesquipedalis', name='Vigna unguiculata subsp. sesquipedalis', commonname='asparagus bean', shortname='V. unguiculata subsp. sesquipedalis' WHERE taxonid=138955;
UPDATE organism SET genus='Trifolium', species='pratense', name='Trifolium pratense', commonname='red clover', shortname='T. pratense' WHERE taxonid=57577;
UPDATE organism SET genus='Vigna', species='angularis', name='Vigna angularis', commonname='adzuki bean', shortname='V. angularis' WHERE taxonid=3914;
UPDATE organism SET genus='Cajanus', species='cajan', name='Cajanus cajan', commonname='pigeon pea', shortname='C. cajan' WHERE taxonid=3821;
UPDATE organism SET genus='Lupinus', species='angustifolius', name='Lupinus angustifolius', commonname='lupin', shortname='L. angustifolius' WHERE taxonid=3871;
UPDATE organism SET genus='Lotus', species='japonicus', name='Lotus japonicus', commonname='birdsfoot trefoil', shortname='L. japonicus' WHERE taxonid=34305;
UPDATE organism SET genus='Vigna', species='radiata', name='Vigna radiata', commonname='mungbean', shortname='V. radiata' WHERE taxonid=157791;

--
-- comments
--

UPDATE organism SET comment=
'The chickpea (<i>Cicer arietinum</i>) is a legume species in the group of "cool-season" legumes, along with lentil, pea, faba bean and clovers.  Chickpea is one of the earliest cultivated legumes: 7,500-year-old remains have been found in the Middle East.  Other common names for the species include garbanzo bean, ceci bean, sanagalu, chana and Bengal gram. There are two main types of cultivated chickpeas based on seed morphology: desi and kabuli. The kabuli type of chickpea are lighter in color, have a smooth seed coat and about 8 to 9 mm in size. The kabuli type of chickpeas are the most common type found in America. Genome version available on LIS is version CDC Frontier v1.0.'
WHERE variety='CDCFrontier';

UPDATE organism SET comment=
'The chickpea (<i>Cicer arietinum</i>) is a legume species in the group of "cool-season" legumes, along with lentil, pea, faba bean and clovers.  Chickpea is one of the earliest cultivated legumes: 7,500-year-old remains have been found in the Middle East.  Other common names for the species include garbanzo bean, ceci bean, sanagalu, chana and Bengal gram. There are two main types of cultivated chickpeas based on seed morphology: desi and kabuli. The desi type of chickpea consists of seeds with a yellow interior but have a thick, wrinkled and dark seed coat, the seeds are approximately 6 to 7 mm in size. The majority of desi chickpeas are split in half to make Chana Dahl. ICC 4958, desi type chickpea; genome version available on LIS is version ICC 4958 v2.0.'
WHERE variety='ICC4958';

UPDATE organism SET comment=
'Common bean''s center of origin is Central America, and it was likely domesticated there as well as in the Andes. Beans were also carried into North America and were grown by Native Americans there for many centuries. They were carried to Europe by early explorers of the New World, and have undergone about 500 years of additional domestication and selection in Europe. The species has great agricultural variety, and is of critical importance as a high-protein food across the world. Common bean is closely related to several other domesticated crop species in the group of "warm-season legumes". Other domesticated species in the Phaseolus genus include lima bean (P. lunatus), tepary bean (P. acutifolius), and runner bean (P. coccineus). Species in the similar Vigna genus include cowpea (V. unguiculata), adzuki bean (V. angularis), moth bean (V. aconitifolia), black gram (V. mungo), mung bean (V. radiata), ricebean (V. umbellata), and Bambara groundnut (V. subterranea). Other more distantly related warm-season legumes include soybean, jicama, pigeonpea, African yam bean, hyacinth bean, and Apios americana ("potato bean").'
WHERE taxonid=3885;

UPDATE organism SET comment=
'Soybean is the predominant oil-seed legume; it produces a high-protein meal and has many industrial uses.'
WHERE taxonid=3847;

UPDATE organism SET comment=
'<i>Arachis duranensis</i>, a wild herb native to Argentina, Bolivia, and Paraguay, is thought to be one of the diploid ancestors of cultivated peanut. Its genome has been sequenced as part of the Peanut Genomics Initiative, to help in the accurate assembly of the more important cultivated peanut, <i>A. hypogaea</i>. Cultivated peanut derived all of its genetic material from two wild ancestors, <i>A. duranensis</i> and <i>A. ipaensis</i> whose genomes merged several thousand years ago, in a rare genetic event. The wild species, therefore, have half as much genetic material as cultivated peanut. These two “simpler” genomes have first been sequenced toward achieving its ultimate goal: the complete genomic sequence for cultivated peanut. The cultivated peanut is an allotetraploid (2n=4x=40) that carries both the A and B genomes and <i>A. duranensis</i> (2n=2x=20) has likely contributed the A genome, the smaller set of chromosomes in the karyotype. These two ancestral diploids separated from each other about 3 million years ago. The genome merger, allopolyploidy event, ocurred relatively very recently, five to ten thousand years ago, followed by domestication in South America from where it appeared in most part of the world by 1600.'
WHERE taxonid=130453;

UPDATE organism SET comment=
'<i>Arachis ipaensis</i>, native to Bolivia, is thought to be one of the diploid ancestors of cultivated peanut. The genome of <i>A. ipaensis</i> has been sequenced as part of the Peanut Genomics Initiative, to help in the accurate assembly of the tetraploid domestic peanut, </i>A. hypogaea.</i> Cultivated peanut derived all of its genetic material from two wild ancestors, <i>A. duranensis</i> and <i>A. ipaensis</i> whose genomes merged several thousand years ago, in a rare genetic event. The wild species, therefore, have half as much genetic material as cultivated peanut. These two “simpler” genomes have first been sequenced toward achieving its ultimate goal: the complete genomic sequence for cultivated peanut. The cultivated peanut is an allotetraploid (2n=4x=40) that carries both the A and B genomes and <i>A. ipaensis</i> (2n=2x=20) has likely contributed the B genome, the larger set of chromosomes in the karyotype. These two ancestral diploids separated from each other about 3 million years ago. The genome merger, allopolyploidy event, ocurred relatively very recently, five to ten thousand years ago, followed by domestication in South America from where it appeared in most part of the world by 1600.'
WHERE taxonid=130454;

UPDATE organism SET comment=
'<i>Medicago truncatula</i>, a close relative of alfalfa (<i>M. sativa</i>), is widely used as a model in legume biology. It is physically small in stature, with a small genome, and has a short generation-to-generation time.'
WHERE taxonid=3880;

UPDATE organism SET comment='<i>Arabidopsis thaliana</i> is the most widely studied model plant species, with five completely sequenced and annotated chromosomes.'
WHERE taxonid=3702;

UPDATE organism SET comment=
'Cowpea (<i>Vigna unguiculata</i>) is used in many parts of the world for its high-protein seeds, but also for its nutrient-rich edible leaves, forage, and soil enrichment. Cowpea is generally more heat-tolerant than common bean. Cowpeas are one of the most important food legume crops in the semi-arid tropics that cover Asia, Africa, southern Europe and Central and South America. A drought-tolerant and warm-weather crop, cowpeas are well-adapted to the drier regions of the tropics, where other food legumes do not perform as well. It also has the useful ability to fix atmospheric nitrogen through its root nodules, and it grows well in poor soils.'
WHERE taxonid=3917 OR taxonid=3920;

UPDATE organism SET comment=
'Asparagus bean <i>Vigna unguiculata subsp. sesquipedalis</i> is a variety of cowpea cultivated to be eaten as green pods. It is known as the yardlong bean, bora, bodi, long-podded cowpea, asparagus bean, pea bean, snake bean, or Chinese long bean. Despite the common name, the pods are actually only about half a yard long; the subspecies name sesquipedalis (one-and-a-half-foot-long) is a rather accurate approximation of the pods'' length.'
WHERE taxonid=138955;

UPDATE organism SET comment=
'Red clover (<i>Trifolium pratense</i>) is a perennial legume species native to Northwest Africa, Europe and Western Asia. Today, red clover is found in many regions around the world including the Americas and Australia. Unlike other legume species, red clover is an outcrossing species due to a strong gametophytic incompatibility system. Red clover is a widely grown fodder legume crop and is valued for its role in increasing soil fertility by nitrogen fixation.'
WHERE taxonid=57577;

UPDATE organism SET comment=
'The adzuki bean is a diploid legume crop (2n=2x=22). Adzuki beans are commonly sweetened before eating by boiling the beans with sugar, resulting in red bean paste. The adzuki bean is a good dietary source for a variety of minerals including; magnesium, potassium and zinc.'
WHERE taxonid=3914;

UPDATE organism SET comment=
'Pigeon pea is a member of the millettioid (warm-season legume) clade within the sub-family Papilionoideae. Pigeonpea is the main protein source for more than a billion people in the developing world. It is grown mainly in the semi-arid tropical regions (Asia, Africa and Central/South America).'
WHERE taxonid=3821;

UPDATE organism SET comment=
'<i>Lupinus angustifolius</i> is a species of lupin known by many common names, including narrow-leafed lupin and blue lupin. It is native to Eurasia and northern Africa and also naturalized in parts of Australia and North America. It has been cultivated for over 6000 years as a food crop for its edible legume seeds, as a fodder for livestock, and for use as a green manure.'
WHERE taxonid=3871;

UPDATE organism SET comment=
'<i>Lotus japonicus</i>, a forage crop (much like clover), is widely used as a model in legume biology. It is physically small in stature, with a small genome, and a short generation time, and it is relatively easily transformable (for gene functional studies).'
WHERE taxonid=34305;

UPDATE organism SET comment=
'The mungbean (also known as moong bean, green gram) is a fast-growing warm-season legume and has a diploid chromosome number of 2n=22. Mungbean is mainly cultivated today in China, India and Southeast Asia but can be found in dry regions within Southern Europe and United States. Mungbeans are a good source of dietary protein, folate and iron. This legume species was moved from the genus <i>Phaseolus</i> to <i>Vigna</i> and is correctly cited as <i>Vigna radiata</i>.'
WHERE taxonid=157791;
