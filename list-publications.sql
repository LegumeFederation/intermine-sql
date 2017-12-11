--
-- list out the publications in search of dupes
--
SELECT substring(title,1,100) AS title, count(*) FROM publication GROUP BY title ORDER BY count;
