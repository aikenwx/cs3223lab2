-- sample-bis-b.sql

BEGIN;
DROP INDEX cb_idx;
EXPLAIN ANALYZE  SELECT * FROM r WHERE b = 9 AND c = 10;
ROLLBACK;
