-- sample-bis-b.sql

BEGIN;
SET enable_seqscan = OFF;
SET enable_bitmapscan = OFF;
SET enable_indexonlyscan = OFF;
DROP INDEX c_idx;
DROP INDEX cb_idx;
EXPLAIN ANALYZE SELECT * FROM r WHERE b = 0 AND c > 0;
ROLLBACK;
