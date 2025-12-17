--SQL Introduction
/*
SQL stands for Structured Query Language.
SQL is a standard language for storing, manipulating and retrieving data in databases.
Most of the SQL database programs also have their own proprietary extensions in addition to the SQL standard.
*/


/*
To build a web site that shows data from a database, you will need:
    ->  An (RDBMS) database program (i.e. MS Access, SQL Server, MySQL);
    ->  To use a server-side scripting language, like PHP or ASP;
    ->  To use SQL to get the data you want;
    ->  To use HTML / CSS to style the page.
*/


--Database Structure
/*
Relational Database Management System is the basis for SQL, and for all modern database systems such as MS SQL Server, IBM DB2, Oracle, MySQL, and Microsoft Access.
    ->  The data in RDBMS is stored in database objects called tables. A table is a collection of related data entries and it consists of columns and rows.
    ->  Every table is broken up into smaller entities called fields. A field is a column in a table that is designed to maintain specific information about every record in the table.
    ->  A record, also called a row, is each individual entry that exists in a table. A record is a horizontal entity in a table.
    ->  A column is a vertical entity in a table that contains all information associated with a specific field in a table.
*/


--SQL Statements
/*
    -> Most of the actions performed on a database are done with SQL statements, which consist of keywords that are easy to understand:
        i.e.,    SELECT * FROM Customers;

    -> Keep in mind that SQL keywords are NOT case sensitive (select is the same as SELECT) 
    -> Some database systems require a semicolon, which is the standard way to separate each SQL statement in database systems that allow more than one SQL statement to be executed in the same call to the server. 
*/


--Most Important SQL Commands
/*
SELECT          ->   extracts data from a database
UPDATE          ->   updates data in a database
DELETE          ->   deletes data from a database
INSERT INTO     ->   inserts new data into a database
CREATE DATABASE ->   creates a new database
ALTER DATABASE  ->   modifies a database
CREATE TABLE    ->   creates a new table
ALTER TABLE     ->   modifies a table
DROP TABLE      ->   deletes a table
CREATE INDEX    ->   creates an index (search key)
DROP INDEX      ->   deletes an index
*/