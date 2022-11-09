-- Some Basic SQL Begineer's Queries.

--CREATE TABLE EmployeeDemographics
--(EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--);

--CREATE TABLE EmployeeSalary
--(EmployeeID int,
--JobTitle varchar(50),
--Salary int
--);

--INSERT INTO EmployeeDemographics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male');

--INSERT INTO EmployeeDemographics VALUES
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male');

--Insert Into EmployeeSalary VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000);

--SELECT *
--FROM EmployeeDemographics;

--SELECT DISTINCT(EmployeeID)
--FROM EmployeeDemographics;

--SELECT DISTINCT(Gender)
--FROM EmployeeDemographics;

--SELECT COUNT(LastName) AS LastNameCount
--FROM EmployeeDemographics;

--SELECT *
--FROM EmployeeSalary;

--SELECT MAX(Salary)
--FROM EmployeeSalary;

--SELECT MIN(Salary)
--FROM EmployeeSalary;

--SELECT AVG(Salary)
--FROM EmployeeSalary;

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName = 'Jim';

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName <> 'Jim'; -- <> = Not equal to

--SELECT *
--FROM EmployeeDemographics
--WHERE Age >= 30;

--SELECT *
--FROM EmployeeDemographics
--WHERE Age <= 32 AND Gender = 'Male';

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%';

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%ott%';

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName IS NOT NULL;

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName IN ('Jim', 'Michael');

--SELECT Gender, COUNT(Gender) AS Total_gender_count
--FROM EmployeeDemographics
--GROUP BY Gender;

--SELECT Gender, FirstName, Age, COUNT(Gender)
--FROm EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender, FirstName, Age;

--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender
--ORDER BY CountGender DESC;

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age DESC, Gender DESC;