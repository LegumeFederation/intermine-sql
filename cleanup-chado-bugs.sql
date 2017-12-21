--
-- clean up various data that get imported because chado is buggy
--

-- lotja has a whole bunch of orphaned mRNAs (and transcripts)
DELETE FROM mrna WHERE proteinid IS NULL;
DELETE FROM transcript WHERE proteinid IS NULL;
