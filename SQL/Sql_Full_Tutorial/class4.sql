--practice questions 
select last_name, JOB_ID, HIRE_DATE 
from Employees
where LAST_NAME = 'Matos' or LAST_NAME = 'taylor'
order by HIRE_DATE asc

--Q10 
-- date methods 
select GETDATE()

select DATEPART(year, getdate())

select DATEPART(month, getdate())

select DATEPART(day, getdate())

select LAST_NAME, DATEPART(year, HIRE_DATE)
from Employees

select last_name, HIRE_DATE,
DATEDIFF(Month, HIRE_DATE, GETDATE()) as 'Months worked'
from Employees
order by [Months worked] 

select DATEPART(weekday, getdate())

select DATEPART(day, getdate())

select DATENAME(MONTH, getdate())

select DATEFROMPARTS(2020,10,21)

select DATEDIFF(week, '2001/01/20', getdate())

--how many years an employee has worked 
select last_name, HIRE_DATE,
DATEDIFF(year, HIRE_DATE, GETDATE()) as 'Years of Service'
from Employees
order by [Years of Service]

--days of hire 
select LAST_NAME, DATENAME(DW, HIRE_DATE) 
from Employees

--check a date range 
select LAST_NAME, HIRE_DATE 
from Employees
where HIRE_DATE
between cast('1997-01-01' as DATE) and 
cast('2015-12-31' as DATE)
-- order by DATEPART(year, hire_date) asc
order by HIRE_DATE asc

-- NUMBER FUNCTIONS 
-- ABSOLUTE VALUES (RETURNS THE +VE VALUES WHEN COMPUTED)

SELECT ABS(-12) AS 'nos'

SELECT (-12) AS 'nos'

--AVG CALCULATES THE MEAN OF A COLUMN OR ARRAY OF VALUES 
SELECT AVG(SALARY) 
FROM Employees 

-- ROUND UP OR DOWN 
-- FLOOR ROUNDS DOWN 
SELECT FLOOR((SELECT AVG(SALARY) 
FROM Employees
WHERE DEPARTMENT_ID = 50))

-- CEILING ROUNDS UP 
SELECT CEILING(AVG(SALARY)) FROM Employees


--ROUND(NUMBER, DECIMALS, OPERATION)

SELECT ROUND(34.567,1,0)

--COUNT(EXPRESSION)
SELECT COUNT(LAST_NAME)
FROM Employees

--CONSTANTS
SELECT PI() * 1

--POWER 
SELECT POWER(SALARY, 2) FROM Employees

--SQUARE ROOT
SELECT SQRT(25)

-- SUM 
-- SELECT SUM(EXPRESSION)

-- sql top clause 
-- USED TO LIMIT THE NUMBER OF ROWS RETURNED 

SELECT TOP 5 * FROM Employees
