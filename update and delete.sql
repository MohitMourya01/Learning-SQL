/*
 Updating / Deleting Data, insert
 */


Select *
From LearningSQL.dbo.EmployDemographics

Update LearningSQL.dbo.EmployDemographics
Set EmployeeId = 1000
Where FirstName = 'Jim' AND LastName = 'Halpert'

Delete From LearningSQL.dbo.EmployDemographics
Where EmployeeId = 1000