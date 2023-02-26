CREATE TABLE employee3
(
emp_id int,
emp_name varchar(20),
dept_id int,
salary int,
manager_id int,
emp_age int
);

INSERT INTO employee3 VALUES
(1, 'Ankit', 100, 10000, 4, 39),
(2, 'Mohit', 100, 15000, 5, 48),
(3, 'Vikas', 100, 10000, 4, 37),
(4, 'Rohit', 100, 5000, 2, 16),
(5, 'Mudit', 200, 12000, 6, 55),
(6, 'Agam', 200, 12000, 2, 14),
(7, 'Sanjay', 200, 9000, 2, 13),
(8, 'Ashish', 200, 5000, 2, 12),
(9, 'Mukesh', 300, 6000, 6, 51),
(10, 'Rakesh', 500, 7000, 6, 50);

-- First value and last value Window functions.

-- First Value Function
SELECT *
, FIRST_VALUE(emp_name) OVER(PARTITION BY dept_id ORDER BY salary DESC) AS highest_salary_emp
FROM employee3;

-- Last Value Function
/*Problem with last value function is that it doen't look for the data in all rows at once it 
will go row by row. So, to tackle this situation we need to use ROWS BETWEEN statement
*/
SELECT *
, LAST_VALUE(emp_name) OVER(PARTITION BY dept_id ORDER BY emp_age ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS oldest_emp
FROM employee3
ORDER BY dept_id, emp_age;