--Su dung co so du lieu dung USE <ten>
USE AdventureWorks2019
SELECT * FROM HumanResources.Employee
GO
--Khai bao bien cuc bo deptID kieu int
DECLARE @deptID INT

--Dung SET hoac SELECT de gan gia tri cho bien
SELECT @deptID = 1
SELECT Name, GroupName FROM HumanResources.Department WHERE DepartmentID = @deptID
GO

SELECT @@LANGUAGE --Tra lai thong tin bien toan cuc @@LANGUAGE (bien toan cuc la bien co san trong database va bat dau bang @@)
SELECT @@VERSION --Tra lai thong tin bien toan cuc @@VERSION

--Cac ham trong ngon ngu Transact-SQL
SELECT SUM(StandardCost) FROM Production.ProductCostHistory --Lay ra Standardcost trong bang ProductCostHistory

SELECT AVG(StandardCost) FROM Production.ProductCostHistory --Lay ra gia tri trung binh cua truong StandardCost trong ban ProductCostHistory

SELECT MAX(StandardCost) FROM Production.ProductCostHistory

SELECT COUNT(*) FROM Production.ProductPhoto

SELECT GETDATE()

SELECT DATEPART(hh,GETDATE())

SELECT CONVERT(varchar(50),GETDATE(),103)

SELECT DB_ID('AdventureWorks2019')
GO

--Tao co so du lieu
CREATE DATABASE Session6
GO

USE Session6
GO

--Tao bang trong co so du lieu
CREATE TABLE Contacts
(MailID VARCHAR(20),
Name NTEXT,
TelephoneNumber INT)
GO

--Them 1 cot vao bang da co
ALTER TABLE Contacts ADD Address NVARCHAR(50)
ALTER TABLE Contacts ADD FaxNumber INT
GO

--Them du lieu vao bang Contacts
INSERT INTO Contacts VALUES ('abc@yahoo.com','Nguyen Van A',9893245,'Ha Noi',2323232)
INSERT INTO Contacts VALUES ('ngthib@gmail.com','Nguyen Thi B',8759385,'Ha Noi',23423)
INSERT INTO Contacts VALUES ('tranc@yahoo.com','Tran Van C',7236258,'Ha Noi',234324)
INSERT INTO Contacts VALUES ('trinhvand@gmail.com','Trinh Van D',5463245,'Ha Noi',354345)
GO

SELECT * FROM Contacts
GO

--Xoa ban ghi
DELETE FROM Contacts WHERE MailID='tranc@yahoo.com'

UPDATE Contacts SET Name=N'Trinh Hoang Long' WHERE MailID='trinhvand@gmail.com'

UPDATE Contacts SET TelephoneNumber=1234567 WHERE Name LIKE 'Nguyen Van A'
GO

CREATE TABLE NewEmployee
(	MailID VARCHAR(20),
	Name NTEXT,
	TelephoneNumber INT,
	Address VARCHAR(20),
	FaxNumber INT)
GO

INSERT INTO NewEmployee VALUES ('new@gmail.com', 'NewEmployee', 7654321, 'HCM', 7777777);

WITH EmployeeTemp 
(	MailID,
	Name,
	TelephoneNumber,
	Address,
	FaxNumber)
AS
(
SELECT * FROM NewEmployee
)
INSERT INTO Contacts
SELECT * FROM EmployeeTemp
SELECT * FROM Contacts
