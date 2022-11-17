-- Stored Procedures

--SELECT *
--FROM EmployeeDemographics;

--CREATE PROCEDURE TEST
--AS
--SELECT *
--FROM EmployeeDemographics

--EXEC TEST;


--CREATE PROCEDURE Temp_Employee
--AS
--CREATE TABLE #temp_employee (
--JobTitle varchar(100),
--EmployeePerJob int,
--AvgAge int,
--AvgSalary int
--)

--INSERT INTO #temp_employee
--SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
--FROM EmployeeDemographics emp
--JOIN EmployeeSalary sal
--ON emp.EmployeeID = sal.EmployeeID
--GROUP BY JobTitle;

--SELECT *
--FROM #temp_employee;

--EXEC Temp_Employee;