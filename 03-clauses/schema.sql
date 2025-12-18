SQL WHERE
/*
The WHERE clause is used to filter records. Used to extract only those records that fulfill a specified condition.
Syntax:

    SELECT column1, column2, ... FROM table_name 
    WHERE condition;

Operators in WHERE clause:
    =	       ->    Equal	
    >	       ->    Greater than	
    <	       ->    Less than	
    >=	       ->    Greater than or equal	
    <=	       ->    Less than or equal	
    <>	       ->    Not equal. Note: In some versions of SQL this operator may be written as !=	
    BETWEEN	   ->    Between a certain range	
    LIKE	   ->    Search for a pattern	
    IN	       ->    To specify multiple possible values for a column
*/

    SELECT * FROM Customers 
    WHERE Country='Mexico';



SQL SELECT TOP
/*
The SELECT TOP clause is used to specify the number of records to return.
Not all database systems support the SELECT TOP clause.
Syntax:

    SQL Server / MS Access  ->  SELECT TOP number|percent column_name(s) FROM table_name

    MySQL                   ->  SELECT column_name(s) FROM table_name
                                LIMIT number;

    Oracle 12               ->  SELECT column_name(s) FROM table_name
                                FETCH FIRST number ROWS ONLY;

It is possible to add the WHERE clause for records that match a condition, as well as the ORDER BY keyword to sort the result.
*/

    SELECT TOP 3 * FROM Customers
    WHERE Country='Germany'
    ORDER BY CustomerName DESC;