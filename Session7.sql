USE AdventureWorks2019
SELECT * FROM Person.vAdditionalContactInfo
GO

SELECT FirstName,MiddleName,LastName,EmailAddress FROM Person.vAdditionalContactInfo
GO

SELECT FirstName+' '+MiddleName+' '+LastName FROM Person.vAdditionalContactInfo
GO

SELECT * FROM Person.Address
GO

SELECT DISTINCT (City) FROM Person.Address
GO

SELECT TOP 10 * FROM Person.Address
GO

SELECT TOP 25 PERCENT * FROM Person.Address
GO

SELECT AVG(Rate) FROM HumanResources.EmployeePayHistory
GO

SELECT COUNT(LoginID) AS TitleCount FROM HumanResources.Employee
GO

CREATE TABLE Student
(	StudNo INT PRIMARY KEY,
	StudName NVARCHAR(50) NOT NULL,
	StudAddress NVARCHAR(50),
	StudPhone BIGINT,
	BirthDate DATETIME);
GO

INSERT INTO Student VALUES (1,'MJ','NY',35435234,CONVERT(VARCHAR, '12/12/1989', 103))
INSERT INTO Student VALUES (2,'KS','WA',37567834,CONVERT(VARCHAR, '12/11/1990', 103))
INSERT INTO Student VALUES (3,'KE','NY',23485769,CONVERT(VARCHAR, '11/30/1991', 103))
INSERT INTO Student VALUES (4,'WO','WA',23463545,CONVERT(VARCHAR, '08/03/1992', 103))
GO

SELECT * FROM Student
GO

ALTER TABLE Student ADD Country VARCHAR(20)NULL
GO
UPDATE Student SET Country='USA'
GO

SELECT * FROM Student
GO

DROP TABLE Student
GO

CREATE TABLE Batch
(	BatchNo NVARCHAR(5),
	Subject NVARCHAR(25),
	SubjDesc NVARCHAR(25),
	StartDt DATETIME,
	EndDt DATETIME,
	Hours INT);
GO

INSERT INTO Batch VALUES ('A01','Java','Database','12-01-2006','03-05-2006',96)
INSERT INTO Batch VALUES ('A02','Oracle','Form','08-25-2006','11-02-2006',55)
INSERT INTO Batch VALUES ('A03','SQL Server 2005','Queries','05-15-2006','06-06-2006',46)
INSERT INTO Batch VALUES ('A04','Net','WinForm','12-01-2006','03-05-2006',96)
INSERT INTO Batch VALUES ('A05','JSF & Struts','CustomControls','12-01-2006','03-05-2006',96)
GO

SELECT * FROM Batch
GO

SELECT DATEDIFF(Month,StartDt,EndDt) FROM Batch
GO

SELECT BatchNo,[2005] Y2005,[2006] Y2006 FROM
(SELECT YEAR(StartDt) StartYear,BatchNo,Hours FROM Batch)pft
PIVOT
(
SUM(Hours)
FOR StartYear IN ([2005],[2006])
)pst
GO

