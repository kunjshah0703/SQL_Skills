-- Stored Procedures.

SELECT * FROM customers;

CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM customers;

EXEC SelectAllCustomers;

--Stored Procedure with one Parameter
CREATE PROCEDURE SelectAllCustomerss @customer_name varchar(50)
AS
SELECT * FROM customers
WHERE customer_name = @customer_name;

EXEC SelectAllCustomerss @customer_name = 'Ramesh';

-- Stored Procedure with multiple parameters
CREATE PROCEDURE SelectAllCustomersss @gender varchar(50), @dob date
AS
SELECT * FROM customers
WHERE gender = @gender AND dob = @dob;

EXEC SelectAllCustomersss @gender = 'F', @dob = '2004-04-05';