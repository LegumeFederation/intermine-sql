--
-- Get rid of all the extra peanut organisms that we don't have associated with taxon IDs and don't import
-- NOTE: this will take a while due to cascaded deletes.
--

DELETE FROM organism WHERE species NOT like '%\_%';
