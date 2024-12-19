/*
 inner join, Full,Left, Right, Outer Join
*/

--SELECT * 
--FROM LearningSQL.dbo.EmployDemographics

--SELECT *
--FROM LearningSQL.dbo.EmployeeSalary

--SELECT *
--FROM LearningSQL.dbo.EmployDemographics
--INNER JOIN LearningSQL.dbo.EmployeeSalary
--ON EmployDemographics.EmployeeId = EmployeeSalary.EmployeeId

--SELECT *
--FROM LearningSQL.dbo.EmployDemographics
--FULL OUTER JOIN LearningSQL.dbo.EmployeeSalary
--ON EmployDemographics.EmployeeId = EmployeeSalary.EmployeeId

--SELECT *
--FROM LearningSQL.dbo.EmployDemographics
--LEFT OUTER JOIN LearningSQL.dbo.EmployeeSalary
--ON EmployDemographics.EmployeeId = EmployeeSalary.EmployeeId

SELECT *
FROM LearningSQL.dbo.EmployDemographics
RIGHT OUTER JOIN LearningSQL.dbo.EmployeeSalary
ON EmployDemographics.EmployeeId = EmployeeSalary.EmployeeId

SELECT EmployDemographics.EmployeeId, FirstName, LastName, JobTitle
FROM LearningSQL.dbo.EmployDemographics
INNER JOIN LearningSQL.dbo.EmployeeSalary
ON EmployDemographics.EmployeeId = EmployeeSalary.EmployeeId

SELECT EmployDemographics.EmployeeId, FirstName, LastName, JobTitle, Salary
FROM LearningSQL.dbo.EmployDemographics
INNER JOIN LearningSQL.dbo.EmployeeSalary
ON EmployDemographics.EmployeeId = EmployeeSalary.EmployeeId
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC

SELECT JobTitle, AVG(Salary)
FROM LearningSQL.dbo.EmployDemographics
INNER JOIN LearningSQL.dbo.EmployeeSalary
ON EmployDemographics.EmployeeId = EmployeeSalary.EmployeeId
WHERE  JobTitle = 'Salesman'
GROUP BY JobTitle