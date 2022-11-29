-- How to convert rows to columns and vice versa without using pivot functions.

CREATE TABLE emp_compensation
(emp_id int,
salary_compensation_type varchar(20),
val int
);

INSERT INTO emp_compensation VALUES
(1, 'salary', 10000),
(1, 'bonus', 5000),
(1, 'hike_percent', 10),
(2, 'salary', 15000),
(2, 'bonus', 7000),
(2, 'hike_percent', 8),
(3, 'salary', 12000),
(3, 'bonus', 6000),
(3, 'hike_percent', 7);

SELECT *
FROM emp_compensation;

-- Pivoting the DATA

SELECT emp_id
, SUM(CASE WHEN salary_compensation_type = 'salary' THEN val END) AS salary
, SUM(CASE WHEN salary_compensation_type = 'bonus' THEN val END) AS bonus
, SUM(CASE WHEN salary_compensation_type = 'hike_percent' THEN val END) AS hike_percent
INTO emp_compensation_pivot
FROM emp_compensation
GROUP BY emp_id

-- Unpivoting the Data.

SELECT * FROM(
SELECT emp_id, 'salary' AS salary_component_type, salary AS val 
FROM emp_compensation_pivot
UNION ALL
SELECT emp_id, 'bonus' AS salary_component_type, bonus AS val 
FROM emp_compensation_pivot
UNION ALL
SELECT emp_id, 'hike_percent' AS salary_component_type, hike_percent AS val 
FROM emp_compensation_pivot
) a
ORDER BY emp_id;

