-- Partition By

--SELECT FirstName, LastName, Gender, Salary,
--COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
--FROM EmployeeDemographics dem
--JOIN EmployeeSalary sal
--ON dem.EmployeeID = sal.EmployeeID;