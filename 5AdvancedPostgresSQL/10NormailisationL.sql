-- The process of restructuring a database in this way is called normalization. 
-- If you look up “database normalization,” you’ll see that there are formal names and definitions for different levels of restructuring; the most common are first, second, and third normal form (1NF, 2NF, 3NF)

-- All data on a table should depend on the primay key.
-- Duplicated data should be removed where possible into separate tables. This allows
-- for better data storage and easier querying and data modification.
 
-- To modify tables for normalisation following can be done:
CREATE TABLE majors AS
SELECT distinct major_1, major_1_credits_reqd
FROM college;

ALTER TABLE college
DROP COLUMN major_1, 
DROP COLUMN major_1_credits_reqd;

