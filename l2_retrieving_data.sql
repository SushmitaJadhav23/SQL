-- SUSHMITA JADHAV
# LESSON 2 : RETRIEVING DATA

SELECT prod_name, prod_price
FROM products;
/* if thr results are not explicitly sorted then data will be returned
 in order in which data was added to the table */
 
 /* SQL statements are case insensitive*/
 /* Use Upper-case for SQL keywords & lower-case for column and table names makes code easier to read */
 
 /* Retrieve distinct /  unique values */
 SELECT DISTINCT vend_id
 FROM products;
 

 /* Limiting Results */
SELECT prod_name
FROM products
LIMIT 5;

/* To Fetch next 3 rows after 5nd row >> specify number of rows to retrieve & where to start  */
SELECT prod_name
FROM products
LIMIT 3 OFFSET 5;

-- END OF CODE --
