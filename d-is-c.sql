-- sample-bis-b.sql

BEGIN;
SET enable_seqscan = OFF;
SET enable_bitmapscan = OFF;
SET enable_indexonlyscan = OFF;
DROP INDEX b_idx;
DROP INDEX cb_idx;
EXPLAIN ANALYZE SELECT * FROM r WHERE b > 9 AND c = 10;
ROLLBACK;
