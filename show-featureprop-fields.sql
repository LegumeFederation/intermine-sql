--
-- list out the values loaded by featureprop to see if it ran and how well
--

SELECT id,substring(comment,1,50) AS comment FROM organism ORDER BY id;

SELECT primaryidentifier,assignedlinkagegroup FROM linkagegroup WHERE assignedlinkagegroup IS NOT NULL LIMIT 1;

SELECT primaryidentifier,comment FROM qtl WHERE comment IS NOT NULL LIMIT 1;
SELECT primaryidentifier,experimenttraitdescription FROM qtl WHERE experimenttraitdescription IS NOT NULL LIMIT 1;
SELECT primaryidentifier,experimenttraitname FROM qtl WHERE experimenttraitname IS NOT NULL LIMIT 1;
SELECT primaryidentifier,publicationlinkagegroup FROM qtl WHERE publicationlinkagegroup IS NOT NULL LIMIT 1;
SELECT primaryidentifier,analysismethod FROM qtl WHERE analysismethod IS NOT NULL LIMIT 1;
SELECT primaryidentifier,traitunit FROM qtl WHERE traitunit IS NOT NULL LIMIT 1;
SELECT primaryidentifier,identifier FROM qtl WHERE identifier IS NOT NULL LIMIT 1;
SELECT primaryidentifier,peak FROM qtl WHERE peak IS NOT NULL LIMIT 1;
SELECT primaryidentifier,studytreatment FROM qtl WHERE studytreatment IS NOT NULL LIMIT 1;

SELECT primaryidentifier,comment FROM geneticmarker WHERE comment IS NOT NULL LIMIT 1;
SELECT primaryidentifier,sourcedescription FROM geneticmarker WHERE sourcedescription IS NOT NULL LIMIT 1;
SELECT primaryidentifier,canonicalmarker FROM geneticmarker WHERE canonicalmarker IS NOT NULL LIMIT 1;

SELECT primaryidentifier,note FROM protein WHERE note IS NOT NULL LIMIT 1;

SELECT primaryidentifier,signaturedesc FROM proteinmatch WHERE signaturedesc IS NOT NULL LIMIT 1;
SELECT primaryidentifier,status FROM proteinmatch WHERE status IS NOT NULL LIMIT 1;
SELECT primaryidentifier,intermine_date AS date FROM proteinmatch WHERE intermine_date IS NOT NULL LIMIT 1;

SELECT primaryidentifier,signaturedesc FROM proteinhmmmatch WHERE signaturedesc IS NOT NULL LIMIT 1;
SELECT primaryidentifier,status FROM proteinhmmmatch WHERE status IS NOT NULL LIMIT 1;
SELECT primaryidentifier,intermine_date AS date FROM proteinhmmmatch WHERE intermine_date IS NOT NULL LIMIT 1;
