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

    SELECT * FROM Customers
    WHERE CustomerName LIKE 'a%'; --customers that starts with the letter "a"

    SELECT * FROM Customers
    WHERE city LIKE 'L_nd__'; --customers from a city that starts with 'L' followed by one wildcard character, then 'nd' and then two wildcard characters: