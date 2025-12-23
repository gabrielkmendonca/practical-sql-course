SQL AND
/*
The AND operator is used to filter records based on more than one condition.
Displays a record if all the conditions are TRUE.
Syntax:

    SELECT column1, column2, ... FROM table_name 
    WHERE condition1 
    AND condition2 
    AND condition3 ...;
*/

    SELECT * FROM Customers 
    WHERE Country = 'Brazil' 
    AND City = 'Rio de Janeiro' 
    AND CustomerID > 50;



SQL OR  
/*
The OR operator is used to filter records based on more than one condition.
Displays a record if any of the conditions are TRUE.
Syntax:

    SELECT column1, column2, ... FROM table_name 
    WHERE condition1 
    OR condition2 
    OR condition3 ...;
*/

    SELECT * FROM Customers 
    WHERE Country = 'Germany' 
    OR Country = 'Spain';



SQL NOT 
/*
The NOT operator is used in combination with other operators to give the opposite result, also called the negative result.
Displays a record that do not match a specified condition.
Syntax:

    SELECT column1, column2, ... FROM table_name 
    WHERE NOT condition;
*/

    SELECT * FROM Customers 
    WHERE NOT Country = 'Spain';



SQL IS NULL / IS NOT NULL
/*
If a field in a table is optional, it is possible to insert a new record or update a record without adding a value to this field. Then, the field will be saved with a NULL value.
Syntax:

    IS NULL     ->  SELECT column_names 
                    FROM table_name 
                    WHERE column_name IS NULL;

    IS NOT NULL ->  SELECT column_names 
                    FROM table_name 
                    WHERE column_name IS NOT NULL;
*/

    SELECT CustomerName, ContactName, Address
    FROM Customers
    WHERE Address IS NULL;



SQL LIKE
/*
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
There are two wildcards often used in conjunction with the LIKE operator:
    ->  The percent sign (%)       ->   represents zero, one, or multiple characters
    ->  The underscore sign (_)    ->   represents one, single character
If no wildcard is specified, the phrase has to have an exact match to return a result.

Syntax:

    SELECT column1, column2, ... FROM table_name
    WHERE columnN LIKE pattern;
*/

--customers that starts with the letter "a":
    SELECT * FROM Customers
    WHERE CustomerName LIKE 'a%'; 

--customers from a city that starts with 'L' followed by one wildcard character, then 'nd' and then two wildcard characters:
    SELECT * FROM Customers
    WHERE city LIKE 'L_nd__'; 



SQL IN
/*
The IN operator allows you to specify multiple values in a WHERE clause.
The IN operator is a shorthand for multiple OR conditions.
Syntax:

    SELECT column_name(s) FROM table_name
    WHERE column_name IN (value1, value2, ...);
*/

    SELECT * FROM Customers
    WHERE Country IN ('Germany', 'France', 'UK');



SQL BETWEEN
/*
The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
The BETWEEN operator is inclusive: begin and end values are included.
Syntax:

    SELECT column_name(s) FROM table_name
    WHERE column_name BETWEEN value1 AND value2;
*/

    SELECT * FROM Products
    WHERE Price BETWEEN 10 AND 20;



SQL UNION
/*
The UNION operator is used to combine the result-set of two or more SELECT statements.
The UNION operator automatically removes duplicate rows from the result set.
Requirements for UNION:
    ->  Every SELECT statement within UNION must have the same number of columns
    ->  The columns must also have similar data types
    ->  The columns in every SELECT statement must also be in the same order
Syntax:

    SELECT column_name(s) FROM table1
    UNION
    SELECT column_name(s) FROM table2;

The column names in the result-set are usually equal to the column names in the first SELECT statement.
Using UNION ALL combines all rows, including any duplicates.
*/

    SELECT City, Country FROM Customers
    WHERE Country='Germany'
    UNION ALL
    SELECT City, Country FROM Suppliers
    WHERE Country='Germany';



SQL EXISTS
/*
The EXISTS operator is used to test for the existence of any record in a subquery, returning TRUE if the subquery returns one or more records.
Syntax:

    SELECT column_name(s)
    FROM table_name
    WHERE EXISTS (SELECT column_name FROM table_name WHERE condition);
*/

    SELECT SupplierName
    FROM Suppliers
    WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);



SQL ANY
/*
The ANY operator:
    ->  returns a boolean value as a result
    ->  returns TRUE if ANY of the subquery values meet the condition
ANY means that the condition will be true if the operation is true for any of the values in the range.
Syntax:

    SELECT column_name(s)
    FROM table_name
    WHERE column_name operator ANY
        (SELECT column_name
        FROM table_name
        WHERE condition);

The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).
*/

    SELECT ProductName
    FROM Products
    WHERE ProductID = ANY
        (SELECT ProductID
        FROM OrderDetails
        WHERE Quantity = 10);



SQL ALL
/*
The ALL operator:
    ->  returns a boolean value as a result
    ->  returns TRUE if ALL of the subquery values meet the condition
    ->  is used with SELECT, WHERE and HAVING statements
ALL means that the condition will be true only if the operation is true for all values in the range.
Syntax:

    1.With SELECT:          SELECT ALL column_name(s)
                            FROM table_name
                            WHERE condition;
                    
    2.With WHERE or HAVING: SELECT column_name(s)
                            FROM table_name
                            WHERE column_name operator ALL
                              (SELECT column_name
                              FROM table_name
                              WHERE condition);

The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).
*/

    SELECT ALL ProductName
    FROM Products
    WHERE TRUE;

    SELECT ProductName
    FROM Products
    WHERE ProductID = ALL
      (SELECT ProductID
      FROM OrderDetails
      WHERE Quantity = 10);