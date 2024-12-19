/* Aliasing */

SELECT FirstName + ' ' + LastName AS FullName
FROM [LearningSQL].[dbo].[EmployDemographics]

SELECT Avg(Age) AS AvgAGE
FROM [LearningSQL].[dbo].[EmployDemographics]

SELECT Demo.EmployeeId, Sal.Salary
FROM [LearningSQL].[dbo].[EmployDemographics] AS Demo
JOIN [LearningSQL].[dbo].[EmployeeSalary] AS Sal
ON Demo.EmployeeId = Sal.EmployeeId

/* Partition By*/

Select *
From LearningSQL..EmployDemographics

Select *
From LearningSQL..EmployeeSalary

Select FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM LearningSQL..EmployDemographics dem
JOIN LearningSQL..EmployeeSalary sal
ON dem.EmployeeId = sal.EmployeeId

