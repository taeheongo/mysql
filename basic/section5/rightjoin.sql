-- Introduction to MySQL RIGHT JOIN clause

SELECT 
    select_last
FROM t1
RIGHT JOIN t2 ON 
    join_condition;

SELECT 
    select_last
FROM t1
RIGHT JOIN t2 USING(column_name);

-- examples:
-- 1) Simple MySQL RIGHT JOIN example

SELECT 
    employeeNumber, 
    customerNumber
FROM
    customers
RIGHT JOIN employees 
    ON salesRepEmployeeNumber = employeeNumber
ORDER BY 
	employeeNumber;

-- 2) Using MySQL RIGHT JOIN to find unmatching rows
SELECT 
    employeeNumber, 
    customerNumber
FROM
    customers
RIGHT JOIN employees ON 
	salesRepEmployeeNumber = employeeNumber
WHERE customerNumber is NULL
ORDER BY employeeNumber;