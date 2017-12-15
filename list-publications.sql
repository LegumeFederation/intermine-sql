--
-- list out the publications in search of dupes
--
SELECT substring(title,1,100) AS title, substring(journal,1,20) AS journal, count(*) FROM publication GROUP BY title,journal ORDER BY count,title;
