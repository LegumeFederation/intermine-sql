--
-- Update gene.genefamilyid values from homologue.gene and homologue.genefamilyid
--
-- This is a temporary measure until I figure out why gene.genefamilyid keeps getting zorched.
--

CREATE INDEX IF NOT EXISTS homologue__gene__genefamily ON homologue(geneid, genefamilyid);

UPDATE gene SET genefamilyid = (SELECT DISTINCT genefamilyid FROM homologue WHERE geneid=gene.id);
