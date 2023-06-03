SELECT *
FROM pg_Indexes
WHERE tablename = 'products';
-- (Different database servers have different ways to see their indexes.)

-- Indexing allows you to organize your database structure in such a way 
-- that it makes finding specific records much faster.By default it divides 
-- the possible matching records in half, then half, then half, and so on until 
-- the specific match you are searching for is found. This is known as a Binary Tree, 
-- or B-Tree.

EXPLAIN ANALYZE SELECT *
FROM customers;
-- Above returns information about the query and how it is executed.
-- Seq Scan, Index, Planning time,Execution time

-- Creating an index
CREATE INDEX customers_user_name_idx ON customers (user_name);

-- Creating a multicolumn index
CREATE INDEX customers_last_name_first_name_idx ON customers (last_name, first_name);

-- the DROP INDEX command can be used to drop an existing index.
DROP INDEX IF EXISTS customers_city_idx;

--For deleting and inserting data into a database itt may be quicker to slect data of
-- interest by leveraging indexes. Howver after finding record index should be deleted.
-- Updating non-indexed column throurgh an indexed filter 
-- can be faster than when non-indexed.

--To chech size of data table takes up along with any index data structure that have been
-- defined with it. The following can be done:
SELECT pg_size_pretty (pg_total_relation_size('products'));

--Only use index searching when benefits of searching outweigh the burdens of storage size 
-- and Insert/Update/Delete speed
-- Sometimes full scan is more efficient (e.g. searching for 900 users in 1000ppl db.)
-- Indexes only work on AND filters not OR AFILTERS