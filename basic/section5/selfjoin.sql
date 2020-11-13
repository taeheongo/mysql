-- The self join is often used to query hierarchical data or to compare a row with other rows within the same table.
-- To perform a self join, you must use table aliases to not repeat the same table name twice in a single query. Note that referencing a table twice or more in a query without using table aliases will cause an error.

-- 1) MySQL self join using INNER JOIN clause

SELECT 
    CONCAT(m.lastName, ', ', m.firstName) AS Manager,
    CONCAT(e.lastName, ', ', e.firstName) AS 'Direct report'
FROM
    employees e
INNER JOIN employees m ON 
    m.employeeNumber = e.reportsTo
ORDER BY 
    Manager;

-- The output only shows the employees who have a manager. However, you don’t see the President because his name is filtered out due to the INNER JOIN clause.

-- 2) MySQL self join using LEFT JOIN clause
-- The President is the employee who does not have any manager or the value in the reportsTo column is NULL .

SELECT 
    IFNULL(CONCAT(m.lastname, ', ', m.firstname),
            'Top Manager') AS 'Manager',
    CONCAT(e.lastname, ', ', e.firstname) AS 'Direct report'
FROM
    employees e
LEFT JOIN employees m ON 
    m.employeeNumber = e.reportsto
ORDER BY 
    manager DESC;

-- 3) Using MySQL self join to compare successive rows


SELECT 
    c1.city, 
    c1.customerName, 
    c2.customerName
FROM
    customers c1
INNER JOIN customers c2 ON 
    c1.city = c2.city
    AND c1.customername > c2.customerName
WHERE c1.city='Madrid';

