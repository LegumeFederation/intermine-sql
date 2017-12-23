--
-- Rather than blow away the user profiles, simply update the preferred bags in the userprofile-mine.tag table.
-- NOTE: as usual, the webapp must be rebuilt after applying this update.
DELETE FROM tag WHERE type='class';
INSERT INTO tag VALUES (1100001,'org.intermine.model.bio.Gene',		'class','im:preferredBagType',1000000);
INSERT INTO tag VALUES (1100002,'org.intermine.model.bio.GeneticMarker','class','im:preferredBagType',1000000);
INSERT INTO tag VALUES (1100003,'org.intermine.model.bio.Protein',	'class','im:preferredBagType',1000000);
INSERT INTO tag VALUES (1100004,'org.intermine.model.bio.QTL',		'class','im:preferredBagType',1000000);
