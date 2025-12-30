SQL Data Types for MySQL, SQL Server, and MS Access
/*
The data type of a column defines what value the column can hold: integer, character, money, date and time, binary, and so on.
Each column in a database table is required to have a name and a data type.
An SQL developer must decide what type of data that will be stored inside each column when creating a table. The data type is a guideline for SQL to understand what type of data is expected inside of each column, and it also identifies how SQL will interact with the stored data.
Data types might have different names in different database. And even if the name is the same, the size and other details may be different! Always check the documentation!
*/



MySQL Data Types (Version 8.0)
/*
String Data Types:
    ->  CHAR(size)                  ->	A FIXED length string. The parameter specifies the column length in characters (0 - 255)
    ->  VARCHAR(size)               ->	A VARIABLE length string. The parameter specifies the maximum string length in characters (0 - 65535)
    ->  BINARY(size)                ->	Stores binary byte strings. The parameter specifies the column length in bytes
    ->  VARBINARY(size)             ->	Stores binary byte strings. The parameter specifies the maximum column length in bytes
    ->  TINYBLOB                    ->	For BLOBs (Binary Large Objects). Max length: 255 bytes
    ->  TINYTEXT                    ->	Holds a string with a maximum length of 255 characters
    ->  TEXT(size)                  ->	Holds a string with a maximum length of 65,535 bytes
    ->  BLOB(size)                  ->	For BLOBs (Binary Large Objects). Holds up to 65,535 bytes of data
    ->  MEDIUMTEXT                  ->	Holds a string with a maximum length of 16,777,215 characters
    ->  MEDIUMBLOB                  ->	For BLOBs (Binary Large Objects). Holds up to 16,777,215 bytes of data
    ->  LONGTEXT                    ->	Holds a string with a maximum length of 4,294,967,295 characters
    ->  LONGBLOB                    ->	For BLOBs (Binary Large Objects). Holds up to 4,294,967,295 bytes of data
    ->  ENUM(val1, val2, val3, ...) ->	A string object that can have only one value, chosen from a list of possible values (up to 65535 values)
    ->  SET(val1, val2, val3, ...)  ->	A string object that can have 0 or more values, chosen from a list of possible values (up to 64 values)

Numeric Data Types:
    ->  BIT(size)                   ->	A bit-value type. The number of bits per value is specified in the parameter (0 - 64)
    ->  TINYINT(size)               ->	A very small integer. Signed range is from -128 to 127. Unsigned range is from 0 to 255. The size parameter specifies the maximum display width (which is 255)
    ->  BOOL                        ->	Zero is considered as false, nonzero values are considered as true.
    ->  BOOLEAN                     ->	Equal to BOOL
    ->  SMALLINT(size)              ->	A small integer. Signed range is from -32768 to 32767. Unsigned range is from 0 to 65535. The size parameter specifies the maximum display width (which is 255)
    ->  MEDIUMINT(size)             ->	A medium integer. Signed range is from -8388608 to 8388607. Unsigned range is from 0 to 16777215. The size parameter specifies the maximum display width (which is 255)
    ->  INT(size)                   ->	A medium integer. Signed range is from -2147483648 to 2147483647. Unsigned range is from 0 to 4294967295. The size parameter specifies the maximum display width (which is 255)
    ->  INTEGER(size)               ->	Equal to INT(size)
    ->  BIGINT(size)                ->	A large integer. Signed range is from -9223372036854775808 to 9223372036854775807. Unsigned range is from 0 to 18446744073709551615. The size parameter specifies the maximum display width (which is 255)
    ->  FLOAT(p)                    ->	A floating point number. If p is from 0 to 24, the data type becomes FLOAT(). If p is from 25 to 53, the data type becomes DOUBLE()
    ->  DOUBLE(size, d)             ->	A normal-size floating point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter
    ->  DOUBLE PRECISION(size, d)
    ->  DECIMAL(size, d)            ->	An exact fixed-point number. The total number of digits is specified in size. The number of digits after the decimal point is specified in the d parameter. The maximum number for size is 65. The maximum number for d is 30
    ->  DEC(size, d)                ->	Equal to DECIMAL(size,d)

Date and Time Data Types:
    ->  DATE            ->	A date. Format: YYYY-MM-DD. The supported range is from '1000-01-01' to '9999-12-31'
    ->  DATETIME(fsp)   ->	A date and time combination. Format: YYYY-MM-DD hh:mm:ss. The supported range is from '1000-01-01 00:00:00' to '9999-12-31 23:59:59'.
    ->  TIMESTAMP(fsp)  ->	A timestamp. TIMESTAMP values are stored as the number of seconds since the Unix epoch ('1970-01-01 00:00:00' UTC). Format: YYYY-MM-DD hh:mm:ss. The supported range is from '1970-01-01 00:00:01' UTC to '2038-01-09 03:14:07' UTC.
    ->  TIME(fsp)       ->	A time. Format: hh:mm:ss. The supported range is from '-838:59:59' to '838:59:59'
    ->  YEAR            ->	A year in four-digit format. Values allowed in four-digit format: 1901 to 2155, and 0000.
*/



