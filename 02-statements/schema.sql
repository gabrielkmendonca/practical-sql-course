SQL SELECT
/*
The SELECT statement is used to select data from a database.
Syntax:

    SELECT column1, column2, ... FROM table_name;

    ->  column1, column2, ... are the field names of the table you want to select data from;
    ->  table_name represents the name of the table you want to select data from.
*/

    SELECT CustomerName, City FROM Customers;

/*
Select all columns:
    ->  to return all columns, without specifying every column name, use the "SELECT *" syntax
*/

    SELECT * FROM Customers;



SQL INSERT INTO
/*
The INSERT INTO statement is used to insert new records in a table.
Syntax:

    1 ->    Specify both the column names and the values to be inserted:
    
            INSERT INTO table_name (column1, column2, column3, ...)
            VALUES (value1, value2, value3, ...);

    2 ->    If adding values for all the columns of the table, does not need to specify the column names in the SQL query:
    
            INSERT INTO table_name
            VALUES (value1, value2, value3, ...);

To insert multiple rows of data in one statement, use the same INSERT INTO with multiple values.
The VALUES defines the values to be inserted into the table.
*/

    INSERT INTO Customers (CustomerName, City, Country)
    VALUES ('Cardinal', 'Stavanger', 'Norway');

    INSERT INTO Customers
    VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
           ('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
           ('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');



SQL UPDATE
/*
The UPDATE statement is used to modify the existing records in a table.
Syntax:

    UPDATE table_name
    SET column1 = value1, column2 = value2, ...
    WHERE condition;

The SET defines the values to be inserted.
The WHERE clause specifies which record(s) that should be updated. If you omit it, all records in the table will be updated.
*/

    UPDATE Customers
    SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
    WHERE CustomerID = 1;

/*
UPDATE Multiple Records:
    ->   the WHERE clause that determines how many records will be updated. Creating a condition that filters many records, will update all of them. 
*/

    UPDATE Customers
    SET ContactName='Juan'
    WHERE Country='Mexico';

/*
    ->  If the WHERE clause is not used, the entire table will be updated.
*/

    UPDATE Customers
    SET ContactName='Juan';



SQL DELETE
/*
The DELETE statement is used to delete existing records in a table.
Syntax:

    DELETE FROM table_name 
    WHERE condition;
*/

    DELETE FROM Customers 
    WHERE CustomerName='Alfreds Futterkiste';

/*
DELETE all records:
    ->  It is possible to delete all rows in a table without deleting the table structure, just by not specify any condition.
*/

    DELETE FROM table_name;



SQL GROUP BY
/*
The GROUP BY statement groups rows that have the same values into summary rows.
The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.
Syntax:

    SELECT column_name(s)
    FROM table_name
    WHERE condition
    GROUP BY column_name(s);
*/

    SELECT COUNT(CustomerID), Country
    FROM Customers
    GROUP BY Country;



SQL SELECT INTO
/*
The SELECT INTO statement copies data from one table into a new table.
Can copy all columns into the new table using *.
Syntax:

    SELECT column1, column2, column3, ...
    INTO newtable [IN externaldb]
    FROM oldtable;

The new table will be created with the column-names and types as defined in the old table. You can create new column names using the AS clause.
Using JOIN, it is possible to copy data from more than one table in a single request.
Add a WHERE clause that causes the query to return no data, it is possible to create a new, empty table using the schema of another.
*/

    SELECT CustomerName, ContactName 
    INTO CustomersBackup2017
    FROM Customers;



SQL INSERT INTO SELECT
/*
The INSERT INTO SELECT statement copies data from one table and inserts it into another table, as long as the data types match.
The existing records in the target table are unaffected.
Syntax:

    -> Copy all columns from one table to another table:

        INSERT INTO table2
        SELECT * FROM table1;

    -> Copy only some columns from one table into another table:

        INSERT INTO table2 (column1, column2, column3, ...)
        SELECT column1, column2, column3, ...
        FROM table1;
*/

    INSERT INTO Customers (CustomerName, City, Country)
    SELECT SupplierName, City, Country FROM Suppliers
    WHERE Country='Germany';
