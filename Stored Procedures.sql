/*
  Stored Procedures--> Group of sql statements that has been created
  and stored in that database.
  Stored Procedures in sql is a precompiled collection of sql statements
  and optional control-flow statements stored in DB.
  --> code reusability, performance, used for repetative taks, 
  encapsulating business logic, improving db security.
*/

CREATE PROCEDURE Test
AS
SELECT *
FROM EmployDemographics

EXEC Test

CREATE PROCEDURE Temp_Employee
AS
Create table #temp_employee (
JobTitle varchar(100),
EmployeePerJob int,
AvgAge int,
AvgSalary int
)

Insert into #temp_employee
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM LearningSQL..EmployDemographics emp
JOIN LearningSQL..EmployeeSalary sal
ON emp.EmployeeId = sal.EmployeeId
Group by JobTitle

Select * 
From #temp_employee
--Parametarized procedures
EXEC Temp_Employee @JobTitle = 'Salesman'

