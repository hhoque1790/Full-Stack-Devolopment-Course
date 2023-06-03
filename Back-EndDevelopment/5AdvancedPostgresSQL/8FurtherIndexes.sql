-- Partial Indexes:
-- create an index like you normally would with a WHERE clause added on to specify 
-- the subgroup of data your index should encompass.
CREATE INDEX <index_name> ON <table_name> (<column_name>)
WHERE <condition>;

--Can create index on ordering elements in column.
CREATE INDEX logins_date_time_idx ON logins (date_time DESC, user_name);

--There are 2 types of idexes clustered indexes and non-clustered indexes.
--To cluster an existing index:
CLUSTER products USING products_product_name_idx;
--Clustered index is where records in the database are ordered accordingly based
-- on an indexed column. Only cluster per table is allowed.

--A non-clustered index creates a key on the columns you indicate and a pointer 
--back to the main table for any columns not part of the index.

--To improve searching speed can intriduce multicolumn indexes so there is no
-- need for look up phase for non cluster indexes

-- Indexes can be ussed with expressions and functions like so
CREATE UNIQUE INDEX unique_manufacture_company_name_idx ON manufacture(LOWER(company_name));
