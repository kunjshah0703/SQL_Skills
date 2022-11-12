/*
Having Clause
*/

--SELECT JobTitle, COUNT(JobTitle) AS TotalCountOfJobtitles
--FROM EmployeeDemographics
--JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
---- WHERE COUNT(JobTitle) > 1 -- Error statement
---- HAVING COUNT(JobTitle) > 1 -- Error statement
--GROUP BY JobTitle
--HAVING COUNT(JobTitle) > 1 
/*If we want use some condition on on aggregated function we need to use Having Clause.
The Having should come after Group By.
*/
;

--SELECT JobTitle, AVG(Salary)
--FROM EmployeeDemographics
--JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--GROUP BY JobTitle
--HAVING AVG(Salary) > 45000
--ORDER By AVG(Salary);

