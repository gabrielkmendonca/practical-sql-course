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

    SELECT column_name(s) 
    FROM table1
    INNER JOIN table2 
    ON table1.column_name = table2.column_name;

It is a good practice to include the table name when specifying columns in the SQL statement.
*/

    SELECT ProductID, ProductName, CategoryName 
    FROM Products
    INNER JOIN Categories 
    ON Products.CategoryID = Categories.CategoryID;



SQL LEFT JOIN
/*
The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2).
In some databases LEFT JOIN is called LEFT OUTER JOIN.
Syntax:

    SELECT column_name(s) 
    FROM table1
    LEFT JOIN table2
    ON table1.column_name = table2.column_name;
*/

    SELECT Customers.CustomerName, Orders.OrderID 
    FROM Customers
    LEFT JOIN Orders 
    ON Customers.CustomerID = Orders.CustomerID;



SQL RIGHT JOIN
/*
The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1).
In some databases RIGHT JOIN is called RIGHT OUTER JOIN.
Syntax:

    SELECT column_name(s) 
    FROM table1
    RIGHT JOIN table2
    ON table1.column_name = table2.column_name;
*/

    SELECT Orders.OrderID, Employees.LastName, Employees.FirstName 
    FROM Orders
    RIGHT JOIN Employees 
    ON Orders.EmployeeID = Employees.EmployeeID;



SQL FULL OUTER JOIN
/*
The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) OR right (table2) table records.
FULL OUTER JOIN and FULL JOIN are the same.
FULL OUTER JOIN can potentially return very large result-sets!
Syntax:

    SELECT column_name(s) 
    FROM table1
    FULL OUTER JOIN table2
    ON table1.column_name = table2.column_name;
*/

    SELECT Customers.CustomerName, Orders.OrderID 
    FROM Customers
    FULL OUTER JOIN Orders 
    ON Customers.CustomerID=Orders.CustomerID;



SQL SELF JOIN
/*
A self join is a regular join, but the table is joined with itself.
Syntax:

    SELECT column_name(s)
    FROM table1 T1, table1 T2
    WHERE condition;
*/

    SELECT A.CustomerName, B.CustomerName
    FROM Customers A, Customers B
    WHERE A.CustomerID <> B.CustomerID;