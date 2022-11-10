-- SQL Intermediate Queries.

/*
Inner, Full, Left, Right and Outer JOINS
*/

--SELECT *
--FROM EmployeeDemographics;

--INSERT INTO EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL,'Holly', 'Flax', NULL, NULL),
--(1013, 'Darryl', 'Philbin', NULL, 'Male');

--SELECT *
--FROM EmployeeDemographics;

--SELECT *
--FROM EmployeeSalary;

--INSERT INTO EmployeeSalary VALUES
--(1010, NULL, 47000),
--(NULL, 'Salesman', 43000);

--SELECT *
--FROM EmployeeSalary;

--SELECT *
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary   -- INNER JOIN will join both tables based on a matching column.(i.e EmployeeID)
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

--SELECT *
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary  -- FULL Outer Join will return all the data.
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

--SELECT *
--FROM EmployeeDemographics
--LEFT OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

--SELECT *
--FROM EmployeeDemographics
--RIGHT OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM EmployeeDemographics
--LEFT OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

-- Use Case 1 : We need to find out who has highest salary except Michael
--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE FirstName <> 'Michael'
--ORDER BY Salary DESC;

-- Use Case 2 : Find the average salary of Salesman
--SELECT JobTitle, AVG(Salary) AS Salesman_average_salary
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE JobTitle = 'Salesman'
--GROUP BY JobTitle;