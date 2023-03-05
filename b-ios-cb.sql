-- sample-bis-b.sql

BEGIN;
SET enable_seqscan = OFF;
SET enable_bitmapscan = OFF;
SET enable_indexscan = OFF;
DROP INDEX c_idx;
EXPLAIN ANALYZE  SELECT b FROM r WHERE c > 15;
ROLLBACK;
