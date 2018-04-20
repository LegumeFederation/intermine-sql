-- add varieties to PeanutBase organisms
UPDATE organism SET species='hypogaea_Tifrunner' WHERE organism_id=13;
UPDATE organism SET species='duranensis_V14167'  WHERE organism_id=14;
UPDATE organism SET species='ipaensis_K30076'    WHERE organism_id=15;
-- delete the other organisms since the loader will not know their taxon IDs
DELETE FROM organism WHERE organism_id<13 OR organism_id>15;
