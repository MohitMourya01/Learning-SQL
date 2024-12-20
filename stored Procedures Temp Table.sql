USE [LearningSQL]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee]    Script Date: 12/20/2024 10:57:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
  Stored Procedures--> Group of sql statements that has been created
  and stored in that database.
  Stored Procedures in sql is a precompiled collection of sql statements
  and optional control-flow statements stored in DB.
  --> code reusability, performance, used for repetative taks, 
  encapsulating business logic, improving db security.
*/

--CREATE PROCEDURE Test
--AS
--SELECT *
--FROM EmployDemographics

--EXEC Test

ALTER PROCEDURE [dbo].[Temp_Employee]
@JobTitle nvarchar(100)
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
Where JobTitle = @JobTitle
Group by JobTitle

Select * 
From #temp_employee

