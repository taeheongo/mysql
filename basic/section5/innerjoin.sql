-- Introduction to MySQL INNER JOIN clause
-- syntax:

SELECT
    select_list
FROM t1
INNER JOIN t2 ON join_condition1
INNER JOIN t3 ON join_condition2
...;

-- examples: 
SELECT 
    productCode, 
    productName
FROM
    products t1
INNER JOIN productlines t2 
    ON t1.productline = t2.productline;

SELECT 
    productCode, 
    productName
FROM
    products
INNER JOIN productlines USING (productline);

-- MySQL INNER JOIN with GROUP BY clause example
SELECT 
    t1.orderNumber,
    t1.status,
    SUM(quantityOrdered * priceEach) total
FROM
    orders t1
INNER JOIN orderdetails t2 
    ON t1.orderNumber = t2.orderNumber
GROUP BY orderNumber;

-- MySQL INNER JOIN – join three tables example
SELECT 
    orderNumber,
    orderDate,
    orderLineNumber,
    productName,
    quantityOrdered,
    priceEach
FROM
    orders
INNER JOIN
    orderdetails USING (orderNumber)
INNER JOIN
    products USING (productCode)
ORDER BY 
    orderNumber, 
    orderLineNumber;