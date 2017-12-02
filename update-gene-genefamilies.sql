--
-- Update gene.genefamilyid values from homologue.gene and homologue.genefamilyid
--
-- This is a temporary measure until I figure out why gene.genefamilyid keeps getting zorched.
--

CREATE INDEX IF NOT EXISTS homologue__gene__genefamily ON homologue(geneid, genefamilyid);
CREATE INDEX IF NOT EXISTS homologue__homologue__genefamily ON homologue(homologueid, genefamilyid);

-- everything but Arabidopsis
--UPDATE gene SET genefamilyid=(SELECT DISTINCT genefamilyid FROM homologue WHERE geneid=gene.id) WHERE primaryidentifier NOT LIKE 'AT%';

-- fix Arabidopsis just in case
UPDATE gene SET genefamilyid=(SELECT DISTINCT genefamilyid FROM homologue WHERE homologueid=gene.id) WHERE primaryidentifier LIKE 'AT%';
