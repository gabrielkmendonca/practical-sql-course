SQL Constraints
/*
SQL constraints are used to specify rules for data in a table.
Constraints can be specified when the table is created with the CREATE TABLE statement, or after the table is created with the ALTER TABLE statement.
Syntax:

    CREATE TABLE table_name (
        column1 datatype constraint,
        column2 datatype constraint,
        column3 datatype constraint,
        ....
    );

Constraints are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of the data in the table. If there is any violation between the constraint and the data action, the action is aborted.
Constraints can be column level or table level.

The following constraints are commonly used in SQL:
    ->  NOT NULL        ->   Ensures that a column cannot have a NULL value
    ->  UNIQUE          ->   Ensures that all values in a column are different
    ->  PRIMARY KEY     ->   A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
    ->  FOREIGN KEY     ->   Prevents actions that would destroy links between tables
    ->  CHECK           ->   Ensures that the values in a column satisfies a specific condition
    ->  DEFAULT         ->   Sets a default value for a column if no value is specified
    ->  CREATE INDEX    ->   Used to create and retrieve data from the database very quickly
*/



SQL NOT NULL
/*
The NOT NULL constraint enforces a column to NOT accept NULL values.
This enforces a field to always contain a value, which means that you cannot insert a new record, or update a record without adding a value to this field.
*/

--MySQL / SQL Server / Oracle / MS Access:
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255) NOT NULL,
        Age int
    );

--On ALTER TABLE:
    ALTER TABLE Persons
    ALTER COLUMN Age int NOT NULL;



SQL UNIQUE
/*
The UNIQUE constraint ensures that all values in a column are different.
You can have many UNIQUE constraints per table.
*/

--SQL Server / Oracle / MS Access:
    CREATE TABLE Persons (
        ID int UNIQUE,
        LastName varchar(255),
        FirstName varchar(255),
        Age int
    );
--MySQL:
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int,
        UNIQUE (ID)
    );

--On ALTER TABLE:
    ALTER TABLE Persons
    ADD UNIQUE (ID);

--DROP a UNIQUE / MySQL:
    ALTER TABLE Persons
    DROP INDEX UC_Person;

--DROP a UNIQUE / SQL Server / Oracle / MS Access:
    ALTER TABLE Persons
    DROP CONSTRAINT UC_Person;



SQL PRIMARY KEY
/*
The PRIMARY KEY constraint is used to uniquely identify each record in a table.
Primary keys must contain unique values, and cannot contain NULL values.
Each table can have only ONE primary key.
*/

--MySQL:
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255),
        FirstName varchar(255),
        Age int,
        PRIMARY KEY (ID)
    );

--SQL Server / Oracle / MS Access:
    CREATE TABLE Persons (
        ID int NOT NULL PRIMARY KEY,
        LastName varchar(255),
        FirstName varchar(255),
        Age int
    );

--On ALTER TABLE:
    ALTER TABLE Persons
    ADD PRIMARY KEY (ID);

--DROP a PRIMARY KEY / MySQL:
    ALTER TABLE Persons
    DROP PRIMARY KEY;

--DROP a PRIMARY KEY / SQL Server / Oracle / MS Access:
    ALTER TABLE Persons
    DROP CONSTRAINT PK_Person;



SQL FOREIGN KEY
/*
A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.
The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.
*/

--MySQL:
    CREATE TABLE Orders (
        OrderID int NOT NULL,
        OrderNumber int NOT NULL,
        PersonID int,
        PRIMARY KEY (OrderID),
        FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
    );

--SQL Server / Oracle / MS Access:
    CREATE TABLE Orders (
        OrderID int NOT NULL PRIMARY KEY,
        OrderNumber int NOT NULL,
        PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
    );

--On ALTER TABLE:
    ALTER TABLE Orders
    ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

--DROP a FOREIGN KEY / MySQL:
    ALTER TABLE Orders
    DROP FOREIGN KEY FK_PersonOrder;

--DROP a FOREIGN KEY / SQL Server / Oracle / MS Access:
    ALTER TABLE Orders
    DROP CONSTRAINT FK_PersonOrder;



SQL CHECK
/*
The CHECK constraint is used to limit the value range that can be placed in a column.
*/

--MySQL:
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int,
        CHECK (Age>=18)
    );

--SQL Server / Oracle / MS Access:
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int CHECK (Age>=18)
    );

--On ALTER TABLE:
    ALTER TABLE Persons
    ADD CHECK (Age>=18);

--DROP a CHECK / MySQL:
    ALTER TABLE Persons
    DROP CHECK CHK_PersonAge;

--DROP a CHECK / SQL Server / Oracle / MS Access:
    ALTER TABLE Persons
    DROP CONSTRAINT CHK_PersonAge;



SQL DEFAULT
/*
The DEFAULT constraint is used to set a default value for a column.
The default value will be added to all new records, if no other value is specified.
The DEFAULT constraint can also be used to insert system values, by using functions like GETDATE()
*/

--My SQL / SQL Server / Oracle / MS Access:
    CREATE TABLE Persons (
        ID int NOT NULL,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int,
        City varchar(255) DEFAULT 'Sandnes',
        RegisterDate date DEFAULT GETDATE()
    );

--On ALTER TABLE / MySQL:
    ALTER TABLE Persons
    ALTER City SET DEFAULT 'Sandnes';

--On ALTER TABLE / SQL Server:
    ALTER TABLE Persons
    ADD CONSTRAINT df_City
    DEFAULT 'Sandnes' FOR City;

--On ALTER TABLE / MS Access:
    ALTER TABLE Persons
    ALTER COLUMN City SET DEFAULT 'Sandnes';

--On ALTER TABLE / Oracle:
    ALTER TABLE Persons
    MODIFY City DEFAULT 'Sandnes';

--DROP a DEFAULT / MySQL:
    ALTER TABLE Persons
    ALTER City DROP DEFAULT;

--DROP a DEFAULT / SQL Server / Oracle / MS Access:
    ALTER TABLE Persons
    ALTER COLUMN City DROP DEFAULT;



SQL CREATE INDEX
/*
The CREATE INDEX statement is used to create indexes in tables.
Indexes are used to retrieve data from the database more quickly than otherwise. The users cannot see the indexes, they are just used to speed up searches/queries.
Updating a table with indexes takes more time than updating a table without (because the indexes also need an update). So, only create indexes on columns that will be frequently searched against.
Use the UNIQUE constraint to create an UNIQUE INDEX, where duplicate values are not allowed.
*/

--MySQL / SQL Server / Oracle / MS Access:
    CREATE INDEX idx_lastname
    ON Persons (LastName);

--DROP a INDEX / MS Access:
    DROP INDEX index_name ON table_name;

--DROP a INDEX / SQL Server:
    DROP INDEX table_name.index_name;

--DROP a INDEX / DB2/Oracle:
    DROP INDEX index_name;

--DROP a INDEX / MySQL:
    ALTER TABLE table_name
    DROP INDEX index_name;