-- you can use the following functions to check the size of a relation in a database.

-- pg_total_relation_size will return the size of the table and all its indexes in bytes. These values are often in the millions or billions and thus hard to read.
-- pg_table_size and pg_indexes_size return the size of the table’s data and table’s indexes in bytes. The sum of these two functions is equal to pg_total_relation_size
-- pg_size_pretty can be used with the functions above to format a number in bytes as KB, MB, or GB.

SELECT 
pg_size_pretty(pg_table_size('time_series')) as tbl_size, 
pg_size_pretty(pg_indexes_size('time_series')) as idx_size,
pg_size_pretty(pg_total_relation_size('time_series')) as total_size;

-- When an UPDATE or DELETE is called, PostgreSQL doesn’t physically delete the content 
-- from the disk. Instead, the database engine marks those rows so that they aren’t 
-- returned in user queries. These rows are called dead tuples.

-- VACUUM will only clear tables’ dead tuples where possible. If VACUUM cannot clear 
-- the dead tuples, PostgreSQL will mark the space occupied by dead tuples for reuse 
-- when new data is inserted into the table.

-- pg_stat_all_tables is table that contains internal PostgreSQL statistics; you can query 
-- for a specific table’s statistics by filtering on the column relname (i.e. relation name)

SELECT relname, 
    last_vacuum,
    last_autovacuum, 
    last_analyze
FROM pg_stat_all_tables 
WHERE relname = 'books';

-- VACUUM FULL which rewrites all the data from a table into a “new” location on disk and only 
-- copies the required data (excluding dead tuples). 

-- Equivalent to delete AND then vacuum
TRUNCATE
