--
-- list out genetic marker counts
--
SELECT organism.taxonid AS taxonid, strain.primaryidentifier AS strain, count(*) AS geneticmarkers
       FROM organism,strain,geneticmarker
       WHERE organism.id=geneticmarker.organismid
       AND   strain.id=geneticmarker.strainid
       GROUP BY organism.taxonid, strain.primaryidentifier
       ORDER BY organism.taxonid, strain.primaryidentifier;
