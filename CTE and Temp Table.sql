/* 
Common Table Expression (CTE)
*/

WITH CTE_Employee as 
(SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender,
AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary
FROM LearningSQL..EmployDemographics emp
JOIN LearningSQL..EmployeeSalary sal
ON emp.EmployeeId = sal.EmployeeId
WHERE Salary > '45000'
)
Select *
FROM CTE_Employee

/*
Temp Talbes
*/

CREATE TABLE #temp_Employee (
EmployeeId int,
JobTitle varchar(100),
Salary int
)
Select *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
'1001', 'HR', '45000'
)

INSERT INTO #temp_Employee
SELECT *
FROM LearningSQL..EmployeeSalary

/* DROP TABLE IF EXISTS #temp_Employee2 */
Create Table #Temp_Employee2 (
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int 
)

INSERT INTO #Temp_Employee2
SELECT JobTitle, Count(JobTitle), Avg(Age), Avg(Salary)
FROM LearningSQL..EmployDemographics emp
JOIN LearningSQL..EmployeeSalary sal
ON emp.EmployeeId = sal.EmployeeId
Group by JobTitle

Select *
From #Temp_Employee2