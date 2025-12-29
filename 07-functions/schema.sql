SQL Aggregate Functions
/*
An aggregate function is a function that performs a calculation on a set of values, and returns a single value.

The most commonly used SQL aggregate functions are:
    MIN()   -> returns the smallest value within the selected column
    MAX()   -> returns the largest value within the selected column
    COUNT() -> returns the number of rows in a set
    SUM()   -> returns the total sum of a numerical column
    AVG()   -> returns the average value of a numerical column

Aggregate functions ignore null values (except for COUNT(*)).
*/



SQL MIN()
/*
The MIN() function returns the smallest value of the selected column.
Syntax:

    SELECT MIN(column_name)
    FROM table_name
    WHERE condition;

When using MIN(), the returned column will not have a descriptive name.
*/

    SELECT MIN(Price)
    FROM Products;



SQL MAX()
/*
The MAX() function returns the largest value of the selected column.
Syntax:

    SELECT MAX(column_name)
    FROM table_name
    WHERE condition;

When using MAX(), the returned column will not have a descriptive name.
*/

    SELECT MAX(Price)
    FROM Products;



SQL COUNT()
/*
The COUNT() function returns the number of rows that matches a specified criterion.
Syntax:

    SELECT COUNT(column_name) FROM table_name
    WHERE condition;
*/

    SELECT COUNT(ProductID) FROM Products
    WHERE Price > 20;

/*
COUNT the total number of rows:
    -   find the total number of rows in the Products table:
*/

    SELECT COUNT(*) FROM Products;



SQL SUM()
/*
The SUM() function returns the total sum of a numeric column.
The parameter inside the SUM() function can also be an expression.
Syntax:

    SELECT SUM(column_name) FROM table_name
    WHERE condition;
*/

    SELECT SUM(Quantity) FROM OrderDetails
    WHERE ProductId = 11;



SQL AVG()
/*
The AVG() function returns the average value of a numeric column.
NULL values are ignored.
Syntax:

    SELECT AVG(column_name) FROM table_name
    WHERE condition;
*/

    SELECT AVG(Price)
    FROM Products
    WHERE CategoryID = 1;



SQL COALESCE
/*
When running functions with columns that contain NULL values, the result will be NULL. In order to fix that, use NULL functions:
    -> COALESCE()   ->  function supported on almost all databases, except MS Access
    -> IFNULL()     ->  used on MySQL
    -> ISNULL()     ->  used on SQL Server
    -> IsNULL()     ->  used on MS Access
    -> NVL()        ->  used on Oracle

COALESCE function lets you return an alternative value if an expression is NULL
Syntax:

    SELECT column_name1 * (column_name2 + COALESCE(column_name3, 0))
    FROM table_name;
*/

    SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
    FROM Products;