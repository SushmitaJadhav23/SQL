-- SUSHMITA JADHAV
# LESSON 6: USING WILDCARD FILTERING

-- USED FOR FILTERING RETRIEVED DATA
-- LIKE IS A PREDICATE

# THE PERCENT SIGN % WILDCARD
-- list prodicts that start with word Fish
SELECT prod_id, prod_name
FROM products
WHERE prod_name LIKE 'fish%';

-- wildcard can be used in middle of search pattern. Find product that begin with F and end with a Y
SELECT prod_name
FROM products
WHERE prod_name LIKE 'F%Y';

# The _ wild card
SELECT prod_name
FROM products
WHERE prod_name LIKE '_ inch%';

-- END OF CODE
