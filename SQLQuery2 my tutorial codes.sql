--HOW TO CREATE TABLE
CREATE TABLE PersonalRecord
(ID INT, FirstName varchar (50), LastName varchar (50), Age int, Gender varchar(50))

--HOW TO INSERT VALUES INTO THE TABLE
INSERT INTO PersonalRecord VALUES
(102,'Aaron','Cluster',35,'Male'),
(103,'Ruth','Feares',29,'Female'),
(104,'Dickson','Mirage',32,'Male'),
(105,'Riot','Thaxter',50,'Male'),
(106,'Lugard','Mice',31,'Male'),
(107,'Fatima','Bentley',40,'Female'),
(108,'Jasper','Stones',30,'Male'),
(109,'Amira','Laban',27,'Female'),
(110,'Sharon','Dogo',25,'Female'),
(111,'Saka','Pendo',21,'Male'),
(112,'Bolt','Speed',45,'Male')

--HOW TO SELECT DATA
SELECT *
FROM PersonalRecord

SELECT DISTINCT (Age)
FROM PersonalRecord


SELECT TOP 5 (Age)
FROM PersonalRecord

SELECT COUNT (FirstName)
FROM PersonalRecord

SELECT MAX (Age)
FROM PersonalRecord

SELECT MIN (Age)
FROM PersonalRecord

SELECT AVG (Age)
FROM PersonalRecord


----HOW TO ADD COLUMN 
ALTER TABLE PersonalRecord
ADD State varchar(50)

UPDATE PersonalRecord
SET State = 'Lagos'

UPDATE PersonalRecord
SET State = 'Abuja'
Where ID IN (104,103,105)


----HOW TO RENAME COLUMN 
sp_rename'PersonalRecord.State','Location','column'

----HOW TO CHANGE DATATYPE COLUMN 
ALTER TABLE PersonalRecord
ADD BirthDate date

ALTER TABLE PersonalRecord
ALTER COLUMN BirthDate Varchar(50


----HOW TO DELETE COLUMN
ALTER TABLE PersonalRecord
DROP COLUMN BirthDate

--HOW THE WHERE STAMENT WORKS
SELECT *
FROM [PersonalRecord]
WHERE FirstName = 'Amira'


SELECT *
FROM [PersonalRecord]
WHERE Location <> 'Lagos'

SELECT *
FROM [PersonalRecord]
WHERE Age > 32

SELECT *
FROM [PersonalRecord]
WHERE Age >= 32

SELECT *
FROM [PersonalRecord]
WHERE Age >= 32 AND Location = 'Kano'

SELECT *
FROM [PersonalRecord]
WHERE Age >= 32 OR Location = 'Kano'

SELECT *
FROM [PersonalRecord]
WHERE Age < 30

SELECT *
FROM [PersonalRecord]
WHERE LastName IN ('Speed','Pendo')
 
-- WILDCARD(%,[], ^)
--firstname start with s
SELECT *
FROM PersonalRecord
WHERE FirstName LIKE 's%'

--firstname end with n
SELECT *
FROM PersonalRecord
WHERE FirstName LIKE '%n'

--firstname that contains on
SELECT *
FROM PersonalRecord
WHERE FirstName LIKE '%on%'

--HOW TO USE []
--RANGE FROM R-Z
SELECT *
FROM PersonalRecord
WHERE FirstName LIKE '[R-Z]%'

--FIRSTNAME THAT BEGINS WITH D, R, S, A
SELECT *
FROM PersonalRecord
WHERE FirstName LIKE '[D,R,S,A]%'

-- ASIDE FIRSTNAME THAT BEGINS WITH D, R, S, A

SELECT *
FROM PersonalRecord
WHERE FirstName LIKE '[^D,R,S,A]%'

SELECT *
FROM PersonalRecord
WHERE FirstName NOT LIKE '[D,R,S,A]%'

--THE UNDERSCORE WILDCARD _
SELECT *
FROM PersonalRecord
WHERE FirstName LIKE '_a%'

-- COMBINATION OF WILDCARD
SELECT *
FROM PersonalRecord
WHERE FirstName LIKE '_a%' AND LastName LIKE '%r'

--JOINS
--CREATE ANOTHER TABLE
CREATE TABLE PersonSalary
(ID int, Salary int, JobTittle varchar(50))

--INSERT VALUES
INSERT INTO PersonalSalary VALUES
(102,3500,'Data Analyst'),
(103,4000,'Doctor'),
(104,3600,'Sales Rep'),
(105,5000,'Chief Engneer'),
(106,4200,'Doctor'),
(107,4400,'Manager'),
(108,3800,'HR'),
(109,3000,'Sales Rep'),
(110,3500,'Protocol'),
(111,52000,'Chief Security'),
(112,7000,'Director')

--JOINS
-- iNNER JOINS
SELECT A.ID,A.FirstName,A.Age,B.Salary,B.JobTittle
FROM PersonalRecord A
INNER JOIN PersonalSalary B
ON A.ID = B.ID


INSERT INTO PersonalRecord VALUES
(113,'James','Dame',26,'Male','Alabama'),
(114,'Zianab','Baba',30,'Female','Cairo')
--LEFT JOIN
SELECT A.ID,A.FirstName,A.Age,B.Salary,B.JobTittle
FROM PersonalRecord A
left JOIN PersonalSalary B
ON A.ID = B.ID










