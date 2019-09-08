-- SUSHMITA JADHAV
# LESSON 4: FILTERING DATA

-- WE WILL LEARN TO USE WHERE CLAUSE TO SPECIFY SEARCH CONDITIONS

-- filter condition | search criteria |subset 

-- WHERE clause is a filter condition on rows

SELECT prod_name, prod_price
FROM products
WHERE prod_price = 3.49; -- simple equality test example

-- RANGE OF CONDITIONAL OPERATORS
/*
OPERATOR   DESCRIPTION	
=          Equality
<>         Non-Equality
!=         Non-Equality
<          Less than
<=         Less than or equal to
!<         Not less than
?          Greater than
>=         Greater than or equal to
!>         Not Greater than
BETWEEN    Between 2 values \
IS NULL    Is a NULL Value

*/

# Checking against a value
-- list all products that cost less than $10
SELECT * 
FROM products
WHERE prod_price < 10;
-- if u want less than or qual to 10 then use (WHERE prod_price <= 10)

# Check for Non-Matches <> , != 
-- list all products name made by vendor DLL01
SELECT *
FROM products
WHERE vend_id <> 'DLL01'; -- here as vend_id is of string datatype we delimit it by enclosing in single quotes

# Check for Range of Values  BETWEEN
-- list all products that cost between $5.99 and $10
SELECT * 
FROM products
WHERE prod_price BETWEEN 5 AND 10; -- INCLUDES BOTH START AND END VALUES

# Check for no value , Null Value using IS NULL clause
-- list customer name who does not have email

SELECT cust_name
FROM customers
WHERE cust_email IS NULL;

-- END OF CODE --
