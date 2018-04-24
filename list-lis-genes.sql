--
-- List out a couple of genes for each organism in LIS chado
--

SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=13 LIMIT 1;
SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=14 LIMIT 1;
SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=15 LIMIT 1;
SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=16 LIMIT 1;
SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=18 LIMIT 1;
SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=19 LIMIT 1;
SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=21 LIMIT 1;
SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=24 LIMIT 1;
SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=26 LIMIT 1;
SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=27 LIMIT 1;
SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=30 LIMIT 1;
SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=32 LIMIT 1;
SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=33 LIMIT 1;
SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=1571 LIMIT 1;
SELECT organism_id,uniquename,name FROM feature WHERE type_id = (SELECT cvterm_id FROM cvterm WHERE name='gene') AND organism_id=1572 LIMIT 1;
