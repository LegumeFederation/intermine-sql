--
-- clean up various data that get imported because chado is buggy and/or hacky
--

-- lotja has a whole bunch of orphaned mRNAs (and transcripts)
DELETE FROM mrna WHERE proteinid IS NULL;
DELETE FROM transcript WHERE proteinid IS NULL;

-- We get some proteinmatch and proteinhmmmatch records associated with consensus consensus and related to no proteins. Remove them.
DELETE FROM proteinmatch WHERE proteinid IS NULL;
DELETE FROM proteinhmmmatch WHERE proteinid IS NULL;

-- The bogus organism consensus consensus is used to load protein domains. We've associated it with taxon ID 3398. Remove it and the references.
DELETE FROM organism WHERE taxonid='3398';
UPDATE proteindomain SET organismid=NULL;
