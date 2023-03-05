-- sample-bis-b.sql

BEGIN;
SET enable_seqscan = OFF;
SET enable_indexscan = OFF;
SET enable_indexonlyscan = OFF;
DROP INDEX c_idx;
DROP INDEX b_idx;
EXPLAIN ANALYZE SELECT * FROM r WHERE b = 0 AND c > 0;
ROLLBACK;
