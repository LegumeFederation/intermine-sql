-- list out QTL CO annotations to find dupes
SELECT subjectid,ontologytermid,count(*) FROM ontologyannotation WHERE class LIKE '%CO%' GROUP BY subjectid,ontologytermid ORDER BY subjectid,ontologytermid; 
