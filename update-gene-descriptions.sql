--
-- update gene descriptions by running a query against chado.feature loaded into the chado schema
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
       AND feature.type_id=43076
       AND chado.featureprop.feature_id=feature.feature_id
       AND feature.name=gene.secondaryidentifier
       );

\i ../dbmodel/build/model/remove-update-triggers.sql
