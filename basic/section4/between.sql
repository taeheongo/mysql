-- Introduction to MySQL BETWEEN Operator

-- syntax:
expr [NOT] BETWEEN begin_expr AND end_expr;

-- examples:

-- 1) Using MySQL BETWEEN with number examples
SELECT 
    productCode, 
    productName, 
    buyPrice
FROM
    products
WHERE
    buyPrice BETWEEN 90 AND 100;

-- This query uses the greater than or equal (>=) and less than or equal ( <= ) operators instead of the BETWEEN operator to get the same result:

SELECT 
    productCode, 
    productName, 
    buyPrice
FROM
    products
WHERE
    buyPrice >= 90 AND buyPrice <= 100;

-- To find the product whose buy price is not between $20 and $100, you combine the BETWEEN operator with the NOT operator as follows:
SELECT 
    productCode, 
    productName, 
    buyPrice
FROM
    products
WHERE
    buyPrice NOT BETWEEN 20 AND 100;

SELECT 
    productCode, 
    productName, 
    buyPrice
FROM
    products
WHERE
    buyPrice < 20 OR buyPrice > 100;

-- 2) Using MySQL BETWEEN with dates example

-- The following example returns the orders which have the required dates between 01/01/2003 to 01/31/2003:
SELECT 
   orderNumber,
   requiredDate,
   status
FROM 
   orders
WHERE 
   requireddate BETWEEN 
     CAST('2003-01-01' AS DATE) AND 
     CAST('2003-01-31' AS DATE);