-- Introduction to the MySQL IN Operator

-- syntax:
SELECT 
    column1,column2,...
FROM
    table_name
WHERE 
	(expr|column_1) IN ('value1','value2',...);

-- examples:
SELECT 
    officeCode, 
    city, 
    phone, 
    country
FROM
    offices
WHERE
    country IN ('USA' , 'France');

SELECT 
    officeCode, 
    city, 
    phone
FROM
    offices
WHERE
    country NOT IN ('USA' , 'France');

-- Using MySQL IN with a subquery
-- For example, if you want to find the orders whose total values are greater than 60,000, you use the IN operator as shown in the following query:
SELECT    
	orderNumber, 
	customerNumber, 
	status, 
	shippedDate
FROM    
	orders
WHERE orderNumber IN
(
	 SELECT 
		 orderNumber
	 FROM 
		 orderDetails
	 GROUP BY 
		 orderNumber
	 HAVING SUM(quantityOrdered * priceEach) > 60000
);

-- The whole query above can be broken down into two separate queries.

-- First, the subquery returns a list of order numbers whose values are greater than 60,000 using the GROUP BY and HAVING clauses:
SELECT 
    orderNumber
FROM
    orderDetails
GROUP BY 
    orderNumber
HAVING 
    SUM(quantityOrdered * priceEach) > 60000;

-- Second, the outer query uses the IN operator in the WHERE clause to get data from the orders table:
SELECT 
    orderNumber, 
    customerNumber, 
    status, 
    shippedDate
FROM
    orders
WHERE
    orderNumber IN (10165,10287,10310);