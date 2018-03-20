-- list out QTL TO annotations to find dupes
-- SELECT subjectid,ontologytermid,count(*) FROM toannotation GROUP BY subjectid,ontologytermid ORDER BY subjectid,ontologytermid,count DESC;

-- list out QTL TO annotations per organism
SELECT count(*),commonname FROM toannotation,qtl,organism WHERE toannotation.subjectid=qtl.id AND qtl.organismid=organism.id GROUP BY commonname;  
