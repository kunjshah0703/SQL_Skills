/*
Union, and Union all
*/

--SELECT *
--FROM EmployeeDemographics;

--SELECT *
--FROM EmployeeSalary;

--CREATE TABLE WareHouseEmployeeDemographics
--(EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--);

--INSERT INTO WareHouseEmployeeDemographics VALUES
--(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female');

--SELECT *
--FROM EmployeeDemographics
--FULL OUTER JOIN WareHouseEmployeeDemographics
--ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID;

--SELECT *
--FROM EmployeeDemographics
--UNION                   -- Will not return duplicate
--SELECT *
--FROM WareHouseEmployeeDemographics;

--SELECT *
--FROM EmployeeDemographics
--UNION ALL                   -- Will return duplicates
--SELECT *
--FROM WareHouseEmployeeDemographics
--ORDER BY EmployeeID;

--SELECT EmployeeID, FirstName, Age
--FROM EmployeeDemographics
--UNION
--SELECT EmployeeID, JobTitle, Salary
--FROM EmployeeSalary
--ORDER BY EmployeeID;