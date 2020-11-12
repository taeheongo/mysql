-- Introduction to MySQL AND operator
-- syntax:
boolean_expression_1 AND boolean_expression_2

-- examples:
SELECT 
    customername, 
    country, 
    state
FROM
    customers
WHERE
    country = 'USA' AND state = 'CA';

SELECT    
	customername, 
	country, 
	state, 
	creditlimit
FROM    
	customers
WHERE country = 'USA'
	AND state = 'CA'
	AND creditlimit > 100000;