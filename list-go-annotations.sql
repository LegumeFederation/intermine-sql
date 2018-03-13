-- list out GO annotations to find dupes
SELECT subjectid,ontologytermid,count(*) FROM ontologyannotation WHERE class LIKE '%GO%' GROUP BY subjectid,ontologytermid ORDER BY count DESC,subjectid,ontologytermid; 
