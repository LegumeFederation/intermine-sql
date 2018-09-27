---------------------------------------------------------------------------------------------
-- demo the various relationships that provide stuff related to a polypeptide, e.g. 860922 --
---------------------------------------------------------------------------------------------

-- let's go vertical
\x

-- the polypeptide (including its residues)
SELECT 'polypeptide' AS type,* FROM feature WHERE feature_id=860922;

-- its consensus regions (including their residues) both Phytozome and legfed; type_id=44007 (skip the chromosome, polypeptides aren't on chromosomes!!!)
SELECT 'consensus_region' AS type,featureloc.*,feature.* FROM feature,featureloc
	WHERE type_id=44007 AND feature.feature_id=featureloc.srcfeature_id AND featureloc.feature_id=860922;

-- its protein_match(es); type_id=43412
SELECT 'protein_match' AS type,featureloc.*,feature.* FROM feature,featureloc
	WHERE type_id=43412 AND feature.feature_id=featureloc.feature_id AND featureloc.srcfeature_id=860922;

-- its protein_hmm_matches; type_id=44794
SELECT 'protein_hmm_match' AS type,featureloc.*,feature.* FROM feature,featureloc
	WHERE type_id=44794 AND feature.feature_id=featureloc.feature_id AND featureloc.srcfeature_id=860922;

-- its polypeptide_domain(s); type_id=43491
SELECT 'polypeptide_domain' AS type,featureloc.*,feature.* FROM feature,featureloc
	WHERE type_id=43491 AND feature.feature_id=featureloc.srcfeature_id
	AND featureloc.feature_id IN (SELECT feature_id FROM featureloc WHERE srcfeature_id=860922);

-- its mRNAs; type_id=43002
SELECT 'mRNA' as type,feature.* FROM feature,feature_relationship
	WHERE feature.type_id=43002 AND feature.feature_id=object_id AND subject_id=860922;
