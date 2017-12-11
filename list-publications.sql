--
-- list out the publications in search of dupes
--
SELECT title,count(*) FROM publication GROUP BY title ORDER BY count;
