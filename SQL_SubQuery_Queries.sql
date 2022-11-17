-- SubQueries (In the SELECT, FROM, and WHERE Statement)

-- Subquery in SELECT

--SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AS AllAvgSalary
--FROM EmployeeSalary;

-- How to do it with Partition By

--SELECT EmployeeID, Salary, AVG(Salary) OVER() AS AllAvgSalary
--FROM EmployeeSalary;

-- Why GROUP BY won't work ?
--SELECT EmployeeID, Salary, AVG(Salary)
--FROM EmployeeSalary
--GROUP BY EmployeeID, Salary
--ORDER BY 1, 2 ;

-- SubQuery in FROM

--SELECT a.EmployeeID, AllAvgSalary
--FROM (SELECT EmployeeID, Salary, AVG(Salary) OVER() AS AllAvgSalary
--	  FROM EmployeeSalary) a

-- SubQuery in WHERE

--SELECT EmployeeID, JobTitle, Salary
--FROM EmployeeSalary
--WHERE EmployeeID IN (
--		SELECT EmployeeID
--		FROM EmployeeDemographics
--		WHERE Age > 30);