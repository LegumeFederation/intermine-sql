--
-- update gene descriptions by running a query against chado.feature and chado.featureprop loaded into the chado schema
--
-- NOTE: you must load the chado.chado.feature and chado.chado.featureprop tables into the mine database!
--
-- UPDATE type_id APPROPRIATELY!
--
--  chado.feature
--  type_id |         name         
-- ---------+----------------------
--    43076 | gene
--
-- chado.featureprop
--  type_id |                  name                  
-- ---------+----------------------------------------
--     2125 | Note

\i ../dbmodel/build/model/add-update-triggers.sql

UPDATE gene SET description=(
       SELECT chado.featureprop.value
       FROM chado.featureprop,chado.feature
       WHERE chado.featureprop.type_id=2125
       AND chado.feature.type_id=43076
       AND chado.featureprop.feature_id=chado.feature.feature_id
       AND chado.feature.name=gene.secondaryidentifier
       );

\i ../dbmodel/build/model/remove-update-triggers.sql
