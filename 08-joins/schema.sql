SQL JOIN
/*
A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
Types of the JOINs in SQL:
    ->  (INNER) JOIN        ->  Returns records that have matching values in both tables
    ->  LEFT (OUTER) JOIN   ->  Returns all records from the left table, and the matched records from the right table
    ->  RIGHT (OUTER) JOIN  ->  Returns all records from the right table, and the matched records from the left table
    ->  FULL (OUTER) JOIN   ->  Returns all records when there is a match in either left or right table
*/



SQL INNER JOIN
/*
The INNER JOIN keyword selects only records that have matching values in both tables. 
INNER is the default join type for JOIN.
SYntax:

    SELECT column_name(s) FROM table1
    INNER JOIN table2 
    ON table1.column_name = table2.column_name;

It is a good practice to include the table name when specifying columns in the SQL statement.
*/

    SELECT ProductID, ProductName, CategoryName FROM Products
    INNER JOIN Categories 
    ON Products.CategoryID = Categories.CategoryID;