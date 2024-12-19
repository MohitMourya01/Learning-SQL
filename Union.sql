/* 
 Union, Union All
 */

 SELECT *
 FROM LearningSQL.dbo.EmployDemographics
 UNION 
 SELECT *
 FROM LearningSQL.dbo.WareHouseEmployeeDemographics

 SELECT *
 FROM LearningSQL.dbo.EmployDemographics
 UNION ALL
 SELECT *
 FROM LearningSQL.dbo.WareHouseEmployeeDemographics
 ORDER BY EmployeeId