-- SUSHMITA JADHAV

# LESSON 5: ADVANCED DATA FILTERING

-- use of WHERE clause for powerful and sophisticated search results & use of NOT and IN operators
# GREATER DEGREE OF FILTER CONTROL

# Combining WHERE Clause using the AND operator
-- list product details for all products made by vendor DLL01 as long as price is $4 or less
SELECT prod_id, prod_price, prod_name
FROM products
WHERE vend_id = 'DLL01' AND prod_price <= 4; -- only rows which meet condition will be returned
-- AND keyword specify that only rows matching all specified conditions should be retrieved

# Combining WHERE Clause using the OR operator
-- list product details for all products made by vendor DLL01 or BRS01
SELECT prod_name, prod_price
FROM products
where vend_id = 'DLL01' OR vend_id = 'BRS01';

-------- UNDERSTANDING ORDER OF EVALUATION
-- SQL process AND operators before OR operators

# list of all the products costing $10 or more, made by vendor DLL01 or BRS01
SELECT *
FROM products
WHERE prod_price >= 10 AND 
	  (vend_id = 'DLL01' OR vend_id = 'BRS01');
/*
paranthesis has higher order of evaluation, the OR condition is first filtered first within the paranthesis
*/

# Using the IN operator
-- list product details for all products made by vendor DLL01 and BRS01
SELECT prod_name, prod_price
FROM products
where vend_id IN ('DLL01' , 'BRS01')
order by prod_name;

# Using NOT operator
-- NOT negates what ever condition comes next

-- list product made by all vendors except vendor DLL01
SELECT *
FROM products
WHERE NOT vend_id IN ( 'DLL01');

SELECT *
FROM products
WHERE  vend_id <> 'DLL01';

-- END OF CODE 