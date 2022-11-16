-- Temp tables's

--SELECT *
--FROM EmployeeDemographics;

--CREATE TABLE #temp_table (
--EmployeeID int,
--JobTitle varchar(100),
--Salary int
--);

--SELECT *
--FROM #temp_table;

--INSERT INTO #temp_table VALUES(
--'1001', 'HR', '45000');

--INSERT INTO #temp_table          -- INSERTING values into temp table from employee salary table.
--SELECT *
--FROM EmployeeSalary

--SELECT *
--FROM #temp_table;


-- DROP TABLE IF EXISTS #Temp_Employee2
-- Creating another Temp Table.
--CREATE TABLE #Temp_Employee2 (
--JobTitle varchar(50),
--EmployeesPerJob int,
--AvgAge int,
--AvgSalary int);

--INSERT INTO #Temp_Employee2
--SELECT JobTitle, COUNT(Jobtitle), Avg(Age), AVG(Salary)
--FROM EmployeeDemographics emp
--JOIN EmployeeSalary sal
--ON emp.EmployeeID = sal.EmployeeID
--GROUP BY JobTitle

--SELECT *
--FROM #Temp_Employee2;

