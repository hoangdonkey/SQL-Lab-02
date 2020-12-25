USE master
GO

CREATE DATABASE Session8
GO

DECLARE @firstname VARCHAR(25)
SET @firstname = 'Harry'
DECLARE @age INT = 40
DECLARE @taxPercent DECIMAL = 0.75
DECLARE @amount MONEY = 50000
DECLARE @bonus MONEY = @amount * .10
DECLARE @userDate DATE ='09-30-2009'
DECLARE @currentDate DATE = GETDATE()
SELECT @age,@taxPercent,@amount,@bonus,@userDate,@currentDate
GO


DECLARE @startTime AS DATETIME= '10:10:30'
SELECT @startTime

IF(@startTime IS NOT NULL)
	DROP @startTime
	GO

DECLARE @startTime AS time(0) = '10:10:30.1234567';
DECLARE @startTime1 AS time(1) = '10:10:30.1234567';
DECLARE @startTime2 AS time(2) = '10:10:30.1234567';
DECLARE @startTime3 AS time(3) = '10:10:30.1234567';
DECLARE @startTime4 AS time(4) = '10:10:30.1234567';
DECLARE @startTime5 AS time(5) = '10:10:30.1234567';
DECLARE @startTime6 AS time(6) = '10:10:30.1234567';
DECLARE @startTime7 AS time(7) = '10:10:30.1234567';
SELECT @startTime
SELECT @startTime1
SELECT @startTime2
SELECT @startTime3
SELECT @startTime4
SELECT @startTime5
SELECT @startTime6
SELECT @startTime7
