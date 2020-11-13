-- Summary: in this tutorial, you will learn how to use MySQL alias to improve the readability of the queries.

-- MySQL alias for columns

SELECT 
   [column_1 | expression] AS descriptive_name
FROM table_name;

-- To assign an alias to a column, you use the AS keyword followed by the alias. If the alias contains spaces, you must quote it as the following:

SELECT 
   [column_1 | expression] AS `descriptive name`
FROM 
   table_name;

-- examples:

SELECT 
    CONCAT_WS(', ', lastName, firstname)
FROM
    employees;

SELECT
   CONCAT_WS(', ', lastName, firstname) AS `Full name`
FROM
   employees;

-- MySQL alias for tables


SELECT * FROM employees e;

SELECT
	customerName,
	COUNT(o.orderNumber) total
FROM
	customers c
INNER JOIN orders o ON c.customerNumber = o.customerNumber
GROUP BY
	customerName
ORDER BY
	total DESC;
