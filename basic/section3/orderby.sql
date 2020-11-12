-- Section 3. Sorting data

-- syntax
SELECT 
   select_list
FROM 
   table_name
ORDER BY 
   column1 [ASC|DESC], 
   column2 [ASC|DESC],
   ...;

-- examples

-- Using MySQL ORDER BY clause to sort values in one column example

-- A) Using MySQL ORDER BY clause to sort values in one column example
SELECT
	contactLastname,
	contactFirstname
FROM
	customers
ORDER BY
	contactLastname;

SELECT
	contactLastname,
	contactFirstname
FROM
	customers
ORDER BY
	contactLastname DESC;

-- B) Using MySQL ORDER BY clause to sort values in multiple columns example
SELECT
	contactLastname,
	contactFirstname
FROM
	customers
ORDER BY
	contactLastname DESC,
	contactFirstname ASC;

-- C) Using MySQL ORDER BY to sort a result set by an expression example
SELECT 
    orderNumber, 
    orderlinenumber, 
    quantityOrdered * priceEach
FROM
    orderdetails
ORDER BY 
   quantityOrdered * priceEach DESC;

SELECT 
    orderNumber,
    orderLineNumber,
    quantityOrdered * priceEach AS subtotal
FROM
    orderdetails
ORDER BY subtotal DESC;

-- Using MySQL ORDER BY to sort data using a custom list
SELECT 
    orderNumber, 
    status
FROM
    orders
ORDER BY 
    FIELD(status,
        'In Process',
        'On Hold',
        'Cancelled',
        'Resolved',
        'Disputed',
        'Shipped');