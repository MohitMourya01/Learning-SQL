/*
 Case Statement
*/

--SELECT FirstName, LastName, Age,
--CASE
--    WHEN Age > 30 THEN 'Old'
--	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
--	ELSE 'Boby'
--END
--FROM LearningSQL.dbo.EmployDemographics
--WHERE Age is Not NULL
--ORDER BY Age


SELECT FirstName, LastName, JobTitle, Salary,
CASE 
   WHEN JobTitle = 'Salesman' THEN Salary + (Salary* .10)
   WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
   ELSE Salary + (Salary*.03)
END AS SalaryAfterRaise
FROM LearningSQL.dbo.EmployDemographics
JOIN LearningSQL.dbo.EmployeeSalary
ON EmployDemographics.EmployeeId = EmployeeSalary.EmployeeId

/*
Having Clause
*/

SELECT JobTitle, COUNT(JobTitle)
FROM LearningSQL.dbo.EmployDemographics
JOIN LearningSQL.dbo.EmployeeSalary
ON EmployDemographics.EmployeeId = EmployeeSalary.EmployeeId
--WHERE COUNT(JobTitle) > 1
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1
