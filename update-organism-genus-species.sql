----------------------------------------------------------
-- General purpose genus and species updater for all mines
----------------------------------------------------------

UPDATE organism SET genus='Cicer', species='arietinum', name='Cicer arietinum (kabuli)', commonname='chickpea (kabuli)', shortname='C. arietinum (kabuli)' WHERE variety='CDCFrontier';
UPDATE organism SET genus='Cicer', species='arietinum', name='Cicer arietinum (desi)', commonname='chickpea (desi)', shortname='C. arietinum (desi)' WHERE variety='ICC4958';
UPDATE organism SET genus='Phaseolus', species='vulgaris', name='Phaseolus vulgaris', commonname='string bean', shortname='P. vulgaris' WHERE taxonid='3885';
UPDATE organism SET genus='Glycine', species='max', name='Glycine max', commonname='soybean', shortname='G. max' WHERE taxonid='3847';
UPDATE organism SET genus='Arachis', species='hypogaea', name='Arachis hypogaea', commonname='cultivated peanut', shortname='A. hypogaea ' WHERE taxonid='3818';
UPDATE organism SET genus='Arachis', species='duranensis', name='Arachis duranensis', commonname='diploid duranensis peanut', shortname='A. duranensis' WHERE taxonid='130453';
UPDATE organism SET genus='Arachis', species='ipaensis', name='Arachis ipaensis', commonname='dipload ipaensis peanut', shortname='A. ipaensis' WHERE taxonid='130454';
UPDATE organism SET genus='Medicago', species='truncatula', name='Medicago truncatula', commonname='barrel medic', shortname='M. truncatula', variety='A17' WHERE taxonid='3880';
UPDATE organism SET genus='Arabidopsis', species='thaliana', name='Arabidopsis thaliana', commonname='thale cress', shortname='A. thaliana' WHERE taxonid='3702';
UPDATE organism SET genus='Vigna', species='unguiculata', name='Vigna unguiculata', commonname='cowpea', shortname='V. unguiculata' WHERE taxonid='3917' OR taxonid='3920';
UPDATE organism SET genus='Vigna', species='unguiculata subsp. sesquipedalis', name='Vigna unguiculata subsp. sesquipedalis', commonname='asparagus bean', shortname='V. unguiculata subsp. sesquipedalis' WHERE taxonid='138955';
UPDATE organism SET genus='Trifolium', species='pratense', name='Trifolium pratense', commonname='red clover', shortname='T. pratense' WHERE taxonid='57577';
UPDATE organism SET genus='Vigna', species='angularis', name='Vigna angularis', commonname='adzuki bean', shortname='V. angularis' WHERE taxonid='3914';
UPDATE organism SET genus='Cajanus', species='cajan', name='Cajanus cajan', commonname='pigeon pea', shortname='C. cajan' WHERE taxonid='3821';
UPDATE organism SET genus='Lupinus', species='angustifolius', name='Lupinus angustifolius', commonname='lupin', shortname='L. angustifolius' WHERE taxonid='3871';
UPDATE organism SET genus='Lotus', species='japonicus', name='Lotus japonicus', commonname='birdsfoot trefoil', shortname='L. japonicus' WHERE taxonid='34305';
UPDATE organism SET genus='Vigna', species='radiata', name='Vigna radiata', commonname='mungbean', shortname='V. radiata' WHERE taxonid='157791';

UPDATE organism SET genus='Magnoliophyta', species='consensus', variety='consensus' WHERE taxonid='3398';