MS SQL Server Data Types
/*
String Data Types:
    ->  char(n)         ->	Fixed-length non-Unicode character data (1 - 8000)
    ->  varchar(n)      ->	Variable-length non-Unicode character data (1 - 8000)
    ->  varchar(max)    ->	Variable-length non-Unicode character data
    ->  nchar(n)        ->	Fixed-length Unicode character data (1 - 4000)
    ->  nvarchar(n)     ->	Variable-length Unicode character data (1 - 4000)
    ->  nvarchar(max)   ->	Variable-length Unicode character data
    ->  binary(n)       ->	Fixed-length binary data (1 - 8000)
    ->  varbinary(n)    ->	Variable-length binary data (1 - 8000)
    ->  varbinary(max)  ->	Variable-length binary data

Numeric Data Types:
    ->  bit         	->  Integer that can be 0, 1, or NULL	 
    ->  tinyint     	->  Allows whole numbers from 0 to 255
    ->  smallint    	->  Allows whole numbers between -32,768 and 32,767
    ->  int         	->  Allows whole numbers between -2,147,483,648 and 2,147,483,647
    ->  bigint      	->  Allows whole numbers between -9,223,372,036,854,775,808 and 9,223,372,036,854,775,807
    ->  decimal(p,s)	->  Fixed precision and scale numbers (-10^38 +1 to 10^38 –1). The p parameter indicates the maximum total number of digits that can be stored (1 - 38). The s parameter indicates the maximum number of digits stored to the right of the decimal point (0 - p)
    ->  numeric(p,s)    ->	Fixed precision and scale numbers (-10^38 +1 to 10^38 –1). The p parameter indicates the maximum total number of digits that can be stored (1 - 38). The s parameter indicates the maximum number of digits stored to the right of the decimal point (0 - p)
    ->  smallmoney      ->	Monetary data from -214,748.3648 to 214,748.3647
    ->  money           ->	Monetary data from -922,337,203,685,477.5808 to 922,337,203,685,477.5807
    ->  float(n)        ->	Floating precision number data from -1.79E + 308 to 1.79E + 308. The n parameter indicates whether the field should hold 4 (float(24)) or 8 (float(53)) bytes
    ->  real            ->	Floating precision number data from -3.40E + 38 to 3.40E + 38

Date and Time Data Types:
    ->  datetime        ->	From January 1, 1753 to December 31, 9999 with an accuracy of 3.33 milliseconds
    ->  datetime2       ->	From January 1, 0001 to December 31, 9999 with an accuracy of 100 nanoseconds
    ->  smalldatetime   ->	From January 1, 1900 to June 6, 2079 with an accuracy of 1 minute
    ->  date            ->	Store a date only. From January 1, 0001 to December 31, 9999
    ->  time            ->	Store a time only to an accuracy of 100 nanoseconds
    ->  datetimeoffset  ->	The same as datetime2 with the addition of a time zone offset
    ->  timestamp       ->	Stores a unique number that gets updated every time a row gets created or modified. Each table may have only one timestamp variable

Other Data Types:
    ->  sql_variant         ->	Stores up to 8,000 bytes of data of various data types, except text, ntext, and timestamp
    ->  uniqueidentifier    ->	Stores a globally unique identifier (GUID)
    ->  xml                 ->	Stores XML formatted data. Maximum 2GB
    ->  cursor              ->	Stores a reference to a cursor used for database operations
    ->  table               ->	Stores a result-set for later processing
*/



MS Access Data Types
/*
    ->  Text            ->	Use for text or combinations of text and numbers. 255 characters maximum
    ->  Memo            ->	Memo is used for larger amounts of text. Stores up to 65,536 characters
    ->  Byte            ->	Allows whole numbers from 0 to 255
    ->  Integer         ->	Allows whole numbers between -32,768 and 32,767
    ->  Long            ->	Allows whole numbers between -2,147,483,648 and 2,147,483,647
    ->  Single          ->	Single precision floating-point
    ->  Double          ->	Double precision floating-point
    ->  Currency        ->	Use for currency. Holds up to 15 digits of whole numbers, plus 4 decimal places
    ->  AutoNumber      ->	Automatically give each record its own number, usually starting at 1
    ->  Date/Time       ->	Use for dates and times
    ->  Yes/No          ->	A logical field can be displayed as Yes/No, True/False, or On/Off. Null values are not allowed in Yes/No fields
    ->  Ole Object      ->	Can store pictures, audio, video, or other BLOBs (Binary Large Objects)
    ->  Hyperlink       ->	Contain links to other files
    ->  Lookup Wizard   ->	Let you type a list of options, which can then be chosen from a drop-down list
*/