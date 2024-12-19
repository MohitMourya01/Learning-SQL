/*
 Where Statement
 =, <>, <, >, And, Or, Like, Null, Not Null, In
 Group By, Order By
*/

--SELECT * 
--FROM EmployDemographics
--WHERE FirstName <> 'Jim'

--SELECT * 
--FROM EmployDemographics
--WHERE Age >= 30

--SELECT * 
--FROM EmployDemographics
--WHERE Age <=30 AND Gender = 'Male'

--SELECT * 
--FROM EmployDemographics
--WHERE Age <=30 OR Gender = 'Male'

--SELECT * 
--FROM EmployDemographics
--WHERE LastName LIKE 'S%'

--SELECT * 
--FROM EmployDemographics
--WHERE LastName LIKE 'S%o%'

--SELECT * 
--FROM EmployDemographics
--WHERE LastName LIKE 'S%ott%'

--SELECT * 
--FROM EmployDemographics
--WHERE LastName IS NULL

--SELECT * 
--FROM EmployDemographics
--WHERE LastName IS NOT NULL

--SELECT * 
--FROM EmployDemographics
--WHERE FirstName = 'Jim' AND FirstName = ''

--SELECT * 
--FROM EmployDemographics
--WHERE FirstName IN ('Jim', 'Michael')

--SELECT DISTINCT(Gender)
--from EmployDemographics

--SELECT Gender
--FROM EmployDemographics 
--GROUP BY Gender

--SELECT Gender, COUNT(Gender)
--FROM EmployDemographics 
--GROUP BY Gender

--SELECT Gender, Age, COUNT(Gender)
--FROM EmployDemographics 
--GROUP BY Gender, Age

--SELECT Gender, COUNT(Gender)
--FROM EmployDemographics 
--WHERE Age > 31
--GROUP BY Gender

--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployDemographics
--WHERE Age > 31
--GROUP BY Gender
--ORDER BY CountGender DESC

--SELECT * 
--FROM EmployDemographics
--ORDER BY Gender, Age DESC

--SELECT * 
--FROM EmployDemographics
--ORDER BY Age DESC, Gender DESC

--SELECT * 
--FROM EmployDemographics
--ORDER BY Gender DESC, Age DESC

--SELECT * 
--FROM EmployDemographics
--ORDER BY Gender DESC, Age 

--SELECT *
--FROM EmployDemographics
--ORDER BY 4 DESC



