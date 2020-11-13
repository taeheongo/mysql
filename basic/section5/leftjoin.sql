-- Introduction to MySQL LEFT JOIN
-- syntax:
SELECT 
    select_list
FROM
    t1
LEFT JOIN t2 ON 
    join_condition;

-- 1) Using MySQL LEFT JOIN clause to join two tables
SELECT 
    customers.customerNumber, 
    customerName, 
    orderNumber, 
    status
FROM
    customers
LEFT JOIN orders ON 
    orders.customerNumber = customers.customerNumber;

SELECT
    c.customerNumber,
    customerName,
    orderNumber,
    status
FROM
    customers c
LEFT JOIN orders o 
    ON c.customerNumber = o.customerNumber;

SELECT
	customerNumber,
	customerName,
	orderNumber,
	status
FROM
	customers
LEFT JOIN orders USING (customerNumber);

-- 2) Using MySQL LEFT JOIN clause to find unmatched rows
SELECT 
    c.customerNumber, 
    c.customerName, 
    o.orderNumber, 
    o.status
FROM
    customers c
LEFT JOIN orders o 
    ON c.customerNumber = o.customerNumber
WHERE
    orderNumber IS NULL;

-- 3) Using MySQL LEFT JOIN to join three tables
SELECT 
    lastName, 
    firstName, 
    customerName, 
    checkNumber, 
    amount
FROM
    employees
LEFT JOIN customers ON 
    employeeNumber = salesRepEmployeeNumber
LEFT JOIN payments ON 
    payments.customerNumber = customers.customerNumber
ORDER BY 
    customerName, 
    checkNumber;

-- Condition in WHERE clause vs. ON clause
SELECT 
    o.orderNumber, 
    customerNumber, 
    productCode
FROM
    orders o
LEFT JOIN orderDetails 
    USING (orderNumber)
WHERE
    orderNumber = 10123;

-- However, if you move the condition from the WHERE clause to the ON clause:
-- In this case, the query returns all orders but only the order 10123 will have line items associated with it as in the following picture:   

SELECT 
    o.orderNumber, 
    customerNumber, 
    productCode
FROM
    orders o
LEFT JOIN orderDetails d 
    ON o.orderNumber = d.orderNumber AND 
       o.orderNumber = 10123;

-- Notice that for INNER JOIN clause, tIntroduction to MySQL RIGHT JOIN clause
he condition in the ON clause is equivalent to the condition in the WHERE clause.