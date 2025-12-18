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
    - selects all customers from the "Customers" table, sorted ascending by the "Country" and descending by the "CustomerName"
*/

    SELECT * FROM Customers 
    ORDER BY Country ASC, 
    CustomerName DESC;