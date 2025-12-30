SQL DISTINCT 
/*
The DISTINCT keyword is used to return only distinct (different) values.
Syntax:

    SELECT DISTINCT column1, column2, ... FROM table_name;

Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.
*/ 

    SELECT DISTINCT Country FROM Customers;



SQL ORDER BY
/*
The ORDER BY keyword is used to sort the result-set in ascending or descending order.
Syntax:

    SELECT column1, column2, ... FROM table_name 
    ORDER BY column1, column2, ... ASC|DESC;

    ->  ASC (default) — sort the records in ascending order
    ->  DESC — sort the records in descending order
*/

    SELECT * FROM Products 
    ORDER BY Price;

/*
ORDER BY several columns:
    - selects all customers from the "Customers" table, sorted ascending by the "Country" and descending by the "CustomerName":
*/

    SELECT * FROM Customers 
    ORDER BY Country ASC, 
    CustomerName DESC;



SQL AS
/*
SQL aliases are used to give a table, or a column in a table, a temporary name.
An alias only exists for the duration of that query.
An alias is created with the AS keyword.
Syntax:

    SELECT column/function AS custom_name FROM table_name

If you want your alias to contain one or more spaces, surround your alias with square brackets or double quotes.
*/

    SELECT MIN(Price) AS "Smallest Price" FROM Products;



SQL NOT
/*
By using the NOT keyword, it returns all records that are NOT any of the values.
*/

    SELECT * FROM Customers
    WHERE Country NOT IN ('Germany', 'France', 'UK');



SQL JOIN Types
/*
In order to learn about the JOIN keywords used with the SQL JOIN clause, access file 08-joins.
*/



SQL AUTO INCREMENT
/*
Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.
Often this is the primary key field that we would like to be created automatically every time a new record is inserted.
The auto-increment feature has different syntaxes depending on the database.
*/

--MySQL:
    CREATE TABLE Persons (
        Personid int NOT NULL AUTO_INCREMENT,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int,
        PRIMARY KEY (Personid)
    );

--SQl Server:
    CREATE TABLE Persons (
        Personid int IDENTITY(1,1) PRIMARY KEY,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int
    );

--MS Access:
    CREATE TABLE Persons (
        Personid AUTOINCREMENT PRIMARY KEY,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int
    );

--Oracle:
    CREATE SEQUENCE seq_person
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1
    CACHE 10;