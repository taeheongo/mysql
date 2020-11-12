-- Introduction to MySQL DISTINCT clause
-- When querying data from a table, you may get duplicate rows. In order to remove these duplicate rows, you use the DISTINCT clause in the SELECT statement.

-- syntax:
SELECT DISTINCT
    select_list
FROM
    table_name;

-- examples:

-- First, query the last names of employees from the employees table using the following SELECT statement:
SELECT 
    lastname
FROM
    employees
ORDER BY 
    lastname;

-- As clearly shown in the output, some employees have the same last name e.g,  Bondur,Firrelli .
-- This statement uses the DISTINCT clause to select unique last names from the employees table:
SELECT 
    DISTINCT lastname
FROM
    employees
ORDER BY 
    lastname;

-- MySQL DISTINCT and NULL values
-- When you use the DISTINCT clause to query the customers’ states, you will see unique states and  NULL as the following query:
SELECT DISTINCT state
FROM customers;

-- MySQL DISTINCT with multiple columns

-- Without the DISTINCT clause, you will get the duplicate combination of state and city as follows:
SELECT 
    state, city
FROM
    customers
WHERE
    state IS NOT NULL
ORDER BY 
    state , 
    city;

-- You can use the DISTINCT clause with more than one column. In this case, MySQL uses the combination of values in these columns to determine the uniqueness of the row in the result set.
SELECT DISTINCT
    state, city
FROM
    customers
WHERE
    state IS NOT NULL
ORDER BY 
    state, 
    city;

-- DISTINCT clause vs. GROUP BY clause

-- If you use the GROUP BY clause in the SELECT statement without using aggregate functions, the GROUP BY clause behaves like the DISTINCT clause.
SELECT 
    state
FROM
    customers
GROUP BY state;

SELECT DISTINCT
    state
FROM
    customers;

-- Generally speaking, the DISTINCT clause is a special case of the GROUP BY clause. The difference between DISTINCT clause and GROUP BY clause is that the GROUP BY clause sorts the result set whereas the DISTINCT clause does not.

-- If you add the ORDER BY clause to the statement that uses the  DISTINCT clause, the result set is sorted and it is the same as the one returned by the statement that uses GROUP BY clause.
SELECT DISTINCT
    state
FROM
    customers
ORDER BY 
    state;

-- MySQL DISTINCT and aggregate functions
SELECT 
    COUNT(DISTINCT state)
FROM
    customers
WHERE
    country = 'USA';

-- MySQL DISTINCT with LIMIT clause
SELECT DISTINCT
    state
FROM
    customers
WHERE
    state IS NOT NULL
LIMIT 5;