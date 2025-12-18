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