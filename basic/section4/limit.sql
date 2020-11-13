-- Introduction to MySQL LIMIT clause

-- The LIMIT clause is used in the SELECT statement to constrain the number of rows to return. The LIMIT clause accepts one or two arguments. The values of both arguments must be zero or positive integers.
-- syntax:
SELECT 
    select_list
FROM
    table_name
LIMIT [offset,] row_count;

-- The following picture illustrates the evaluation order of the LIMIT clause in the SELECT statement:
-- FROM -> WHERE -> SELECT -> ORDER BY -> LIMIT

-- examples:
SELECT 
    customerNumber, 
    customerName, 
    creditLimit
FROM
    customers
ORDER BY creditLimit DESC
LIMIT 5;

SELECT 
    customerNumber, 
    customerName, 
    creditLimit
FROM
    customers
ORDER BY creditLimit
LIMIT 5;

-- Because there are more than 5 customers that have credits zero, the result of the query above may lead to an inconsistent result.
-- To fix this the issue, you need to add more column to the ORDER BY clause to constrain the row in unique order:

SELECT 
    customerNumber, 
    customerName, 
    creditLimit
FROM
    customers
ORDER BY 
    creditLimit, 
    customerNumber
LIMIT 5;

-- 2) Using MySQL LIMIT for pagination
SELECT 
    customerNumber, 
    customerName
FROM
    customers
ORDER BY customerName    
LIMIT 10;

SELECT 
    customerNumber, 
    customerName
FROM
    customers
ORDER BY customerName    
LIMIT 10, 10;

-- 3) Using MySQL LIMIT to get the nth highest or lowest value

SELECT select_list
FROM table_name
ORDER BY sort_expression
LIMIT n-1, 1;

SELECT 
    customerName, 
    creditLimit
FROM
    customers
ORDER BY 
    creditLimit DESC    
LIMIT 1,1;