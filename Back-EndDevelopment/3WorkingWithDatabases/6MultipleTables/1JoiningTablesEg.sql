Joining Tables
eg1)
SELECT *
FROM orders
JOIN customers
  ON orders.customer_id = customers.customer_id;
eg2)
SELECT orders.order_id,
   customers.customer_name
FROM orders
JOIN customers
  ON orders.customer_id = customers.customer_id;
eg3)Using with Aggregate
SELECT COUNT(*)
FROM newspaper
JOIN online
	ON newspaper.id = online.id;

JOIN clause
eg1) Combines tables with 1st table as priority
SELECT *
FROM newspaper
LEFT JOIN online
	ON newspaper.id = online.id;

cross Join clause
eg1)shows all combination of colums that are combined to each other. 
Below return 6 row 2x3 for 2 pants and 3 shirts.
SELECT shirts.shirt_color,
   pants.pants_color
FROM shirts
CROSS JOIN pants;

STacking 1 table ontop of the other using UNION
eg)
SELECT *
FROM newspaper
UNION
SELECT *
FROM online;

Combin result table with existing table in database
eg)
WITH previous_results AS (
   SELECT ...
   ...
   ...
   ...
)
SELECT *
FROM previous_results
JOIN customers
  ON _____ = _____;