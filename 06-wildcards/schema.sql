SQL Wildcard Characters
/*
A wildcard character is used to substitute one or more characters in a string.
Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
Any wildcard can be used in combination with other wildcards

Wildcard Characters:
    ->  %	Represents zero or more characters
    ->  _	Represents a single character
    ->  []	Represents any single character within the brackets *
    ->  ^	Represents any character not in the brackets *
    ->  -	Represents any single character within the specified range *
    ->  {}	Represents any escaped character **

*   Not supported in PostgreSQL and MySQL databases.
**  Supported only in Oracle databases.
*/



Using the % Wildcard
/*
The % wildcard represents any number of characters, even zero characters.
    -   customers that contains the pattern 'mer':
*/

    SELECT * FROM Customers
    WHERE CustomerName LIKE '%mer%';    



Using the _ Wildcard
/*
The _ wildcard represents a single character. It can be any character or number, but each _ represents one, and only one, character.
    -   customers with a City starting with "L", followed by any 3 characters, ending with "on":
*/

    SELECT * FROM Customers
    WHERE City LIKE 'L___on';   



Using the [] Wildcard
/*
The [] wildcard returns a result if any of the characters inside gets a match.
    -  customers starting with either "b", "s", or "p":
*/

    SELECT * FROM Customers
    WHERE CustomerName LIKE '[bsp]%';   



Using the - Wildcard
/*
The - wildcard allows you to specify a range of characters inside the [] wildcard.
    -   customers starting with "a", "b", "c", "d", "e" or "f":
*/

    SELECT * FROM Customers
    WHERE CustomerName LIKE '[a-f]%';