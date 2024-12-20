/*
Subqueries (in the Select, From, and Where Statement)
*/

Select * 
From EmployeeSalary

-- SubQuery in select
Select EmployeeId, Salary, (SELECT AVG(Salary) From EmployeeSalary) AS AvgSalary
From EmployeeSalary

--How to do it with Partition by

Select EmployeeId, Salary, AVG(Salary) OVER () AS AvgSalary
From EmployeeSalary

-- Why Group By doesn't work
Select EmployeeId, Salary, AVG(Salary) as AvgSalary
From EmployeeSalary
Group By EmployeeId, Salary
Order By EmployeeId, Salary

-- Subquery in From
Select a.EmployeeId, AvgSalary
From (Select EmployeeId, Salary, AVG(Salary) OVER () AS AvgSalary
From EmployeeSalary) a

-- subquery in where
Select EmployeeId, JobTitle, Salary
From EmployeeSalary
Where EmployeeId in (
   Select EmployeeId
   From EmployDemographics
   Where Age > 30
   )