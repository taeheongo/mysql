-- Querying data

-- syntax
SELECT select_list
FROM table_name;

-- using the MySQL SELECT statement to retrieve data from all columns example
SELECT * FROM employees;

-- Using the MySQL SELECT statement to retrieve data from a single column example
SELECT lastName
FROM employees;

-- Using the MySQL SELECT statement to query data from multiple columns example
SELECT 
    lastname, 
    firstname, 
    jobtitle
FROM
    employees;
