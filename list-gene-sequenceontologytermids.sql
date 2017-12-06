--
-- list out the count of distinct sequenceontologytermid values for genes, because we has problems
--
SELECT sequenceontologytermid,count(*) FROM gene GROUP BY sequenceontologytermid ORDER BY sequenceontologytermid;
SELECT id,identifier,name FROM ontologyterm WHERE name='gene';
