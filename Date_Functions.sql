-- Date Functions in SQL.

-- DATEPART, DATEADD, DATEDIFF Functions

-- 1. DATEPART FUNCTION
SELECT datepart(month, '2022-01-23') -- We can get any part of the date

-- 2. DATEADD FUNCTION 
SELECT dateadd(day, 2, '2022-01-23') -- Here 2 represents the increment value.

-- 3. DATEDIFF FUNCTION
SELECT datediff(week, '2022-01-01', '2022-01-23')

CREATE TABLE customer_orders
(order_id int,
customer_id int,
order_date date,
ship_date date);

INSERT INTO customer_orders VALUES
(1000, 1, '2022-01-05', '2022-01-11'),
(1001, 2, '2022-02-04', '2022-02-16');

INSERT INTO customer_orders VALUES
(1002, 3, '2022-01-01', '2022-01-19'),
(1003, 4, '2022-01-06', '2022-01-30'),
(1004, 1, '2022-02-07', '2022-02-13'),
(1005, 4, '2022-01-07', '2022-01-31'),
(1006, 3, '2022-02-08', '2022-02-26'),
(1007, 2, '2022-02-09', '2022-02-21'),
(1008, 4, '2022-02-10', '2022-03-06');

-- Checking how many business days it took to ship
SELECT *, datediff(day,order_date,ship_date) AS days_to_ship,
datediff(week, order_date,ship_date) AS week_between_days,
datediff(day,order_date,ship_date) - 2*datediff(week,order_date,ship_date) AS business_days_to_ship
FROM customer_orders;


-- How to calculate present age of the customer
CREATE TABLE customers
(customer_id int,
customer_name varchar(20),
gender varchar(5),
dob date);

INSERT INTO customers VALUES
(1, 'Rahul', 'M', '2000-01-05'),
(2, 'Shilpa', 'F', '2004-04-05'),
(3, 'Ramesh', 'M', '2003-07-07'),
(4, 'Katrina', 'F', '2005-02-05'),
(5, 'Alia', 'F', '1992-01-01');

SELECT *, 
datediff(year, dob, getdate()) AS customer_age
FROM customers;

SELECT getdate() -- To get today's date



-- Trying something
--WITH tot_bus_days
--AS
--(SELECT *, datediff(day,order_date,ship_date) AS days_to_ship,
--datediff(week, order_date,ship_date) AS week_between_days,
--datediff(day,order_date,ship_date) - 2*datediff(week,order_date,ship_date) AS business_days_to_ship
--FROM customer_orders)
--SELECT *, dateadd(day,1,tot_bus_days)
--FROM customer_orders