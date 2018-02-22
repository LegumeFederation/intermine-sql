-- Running PopulatePublications will create orphaned authorspublications records. Remove them.
DELETE FROM authorspublications WHERE authors NOT IN (SELECT id FROM author);
