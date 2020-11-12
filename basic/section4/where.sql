
-- syntax
SELECT 
    select_list
FROM
    table_name
WHERE
    search_condition;

-- In the SELECT statement, the WHERE clause is evaluated after the FROM clause and before the SELECT clause.

-- FROM -> WHERE -> SELECT -> ORDER BY

-- 1) Using MySQL WHERE clause with equal operator example

SELECT 
    lastname, 
    firstname, 
    jobtitle
FROM
    employees
WHERE
    jobtitle = 'Sales Rep';

-- 2) Using MySQL WHERE clause with AND operator
SELECT 
    lastname, 
    firstname, 
    jobtitle,
    officeCode
FROM
    employees
WHERE
    jobtitle = 'Sales Rep' AND 
    officeCode = 1;

-- 3) Using MySQL WHERE clause with OR operator
SELECT 
    lastName, 
    firstName, 
    jobTitle, 
    officeCode
FROM
    employees
WHERE
    jobtitle = 'Sales Rep' OR 
    officeCode = 1
ORDER BY 
    officeCode , 
    jobTitle;

-- 4) Using MySQL WHERE with BETWEEN operator example
SELECT 
    firstName, 
    lastName, 
    officeCode
FROM
    employees
WHERE
    officeCode BETWEEN 1 AND 3
ORDER BY officeCode;

-- 5) Using MySQL WHERE with the LIKE operator example
SELECT 
    firstName, 
    lastName
FROM
    employees
WHERE
    lastName LIKE '%son'
ORDER BY firstName;

-- 6) Using MySQL WHERE clause with the IN operator example
SELECT 
    firstName, 
    lastName, 
    officeCode
FROM
    employees
WHERE
    officeCode IN (1 , 2, 3)
ORDER BY 
    officeCode;

-- 7) Using MySQL WHERE  clause with the IS NULL operator
SELECT 
    lastName, 
    firstName, 
    reportsTo
FROM
    employees
WHERE
    reportsTo IS NULL;

-- 8) Using MySQL WHERE clause with comparison operators
SELECT 
    lastname, 
    firstname, 
    jobtitle
FROM
    employees
WHERE
    jobtitle <> 'Sales Rep';

SELECT 
    lastname, 
    firstname, 
    officeCode
FROM
    employees
WHERE 
    officecode > 5;