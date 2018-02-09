-- list out QTL TO annotations to find dupes
SELECT subjectid,ontologytermid,count(*) FROM ontologyannotation WHERE class LIKE '%TO%' GROUP BY subjectid,ontologytermid ORDER BY subjectid,ontologytermid; 
