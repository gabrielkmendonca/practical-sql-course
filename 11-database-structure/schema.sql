SQL CREATE DATABASE
/*
The CREATE DATABASE statement is used to create a new SQL database.
Syntax:

    CREATE DATABASE databasename;

Once a database is created, you can check it in the list of databases with the following SQL command: SHOW DATABASES;
*/

    CREATE DATABASE testDB;



SQL DROP DATABASE
/*
The DROP DATABASE statement is used to drop an existing SQL database.
Syntax:

    DROP DATABASE databasename;

Deleting a database will result in loss of complete information stored in the database.
*/

    DROP DATABASE testDB;



SQL BACKUP DATABASE
/*
The BACKUP DATABASE statement is used in SQL Server to create a full back up of an existing SQL database.
Syntax:

    BACKUP DATABASE databasename
    TO DISK = 'filepath'
    WITH DIFFERENTIAL; ->  A differential back up only backs up the parts of the database that have changed since the last full database backup.

Always back up the database to a different drive than the actual database. Then, if you get a disk crash, you will not lose your backup file along with the database.
*/

    BACKUP DATABASE testDB
    TO DISK = 'D:\backups\testDB.bak';



SQL CREATE TABLE
/*
The CREATE TABLE statement is used to create a new table in a database.
Syntax:

    -> Create from scratch:

        CREATE TABLE table_name (
            column1 datatype,
            column2 datatype,
            column3 datatype,
        ....
        );

    -> Create using another table:

        CREATE TABLE new_table_name AS
        SELECT column1, column2,...
        FROM existing_table_name;
*/

    CREATE TABLE Persons (
        PersonID int,
        LastName varchar(255),
        FirstName varchar(255),
        Address varchar(255),
        City varchar(255)
    );



SQL DROP TABLE
/*
The DROP TABLE statement is used to drop an existing table in a database.
Syntax:

    DROP TABLE table_name;

Deleting a table will result in loss of complete information stored in the table.
*/

    DROP TABLE Shippers;



SQL TRUNCATE TABLE
/*
The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.
Syntax:

    TRUNCATE TABLE table_name;
*/

    TRUNCATE TABLE Shippers;



SQL ALTER TABLE
/*
The ALTER TABLE statement is used to add, delete, or modify columns in an existing table. Aalso used to add and drop various constraints on an existing table.
*/

    ALTER TABLE - ADD Column
    /*
    Add a column in a table.
    Syntax:

        ALTER TABLE table_name
        ADD column_name datatype;
    */

        ALTER TABLE Customers
        ADD Email varchar(255);

    ALTER TABLE - DROP COLUMN
    /*
    Delete a column in a table (notice that some database systems don't allow deleting a column). 
    Syntax:

        ALTER TABLE table_name
        DROP COLUMN column_name;
    */

        ALTER TABLE Customers
        DROP COLUMN Email;

    ALTER TABLE - RENAME COLUMN
    /*
    Rename a column in a table.
    Syntax:

        ALTER TABLE table_name
        RENAME COLUMN old_name to new_name;

    To rename a column in a table in SQL Server, use the following syntax:

        EXEC sp_rename 'table_name.old_name',  'new_name', 'COLUMN';
    */

        ALTER TABLE Customers
        RENAME COLUMN Email to Contact;

    ALTER TABLE - ALTER/MODIFY DATATYPE
    /*
    Change the data type of a column in a table.
    Syntax:

        -> SQL Server / MS Access:

            ALTER TABLE table_name
            ALTER COLUMN column_name datatype;

        -> My SQL / Oracle (prior version 10G):

            ALTER TABLE table_name
            MODIFY COLUMN column_name datatype;

        -> Oracle 10G and later:

            ALTER TABLE table_name
            MODIFY column_name datatype;
    */

        ALTER TABLE Persons
        ALTER COLUMN DateOfBirth year;