-- SUSHMITA JADHAV
# LESSON 3: SORTING RETRIEVED DATA

SELECT * 
FROM products;
# The output will show rows in order in which it appears in the underlying tables */

/*
RELATIONAL DATABASE DESIGN THEORY STATES THAT THE SEQUENCE OF RETRIEVED DATA CANNOT BE ASSUMED
SIGNIFICANT IF ORDERING IS NOT EXPLICITLY SPECIFIED
*/

# SORT THE DATA FIRST BY PRICE THEN BY NAME
SELECT *
FROM products
ORDER BY prod_price, prod_name ;

# SORT BY COLUMN POSITION
SELECT *
FROM products
ORDER BY 4,3 ;

-- THE DEFAULT SORT ORDER IS ASCENDING
# most expensive first
SELECT * 
FROM products
ORDER BY prod_price DESC;

# SORT MOST EXPENSIVE PRODUCT IN DESCENDING ORDER, PLUS PRODUCT NAME
SELECT *
FROM products
ORDER BY prod_price DESC, prod_name;

-- END OF CODE --