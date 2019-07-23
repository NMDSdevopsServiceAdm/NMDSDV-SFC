-- FUNCTION: migration.loop_estbid_worker_bulk_training(integer)

-- DROP FUNCTION migration.loop_estbid_worker_bulk_training(integer);

CREATE OR REPLACE FUNCTION migration.loop_estbid_worker_bulk_training(
	n integer DEFAULT 100,
	o integer DEFAULT 0)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE 
AS $BODY$
DECLARE
        Allestbid  REFCURSOR;
        currentestbid record;
Begin 
OPEN Allestbid  for 
       select id from establishment where establishment.id not IN (248,189859,225383,59, 248, 669, 187078, 215842, 162286, 2533, 2952, 200560, 225586, 3278, 60682, 5228, 12937, 232842, 10121, 10757, 216264, 12041, 17047, 177958, 136485, 15000, 20876, 233642, 17661, 168369, 40762, 205162, 154806, 42683, 45882, 196119, 85603, 181062, 218926, 196840, 144133, 215263, 170258, 217893, 231842)
order by 1 limit n offset o
;
Loop
Begin
FETCH Allestbid INTO currentestbid;
 EXIT WHEN NOT FOUND;

PERFORM  migration.worker_bulk_training(currentestbid.id);            
END;
        END LOOP;
END;
$BODY$;

ALTER FUNCTION migration.loop_estbid_worker_bulk_training(integer)
    OWNER TO postgres;