##
## get rid of all the extra peanut organisms that we don't have associated with taxon IDs and don't import
##

DELETE FROM organism WHERE species NOT like '%\_%';
